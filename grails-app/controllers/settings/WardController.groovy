package settings

import org.springframework.dao.DataIntegrityViolationException

class WardController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [wardInstanceList: Ward.list(params), wardInstanceTotal: Ward.count()]
    }

    def create() {
        [wardInstance: new Ward(params)]
    }

    def save() {
        def wardInstance = new Ward(params)
        if (!wardInstance.save(flush: true)) {
            render(view: "create", model: [wardInstance: wardInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ward.label', default: 'Ward'), wardInstance.id])
        redirect(action: "show", id: wardInstance.id)
    }

    def show(Long id) {
        def wardInstance = Ward.get(id)
        if (!wardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ward.label', default: 'Ward'), id])
            redirect(action: "list")
            return
        }

        [wardInstance: wardInstance]
    }

    def edit(Long id) {
        def wardInstance = Ward.get(id)
        if (!wardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ward.label', default: 'Ward'), id])
            redirect(action: "list")
            return
        }

        [wardInstance: wardInstance]
    }

    def update(Long id, Long version) {
        def wardInstance = Ward.get(id)
        if (!wardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ward.label', default: 'Ward'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (wardInstance.version > version) {
                wardInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ward.label', default: 'Ward')] as Object[],
                        "Another user has updated this Ward while you were editing")
                render(view: "edit", model: [wardInstance: wardInstance])
                return
            }
        }

        wardInstance.properties = params

        if (!wardInstance.save(flush: true)) {
            render(view: "edit", model: [wardInstance: wardInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ward.label', default: 'Ward'), wardInstance.id])
        redirect(action: "show", id: wardInstance.id)
    }

    def delete(Long id) {
        def wardInstance = Ward.get(id)
        if (!wardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ward.label', default: 'Ward'), id])
            redirect(action: "list")
            return
        }

        try {
            wardInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ward.label', default: 'Ward'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ward.label', default: 'Ward'), id])
            redirect(action: "show", id: id)
        }
    }
}
