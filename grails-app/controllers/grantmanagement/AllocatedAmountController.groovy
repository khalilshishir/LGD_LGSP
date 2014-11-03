package grantmanagement

import org.springframework.dao.DataIntegrityViolationException

class AllocatedAmountController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [allocatedAmountInstanceList: AllocatedAmount.list(params), allocatedAmountInstanceTotal: AllocatedAmount.count()]
    }

    def create() {
        [allocatedAmountInstance: new AllocatedAmount(params)]
    }

    def save() {
        def allocatedAmountInstance = new AllocatedAmount(params)
        if (!allocatedAmountInstance.save(flush: true)) {
            render(view: "create", model: [allocatedAmountInstance: allocatedAmountInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), allocatedAmountInstance.id])
        redirect(action: "show", id: allocatedAmountInstance.id)
    }

    def show(Long id) {
        def allocatedAmountInstance = AllocatedAmount.get(id)
        if (!allocatedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), id])
            redirect(action: "list")
            return
        }

        [allocatedAmountInstance: allocatedAmountInstance]
    }

    def edit(Long id) {
        def allocatedAmountInstance = AllocatedAmount.get(id)
        if (!allocatedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), id])
            redirect(action: "list")
            return
        }

        [allocatedAmountInstance: allocatedAmountInstance]
    }

    def update(Long id, Long version) {
        def allocatedAmountInstance = AllocatedAmount.get(id)
        if (!allocatedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (allocatedAmountInstance.version > version) {
                allocatedAmountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'allocatedAmount.label', default: 'AllocatedAmount')] as Object[],
                        "Another user has updated this AllocatedAmount while you were editing")
                render(view: "edit", model: [allocatedAmountInstance: allocatedAmountInstance])
                return
            }
        }

        allocatedAmountInstance.properties = params

        if (!allocatedAmountInstance.save(flush: true)) {
            render(view: "edit", model: [allocatedAmountInstance: allocatedAmountInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), allocatedAmountInstance.id])
        redirect(action: "show", id: allocatedAmountInstance.id)
    }

    def delete(Long id) {
        def allocatedAmountInstance = AllocatedAmount.get(id)
        if (!allocatedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), id])
            redirect(action: "list")
            return
        }

        try {
            allocatedAmountInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'allocatedAmount.label', default: 'AllocatedAmount'), id])
            redirect(action: "show", id: id)
        }
    }
}
