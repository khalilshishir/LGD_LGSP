package procurement.up.otmprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Procurement_Type.CommonService
import procurement.up.Up_Proc_Master
import procurement.up.rfqprocurement.UpRfqOpeningSheetDetails

class UpOtmOpeningSheetController {

    CommonService commonService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upOtmOpeningSheetInstanceList: UpOtmOpeningSheet.list(params), upOtmOpeningSheetInstanceTotal: UpOtmOpeningSheet.count()]
    }

    def create() {
        String procurementType = UpProcType.OTM_PROCUREMENT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('procurementType',procurementType)
        }
        [upOtmOpeningSheetInstance: new UpOtmOpeningSheet(params), upProcMasterList: results]
    }

    def save() {
        println(params);
        def upOtmOpeningSheetInstance = new UpOtmOpeningSheet()

        upOtmOpeningSheetInstance.properties["id", "UP_PROC_MASTER","SUB_LAST_DATE","OPENING_DATE"] = params


        int i = 0
        while (params["upOtmOpeningSheetDetails[" + i + "].VENDOR_NAME"] != null && params["upOtmOpeningSheetDetails[" + i + "].VENDOR_NAME"] != "") {
            def upOtmOpeningSheetDetails = new UpOtmOpeningSheetDetails()

            upOtmOpeningSheetDetails.properties['VENDOR_NAME']=params["upOtmOpeningSheetDetails[" + i + "].VENDOR_NAME"]
            upOtmOpeningSheetDetails.properties['PRICE']=Double.parseDouble(params["upOtmOpeningSheetDetails[" + i + "].PRICE"])
            upOtmOpeningSheetDetails.properties['COMMENTS']=params["upOtmOpeningSheetDetails[" + i + "].COMMENTS"]

            upOtmOpeningSheetInstance.addToUpOtmOpeningSheetDetails(upOtmOpeningSheetDetails)

            i++
        }
        if (!upOtmOpeningSheetInstance.save(flush: true)) {
            render(view: "create", model: [upOtmOpeningSheetInstance: upOtmOpeningSheetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), upOtmOpeningSheetInstance.id])
        redirect(action: "show", id: upOtmOpeningSheetInstance.id)
    }

    def show(Long id) {
        def upOtmOpeningSheetInstance = UpOtmOpeningSheet.get(id)
        if (!upOtmOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }

        [upOtmOpeningSheetInstance: upOtmOpeningSheetInstance]
    }

    def edit(Long id) {
        def upOtmOpeningSheetInstance = UpOtmOpeningSheet.get(id)
        def upProcMaster = Up_Proc_Master.get(upOtmOpeningSheetInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!upOtmOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }

        [upOtmOpeningSheetInstance: upOtmOpeningSheetInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def upOtmOpeningSheetInstance = UpOtmOpeningSheet.get(id)
        if (!upOtmOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upOtmOpeningSheetInstance.version > version) {
                upOtmOpeningSheetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet')] as Object[],
                          "Another user has updated this UpOtmOpeningSheet while you were editing")
                render(view: "edit", model: [upOtmOpeningSheetInstance: upOtmOpeningSheetInstance])
                return
            }
        }

        upOtmOpeningSheetInstance.properties["id", "UP_PROC_MASTER","SUB_LAST_DATE","OPENING_DATE"] = params



        def i = 0



        while (params["upOtmOpeningSheetDetails[" + i + "].VENDOR_NAME"] != null && params["upOtmOpeningSheetDetails[" + i + "].VENDOR_NAME"] !="") {


            def studentDetail

            if (params["upOtmOpeningSheetDetails[" + i + "].deleted"] == "true" && params["upOtmOpeningSheetDetails[" + i + "].new"] == "false") {
                studentDetail = UpOtmOpeningSheetDetails.get(Long.valueOf(params["upOtmOpeningSheetDetails[" + i + "].id"]))
                upOtmOpeningSheetInstance.removeFromUpOtmOpeningSheetDetails(studentDetail)
                studentDetail.delete()
                i++
                continue
            }
            else if (params["upOtmOpeningSheetDetails[" + i + "].deleted"] == "true" && params["upOtmOpeningSheetDetails[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["upOtmOpeningSheetDetails[" + i + "].deleted"] == "false" && params["upOtmOpeningSheetDetails[" + i + "].new"] == "true") {
                studentDetail = new UpOtmOpeningSheetDetails()
                studentDetail.properties['VENDOR_NAME'] =params["upOtmOpeningSheetDetails[" + i + "].VENDOR_NAME"]
            }
            else {
                studentDetail = UpOtmOpeningSheetDetails.get(Long.valueOf(params["upOtmOpeningSheetDetails[" + i + "].id"]))
            }

            studentDetail.properties['VENDOR_NAME']=params["upOtmOpeningSheetDetails[" + i + "].VENDOR_NAME"]
            studentDetail.properties['PRICE']=Double.parseDouble(params["upOtmOpeningSheetDetails[" + i + "].PRICE"])
            studentDetail.properties['COMMENTS']=params["upOtmOpeningSheetDetails[" + i + "].COMMENTS"]





            upOtmOpeningSheetInstance.addToUpOtmOpeningSheetDetails(studentDetail)

            i++

        }

        if (!upOtmOpeningSheetInstance.save(flush: true)) {
            render(view: "edit", model: [upOtmOpeningSheetInstance: upOtmOpeningSheetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), upOtmOpeningSheetInstance.id])
        redirect(action: "show", id: upOtmOpeningSheetInstance.id)
    }

    def delete(Long id) {
        def upOtmOpeningSheetInstance = UpOtmOpeningSheet.get(id)
        if (!upOtmOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }

        try {
            upOtmOpeningSheetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upOtmOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "show", id: id)
        }
    }

    def setValueForDetails(){
        def otmIFQDetailsByProcurementMaster = []
        if(params.procurementMasterId != null && params.procurementMasterId != "" && params.procurementMasterId != "null"){
           otmIFQDetailsByProcurementMaster = commonService.getOtmIFQDetailsValueByProcurementMaster(Long.parseLong(params.procurementMasterId))
        }
//        String value="${otmIFQDetailsByProcurementMaster?.PROCUREMENT_TYPE.toString().replace('[', '').replace(']', '')}"
        render (template: 'ifqDetails', model: [otmIFQDetailsByProcurementMaster: otmIFQDetailsByProcurementMaster])
    }
}
