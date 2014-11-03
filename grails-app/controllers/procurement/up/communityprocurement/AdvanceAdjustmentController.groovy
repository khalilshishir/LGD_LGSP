package procurement.up.communityprocurement

import comonclass.UpProcType
import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException
import procurement.pmu.PmuProcPlan
import procurement.pmu.PmuProcPlanWbs
import procurement.up.Up_Proc_Master

import java.text.SimpleDateFormat

class AdvanceAdjustmentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [advanceAdjustmentInstanceList: AdvanceAdjustment.list(params), advanceAdjustmentInstanceTotal: AdvanceAdjustment.count()]
    }

    def create() {
        def upProcMasterListByProcurement = Up_Proc_Master.findAllByProcurementType(UpProcType?.COMMUNITY_PROCUREMENT?.toString())
        [advanceAdjustmentInstance: new AdvanceAdjustment(params), upProcMasterList: upProcMasterListByProcurement]
    }

    def save() {
        def advanceAdjustmentInstance = new AdvanceAdjustment(params)
        def masterRoleSalary = MasterRoleSalary.findByUpProcMaster(advanceAdjustmentInstance?.upProcMaster)
        def masterRoleSalaryDetails = MasterRoleSalaryDetails.findAllByMasterRoleSalary(masterRoleSalary)
        def advanceAdjustment = AdvanceAdjustment.findAllByUpProcMaster(advanceAdjustmentInstance?.upProcMaster)
        double totalWagesPaidAmount = 0, totalAdvanceAdjustmentAmount = 0
        masterRoleSalaryDetails.each {
            totalWagesPaidAmount += it.TOTAL_AMOUNT
        }
        advanceAdjustment.each {
            totalAdvanceAdjustmentAmount += it.ADJUSTMENT_AMOUNT
        }

//        println("Total Wages Paid >> " + totalWagesPaidAmount)
//        println("Total Advance Adjustment Amount >> " + totalAdvanceAdjustmentAmount)
//        println("Cash in Hand to pay wages >> " + (totalAdvanceAdjustmentAmount - totalWagesPaidAmount))

        if(totalAdvanceAdjustmentAmount > totalWagesPaidAmount){
            flash.message = "দুঃখিত, অগ্রিম প্রাপ্ত টাকা এখনো মজুরি দেয়ার জন্য হাতে আছে, তাই নতুন করে অগ্রিম সমন্বয় সম্ভব নয় ।"
            def upProcMasterListByProcurement = Up_Proc_Master.findAllByProcurementType(UpProcType?.COMMUNITY_PROCUREMENT?.toString())
            render(view: "create", model: [advanceAdjustmentInstance: advanceAdjustmentInstance, upProcMasterList: upProcMasterListByProcurement])
            return
        }

        if (!advanceAdjustmentInstance.save(flush: true)) {
            render(view: "create", model: [advanceAdjustmentInstance: advanceAdjustmentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), advanceAdjustmentInstance.id])
        redirect(action: "show", id: advanceAdjustmentInstance.id)
    }

    def show(Long id) {
        def advanceAdjustmentInstance = AdvanceAdjustment.get(id)
        if (!advanceAdjustmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), id])
            redirect(action: "list")
            return
        }

        [advanceAdjustmentInstance: advanceAdjustmentInstance]
    }

    def edit(Long id) {
        def advanceAdjustmentInstance = AdvanceAdjustment.get(id)
        def upProcMaster = Up_Proc_Master.get(advanceAdjustmentInstance?.upProcMaster?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!advanceAdjustmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), id])
            redirect(action: "list")
            return
        }

        [advanceAdjustmentInstance: advanceAdjustmentInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def advanceAdjustmentInstance = AdvanceAdjustment.get(id)
        if (!advanceAdjustmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (advanceAdjustmentInstance.version > version) {
                advanceAdjustmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment')] as Object[],
                          "Another user has updated this AdvanceAdjustment while you were editing")
                render(view: "edit", model: [advanceAdjustmentInstance: advanceAdjustmentInstance])
                return
            }
        }

        advanceAdjustmentInstance.properties = params

        if (!advanceAdjustmentInstance.save(flush: true)) {
            render(view: "edit", model: [advanceAdjustmentInstance: advanceAdjustmentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), advanceAdjustmentInstance.id])
        redirect(action: "show", id: advanceAdjustmentInstance.id)
    }

    def delete(Long id) {
        def advanceAdjustmentInstance = AdvanceAdjustment.get(id)
        if (!advanceAdjustmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), id])
            redirect(action: "list")
            return
        }

        try {
            advanceAdjustmentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'advanceAdjustment.label', default: 'AdvanceAdjustment'), id])
            redirect(action: "show", id: id)
        }
    }

    def showone(){
        print(params)
        LinkedHashMap result=new LinkedHashMap()
        String outPut
        def upProcMaster = Up_Proc_Master.get(Long.parseLong(params.id))
//        def advanceAdjustment=AdvanceAdjustment.read(upProcMaster.id)
        def advanceAdjustment=AdvanceAdjustment.findByUpProcMaster(upProcMaster)
//        def wbsList= PmuProcPlanWbs.findAllByPmuProcurPlan(advanceAdjustment)

        List dataReturn=new ArrayList()
        SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
        String payment_date = DATE_FORMAT.format(advanceAdjustment.PAYMENT_DATE);
        dataReturn.add([id: advanceAdjustment.id,adjustment_amount: advanceAdjustment.ADJUSTMENT_AMOUNT,payment_date: payment_date])
        int dataCount=0
//        wbsList.each {
//            PmuProcPlanWbs pmuProcurPlanWbs ->
//                dataCount++
//                SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
//                String startDate = DATE_FORMAT.format(pmuProcurPlanWbs.startDate);
//                String endDate = DATE_FORMAT.format(pmuProcurPlanWbs.endDate);
//
//                dataReturn.add([id: pmuProcurPlanWbs.id,start_date: startDate,
//                        end_date:endDate,task_name:pmuProcurPlanWbs.taskName,task_details:pmuProcurPlanWbs.taskDetails,
//                        type:pmuProcurPlanWbs.type,
//                        status:pmuProcurPlanWbs.status])
//
//        }

        result.put('isError',false)
        result.put('advanceAdjustment',advanceAdjustment)
        result.put('obj',advanceAdjustment)
        result.put('dataReturn',dataReturn)
        outPut = result as JSON
        render outPut

    }
}
