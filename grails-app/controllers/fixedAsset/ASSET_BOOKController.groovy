package fixedAsset

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql

class ASSET_BOOKController {
    def dataSource


    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [ASSET_BOOKInstanceList: ASSET_BOOK.list(params), ASSET_BOOKInstanceTotal: ASSET_BOOK.count()]
        String MainQQ="from ASSET_BOOK where IS_ACTIVE=1"
        def lst=ASSET_BOOK.executeQuery(MainQQ)

        def totalCount = ASSET_BOOK.executeQuery(MainQQ).size()
        [ASSET_BOOKInstanceList: lst, ASSET_BOOKInstanceTotal: totalCount]
    }
    def list_all(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ASSET_BOOKInstanceList: ASSET_BOOK.list(params), ASSET_BOOKInstanceTotal: ASSET_BOOK.count()]
    }
    def list_disposed(Integer max) {

        String MainQQ="from ASSET_BOOK where ASSET_STATUS.lookup_name='Disposed Asset'"
        def lst=ASSET_BOOK.executeQuery(MainQQ)

        def totalCount = ASSET_BOOK.executeQuery(MainQQ).size()
        [ASSET_BOOKInstanceList: lst, ASSET_BOOKInstanceTotal: totalCount]

//        params.max = Math.min(max ?: 10, 100)
//        [ASSET_BOOKInstanceList: ASSET_BOOK.list(params), ASSET_BOOKInstanceTotal: ASSET_BOOK.count()]
    }

    def create() {
        [ASSET_BOOKInstance: new ASSET_BOOK(params)]
    }

    def save() {
        def ASSET_BOOKInstance = new ASSET_BOOK(params)
        if (!ASSET_BOOKInstance.save(flush: true)) {
            render(view: "create", model: [ASSET_BOOKInstance: ASSET_BOOKInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), ASSET_BOOKInstance.id])
        redirect(action: "show", id: ASSET_BOOKInstance.id)
    }

    def show(Long id) {
        def ASSET_BOOKInstance = ASSET_BOOK.get(id)
        if (!ASSET_BOOKInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), id])
            redirect(action: "list")
            return
        }

        [ASSET_BOOKInstance: ASSET_BOOKInstance]
    }

    def edit(Long id) {
        def ASSET_BOOKInstance = ASSET_BOOK.get(id)
        if (!ASSET_BOOKInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), id])
            redirect(action: "list")
            return
        }

        [ASSET_BOOKInstance: ASSET_BOOKInstance]
    }

    def update(Long id, Long version) {
        def ASSET_BOOKInstance = ASSET_BOOK.get(id)
        if (!ASSET_BOOKInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ASSET_BOOKInstance.version > version) {
                ASSET_BOOKInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK')] as Object[],
                        "Another user has updated this ASSET_BOOK while you were editing")
                render(view: "edit", model: [ASSET_BOOKInstance: ASSET_BOOKInstance])
                return
            }
        }

        ASSET_BOOKInstance.properties = params

        if (!ASSET_BOOKInstance.save(flush: true)) {
            render(view: "edit", model: [ASSET_BOOKInstance: ASSET_BOOKInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), ASSET_BOOKInstance.id])
        redirect(action: "show", id: ASSET_BOOKInstance.id)
    }

    def delete(Long id) {
        def ASSET_BOOKInstance = ASSET_BOOK.get(id)
        if (!ASSET_BOOKInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), id])
            redirect(action: "list")
            return
        }

        try {
            ASSET_BOOKInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK'), id])
            redirect(action: "show", id: id)
        }
    }
    def ajaxMinorCategoryDropDownList(){
        if (request.xhr) {
            def majorId = ASSET_MAJOR_CATEGORY.get(Integer.parseInt(params.id))

            def minor = ASSET_MINOR_CATEGORY.findAllWhere(ASSET_MAJOR_CATEGORY_ID: majorId)


            def sb = new StringBuilder()
            sb.append('<option value="">--Select--</option>')
            minor.each{
                sb.append('<option value="' + it.ID + '">' + it.MINOR_CATEGORY_NAME + '</option>')
            }
            render sb
        }else{
            render "Restricted!"
        }
        return
    }
    def assetMovement(){
        if (request.xhr) {
            def movementInstance =ASSET_MOVEMENT_HISTORY.executeQuery("from ASSET_MOVEMENT_HISTORY where ASSET_BOOK_ID="+params.id)
            def sb = new StringBuilder()
            sb.append('<thead>')
                    sb.append('<tr>')
                            sb.append('<th>Old Stakeholder</th>')
                            sb.append('<th>New Stakeholder</th>')
                            sb.append('<th>Description</th>')
                            sb.append('<th>Old Location</th>')
                            sb.append('<th>New Location</th>')
                            sb.append('<th>Remarks</th>')
                            sb.append('<th>Assign Date</th>')
                    sb.append('</tr>')
            sb.append('</thead>')
            sb.append('<tbody>')
                for(int i=0;i<movementInstance.size();i++){
                    sb.append('<tr>')
                            sb.append('<td>'+movementInstance[i].OLD_STAKEHOLDER_ID.STAKEHOLDER_NAME+'</td>')
                            sb.append('<td>'+movementInstance[i].NEW_STAKEHOLDER_ID.STAKEHOLDER_NAME+'</td>')
                            sb.append('<td>'+movementInstance[i].DESCRIPTION+'</td>')
                            sb.append('<td>'+movementInstance[i].OLD_LOCATION_ID.LOCATION_NAME+'</td>')
                            sb.append('<td>'+movementInstance[i].NEW_LOCATION_ID.LOCATION_NAME+'</td>')
                            sb.append('<td>'+movementInstance[i].REMARKS+'</td>')
                            sb.append('<td>'+movementInstance[i].ASSIGN_DATE+'</td>')

                    sb.append('</tr>')
                }
                    sb.append('</tbody>')

            render sb
        }else{
            render "Restricted!"
        }
        return
    }
}
