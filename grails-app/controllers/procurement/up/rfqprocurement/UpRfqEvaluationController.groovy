package procurement.up.rfqprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Procurement_Type.CommonService
import procurement.up.Up_Proc_Master

class UpRfqEvaluationController {

    CommonService commonService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upRfqEvaluationInstanceList: UpRfqEvaluation.list(params), upRfqEvaluationInstanceTotal: UpRfqEvaluation.count()]
    }

    def create() {
        String procurementType = UpProcType.RFQ_PROCUREMENT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('procurementType',procurementType)
        }
        [upRfqEvaluationInstance: new UpRfqEvaluation(params), upProcMasterList: results]
    }

    def save() {
        println(params);
        def upRfqEvaluationInstance = new UpRfqEvaluation(params)

        upRfqEvaluationInstance.properties["id","EVALUATION_DATE","UP_PROC_MASTER","TEC"] = params


        int i = 0
        while (params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"] != null) {
            def upRfqEvaluationSheetDetails = new UpRfqEvaluationSheetDetails()

            upRfqEvaluationSheetDetails.properties['VENDOR_NAME']=params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"]
            upRfqEvaluationSheetDetails.properties['PRICE']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].PRICE"])
            upRfqEvaluationSheetDetails.properties['VENDOR_SCORE']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_SCORE"])
            upRfqEvaluationSheetDetails.properties['INVITED_SPEC_AMOUNT']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].INVITED_SPEC_AMOUNT"])
            upRfqEvaluationSheetDetails.properties['SUB_SPEC_AMOUNT']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].SUB_SPEC_AMOUNT"])
            upRfqEvaluationSheetDetails.properties['SSC_COMMENTS']=params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].SSC_COMMENTS"]

            upRfqEvaluationInstance.addToUpRfqEvaluationSheetDetails(upRfqEvaluationSheetDetails)


            i++
        }
        if (!upRfqEvaluationInstance.save(flush: true)) {
            render(view: "create", model: [upRfqEvaluationInstance: upRfqEvaluationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), upRfqEvaluationInstance.id])
        redirect(action: "show", id: upRfqEvaluationInstance.id)
    }

    def show(Long id) {
        def upRfqEvaluationInstance = UpRfqEvaluation.get(id)
        if (!upRfqEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), id])
            redirect(action: "list")
            return
        }

        [upRfqEvaluationInstance: upRfqEvaluationInstance]
    }

    def edit(Long id) {
        def upRfqEvaluationInstance = UpRfqEvaluation.get(id)
        def upProcMaster = Up_Proc_Master.get(upRfqEvaluationInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!upRfqEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), id])
            redirect(action: "list")
            return
        }

        def upRfqEvaluationSheetDetails = UpRfqEvaluationSheetDetails.findAllByUpRfqEvaluation(UpRfqEvaluation.get(upRfqEvaluationInstance.id))

        [upRfqEvaluationInstance: upRfqEvaluationInstance, upRfqEvaluationSheetDetails: upRfqEvaluationSheetDetails, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        println(params)
        def upRfqEvaluationInstance = UpRfqEvaluation.get(id)
        if (!upRfqEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upRfqEvaluationInstance.version > version) {
                upRfqEvaluationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation')] as Object[],
                        "Another user has updated this UpRfqEvaluation while you were editing")
                render(view: "edit", model: [upRfqEvaluationInstance: upRfqEvaluationInstance])
                return
            }
        }

        upRfqEvaluationInstance.properties["id","EVALUATION_DATE","UP_PROC_MASTER","TEC"] = params


        def i = 0



        while (params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"] != null) {


            def studentDetail

            if (params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].deleted"] == "true" && params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].new"] == "false") {
                studentDetail = UpRfqEvaluationSheetDetails.get(Long.valueOf(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].id"]))
                upRfqEvaluationInstance.removeFromUpRfqEvaluationSheetDetails(studentDetail)
                studentDetail.delete()
                i++
                continue
            }
            else if (params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].deleted"] == "true" && params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].deleted"] == "false" && params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].new"] == "true") {
                studentDetail = new UpRfqEvaluationSheetDetails()
                studentDetail.properties['VENDOR_NAME'] =params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"]
            }
            else {
                params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].id"]
                studentDetail = UpRfqEvaluationSheetDetails.get(Long.valueOf(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].id"]))
            }

            studentDetail.properties['VENDOR_NAME']=params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"]
            studentDetail.properties['PRICE']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].PRICE"])
            studentDetail.properties['VENDOR_SCORE']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_SCORE"])
            studentDetail.properties['INVITED_SPEC_AMOUNT']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].INVITED_SPEC_AMOUNT"])
            studentDetail.properties['SUB_SPEC_AMOUNT']=Double.parseDouble(params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].SUB_SPEC_AMOUNT"])
            studentDetail.properties['SSC_COMMENTS']=params["rfqOpeningSheetDetailsByProcurementMaster[" + i + "].SSC_COMMENTS"]




            upRfqEvaluationInstance.addToUpRfqEvaluationSheetDetails(studentDetail)
            //misPoMasterInstance.addToMisPoDetails(misPoDetail)

            i++

        }

        if (!upRfqEvaluationInstance.save(flush: true)) {
            render(view: "edit", model: [upRfqEvaluationInstance: upRfqEvaluationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), upRfqEvaluationInstance.id])
        redirect(action: "show", id: upRfqEvaluationInstance.id)
    }

    def delete(Long id) {
        def upRfqEvaluationInstance = UpRfqEvaluation.get(id)
        if (!upRfqEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), id])
            redirect(action: "list")
            return
        }

        try {
            upRfqEvaluationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upRfqEvaluation.label', default: 'UpRfqEvaluation'), id])
            redirect(action: "show", id: id)
        }
    }

    def setValueForDetails(){
        List  rfqOpeningSheetDetailsByProcurementMaster = []
        if(params.procurementMasterId != null && params.procurementMasterId != "" && params.procurementMasterId != "null"){
            rfqOpeningSheetDetailsByProcurementMaster = commonService.getRfqOpeningSheetDetailsValueByProcurementMaster(Long.parseLong(params.procurementMasterId))
        }
            int rowCount = rfqOpeningSheetDetailsByProcurementMaster.size()
        render (template: 'rowWithValues', model: [rfqOpeningSheetDetailsByProcurementMaster: rfqOpeningSheetDetailsByProcurementMaster,rowCount: rowCount])
    }

    def setValueForForm(){
        def rfqOpeningSheetDetailsByProcurementMaster = []
        if(params.procurementMasterId != null && params.procurementMasterId != "" && params.procurementMasterId != "null"){
            rfqOpeningSheetDetailsByProcurementMaster = commonService.getRfqOpeningSheetDateDetailsValueByProcurementMaster(Long.parseLong(params.procurementMasterId))
        }
//        String value="${otmIFQDetailsByProcurementMaster?.PROCUREMENT_TYPE.toString().replace('[', '').replace(']', '')}"
        render (template: 'rfqOpeningSheetDetails', model: [rfqOpeningSheetDetailsByProcurementMaster: rfqOpeningSheetDetailsByProcurementMaster])
    }
}
