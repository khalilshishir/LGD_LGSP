package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class BudgetExpDetailHeadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [budgetExpDetailHeadInstanceList: BudgetExpDetailHead.list(params), budgetExpDetailHeadInstanceTotal: BudgetExpDetailHead.count()]
    }

    def create() {
        [budgetExpDetailHeadInstance: new BudgetExpDetailHead(params)]
    }

    def save() {
        def budgetExpDetailHeadInstance = new BudgetExpDetailHead(params)
        if (!budgetExpDetailHeadInstance.save(flush: true)) {
            render(view: "create", model: [budgetExpDetailHeadInstance: budgetExpDetailHeadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), budgetExpDetailHeadInstance.id])
        redirect(action: "show", id: budgetExpDetailHeadInstance.id)
    }

    def show(Long id) {
        def budgetExpDetailHeadInstance = BudgetExpDetailHead.get(id)
        if (!budgetExpDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), id])
            redirect(action: "list")
            return
        }

        [budgetExpDetailHeadInstance: budgetExpDetailHeadInstance]
    }

    def edit(Long id) {
        def budgetExpDetailHeadInstance = BudgetExpDetailHead.get(id)
        if (!budgetExpDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), id])
            redirect(action: "list")
            return
        }

        [budgetExpDetailHeadInstance: budgetExpDetailHeadInstance]
    }

    def update(Long id, Long version) {
        def budgetExpDetailHeadInstance = BudgetExpDetailHead.get(id)
        if (!budgetExpDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (budgetExpDetailHeadInstance.version > version) {
                budgetExpDetailHeadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead')] as Object[],
                        "Another user has updated this BudgetExpDetailHead while you were editing")
                render(view: "edit", model: [budgetExpDetailHeadInstance: budgetExpDetailHeadInstance])
                return
            }
        }

        budgetExpDetailHeadInstance.properties = params

        if (!budgetExpDetailHeadInstance.save(flush: true)) {
            render(view: "edit", model: [budgetExpDetailHeadInstance: budgetExpDetailHeadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), budgetExpDetailHeadInstance.id])
        redirect(action: "show", id: budgetExpDetailHeadInstance.id)
    }

    def delete(Long id) {
        def budgetExpDetailHeadInstance = BudgetExpDetailHead.get(id)
        if (!budgetExpDetailHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), id])
            redirect(action: "list")
            return
        }

        try {
            budgetExpDetailHeadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'budgetExpDetailHead.label', default: 'BudgetExpDetailHead'), id])
            redirect(action: "show", id: id)
        }
    }
}
