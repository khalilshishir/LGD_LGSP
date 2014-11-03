package procurement.up.directprocurement

import org.springframework.dao.DataIntegrityViolationException

class UpDirectProcurementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upDirectProcurementInstanceList: UpDirectProcurement.list(params), upDirectProcurementInstanceTotal: UpDirectProcurement.count()]
    }

    def create() {
        [upDirectProcurementInstance: new UpDirectProcurement(params)]
    }

    def save() {

        println(params);
        def upDirectProcurementInstance = new UpDirectProcurement()

        upDirectProcurementInstance.properties["id","schemeInfo"] = params


        int i = 0
        while (params["upDirectProcDetails[" + i + "].GOODS_ID"] != null && params["upDirectProcDetails[" + i + "].GOODS_ID"] != "") {
            def upDirectProcDetails = new UpDirectProcDetails()

            upDirectProcDetails.properties['GOODS_ID']=params["upDirectProcDetails[" + i + "].GOODS_ID"]
            upDirectProcDetails.properties['GOODS_NAME']=params["upDirectProcDetails[" + i + "].GOODS_NAME"]
            upDirectProcDetails.properties['GOODS_DETAILS']=params["upDirectProcDetails[" + i + "].GOODS_DETAILS"]
            upDirectProcDetails.properties['RATE']=Double.parseDouble(params["upDirectProcDetails[" + i + "].RATE"])
            upDirectProcDetails.properties['AMOUNT']=Double.parseDouble(params["upDirectProcDetails[" + i + "].AMOUNT"])
            upDirectProcDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upDirectProcDetails[" + i + "].TOTAL_PRICE"])

//            upDirectProcDetails.properties['ACTUAL_RATE']=params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"])
//            upDirectProcDetails.properties['ACTUAL_AMOUNT']=params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"])
//            upDirectProcDetails.properties['ACTUAL_TOTAL_PRICE']=(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"])*(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"])))

            upDirectProcurementInstance.addToUpDirectProcDetails(upDirectProcDetails)


            i++
        }





        if (!upDirectProcurementInstance.save(flush: true)) {
            render(view: "create", model: [upDirectProcurementInstance: upDirectProcurementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), upDirectProcurementInstance.id])
        redirect(action: "show", id: upDirectProcurementInstance.id)
    }

    def show(Long id) {
        def upDirectProcurementInstance = UpDirectProcurement.get(id)
        if (!upDirectProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), id])
            redirect(action: "list")
            return
        }

        [upDirectProcurementInstance: upDirectProcurementInstance]
    }

    def edit(Long id) {
        def upDirectProcurementInstance = UpDirectProcurement.get(id)
        if (!upDirectProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), id])
            redirect(action: "list")
            return
        }

        [upDirectProcurementInstance: upDirectProcurementInstance]
    }

    def update(Long id, Long version) {
        def upDirectProcurementInstance = UpDirectProcurement.get(id)
        if (!upDirectProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upDirectProcurementInstance.version > version) {
                upDirectProcurementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement')] as Object[],
                          "Another user has updated this UpDirectProcurement while you were editing")
                render(view: "edit", model: [upDirectProcurementInstance: upDirectProcurementInstance])
                return
            }
        }




        upDirectProcurementInstance.properties["id", "schemeInfo"] = params



        def i = 0



        while (params["upDirectProcDetails[" + i + "].GOODS_ID"] != null && params["upDirectProcDetails[" + i + "].GOODS_ID"] != "") {


            def upDirectProcDetails

            if (params["upDirectProcDetails[" + i + "].deleted"] == "true" && params["upDirectProcDetails[" + i + "].new"] == "false") {
                upDirectProcDetails = UpDirectProcurementDetails.get(Long.valueOf(params["upDirectProcDetails[" + i + "].id"]))
                upDirectProcurementInstance.removeFromUpDirectProcDetails(upDirectProcDetails)
                upDirectProcDetails.delete()
                i++
                continue
            }
            else if (params["upDirectProcDetails[" + i + "].deleted"] == "true" && params["upDirectProcDetails[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["upDirectProcDetails[" + i + "].deleted"] == "false" && params["upDirectProcDetails[" + i + "].new"] == "true") {
                upDirectProcDetails = new UpDirectProcDetails()
                upDirectProcDetails.properties['GOODS_ID'] =params["upDirectProcDetails[" + i + "].GOODS_ID"]
            }
            else {
                upDirectProcDetails = UpDirectProcDetails.get(Long.valueOf(params["upDirectProcDetails[" + i + "].id"]))
            }

            upDirectProcDetails.properties['GOODS_ID']=params["upDirectProcDetails[" + i + "].GOODS_ID"]
            upDirectProcDetails.properties['GOODS_NAME']=params["upDirectProcDetails[" + i + "].GOODS_NAME"]
            upDirectProcDetails.properties['GOODS_DETAILS']=params["upDirectProcDetails[" + i + "].GOODS_DETAILS"]
            upDirectProcDetails.properties['RATE']=Double.parseDouble(params["upDirectProcDetails[" + i + "].RATE"])
            upDirectProcDetails.properties['AMOUNT']=Double.parseDouble(params["upDirectProcDetails[" + i + "].AMOUNT"])
            upDirectProcDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upDirectProcDetails[" + i + "].TOTAL_PRICE"])


            upDirectProcurementInstance.addToUpDirectProcDetails(upDirectProcDetails)
            //misPoMasterInstance.addToMisPoDetails(misPoDetail)

            i++

        }






        if (!upDirectProcurementInstance.save(flush: true)) {
            render(view: "edit", model: [upDirectProcurementInstance: upDirectProcurementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), upDirectProcurementInstance.id])
        redirect(action: "show", id: upDirectProcurementInstance.id)
    }

    def delete(Long id) {
        def upDirectProcurementInstance = UpDirectProcurement.get(id)
        if (!upDirectProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), id])
            redirect(action: "list")
            return
        }

        try {
            upDirectProcurementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement'), id])
            redirect(action: "show", id: id)
        }
    }
}
