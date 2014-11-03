package procurement.up.otmprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Procurement_Type.CommonService
import procurement.up.Up_Proc_Master

class UpOtmEvaluationController {

    CommonService commonService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upOtmEvaluationInstanceList: UpOtmEvaluation.list(params), upOtmEvaluationInstanceTotal: UpOtmEvaluation.count()]
    }

    def create() {
        String procurementType = UpProcType.OTM_PROCUREMENT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('procurementType',procurementType)
        }
        [upOtmEvaluationInstance: new UpOtmEvaluation(params), upProcMasterList: results]
    }

    def save() {
        println(params);
        def upOtmEvaluationInstance = new UpOtmEvaluation()

        upOtmEvaluationInstance.properties["id", "INVITATION_DATE","OPENING_DATE","EVALUATION_DATE","UP_PROC_MASTER","TEC"] = params


        int i = 0
        while (params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"] != null) {
            def upOtmEvaluationSheetDetails = new UpOtmEvaluationSheetDetails()

            upOtmEvaluationSheetDetails.properties['VENDOR_NAME']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"]
            upOtmEvaluationSheetDetails.properties['PRICE']=Double.parseDouble(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].PRICE"])
            upOtmEvaluationSheetDetails.properties['INVITATOR_QUALIFICATIONS']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].INVITATOR_QUALIFICATIONS"]
            upOtmEvaluationSheetDetails.properties['GOODS_SPECIFICATIONS']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].GOODS_SPECIFICATIONS"]
            upOtmEvaluationSheetDetails.properties['OTHER_CONDITIONS']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].OTHER_CONDITIONS"]
            upOtmEvaluationSheetDetails.properties['QUOTED_UNIT_PRICE']=Double.parseDouble(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].QUOTED_UNIT_PRICE"])
            upOtmEvaluationSheetDetails.properties['QUOTED_PRICE']=Double.parseDouble(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].QUOTED_PRICE"])
            upOtmEvaluationSheetDetails.properties['OVERALL_ACCEPTANCE']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].OVERALL_ACCEPTANCE"]
            upOtmEvaluationSheetDetails.properties['POSITION_BY_QUOTED_PRICE']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].POSITION_BY_QUOTED_PRICE"]

            upOtmEvaluationInstance.addToUpOtmEvaluationSheetDetails(upOtmEvaluationSheetDetails)


            i++
        }
        if (!upOtmEvaluationInstance.save(flush: true)) {
            render(view: "create", model: [upOtmEvaluationInstance: upOtmEvaluationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), upOtmEvaluationInstance.id])
        redirect(action: "show", id: upOtmEvaluationInstance.id)
    }

    def show(Long id) {
        def upOtmEvaluationInstance = UpOtmEvaluation.get(id)
        if (!upOtmEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), id])
            redirect(action: "list")
            return
        }

        [upOtmEvaluationInstance: upOtmEvaluationInstance]
    }

    def edit(Long id) {
        def upOtmEvaluationInstance = UpOtmEvaluation.get(id)
        def upProcMaster = Up_Proc_Master.get(upOtmEvaluationInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!upOtmEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), id])
            redirect(action: "list")
            return
        }

        def upOtmEvaluationSheetDetails = UpOtmEvaluationSheetDetails.findAllByUpOtmEvaluation(UpOtmEvaluation.get(upOtmEvaluationInstance.id))

        [upOtmEvaluationInstance: upOtmEvaluationInstance, upOtmEvaluationSheetDetails: upOtmEvaluationSheetDetails, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def upOtmEvaluationInstance = UpOtmEvaluation.get(id)
        if (!upOtmEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upOtmEvaluationInstance.version > version) {
                upOtmEvaluationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation')] as Object[],
                        "Another user has updated this UpOtmEvaluation while you were editing")
                render(view: "edit", model: [upOtmEvaluationInstance: upOtmEvaluationInstance])
                return
            }
        }

        upOtmEvaluationInstance.properties["id", "INVITATION_DATE","OPENING_DATE","EVALUATION_DATE","UP_PROC_MASTER","TEC"] = params


        def i = 0



        while (params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"] != null) {


            def studentDetail

            if (params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].deleted"] == "true" && params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].new"] == "false") {
                studentDetail = UpOtmEvaluationSheetDetails.get(Long.valueOf(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].id"]))
                upOtmEvaluationInstance.removeFromUpOtmEvaluationSheetDetails(studentDetail)
                studentDetail.delete()
                i++
                continue
            }
            else if (params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].deleted"] == "true" && params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].deleted"] == "false" && params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].new"] == "true") {
                studentDetail = new UpOtmEvaluationSheetDetails()
                studentDetail.properties['VENDOR_NAME'] =params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"]
            }
            else {
                params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].id"]
                studentDetail = UpOtmEvaluationSheetDetails.get(Long.valueOf(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].id"]))
            }

            studentDetail.properties['VENDOR_NAME']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].VENDOR_NAME"]
            studentDetail.properties['PRICE']=Double.parseDouble(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].PRICE"])
            studentDetail.properties['INVITATOR_QUALIFICATIONS']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].INVITATOR_QUALIFICATIONS"]
            studentDetail.properties['GOODS_SPECIFICATIONS']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].GOODS_SPECIFICATIONS"]
            studentDetail.properties['OTHER_CONDITIONS']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].OTHER_CONDITIONS"]
            studentDetail.properties['QUOTED_UNIT_PRICE']=Double.parseDouble(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].QUOTED_UNIT_PRICE"])
            studentDetail.properties['QUOTED_PRICE']=Double.parseDouble(params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].QUOTED_PRICE"])
            studentDetail.properties['OVERALL_ACCEPTANCE']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].OVERALL_ACCEPTANCE"]
            studentDetail.properties['POSITION_BY_QUOTED_PRICE']=params["otmOpeningSheetDetailsByProcurementMaster[" + i + "].POSITION_BY_QUOTED_PRICE"]




            upOtmEvaluationInstance.addToUpOtmEvaluationSheetDetails(studentDetail)

            i++

        }

        if (!upOtmEvaluationInstance.save(flush: true)) {
            render(view: "edit", model: [upOtmEvaluationInstance: upOtmEvaluationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), upOtmEvaluationInstance.id])
        redirect(action: "show", id: upOtmEvaluationInstance.id)
    }

    def delete(Long id) {
        def upOtmEvaluationInstance = UpOtmEvaluation.get(id)
        if (!upOtmEvaluationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), id])
            redirect(action: "list")
            return
        }

        try {
            upOtmEvaluationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upOtmEvaluation.label', default: 'UpOtmEvaluation'), id])
            redirect(action: "show", id: id)
        }
    }

    def setValueForDetails(){
//        println("------------------------------------  "+ params.procurementMasterId)
        List  otmOpeningSheetDetailsByProcurementMaster = []
        if(params.procurementMasterId != null && params.procurementMasterId != "" && params.procurementMasterId != "null"){
            otmOpeningSheetDetailsByProcurementMaster = commonService.getOtmOpeningSheetDetailsValueByProcurementMaster(Long.parseLong(params.procurementMasterId))
        }
        render (template: 'rowWithValues', model: [otmOpeningSheetDetailsByProcurementMaster: otmOpeningSheetDetailsByProcurementMaster])
    }

    def setValueForForm(){
        def otmIFQAndOpeningSheetDetailsByProcurementMaster = []
        if(params.procurementMasterId != null && params.procurementMasterId != "" && params.procurementMasterId != "null"){
            otmIFQAndOpeningSheetDetailsByProcurementMaster = commonService.getOtmIFQAndOpeningSheetDetailsValueByProcurementMaster(Long.parseLong(params.procurementMasterId))
        }
//        String value="${otmIFQDetailsByProcurementMaster?.PROCUREMENT_TYPE.toString().replace('[', '').replace(']', '')}"
        render (template: 'ifqAndOpeningSheetDetails', model: [otmIFQAndOpeningSheetDetailsByProcurementMaster: otmIFQAndOpeningSheetDetailsByProcurementMaster])
    }
}
