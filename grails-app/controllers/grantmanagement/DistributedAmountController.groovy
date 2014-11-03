package grantmanagement

import org.springframework.dao.DataIntegrityViolationException
import planningbudget.FiscalYear
import settings.UnionParishad

class DistributedAmountController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [distributedAmountInstanceList: DistributedAmount.list(params), distributedAmountInstanceTotal: DistributedAmount.count()]
    }

    def create() {
        [distributedAmountInstance: new DistributedAmount(params)]
    }

    def save() {
        def distributedAmountInstance = new DistributedAmount(params)
        if (!distributedAmountInstance.save(flush: true)) {
            render(view: "create", model: [distributedAmountInstance: distributedAmountInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), distributedAmountInstance.id])
        redirect(action: "show", id: distributedAmountInstance.id)
    }

    def show(Long id) {
        def distributedAmountInstance = DistributedAmount.get(id)
        if (!distributedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), id])
            redirect(action: "list")
            return
        }

        [distributedAmountInstance: distributedAmountInstance]
    }

    def edit(Long id) {
        def distributedAmountInstance = DistributedAmount.get(id)
        if (!distributedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), id])
            redirect(action: "list")
            return
        }

        [distributedAmountInstance: distributedAmountInstance]
    }

    def update(Long id, Long version) {
        def distributedAmountInstance = DistributedAmount.get(id)
        if (!distributedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (distributedAmountInstance.version > version) {
                distributedAmountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'distributedAmount.label', default: 'DistributedAmount')] as Object[],
                          "Another user has updated this DistributedAmount while you were editing")
                render(view: "edit", model: [distributedAmountInstance: distributedAmountInstance])
                return
            }
        }

        distributedAmountInstance.properties = params

        if (!distributedAmountInstance.save(flush: true)) {
            render(view: "edit", model: [distributedAmountInstance: distributedAmountInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), distributedAmountInstance.id])
        redirect(action: "show", id: distributedAmountInstance.id)
    }

    def delete(Long id) {
        def distributedAmountInstance = DistributedAmount.get(id)
        if (!distributedAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), id])
            redirect(action: "list")
            return
        }

        try {
            distributedAmountInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'distributedAmount.label', default: 'DistributedAmount'), id])
            redirect(action: "show", id: id)
        }
    }
    def GetAllocatedAmountByFiscalYear(){

        if (request.xhr) {
            def fiyId=params.fiy_id
            StringBuilder sb= new StringBuilder()
            FiscalYear fiscalYear=FiscalYear.findById(fiyId)
            AllocatedAmount allocatedAmount=AllocatedAmount.findByFiscalYear(fiscalYear)
            sb.append(allocatedAmount.id)
            render sb.toString()
        }else{
            render "Restricted!"
        }
        return

    }
    def GetNoOfUnionPorishod(){
        if (request.xhr) {
            def fiyId=params.fiy_id
            StringBuilder sb= new StringBuilder()
            def unionParishadCount=UnionParishad.list().size()
            sb.append(unionParishadCount)
            render sb.toString()
        }else{
            render "Restricted!"
        }
        return
    }
}
