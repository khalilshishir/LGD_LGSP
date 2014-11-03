package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class SchemeApprovalStatusController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [schemeApprovalStatusInstanceList: SchemeApprovalStatus.list(params), schemeApprovalStatusInstanceTotal: SchemeApprovalStatus.count()]
    }

    def create() {
        [schemeApprovalStatusInstance: new SchemeApprovalStatus(params)]
    }

    def save() {
        def schemeApprovalStatusInstance = new SchemeApprovalStatus(params)
        if (!schemeApprovalStatusInstance.save(flush: true)) {
            render(view: "create", model: [schemeApprovalStatusInstance: schemeApprovalStatusInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), schemeApprovalStatusInstance.id])
        redirect(action: "show", id: schemeApprovalStatusInstance.id)
    }

    def show(Long id) {
        def schemeApprovalStatusInstance = SchemeApprovalStatus.get(id)
        if (!schemeApprovalStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), id])
            redirect(action: "list")
            return
        }

        [schemeApprovalStatusInstance: schemeApprovalStatusInstance]
    }

    def edit(Long id) {
        def schemeApprovalStatusInstance = SchemeApprovalStatus.get(id)
        if (!schemeApprovalStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), id])
            redirect(action: "list")
            return
        }

        [schemeApprovalStatusInstance: schemeApprovalStatusInstance]
    }

    def update(Long id, Long version) {
        def schemeApprovalStatusInstance = SchemeApprovalStatus.get(id)
        if (!schemeApprovalStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (schemeApprovalStatusInstance.version > version) {
                schemeApprovalStatusInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus')] as Object[],
                        "Another user has updated this SchemeApprovalStatus while you were editing")
                render(view: "edit", model: [schemeApprovalStatusInstance: schemeApprovalStatusInstance])
                return
            }
        }

        schemeApprovalStatusInstance.properties = params

        if (!schemeApprovalStatusInstance.save(flush: true)) {
            render(view: "edit", model: [schemeApprovalStatusInstance: schemeApprovalStatusInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), schemeApprovalStatusInstance.id])
        redirect(action: "show", id: schemeApprovalStatusInstance.id)
    }

    def delete(Long id) {
        def schemeApprovalStatusInstance = SchemeApprovalStatus.get(id)
        if (!schemeApprovalStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), id])
            redirect(action: "list")
            return
        }

        try {
            schemeApprovalStatusInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'schemeApprovalStatus.label', default: 'SchemeApprovalStatus'), id])
            redirect(action: "show", id: id)
        }
    }
}
