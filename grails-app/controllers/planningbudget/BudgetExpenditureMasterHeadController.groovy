package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class BudgetExpenditureMasterHeadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [budgetExpenditureMasterHeadInstanceList: BudgetExpenditureMasterHead.list(params), budgetExpenditureMasterHeadInstanceTotal: BudgetExpenditureMasterHead.count()]
    }

    def create() {
        [budgetExpenditureMasterHeadInstance: new BudgetExpenditureMasterHead(params)]
    }

    def save() {
        def budgetExpenditureMasterHeadInstance = new BudgetExpenditureMasterHead(params)
        if (!budgetExpenditureMasterHeadInstance.save(flush: true)) {
            render(view: "create", model: [budgetExpenditureMasterHeadInstance: budgetExpenditureMasterHeadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), budgetExpenditureMasterHeadInstance.id])
        redirect(action: "show", id: budgetExpenditureMasterHeadInstance.id)
    }

    def show(Long id) {
        def budgetExpenditureMasterHeadInstance = BudgetExpenditureMasterHead.get(id)
        if (!budgetExpenditureMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), id])
            redirect(action: "list")
            return
        }

        [budgetExpenditureMasterHeadInstance: budgetExpenditureMasterHeadInstance]
    }

    def edit(Long id) {
        def budgetExpenditureMasterHeadInstance = BudgetExpenditureMasterHead.get(id)
        if (!budgetExpenditureMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), id])
            redirect(action: "list")
            return
        }

        [budgetExpenditureMasterHeadInstance: budgetExpenditureMasterHeadInstance]
    }

    def update(Long id, Long version) {
        def budgetExpenditureMasterHeadInstance = BudgetExpenditureMasterHead.get(id)
        if (!budgetExpenditureMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (budgetExpenditureMasterHeadInstance.version > version) {
                budgetExpenditureMasterHeadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead')] as Object[],
                        "Another user has updated this BudgetExpenditureMasterHead while you were editing")
                render(view: "edit", model: [budgetExpenditureMasterHeadInstance: budgetExpenditureMasterHeadInstance])
                return
            }
        }

        budgetExpenditureMasterHeadInstance.properties = params

        if (!budgetExpenditureMasterHeadInstance.save(flush: true)) {
            render(view: "edit", model: [budgetExpenditureMasterHeadInstance: budgetExpenditureMasterHeadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), budgetExpenditureMasterHeadInstance.id])
        redirect(action: "show", id: budgetExpenditureMasterHeadInstance.id)
    }

    def delete(Long id) {
        def budgetExpenditureMasterHeadInstance = BudgetExpenditureMasterHead.get(id)
        if (!budgetExpenditureMasterHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), id])
            redirect(action: "list")
            return
        }

        try {
            budgetExpenditureMasterHeadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'budgetExpenditureMasterHead.label', default: 'BudgetExpenditureMasterHead'), id])
            redirect(action: "show", id: id)
        }
    }
}
