package procurement.up.rfqprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Up_Proc_Master

class UpRfqOpeningSheetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upRfqOpeningSheetInstanceList: UpRfqOpeningSheet.list(params), upRfqOpeningSheetInstanceTotal: UpRfqOpeningSheet.count()]
    }

    def create() {
//        def procurementType = Procurement_Type.get(3)
        String procurementType = UpProcType.RFQ_PROCUREMENT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('procurementType',procurementType)
        }
        [upRfqOpeningSheetInstance: new UpRfqOpeningSheet(params), upProcMasterList: results]
    }

    def save() {
        println(params);
        def upRfqOpeningSheetInstance = new UpRfqOpeningSheet()

        upRfqOpeningSheetInstance.properties["id", "UP_PROC_MASTER","INVITATION_DATE","SUB_LAST_DATE","OPENING_DATE"] = params


        int i = 0
        while (params["upRfqOpeningSheetDetails[" + i + "].VENDOR_NAME"] != null && params["upRfqOpeningSheetDetails[" + i + "].VENDOR_NAME"] != "") {
            def upRfqOpeningSheetDetails = new UpRfqOpeningSheetDetails()

            upRfqOpeningSheetDetails.properties['VENDOR_NAME']=params["upRfqOpeningSheetDetails[" + i + "].VENDOR_NAME"]
            upRfqOpeningSheetDetails.properties['PRICE']=Double.parseDouble(params["upRfqOpeningSheetDetails[" + i + "].PRICE"])
            upRfqOpeningSheetDetails.properties['COMMENTS']=params["upRfqOpeningSheetDetails[" + i + "].COMMENTS"]

            upRfqOpeningSheetInstance.addToUpRfqOpeningSheetDetails(upRfqOpeningSheetDetails)

            i++
        }

        if (!upRfqOpeningSheetInstance.save(flush: true)) {
            render(view: "create", model: [upRfqOpeningSheetInstance: upRfqOpeningSheetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), upRfqOpeningSheetInstance.id])
        redirect(action: "show", id: upRfqOpeningSheetInstance.id)
    }

    def show(Long id) {
        def upRfqOpeningSheetInstance = UpRfqOpeningSheet.get(id)
        if (!upRfqOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }

        [upRfqOpeningSheetInstance: upRfqOpeningSheetInstance]
    }

    def edit(Long id) {
        def upRfqOpeningSheetInstance = UpRfqOpeningSheet.get(id)
        def upProcMaster = Up_Proc_Master.get(upRfqOpeningSheetInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!upRfqOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }
        [upRfqOpeningSheetInstance: upRfqOpeningSheetInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def upRfqOpeningSheetInstance = UpRfqOpeningSheet.get(id)
        if (!upRfqOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upRfqOpeningSheetInstance.version > version) {
                upRfqOpeningSheetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet')] as Object[],
                        "Another user has updated this UpOtmOpeningSheet while you were editing")
                render(view: "edit", model: [upRfqOpeningSheetInstance: upRfqOpeningSheetInstance])
                return
            }
        }

        upRfqOpeningSheetInstance.properties["id", "UP_PROC_MASTER","INVITATION_DATE","SUB_LAST_DATE","OPENING_DATE"] = params



        def i = 0



        while (params["upRfqOpeningSheetDetails[" + i + "].VENDOR_NAME"] != null && params["upRfqOpeningSheetDetails[" + i + "].VENDOR_NAME"] !="") {


            def studentDetail

            if (params["upRfqOpeningSheetDetails[" + i + "].deleted"] == "true" && params["upRfqOpeningSheetDetails[" + i + "].new"] == "false") {
                studentDetail = UpRfqOpeningSheetDetails.get(Long.valueOf(params["upRfqOpeningSheetDetails[" + i + "].id"]))
                upRfqOpeningSheetInstance.removeFromUpRfqOpeningSheetDetails(studentDetail)
                studentDetail.delete()
                i++
                continue
            }
            else if (params["upRfqOpeningSheetDetails[" + i + "].deleted"] == "true" && params["upRfqOpeningSheetDetails[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["upRfqOpeningSheetDetails[" + i + "].deleted"] == "false" && params["upRfqOpeningSheetDetails[" + i + "].new"] == "true") {
                studentDetail = new UpRfqOpeningSheetDetails()
                studentDetail.properties['VENDOR_NAME'] =params["upRfqOpeningSheetDetails[" + i + "].VENDOR_NAME"]
            }
            else {
                studentDetail = UpRfqOpeningSheetDetails.get(Long.valueOf(params["upRfqOpeningSheetDetails[" + i + "].id"]))
            }

            studentDetail.properties['VENDOR_NAME']=params["upRfqOpeningSheetDetails[" + i + "].VENDOR_NAME"]
            studentDetail.properties['PRICE']=Double.parseDouble(params["upRfqOpeningSheetDetails[" + i + "].PRICE"])
            studentDetail.properties['COMMENTS']=params["upRfqOpeningSheetDetails[" + i + "].COMMENTS"]





            upRfqOpeningSheetInstance.addToUpRfqOpeningSheetDetails(studentDetail)

            i++

        }

        if (!upRfqOpeningSheetInstance.save(flush: true)) {
            render(view: "edit", model: [upRfqOpeningSheetInstance: upRfqOpeningSheetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), upRfqOpeningSheetInstance.id])
        redirect(action: "show", id: upRfqOpeningSheetInstance.id)
    }

    def delete(Long id) {
        def upRfqOpeningSheetInstance = UpRfqOpeningSheet.get(id)
        if (!upRfqOpeningSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
            return
        }

        try {
            upRfqOpeningSheetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upRfqOpeningSheet.label', default: 'UpOtmOpeningSheet'), id])
            redirect(action: "show", id: id)
        }
    }
}
