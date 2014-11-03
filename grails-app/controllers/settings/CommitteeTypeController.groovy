package settings

import org.springframework.dao.DataIntegrityViolationException

class CommitteeTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [committeeTypeInstanceList: CommitteeType.list(params), committeeTypeInstanceTotal: CommitteeType.count()]
    }

    def create() {
        [committeeTypeInstance: new CommitteeType(params)]
    }

    def save() {
        def committeeTypeInstance = new CommitteeType(params)
        if (!committeeTypeInstance.save(flush: true)) {
            render(view: "create", model: [committeeTypeInstance: committeeTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), committeeTypeInstance.id])
        redirect(action: "show", id: committeeTypeInstance.id)
    }

    def show(Long id) {
        def committeeTypeInstance = CommitteeType.get(id)
        if (!committeeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), id])
            redirect(action: "list")
            return
        }

        [committeeTypeInstance: committeeTypeInstance]
    }

    def edit(Long id) {
        def committeeTypeInstance = CommitteeType.get(id)
        if (!committeeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), id])
            redirect(action: "list")
            return
        }

        [committeeTypeInstance: committeeTypeInstance]
    }

    def update(Long id, Long version) {
        def committeeTypeInstance = CommitteeType.get(id)
        if (!committeeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (committeeTypeInstance.version > version) {
                committeeTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'committeeType.label', default: 'CommitteeType')] as Object[],
                        "Another user has updated this CommitteeType while you were editing")
                render(view: "edit", model: [committeeTypeInstance: committeeTypeInstance])
                return
            }
        }

        committeeTypeInstance.properties = params

        if (!committeeTypeInstance.save(flush: true)) {
            render(view: "edit", model: [committeeTypeInstance: committeeTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), committeeTypeInstance.id])
        redirect(action: "show", id: committeeTypeInstance.id)
    }

    def delete(Long id) {
        def committeeTypeInstance = CommitteeType.get(id)
        if (!committeeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), id])
            redirect(action: "list")
            return
        }

        try {
            committeeTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'committeeType.label', default: 'CommitteeType'), id])
            redirect(action: "show", id: id)
        }
    }
}
