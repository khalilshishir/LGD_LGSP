package grantmanagement

import org.springframework.dao.DataIntegrityViolationException
import planningbudget.FiscalYear
import settings.UnionParishad

class DistributeBBGAmountController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [distributeBBGAmountInstanceList: DistributeBBGAmount.list(params), distributeBBGAmountInstanceTotal: DistributeBBGAmount.count()]
    }

    def create() {
        [distributeBBGAmountInstance: new DistributeBBGAmount(params)]
    }

    def save() {
        def distributeBBGAmountInstance
//        if (!distributeBBGAmountInstance.save(flush: true)) {
//            render(view: "create", model: [distributeBBGAmountInstance: distributeBBGAmountInstance])
//            return
//        }
        List<UnionParishad> unionParishadList=UnionParishad.list()
        double allocatedAmt=Double.parseDouble(params.hdAllocatedAmt)
        double primaryBBG=(allocatedAmt*25/100)/unionParishadList.size()
        double totalPopulation=unionParishadList.sum{it.population}
        double totalArea=unionParishadList.sum {it.area}

        FiscalYear fiscalYear=FiscalYear.findById(params.fiscalYear)
        AllocatedAmount allocatedAmount=AllocatedAmount.findByFiscalYear(fiscalYear)
        for(unionPorishod in unionParishadList){
            distributeBBGAmountInstance= new DistributeBBGAmount()
            distributeBBGAmountInstance.upazila=unionPorishod.upazila
            distributeBBGAmountInstance.fiscalYear=fiscalYear
            distributeBBGAmountInstance.allocatedAmount=allocatedAmount
            distributeBBGAmountInstance.amountPrimaryBBG=primaryBBG
            distributeBBGAmountInstance.amountPopulationBBG=((allocatedAmt*75/100)*90/100)*unionPorishod.population/totalPopulation
            distributeBBGAmountInstance.amountAreaBBG=((allocatedAmt*75/100)*10/100)*unionPorishod.area/totalArea
            distributeBBGAmountInstance.unionParishad=unionPorishod
            distributeBBGAmountInstance.totalAmount=distributeBBGAmountInstance.amountPrimaryBBG+distributeBBGAmountInstance.amountPopulationBBG+distributeBBGAmountInstance.amountAreaBBG
                    if (!distributeBBGAmountInstance.save(flush: true)) {
                    render(view: "create", model: [distributeBBGAmountInstance: distributeBBGAmountInstance])
                    return
                    }
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), distributeBBGAmountInstance.id])
        redirect(action: "show", id: fiscalYear.id)
    }

    def show(Long id) {
//        def distributeBBGAmountInstance = DistributeBBGAmount.get(id)
        FiscalYear fiscalYear=FiscalYear.findById(id)
//        def distributeBBGAmountInstance = DistributeBBGAmount.findAllByFiscalYear(fiscalYear)
        List<DistributeBBGAmount> distributeBBGAmountList=DistributeBBGAmount.findAllByFiscalYear(fiscalYear)
        if (!distributeBBGAmountList) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), id])
            redirect(action: "list")
            return
        }

        [distributeBBGAmountInstanceList: distributeBBGAmountList,fiscalYr:fiscalYear]
    }

    def edit(Long id) {
        def distributeBBGAmountInstance = DistributeBBGAmount.get(id)
        if (!distributeBBGAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), id])
            redirect(action: "list")
            return
        }

        [distributeBBGAmountInstance: distributeBBGAmountInstance]
    }

    def update(Long id, Long version) {
        def distributeBBGAmountInstance = DistributeBBGAmount.get(id)
        if (!distributeBBGAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (distributeBBGAmountInstance.version > version) {
                distributeBBGAmountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount')] as Object[],
                        "Another user has updated this DistributeBBGAmount while you were editing")
                render(view: "edit", model: [distributeBBGAmountInstance: distributeBBGAmountInstance])
                return
            }
        }

        distributeBBGAmountInstance.properties = params

        if (!distributeBBGAmountInstance.save(flush: true)) {
            render(view: "edit", model: [distributeBBGAmountInstance: distributeBBGAmountInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), distributeBBGAmountInstance.id])
        redirect(action: "show", id: distributeBBGAmountInstance.id)
    }

    def delete(Long id) {
        def distributeBBGAmountInstance = DistributeBBGAmount.get(id)
        if (!distributeBBGAmountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), id])
            redirect(action: "list")
            return
        }

        try {
            distributeBBGAmountInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount'), id])
            redirect(action: "show", id: id)
        }
    }
}
