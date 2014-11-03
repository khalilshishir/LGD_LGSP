package grantmanagement

import org.springframework.dao.DataIntegrityViolationException

class DistributePBGAmountController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [distributePBGAmountInstanceList: DistributePBGAmount.list(params), distributePBGAmountInstanceTotal: DistributePBGAmount.count()]
    }

    def create() {
        [distributePBGAmountInstance: new DistributePBGAmount(params)]
    }

    def save() {
        def distributePBGAmountInstance = new DistributePBGAmount(params)
        if (!distributePBGAmountInstance.save(flush: true)) {
            render(view: "create", model: [distributePBGAmountInstance: distributePBGAmountInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), distributePBGAmountInstance.id])
        redirect(action: "show", id: distributePBGAmountInstance.id)
    }

    def show(Long id) {
        def distributePBGAmountInstance = DistributePBGAmount.get(id)
        if (!distributePBGAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), id])
            redirect(action: "list")
            return
        }

        [distributePBGAmountInstance: distributePBGAmountInstance]
    }

    def edit(Long id) {
        def distributePBGAmountInstance = DistributePBGAmount.get(id)
        if (!distributePBGAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), id])
            redirect(action: "list")
            return
        }

        [distributePBGAmountInstance: distributePBGAmountInstance]
    }

    def update(Long id, Long version) {
        def distributePBGAmountInstance = DistributePBGAmount.get(id)
        if (!distributePBGAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (distributePBGAmountInstance.version > version) {
                distributePBGAmountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount')] as Object[],
                          "Another user has updated this DistributePBGAmount while you were editing")
                render(view: "edit", model: [distributePBGAmountInstance: distributePBGAmountInstance])
                return
            }
        }

        distributePBGAmountInstance.properties = params

        if (!distributePBGAmountInstance.save(flush: true)) {
            render(view: "edit", model: [distributePBGAmountInstance: distributePBGAmountInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), distributePBGAmountInstance.id])
        redirect(action: "show", id: distributePBGAmountInstance.id)
    }

    def delete(Long id) {
        def distributePBGAmountInstance = DistributePBGAmount.get(id)
        if (!distributePBGAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), id])
            redirect(action: "list")
            return
        }

        try {
            distributePBGAmountInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount'), id])
            redirect(action: "show", id: id)
        }
    }
}
