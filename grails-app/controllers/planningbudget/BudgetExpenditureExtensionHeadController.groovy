package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class BudgetExpenditureExtensionHeadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [budgetExpenditureExtensionHeadInstanceList: BudgetExpenditureExtensionHead.list(params), budgetExpenditureExtensionHeadInstanceTotal: BudgetExpenditureExtensionHead.count()]
    }

    def create() {
        [budgetExpenditureExtensionHeadInstance: new BudgetExpenditureExtensionHead(params)]
    }

    def save() {
        def budgetExpenditureExtensionHeadInstance = new BudgetExpenditureExtensionHead(params)
        if (!budgetExpenditureExtensionHeadInstance.save(flush: true)) {
            render(view: "create", model: [budgetExpenditureExtensionHeadInstance: budgetExpenditureExtensionHeadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), budgetExpenditureExtensionHeadInstance.id])
        redirect(action: "show", id: budgetExpenditureExtensionHeadInstance.id)
    }

    def show(Long id) {
        def budgetExpenditureExtensionHeadInstance = BudgetExpenditureExtensionHead.get(id)
        if (!budgetExpenditureExtensionHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), id])
            redirect(action: "list")
            return
        }

        [budgetExpenditureExtensionHeadInstance: budgetExpenditureExtensionHeadInstance]
    }

    def edit(Long id) {
        def budgetExpenditureExtensionHeadInstance = BudgetExpenditureExtensionHead.get(id)
        if (!budgetExpenditureExtensionHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), id])
            redirect(action: "list")
            return
        }

        [budgetExpenditureExtensionHeadInstance: budgetExpenditureExtensionHeadInstance]
    }

    def update(Long id, Long version) {
        def budgetExpenditureExtensionHeadInstance = BudgetExpenditureExtensionHead.get(id)
        if (!budgetExpenditureExtensionHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (budgetExpenditureExtensionHeadInstance.version > version) {
                budgetExpenditureExtensionHeadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead')] as Object[],
                        "Another user has updated this BudgetExpenditureExtensionHead while you were editing")
                render(view: "edit", model: [budgetExpenditureExtensionHeadInstance: budgetExpenditureExtensionHeadInstance])
                return
            }
        }

        budgetExpenditureExtensionHeadInstance.properties = params

        if (!budgetExpenditureExtensionHeadInstance.save(flush: true)) {
            render(view: "edit", model: [budgetExpenditureExtensionHeadInstance: budgetExpenditureExtensionHeadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), budgetExpenditureExtensionHeadInstance.id])
        redirect(action: "show", id: budgetExpenditureExtensionHeadInstance.id)
    }

    def delete(Long id) {
        def budgetExpenditureExtensionHeadInstance = BudgetExpenditureExtensionHead.get(id)
        if (!budgetExpenditureExtensionHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), id])
            redirect(action: "list")
            return
        }

        try {
            budgetExpenditureExtensionHeadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'budgetExpenditureExtensionHead.label', default: 'BudgetExpenditureExtensionHead'), id])
            redirect(action: "show", id: id)
        }
    }







    def GetUpExpenditureDetailHead(){
        if (request.xhr) {  // XHR = XHTML HTTP Request

            StringBuilder sb= new StringBuilder()
            def headId=params.head_id
            BudgetExpenditureMasterHead budgetExpenditureMasterHead = BudgetExpenditureMasterHead.findById(headId)
            
            List <BudgetExpDetailHead> budgetExpDetailHeadList = BudgetExpDetailHead.findAllByBudgetExpenditureMasterHead(budgetExpenditureMasterHead)

//            List<BudgetExpDetailHead> lst=BudgetExpDetailHead.findAllByPerformanceHead(performanceHead)
            sb.append("<option value='null'>Select</option>")
            for (budgetExpDetailHead in budgetExpDetailHeadList){
                sb.append("<option value='"+budgetExpDetailHead.id+"' >"+budgetExpDetailHead.detailHeadName+"</option>")
            }
            render sb.toString()
        }else{
            render "Restricted!"
        }
        return
    }
}
