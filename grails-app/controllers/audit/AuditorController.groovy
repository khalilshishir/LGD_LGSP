package audit

import org.springframework.dao.DataIntegrityViolationException

class AuditorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [auditorInstanceList: Auditor.list(params), auditorInstanceTotal: Auditor.count()]
    }

    def create() {
        [auditorInstance: new Auditor(params)]
    }

    def save() {
        def auditorInstance = new Auditor(params)
        if (!auditorInstance.save(flush: true)) {
            render(view: "create", model: [auditorInstance: auditorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'auditor.label', default: 'Auditor'), auditorInstance.id])
        redirect(action: "show", id: auditorInstance.id)
    }

    def show(Long id) {
        def auditorInstance = Auditor.get(id)
        if (!auditorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditor.label', default: 'Auditor'), id])
            redirect(action: "list")
            return
        }

        [auditorInstance: auditorInstance]
    }

    def edit(Long id) {
        def auditorInstance = Auditor.get(id)
        if (!auditorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditor.label', default: 'Auditor'), id])
            redirect(action: "list")
            return
        }

        [auditorInstance: auditorInstance]
    }

    def update(Long id, Long version) {
        def auditorInstance = Auditor.get(id)
        if (!auditorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditor.label', default: 'Auditor'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (auditorInstance.version > version) {
                auditorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'auditor.label', default: 'Auditor')] as Object[],
                        "Another user has updated this Auditor while you were editing")
                render(view: "edit", model: [auditorInstance: auditorInstance])
                return
            }
        }

        auditorInstance.properties = params

        if (!auditorInstance.save(flush: true)) {
            render(view: "edit", model: [auditorInstance: auditorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'auditor.label', default: 'Auditor'), auditorInstance.id])
        redirect(action: "show", id: auditorInstance.id)
    }

    def delete(Long id) {
        def auditorInstance = Auditor.get(id)
        if (!auditorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditor.label', default: 'Auditor'), id])
            redirect(action: "list")
            return
        }

        try {
            auditorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'auditor.label', default: 'Auditor'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'auditor.label', default: 'Auditor'), id])
            redirect(action: "show", id: id)
        }
    }
}
