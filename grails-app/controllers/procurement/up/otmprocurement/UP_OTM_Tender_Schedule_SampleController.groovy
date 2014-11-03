package procurement.up.otmprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Procurement_Type.CommonService
import procurement.up.Up_Proc_Master

class UP_OTM_Tender_Schedule_SampleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    CommonService commonService

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [UP_OTM_Tender_Schedule_SampleInstanceList: UP_OTM_Tender_Schedule_Sample.list(params), UP_OTM_Tender_Schedule_SampleInstanceTotal: UP_OTM_Tender_Schedule_Sample.count()]
    }

    def create() {
        String procurementType = UpProcType.OTM_PROCUREMENT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('procurementType',procurementType)
        }
        [UP_OTM_Tender_Schedule_SampleInstance: new UP_OTM_Tender_Schedule_Sample(params), upProcMasterList: results]
    }

    def save() {
        println(params);
        def UP_OTM_Tender_Schedule_SampleInstance = new UP_OTM_Tender_Schedule_Sample()




        int i = 0
        while (params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].DETAILS"] != null && params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].DETAILS"] != "") {
            UP_OTM_Tender_Schedule_SampleInstance.properties["id","UP_PROC_MASTER"] = params
            UP_OTM_Tender_Schedule_SampleInstance.UNIT = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].UNIT"])
            UP_OTM_Tender_Schedule_SampleInstance.AMOUNT = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].AMOUNT"])
            UP_OTM_Tender_Schedule_SampleInstance.RATE = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].RATE"])
            UP_OTM_Tender_Schedule_SampleInstance.TOTAL_AMOUNT = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].AMOUNT"]) * Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].RATE"])
//            UP_OTM_Tender_Schedule_SampleInstance.FINISH_DATE = params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].FINISH_DATE"]
//            UP_OTM_Tender_Schedule_SampleInstance.TIMELINE_OF_RATE = params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].TIMELINE_OF_RATE"]


            i++
        }
        if (!UP_OTM_Tender_Schedule_SampleInstance.save(flush: true)) {
            render(view: "create", model: [UP_OTM_Tender_Schedule_SampleInstance: UP_OTM_Tender_Schedule_SampleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), UP_OTM_Tender_Schedule_SampleInstance.id])
        redirect(action: "show", id: UP_OTM_Tender_Schedule_SampleInstance.id)
    }

    def show(Long id) {
        def UP_OTM_Tender_Schedule_SampleInstance = UP_OTM_Tender_Schedule_Sample.get(id)
        if (!UP_OTM_Tender_Schedule_SampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), id])
            redirect(action: "list")
            return
        }

        [UP_OTM_Tender_Schedule_SampleInstance: UP_OTM_Tender_Schedule_SampleInstance]
    }

    def edit(Long id) {
        def UP_OTM_Tender_Schedule_SampleInstance = UP_OTM_Tender_Schedule_Sample.get(id)
        def upProcMaster = Up_Proc_Master.get(UP_OTM_Tender_Schedule_SampleInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!UP_OTM_Tender_Schedule_SampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), id])
            redirect(action: "list")
            return
        }

        [UP_OTM_Tender_Schedule_SampleInstance: UP_OTM_Tender_Schedule_SampleInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        int i = 0
        def UP_OTM_Tender_Schedule_SampleInstance = UP_OTM_Tender_Schedule_Sample.get(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].id"])
        if (!UP_OTM_Tender_Schedule_SampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (UP_OTM_Tender_Schedule_SampleInstance.version > version) {
                UP_OTM_Tender_Schedule_SampleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample')] as Object[],
                        "Another user has updated this UP_OTM_Tender_Schedule_Sample while you were editing")
                render(view: "edit", model: [UP_OTM_Tender_Schedule_SampleInstance: UP_OTM_Tender_Schedule_SampleInstance])
                return
            }
        }

////        UP_OTM_Tender_Schedule_SampleInstance.properties = params
//        UP_OTM_Tender_Schedule_SampleInstance.properties["id","UP_PROC_MASTER"] = params



        while (params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].id"] != null && params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].id"] != "" && params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].id"] != "null") {
            UP_OTM_Tender_Schedule_SampleInstance.UNIT = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].UNIT"])
            UP_OTM_Tender_Schedule_SampleInstance.AMOUNT = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].AMOUNT"])
            UP_OTM_Tender_Schedule_SampleInstance.RATE = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].RATE"])
            UP_OTM_Tender_Schedule_SampleInstance.TOTAL_AMOUNT = Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].AMOUNT"]) * Double.parseDouble(params["otmTenderScheduleDetailsByProcurementMaster[" + i + "].RATE"])
//            UP_OTM_Tender_Schedule_SampleInstance.FINISH_DATE = params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].FINISH_DATE"]
//            UP_OTM_Tender_Schedule_SampleInstance.TIMELINE_OF_RATE = params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].TIMELINE_OF_RATE"]


            i++
        }

        if (!UP_OTM_Tender_Schedule_SampleInstance.save(flush: true)) {
            render(view: "edit", model: [UP_OTM_Tender_Schedule_SampleInstance: UP_OTM_Tender_Schedule_SampleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), UP_OTM_Tender_Schedule_SampleInstance.id])
        redirect(action: "show", id: UP_OTM_Tender_Schedule_SampleInstance.id)
    }

    def delete(Long id) {
        def UP_OTM_Tender_Schedule_SampleInstance = UP_OTM_Tender_Schedule_Sample.get(id)
        if (!UP_OTM_Tender_Schedule_SampleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), id])
            redirect(action: "list")
            return
        }

        try {
            UP_OTM_Tender_Schedule_SampleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'UP_OTM_Tender_Schedule_Sample'), id])
            redirect(action: "show", id: id)
        }
    }

    def setValueForDetails(){
        List  workDetailsByProcurementMaster = []
        if(params.procurementMasterId != null && params.procurementMasterId != "" && params.procurementMasterId != "null"){
            workDetailsByProcurementMaster = commonService.getworkDetailsValueByProcurementMaster(Long.parseLong(params.procurementMasterId))
        }
        render (template: 'rowWithValues', model: [workDetailsByProcurementMaster: workDetailsByProcurementMaster])
    }
}
