package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class BudgetIncomeDetailHeadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [budgetIncomeDetailHeadInstanceList: BudgetIncomeDetailHead.list(params), budgetIncomeDetailHeadInstanceTotal: BudgetIncomeDetailHead.count()]
    }

    def create() {
        [budgetIncomeDetailHeadInstance: new BudgetIncomeDetailHead(params)]
    }

    def save() {
        def budgetIncomeDetailHeadInstance = new BudgetIncomeDetailHead(params)
        if (!budgetIncomeDetailHeadInstance.save(flush: true)) {
            render(view: "create", model: [budgetIncomeDetailHeadInstance: budgetIncomeDetailHeadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), budgetIncomeDetailHeadInstance.id])
        redirect(action: "show", id: budgetIncomeDetailHeadInstance.id)
    }

    def show(Long id) {
        def budgetIncomeDetailHeadInstance = BudgetIncomeDetailHead.get(id)
        if (!budgetIncomeDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), id])
            redirect(action: "list")
            return
        }

        [budgetIncomeDetailHeadInstance: budgetIncomeDetailHeadInstance]
    }

    def edit(Long id) {
        def budgetIncomeDetailHeadInstance = BudgetIncomeDetailHead.get(id)
        if (!budgetIncomeDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), id])
            redirect(action: "list")
            return
        }

        [budgetIncomeDetailHeadInstance: budgetIncomeDetailHeadInstance]
    }

    def update(Long id, Long version) {
        def budgetIncomeDetailHeadInstance = BudgetIncomeDetailHead.get(id)
        if (!budgetIncomeDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (budgetIncomeDetailHeadInstance.version > version) {
                budgetIncomeDetailHeadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead')] as Object[],
                        "Another user has updated this BudgetIncomeDetailHead while you were editing")
                render(view: "edit", model: [budgetIncomeDetailHeadInstance: budgetIncomeDetailHeadInstance])
                return
            }
        }

        budgetIncomeDetailHeadInstance.properties = params

        if (!budgetIncomeDetailHeadInstance.save(flush: true)) {
            render(view: "edit", model: [budgetIncomeDetailHeadInstance: budgetIncomeDetailHeadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), budgetIncomeDetailHeadInstance.id])
        redirect(action: "show", id: budgetIncomeDetailHeadInstance.id)
    }

    def delete(Long id) {
        def budgetIncomeDetailHeadInstance = BudgetIncomeDetailHead.get(id)
        if (!budgetIncomeDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), id])
            redirect(action: "list")
            return
        }

        try {
            budgetIncomeDetailHeadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'budgetIncomeDetailHead.label', default: 'BudgetIncomeDetailHead'), id])
            redirect(action: "show", id: id)
        }
    }
}
