package procurement.up.directprocurement

import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Up_Proc_Master

class UpDirectProcActualController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upDirectProcActualInstanceList: UpDirectProc.list(params), upDirectProcActualInstanceTotal: UpDirectProc.count()]
    }

    def create() {
        def procurementType = Procurement_Type.get(1)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('PROCUREMENT_TYPE',procurementType)
        }
        [upDirectProcActualInstance: new UpDirectProc(params), upProcMasterList: results]
    }

    def save() {
        println(params);
        def upDirectProcActualInstance = new UpDirectProc()

        upDirectProcActualInstance.properties["id", "UP_PROC_MASTER"] = params


        int i = 0
        while (params["upDirectProcurementActualDetails[" + i + "].GOODS_ID"] != null) {


            def upDirectProcActualDetails = new UpDirectProcActualDetails()

            upDirectProcActualDetails.properties['GOODS_ID']=params["upDirectProcurementActualDetails[" + i + "].GOODS_ID"]
            upDirectProcActualDetails.properties['GOODS_NAME']=params["upDirectProcurementActualDetails[" + i + "].GOODS_NAME"]
            upDirectProcActualDetails.properties['GOODS_DETAILS']=params["upDirectProcurementActualDetails[" + i + "].GOODS_DETAILS"]
            upDirectProcActualDetails.properties['RATE']=Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].RATE"])
            upDirectProcActualDetails.properties['AMOUNT']=Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].AMOUNT"])
            upDirectProcActualDetails.properties['TOTAL_PRICE']=(Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].RATE"]))*(Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].AMOUNT"]))



            upDirectProcActualInstance.addToUpDirectProcActualDetails(upDirectProcActualDetails)


            i++
        }

        if (!upDirectProcActualInstance.save(flush: true)) {
            render(view: "create", model: [upDirectProcActualInstance: upDirectProcActualInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upDirectProcActual.label', default: 'Up Direct Procurement Actual'), upDirectProcActualInstance.id])
        redirect(action: "show", id: upDirectProcActualInstance.id)



//        def upDirectProcActualInstance = new UpDirectProc(params)
//        if (!upDirectProcActualInstance.save(flush: true)) {
//            render(view: "create", model: [upDirectProcActualInstance: upDirectProcActualInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), upDirectProcActualInstance.id])
//        redirect(action: "show", id: upDirectProcActualInstance.id)
    }

    def show(Long id) {
        def upDirectProcActualInstance = UpDirectProc.get(id)
        if (!upDirectProcActualInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        [upDirectProcActualInstance: upDirectProcActualInstance]
    }

    def edit(Long id) {
        def upDirectProcActualInstance = UpDirectProc.get(id)
        def upProcMaster = Up_Proc_Master.get(upDirectProcActualInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!upDirectProcActualInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        [upDirectProcActualInstance: upDirectProcActualInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def upDirectProcActualInstance = UpDirectProc.get(id)
        if (!upDirectProcActualInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upDirectProcActualInstance.version > version) {
                upDirectProcActualInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'upDirectProcActual.label', default: 'UpDirectProc')] as Object[],
                          "Another user has updated this UpDirectProc while you were editing")
                render(view: "edit", model: [upDirectProcActualInstance: upDirectProcActualInstance])
                return
            }
        }

        upDirectProcActualInstance.properties ["id", "UP_PROC_MASTER"] = params

        def i = 0



        while (params["upDirectProcurementActualDetails[" + i + "].GOODS_ID"] != null) {


            def studentDetail

            if (params["upDirectProcurementActualDetails[" + i + "].deleted"] == "true" && params["upDirectProcurementActualDetails[" + i + "].new"] == "false") {
                studentDetail = UpDirectProcActualDetails.get(Long.valueOf(params["upDirectProcurementActualDetails[" + i + "].id"]))
                upDirectProcActualInstance.removeFromUpDirectProcActualDetails(studentDetail)
                studentDetail.delete()
                i++
                continue
            }
            else if (params["upDirectProcurementActualDetails[" + i + "].deleted"] == "true" && params["upDirectProcurementActualDetails[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["upDirectProcurementActualDetails[" + i + "].deleted"] == "false" && params["upDirectProcurementActualDetails[" + i + "].new"] == "true") {
                studentDetail = new UpDirectProcActualDetails()
                studentDetail.properties['GOODS_ID'] =params["upDirectProcurementActualDetails[" + i + "].GOODS_ID"]
            }
            else {
                studentDetail = UpDirectProcActualDetails.get(Long.valueOf(params["upDirectProcurementActualDetails[" + i + "].id"]))
            }

            studentDetail.properties['GOODS_ID']=params["upDirectProcurementActualDetails[" + i + "].GOODS_ID"]
            studentDetail.properties['GOODS_NAME']=params["upDirectProcurementActualDetails[" + i + "].GOODS_NAME"]
            studentDetail.properties['GOODS_DETAILS']=params["upDirectProcurementActualDetails[" + i + "].GOODS_DETAILS"]
            studentDetail.properties['RATE']=Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].RATE"])
            studentDetail.properties['AMOUNT']=Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].AMOUNT"])
            studentDetail.properties['TOTAL_PRICE']=(Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].RATE"]))*(Double.parseDouble(params["upDirectProcurementActualDetails[" + i + "].AMOUNT"]))






            upDirectProcActualInstance.addToUpDirectProcActualDetails(studentDetail)
            //misPoMasterInstance.addToMisPoDetails(misPoDetail)

            i++

        }

        if (!upDirectProcActualInstance.save(flush: true)) {
            render(view: "edit", model: [upDirectProcActualInstance: upDirectProcActualInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), upDirectProcActualInstance.id])
        redirect(action: "show", id: upDirectProcActualInstance.id)
    }

    def delete(Long id) {
        def upDirectProcActualInstance = UpDirectProc.get(id)
        if (!upDirectProcActualInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        try {
            upDirectProcActualInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upDirectProcActual.label', default: 'UpDirectProc'), id])
            redirect(action: "show", id: id)
        }
    }
}
