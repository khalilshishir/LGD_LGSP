package procurement.up.rfqprocurement

import org.springframework.dao.DataIntegrityViolationException

class UpRfqProcurementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upRfqProcurementInstanceList: UpRfqProcurement.list(params), upRfqProcurementInstanceTotal: UpRfqProcurement.count()]
    }

    def create() {
        [upRfqProcurementInstance: new UpRfqProcurement(params)]
    }

    def save() {

        println(params);
//        def upOtmProcurementInstance= new UpOtmProcurement()
        def upRfqProcurementInstance= new UpRfqProcurement()
//        upOtmProcurementInstance.properties["id","schemeInfo"] = params
        upRfqProcurementInstance.properties["id","schemeInfo"] = params
          int i = 0
        while (params["upRfqProcurementDetails[" + i + "].GOODS_ID"] != null && params["upOtmProcurementDetails[" + i + "].GOODS_ID"] != "") {
            def upRfqProcurementDetails = new UpRfqProcurementDetails()


            upRfqProcurementDetails.properties['GOODS_ID']=params["upRfqProcurementDetails[" + i + "].GOODS_ID"]
            upRfqProcurementDetails.properties['GOODS_NAME']=params["upRfqProcurementDetails[" + i + "].GOODS_NAME"]
            upRfqProcurementDetails.properties['GOODS_DETAILS']=params["upRfqProcurementDetails[" + i + "].GOODS_DETAILS"]
            upRfqProcurementDetails.properties['RATE']=Double.parseDouble(params["upRfqProcurementDetails[" + i + "].RATE"])
            upRfqProcurementDetails.properties['AMOUNT']=Double.parseDouble(params["upRfqProcurementDetails[" + i + "].AMOUNT"])
            upRfqProcurementDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upRfqProcurementDetails[" + i + "].TOTAL_PRICE"])

//            upOtmProcurementInstance.addToUpOtmProcurementDetails(upOtmProcurementDetails)
            upRfqProcurementInstance.addToUpRfqProcurementDetails(upRfqProcurementDetails)
            i++
        }





//        def upRfqProcurementInstance = new UpRfqProcurement(params)
        if (!upRfqProcurementInstance.save(flush: true)) {
            render(view: "create", model: [upRfqProcurementInstance: upRfqProcurementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), upRfqProcurementInstance.id])
        redirect(action: "show", id: upRfqProcurementInstance.id)
    }

    def show(Long id) {
        def upRfqProcurementInstance = UpRfqProcurement.get(id)
        if (!upRfqProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), id])
            redirect(action: "list")
            return
        }

        [upRfqProcurementInstance: upRfqProcurementInstance]
    }

    def edit(Long id) {
        def upRfqProcurementInstance = UpRfqProcurement.get(id)
        if (!upRfqProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), id])
            redirect(action: "list")
            return
        }

        [upRfqProcurementInstance: upRfqProcurementInstance]
    }

    def update(Long id, Long version) {
        def upRfqProcurementInstance = UpRfqProcurement.get(id)
        if (!upRfqProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upRfqProcurementInstance.version > version) {
                upRfqProcurementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement')] as Object[],
                          "Another user has updated this UpRfqProcurement while you were editing")
                render(view: "edit", model: [upRfqProcurementInstance: upRfqProcurementInstance])
                return
            }
        }

        upRfqProcurementInstance.properties["id", "schemeInfo"] = params

           def i = 0
            while (params["upRfqProcurementDetails[" + i + "].GOODS_ID"] != null && params["upRfqProcurementDetails[" + i + "].GOODS_ID"] != "") {
                def upRfqProcurementDetails


                if (params["upRfqProcurementDetails[" + i + "].deleted"] == "true" && params["upRfqProcurementDetails[" + i + "].new"] == "false") {
                    upRfqProcurementDetails = upRfqProcurementDetails.get(Long.valueOf(params["upRfqProcurementDetails[" + i + "].id"]))
                    upRfqProcurementInstance.removeFromUpRfqProcurementDetails()(upRfqProcurementInstance)
                    upRfqProcurementDetails.delete()
                    i++
                    continue
                }



                else if (params["upRfqProcurementDetails[" + i + "].deleted"] == "true" && params["upRfqProcurementDetails[" + i + "].new"] == "true") {
                    i++
                    continue
                }
                else if (params["upRfqProcurementDetails[" + i + "].deleted"] == "false" && params["upRfqProcurementDetails[" + i + "].new"] == "true") {
                    upRfqProcurementDetails  = new UpRfqProcurementDetails()
                    upRfqProcurementDetails.properties ['GOODS_ID'] =params["upRfqProcurementDetails[" + i + "].GOODS_ID"]
                }
                else {
                    upRfqProcurementDetails=UpRfqProcurementDetails.get(Long.valueOf(params["upRfqProcurementDetails[" + i + "].id"]))
                }

                upRfqProcurementDetails.properties['GOODS_ID']=params["upRfqProcurementDetails[" + i + "].GOODS_ID"]
                upRfqProcurementDetails.properties['GOODS_NAME']=params["upRfqProcurementDetails[" + i + "].GOODS_NAME"]
                upRfqProcurementDetails.properties['GOODS_DETAILS']=params["upRfqProcurementDetails[" + i + "].GOODS_DETAILS"]
                upRfqProcurementDetails.properties['RATE']=Double.parseDouble(params["upRfqProcurementDetails[" + i + "].RATE"])
                upRfqProcurementDetails.properties['AMOUNT']=Double.parseDouble(params["upRfqProcurementDetails[" + i + "].AMOUNT"])
                upRfqProcurementDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upRfqProcurementDetails[" + i + "].TOTAL_PRICE"])
                upRfqProcurementInstance.addToUpRfqProcurementDetails(upRfqProcurementDetails)
                i++

            }

//        upRfqProcurementInstance.properties = params

        if (!upRfqProcurementInstance.save(flush: true)) {
            render(view: "edit", model: [upRfqProcurementInstance: upRfqProcurementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), upRfqProcurementInstance.id])
        redirect(action: "show", id: upRfqProcurementInstance.id)
    }

    def delete(Long id) {
        def upRfqProcurementInstance = UpRfqProcurement.get(id)
        if (!upRfqProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), id])
            redirect(action: "list")
            return
        }

        try {
            upRfqProcurementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upRfqProcurement.label', default: 'UpRfqProcurement'), id])
            redirect(action: "show", id: id)
        }
    }
}
