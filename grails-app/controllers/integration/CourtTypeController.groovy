package integration

import org.springframework.dao.DataIntegrityViolationException

class CourtTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [courtTypeInstanceList: CourtType.list(params), courtTypeInstanceTotal: CourtType.count()]
    }

    def create() {
        [courtTypeInstance: new CourtType(params)]
    }

    def save() {
        def courtTypeInstance = new CourtType(params)
        if (!courtTypeInstance.save(flush: true)) {
            render(view: "create", model: [courtTypeInstance: courtTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'courtType.label', default: 'CourtType'), courtTypeInstance.id])
        redirect(action: "show", id: courtTypeInstance.id)
    }

    def show(Long id) {
        def courtTypeInstance = CourtType.get(id)
        if (!courtTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'courtType.label', default: 'CourtType'), id])
            redirect(action: "list")
            return
        }

        [courtTypeInstance: courtTypeInstance]
    }

    def edit(Long id) {
        def courtTypeInstance = CourtType.get(id)
        if (!courtTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'courtType.label', default: 'CourtType'), id])
            redirect(action: "list")
            return
        }

        [courtTypeInstance: courtTypeInstance]
    }

    def update(Long id, Long version) {
        def courtTypeInstance = CourtType.get(id)
        if (!courtTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'courtType.label', default: 'CourtType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (courtTypeInstance.version > version) {
                courtTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'courtType.label', default: 'CourtType')] as Object[],
                        "Another user has updated this CourtType while you were editing")
                render(view: "edit", model: [courtTypeInstance: courtTypeInstance])
                return
            }
        }

        courtTypeInstance.properties = params

        if (!courtTypeInstance.save(flush: true)) {
            render(view: "edit", model: [courtTypeInstance: courtTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'courtType.label', default: 'CourtType'), courtTypeInstance.id])
        redirect(action: "show", id: courtTypeInstance.id)
    }

    def delete(Long id) {
        def courtTypeInstance = CourtType.get(id)
        if (!courtTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'courtType.label', default: 'CourtType'), id])
            redirect(action: "list")
            return
        }

        try {
            courtTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'courtType.label', default: 'CourtType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'courtType.label', default: 'CourtType'), id])
            redirect(action: "show", id: id)
        }
    }
}
