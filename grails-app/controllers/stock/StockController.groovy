package stock

import org.springframework.dao.DataIntegrityViolationException

import grails.plugins.springsecurity.Secured
import org.springframework.security.access.prepost.PostFilter
import org.springframework.security.access.prepost.PreAuthorize
import org.springframework.security.acls.domain.BasePermission
import org.springframework.security.acls.model.Permission
import org.springframework.transaction.annotation.Transactional
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import javax.servlet.http.HttpServletResponse
import access_control.Access_Control_Menu
import access_control.Role
import access_control.User
//@Secured(['ROLE_USER'])  // To persist whole controller class with the particular Role
class StockController {

    def exportService
    def dataSource
    def grailsApplication  //ject GrailsApplication

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    static transactional = false
    def aclPermissionFactory
    def aclService
    def aclUtilService
    def springSecurityService
    static PermitRolesCreate //='ROLE_OTHERS'
    static PermitRolesEdit
    static PermitRolesRead
    static PermitRolesDelete

    def index() {

        PermitRolesCreate=""
        PermitRolesEdit=""
        PermitRolesRead=""
        PermitRolesDelete=""

        def ac= Access_Control_Menu.findAll("from Access_Control_Menu  as a where a.obj_acl_class.id=:classid",['classid':(long)21])
        ac.each {
            def roles=Role.findAll("from Role as r where r.id="+it.obj_role.id)
            /*lengthVal=createAction.length()
            if(lengthVal>0)
                createAction=","*/  //will be used to omit ',' after last role appended
            if (it.write_val==true)
                PermitRolesCreate +=""+roles[0].authority+","
            if (it.edit_val==true)
                PermitRolesEdit +=""+roles[0].authority+","
            if (it.read_val==true)
                PermitRolesRead +=""+roles[0].authority+","
            if (it.delete_val==true)
                PermitRolesDelete +=""+roles[0].authority+","
        }

        redirect(action: "list", params: params)
    }


    def list(Integer max) {
        if (SpringSecurityUtils.ifAnyGranted(PermitRolesRead)){
            params.max = Math.min(max ?: 10, 100)
            [stockInstanceList: Stock.list(params), stockInstanceTotal: Stock.count()]
        }
        else
            redirect (action: "error403", controller: "Errors")
    }

    def create() {
        if (SpringSecurityUtils.ifAnyGranted(PermitRolesCreate)){
        [stockInstance: new Stock(params)]
        }
    }

    def save() {
        def stockInstance = new Stock(params)
        if (!stockInstance.save(flush: true)) {
            render(view: "create", model: [stockInstance: stockInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'stock.label', default: 'Stock'), stockInstance.id])
        redirect(action: "show", id: stockInstance.id)
    }

    def show(Long id) {
        def stockInstance = Stock.get(id)
        if (!stockInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'stock.label', default: 'Stock'), id])
            redirect(action: "list")
            return
        }

        [stockInstance: stockInstance]
    }

    def edit(Long id) {

        if (SpringSecurityUtils.ifAnyGranted(PermitRolesEdit)){
            def stockInstance = Stock.get(id)
            if (!stockInstance) {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stock.label', default: 'Stock'), id])
                redirect(action: "list")
                return
            }

            [stockInstance: stockInstance]
        }
        else
            redirect (action: "error403", controller: "Errors")
    }

    def update(Long id, Long version) {
        def stockInstance = Stock.get(id)
        if (!stockInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'stock.label', default: 'Stock'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (stockInstance.version > version) {
                stockInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'stock.label', default: 'Stock')] as Object[],
                        "Another user has updated this Stock while you were editing")
                render(view: "edit", model: [stockInstance: stockInstance])
                return
            }
        }

        stockInstance.properties = params

        if (!stockInstance.save(flush: true)) {
            render(view: "edit", model: [stockInstance: stockInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'stock.label', default: 'Stock'), stockInstance.id])
        redirect(action: "show", id: stockInstance.id)
    }

    def delete(Long id) {
        if (SpringSecurityUtils.ifAnyGranted(PermitRolesDelete)){
            def stockInstance = Stock.get(id)
            if (!stockInstance) {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stock.label', default: 'Stock'), id])
                redirect(action: "list")
                return
            }

            try {
                stockInstance.delete(flush: true)
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'stock.label', default: 'Stock'), id])
                redirect(action: "list")
            }
            catch (DataIntegrityViolationException e) {
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'stock.label', default: 'Stock'), id])
                redirect(action: "show", id: id)
            }
        }
        else
            redirect (action: "error403", controller: "Errors")
    }
}
