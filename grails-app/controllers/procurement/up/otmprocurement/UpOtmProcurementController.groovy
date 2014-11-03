package procurement.up.otmprocurement

import org.springframework.dao.DataIntegrityViolationException
//import procurement.up.directprocurement.UpDirectProcDetails

class UpOtmProcurementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upOtmProcurementInstanceList: UpOtmProcurement.list(params), upOtmProcurementInstanceTotal: UpOtmProcurement.count()]
    }

    def create() {
        [upOtmProcurementInstance: new UpOtmProcurement(params)]
    }

    def save() {
        println(params);
        def upOtmProcurementInstance= new UpOtmProcurement()

        upOtmProcurementInstance.properties["id","schemeInfo"] = params
        int i = 0
        while (params["upOtmProcurementDetails[" + i + "].GOODS_ID"] != null && params["upOtmProcurementDetails[" + i + "].GOODS_ID"] != "") {
        def upOtmProcurementDetails = new UpOtmProcurementDetails()

    upOtmProcurementDetails.properties['GOODS_ID']=params["upOtmProcurementDetails[" + i + "].GOODS_ID"]
    upOtmProcurementDetails.properties['GOODS_NAME']=params["upOtmProcurementDetails[" + i + "].GOODS_NAME"]
    upOtmProcurementDetails.properties['GOODS_DETAILS']=params["upOtmProcurementDetails[" + i + "].GOODS_DETAILS"]
    upOtmProcurementDetails.properties['RATE']=Double.parseDouble(params["upOtmProcurementDetails[" + i + "].RATE"])
    upOtmProcurementDetails.properties['AMOUNT']=Double.parseDouble(params["upOtmProcurementDetails[" + i + "].AMOUNT"])
    upOtmProcurementDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upOtmProcurementDetails[" + i + "].TOTAL_PRICE"])

                upOtmProcurementInstance.addToUpOtmProcurementDetails(upOtmProcurementDetails)
        i++
        }



        if (!upOtmProcurementInstance.save(flush: true)) {
            render(view: "create", model: [upOtmProcurementInstance: upOtmProcurementInstance])
            return
        }

//        if (!upDirectProcurementInstance.save(flush: true)) {
//            render(view: "create", model: [upDirectProcurementInstance: upDirectProcurementInstance])
//            return
//        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), upOtmProcurementInstance.id])
        redirect(action: "show", id: upOtmProcurementInstance.id)
    }

    def show(Long id) {
        def upOtmProcurementInstance = UpOtmProcurement.get(id)
        if (!upOtmProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), id])
            redirect(action: "list")
            return
        }

        [upOtmProcurementInstance: upOtmProcurementInstance]
    }

    def edit(Long id) {
        def upOtmProcurementInstance = UpOtmProcurement.get(id)
        if (!upOtmProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), id])
            redirect(action: "list")
            return
        }

        [upOtmProcurementInstance: upOtmProcurementInstance]
    }

    def update(Long id, Long version) {
        def upOtmProcurementInstance = UpOtmProcurement.get(id)
        if (!upOtmProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upOtmProcurementInstance.version > version) {
                upOtmProcurementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement')] as Object[],
                        "Another user has updated this UpOtmProcurement while you were editing")
                render(view: "edit", model: [upOtmProcurementInstance: upOtmProcurementInstance])
                return
            }
        }


        upOtmProcurementInstance.properties["id", "schemeInfo"] = params

        def i = 0
        while (params["upOtmProcurementDetails[" + i + "].GOODS_ID"] != null && params["upOtmProcurementDetails[" + i + "].GOODS_ID"] != "") {
            def upOtmProcurementDetails


            if (params["upOtmProcurementDetails[" + i + "].deleted"] == "true" && params["upOtmProcurementDetails[" + i + "].new"] == "false") {
                upOtmProcurementDetails = UpOtmProcurementDetails.get(Long.valueOf(params["upOtmProcurementDetails[" + i + "].id"]))
                upOtmProcurementInstance.removeFromUpOtmProcurementDetails(upOtmProcurementInstance)
                upOtmProcurementDetails.delete()
                i++
                continue
            }


            else if (params["upOtmProcurementDetails[" + i + "].deleted"] == "true" && params["upOtmProcurementDetails[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["upOtmProcurementDetails[" + i + "].deleted"] == "false" && params["upOtmProcurementDetails[" + i + "].new"] == "true") {
                upOtmProcurementDetails  = new UpOtmProcurementDetails()
                upOtmProcurementDetails.properties ['GOODS_ID'] =params["upOtmProcurementDetails[" + i + "].GOODS_ID"]
            }
            else {
                upOtmProcurementDetails=UpOtmProcurementDetails.get(Long.valueOf(params["upOtmProcurementDetails[" + i + "].id"]))
            }

            upOtmProcurementDetails.properties['GOODS_ID']=params["upOtmProcurementDetails[" + i + "].GOODS_ID"]
            upOtmProcurementDetails.properties['GOODS_NAME']=params["upOtmProcurementDetails[" + i + "].GOODS_NAME"]
            upOtmProcurementDetails.properties['GOODS_DETAILS']=params["upOtmProcurementDetails[" + i + "].GOODS_DETAILS"]
            upOtmProcurementDetails.properties['RATE']=Double.parseDouble(params["upOtmProcurementDetails[" + i + "].RATE"])
            upOtmProcurementDetails.properties['AMOUNT']=Double.parseDouble(params["upOtmProcurementDetails[" + i + "].AMOUNT"])
            upOtmProcurementDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upOtmProcurementDetails[" + i + "].TOTAL_PRICE"])
            upOtmProcurementInstance.addToUpOtmProcurementDetails(upOtmProcurementDetails)
            i++

        }
        if (!upOtmProcurementInstance.save(flush: true)) {
            render(view: "edit", model: [upOtmProcurementInstance: upOtmProcurementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), upOtmProcurementInstance.id])
        redirect(action: "show", id: upOtmProcurementInstance.id)
    }

    def delete(Long id) {
        def upOtmProcurementInstance = UpOtmProcurement.get(id)
        if (!upOtmProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), id])
            redirect(action: "list")
            return
        }

        try {
            upOtmProcurementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement'), id])
            redirect(action: "show", id: id)
        }
    }
}
