package access_control

import org.springframework.dao.DataIntegrityViolationException

class Access_Control_MenuController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [access_Control_MenuInstanceList: Access_Control_Menu.list(params), access_Control_MenuInstanceTotal: Access_Control_Menu.count()]
    }

    def create() {
        [access_Control_MenuInstance: new Access_Control_Menu(params)]
    }

    def save() {
        def access_Control_MenuInstance = new Access_Control_Menu(params)
        if (!access_Control_MenuInstance.save(flush: true)) {
            render(view: "create", model: [access_Control_MenuInstance: access_Control_MenuInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), access_Control_MenuInstance.id])
        redirect(action: "show", id: access_Control_MenuInstance.id)
    }

    def show(Long id) {
        def access_Control_MenuInstance = Access_Control_Menu.get(id)
        if (!access_Control_MenuInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), id])
            redirect(action: "list")
            return
        }

        [access_Control_MenuInstance: access_Control_MenuInstance]
    }

    def edit(Long id) {
        def access_Control_MenuInstance = Access_Control_Menu.get(id)
        if (!access_Control_MenuInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), id])
            redirect(action: "list")
            return
        }

        [access_Control_MenuInstance: access_Control_MenuInstance]
    }

    def update(Long id, Long version) {
        def access_Control_MenuInstance = Access_Control_Menu.get(id)
        if (!access_Control_MenuInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (access_Control_MenuInstance.version > version) {
                access_Control_MenuInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu')] as Object[],
                        "Another user has updated this Access_Control_Menu while you were editing")
                render(view: "edit", model: [access_Control_MenuInstance: access_Control_MenuInstance])
                return
            }
        }

        access_Control_MenuInstance.properties = params

        if (!access_Control_MenuInstance.save(flush: true)) {
            render(view: "edit", model: [access_Control_MenuInstance: access_Control_MenuInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), access_Control_MenuInstance.id])
        redirect(action: "show", id: access_Control_MenuInstance.id)
    }

    def delete(Long id) {
        def access_Control_MenuInstance = Access_Control_Menu.get(id)
        if (!access_Control_MenuInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), id])
            redirect(action: "list")
            return
        }

        try {
            access_Control_MenuInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu'), id])
            redirect(action: "show", id: id)
        }
    }
}
