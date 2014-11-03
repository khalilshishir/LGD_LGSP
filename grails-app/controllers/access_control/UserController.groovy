package access_control

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create() {

        String mainQu="from UserRole where user.id=0"
        def roles =UserRole.executeQuery(mainQu)


        def roleOfUsers=roles.role.id
        [userInstance: new User(params),rolesUsers : roleOfUsers]

        // [userInstance: new User(params)]
    }

    def save() {
        /*  def userInstance = new User(params)
     if (!userInstance.save(flush: true)) {
         render(view: "create", model: [userInstance: userInstance])
         return
     }

     flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
     redirect(action: "show", id: userInstance.id)*/

        def userInstance = new User(params)
        def roleList = params.list('roles')

        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }
        for (int i=0;i<roleList.size();i++) {
            //= new Role(authority:roleList[i])
            String role=roleList[i].toString()
            def RoleInstance=Role.get(role)

            //def role=  new Role(authority:roleList[i].toString())

            //role.setAuthority(roleList[i])
            UserRole.create userInstance, RoleInstance,true
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def show(Long id) {
        /*def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]*/

        def userInstance = User.get(id)

        String mainQu="from UserRole where user.id="+ userInstance.id
        def userRoleList =UserRole.executeQuery(mainQu)
        def roleNamesOfUser=userRoleList.role.authority

        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance,roleListOfUserInstance:roleNamesOfUser,rolescount:roleNamesOfUser.size()]
    }

    def edit(Long id) {
        /*def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]*/

        def userInstance = User.get(id)
        String mainQu="from UserRole where user.id="+ userInstance.id
        def userRoleList =UserRole.executeQuery(mainQu)
        String pass=userInstance.getPassword().bytes.encodeBase64() .toString()

        def roleOfUsers=userRoleList.role.id

        /* ###### Sort Roles in ascending order ########## */
        int tempv
        for (int i=0;i<roleOfUsers.size();i++){
            for (int j=i;j<roleOfUsers.size();j++){
                if (roleOfUsers[i]>roleOfUsers[j]){
                    tempv=roleOfUsers[i]
                    roleOfUsers[i]=roleOfUsers[j]
                    roleOfUsers[j]=tempv
                }
            }
        }
        /* ###### END ########## */

        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance, rolesUsers:roleOfUsers]
    }

    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'user.label', default: 'User')] as Object[],
                        "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params
        def roleList = params.list('roles')

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        UserRole.removeAll(userInstance)
        for (int i=0;i<roleList.size();i++) {
            //= new Role(authority:roleList[i])
            String role=roleList[i].toString()
            def RoleInstance=Role.get(role)

            //def role=  new Role(authority:roleList[i].toString())

            //role.setAuthority(roleList[i])
            UserRole.create userInstance, RoleInstance,true
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            UserRole.removeAll(userInstance)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }

}
