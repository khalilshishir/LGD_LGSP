package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class BudgetIncomeMasterHeadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [budgetIncomeMasterHeadInstanceList: BudgetIncomeMasterHead.list(params), budgetIncomeMasterHeadInstanceTotal: BudgetIncomeMasterHead.count()]
    }

    def create() {
        [budgetIncomeMasterHeadInstance: new BudgetIncomeMasterHead(params)]
    }

    def save() {
        def budgetIncomeMasterHeadInstance = new BudgetIncomeMasterHead(params)
        if (!budgetIncomeMasterHeadInstance.save(flush: true)) {
            render(view: "create", model: [budgetIncomeMasterHeadInstance: budgetIncomeMasterHeadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), budgetIncomeMasterHeadInstance.id])
        redirect(action: "show", id: budgetIncomeMasterHeadInstance.id)
    }

    def show(Long id) {
        def budgetIncomeMasterHeadInstance = BudgetIncomeMasterHead.get(id)
        if (!budgetIncomeMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), id])
            redirect(action: "list")
            return
        }

        [budgetIncomeMasterHeadInstance: budgetIncomeMasterHeadInstance]
    }

    def edit(Long id) {
        def budgetIncomeMasterHeadInstance = BudgetIncomeMasterHead.get(id)
        if (!budgetIncomeMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), id])
            redirect(action: "list")
            return
        }

        [budgetIncomeMasterHeadInstance: budgetIncomeMasterHeadInstance]
    }

    def update(Long id, Long version) {
        def budgetIncomeMasterHeadInstance = BudgetIncomeMasterHead.get(id)
        if (!budgetIncomeMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (budgetIncomeMasterHeadInstance.version > version) {
                budgetIncomeMasterHeadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead')] as Object[],
                          "Another user has updated this BudgetIncomeMasterHead while you were editing")
                render(view: "edit", model: [budgetIncomeMasterHeadInstance: budgetIncomeMasterHeadInstance])
                return
            }
        }

        budgetIncomeMasterHeadInstance.properties = params

        if (!budgetIncomeMasterHeadInstance.save(flush: true)) {
            render(view: "edit", model: [budgetIncomeMasterHeadInstance: budgetIncomeMasterHeadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), budgetIncomeMasterHeadInstance.id])
        redirect(action: "show", id: budgetIncomeMasterHeadInstance.id)
    }

    def delete(Long id) {
        def budgetIncomeMasterHeadInstance = BudgetIncomeMasterHead.get(id)
        if (!budgetIncomeMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), id])
            redirect(action: "list")
            return
        }

        try {
            budgetIncomeMasterHeadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'budgetIncomeMasterHead.label', default: 'BudgetIncomeMasterHead'), id])
            redirect(action: "show", id: id)
        }
    }
}
