package audit

import org.springframework.dao.DataIntegrityViolationException

class UpInspectionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upInspectionInstanceList: UpInspection.list(params), upInspectionInstanceTotal: UpInspection.count()]
    }

    def create() {
        [upInspectionInstance: new UpInspection(params)]
    }

    def save() {
        def upInspectionInstance = new UpInspection(params)
        if (!upInspectionInstance.save(flush: true)) {
            render(view: "create", model: [upInspectionInstance: upInspectionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), upInspectionInstance.id])
        redirect(action: "show", id: upInspectionInstance.id)
    }

    def show(Long id) {
        def upInspectionInstance = UpInspection.get(id)
        if (!upInspectionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), id])
            redirect(action: "list")
            return
        }

        [upInspectionInstance: upInspectionInstance]
    }

    def edit(Long id) {
        def upInspectionInstance = UpInspection.get(id)
        if (!upInspectionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), id])
            redirect(action: "list")
            return
        }

        [upInspectionInstance: upInspectionInstance]
    }

    def update(Long id, Long version) {
        def upInspectionInstance = UpInspection.get(id)
        if (!upInspectionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upInspectionInstance.version > version) {
                upInspectionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upInspection.label', default: 'UpInspection')] as Object[],
                        "Another user has updated this UpInspection while you were editing")
                render(view: "edit", model: [upInspectionInstance: upInspectionInstance])
                return
            }
        }

        upInspectionInstance.properties = params

        if (!upInspectionInstance.save(flush: true)) {
            render(view: "edit", model: [upInspectionInstance: upInspectionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), upInspectionInstance.id])
        redirect(action: "show", id: upInspectionInstance.id)
    }

    def delete(Long id) {
        def upInspectionInstance = UpInspection.get(id)
        if (!upInspectionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), id])
            redirect(action: "list")
            return
        }

        try {
            upInspectionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upInspection.label', default: 'UpInspection'), id])
            redirect(action: "show", id: id)
        }
    }
}
