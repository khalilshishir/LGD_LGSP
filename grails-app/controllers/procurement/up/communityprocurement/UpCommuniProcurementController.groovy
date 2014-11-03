package procurement.up.communityprocurement

import org.springframework.dao.DataIntegrityViolationException

class UpCommuniProcurementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upCommuniProcurementInstanceList: UpCommuniProcurement.list(params), upCommuniProcurementInstanceTotal: UpCommuniProcurement.count()]
    }

    def create() {
        [upCommuniProcurementInstance: new UpCommuniProcurement(params)]
    }

    def save() {

        println(params);
        def upCommuniProcurementInstance = new  UpCommuniProcurement()


        upCommuniProcurementInstance.properties["id","schemeInfo"] = params

        int i = 0
        while (params["upCommuniProcurementDetails[" + i + "].GOODS_ID"] != null && params["upCommuniProcurementDetails[" + i + "].GOODS_ID"] != "") {
            def upCommuniProcurementDetails = new UpCommuniProcurementDetails()

            upCommuniProcurementDetails.properties['GOODS_ID']=params["upCommuniProcurementDetails[" + i + "].GOODS_ID"]
            upCommuniProcurementDetails.properties['GOODS_NAME']=params["upCommuniProcurementDetails[" + i + "].GOODS_NAME"]
            upCommuniProcurementDetails.properties['GOODS_DETAILS']=params["upCommuniProcurementDetails[" + i + "].GOODS_DETAILS"]
            upCommuniProcurementDetails.properties['RATE']=Double.parseDouble(params["upCommuniProcurementDetails[" + i + "].RATE"])
            upCommuniProcurementDetails.properties['AMOUNT']=Double.parseDouble(params["upCommuniProcurementDetails[" + i + "].AMOUNT"])
            upCommuniProcurementDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upCommuniProcurementDetails[" + i + "].TOTAL_PRICE"])

//            upCommuniProcurementDetails.properties['ACTUAL_RATE']=params["UpCommuniProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["UpCommuniProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["UpCommuniProcurementDetails[" + i + "].ACTUAL_RA"])
//            upCommuniProcurementDetails.properties['ACTUAL_AMOUNT']=params["UpCommuniProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["UpCommuniProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["UpCommuniProcurementDetails[" + i + "].ACTUAL_AM"])
//            upCommuniProcurementDetails.properties['ACTUAL_TOTAL_PRICE']=(params["UpCommuniProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["UpCommuniProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["UpCommuniProcurementDetails[" + i + "].ACTUAL_RA"])*(params["UpCommuniProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["UpCommuniProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["UpCommuniProcurementDetails[" + i + "].ACTUAL_AM"])))

//            upCommuniProcurementInstance.addToupCommuniProcurementDetails(upCommuniProcurementDetails)
            upCommuniProcurementInstance.addToUpCommuniProcurementDetails(upCommuniProcurementDetails)


            i++
        }



//        def upCommuniProcurementInstance = new UpCommuniProcurement(params)
        if (!upCommuniProcurementInstance.save(flush: true)) {
            render(view: "create", model: [upCommuniProcurementInstance: upCommuniProcurementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), upCommuniProcurementInstance.id])
        redirect(action: "show", id: upCommuniProcurementInstance.id)
    }

    def show(Long id) {
        def upCommuniProcurementInstance = UpCommuniProcurement.get(id)
        if (!upCommuniProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), id])
            redirect(action: "list")
            return
        }

        [upCommuniProcurementInstance: upCommuniProcurementInstance]
    }

    def edit(Long id) {
        def upCommuniProcurementInstance = UpCommuniProcurement.get(id)
        if (!upCommuniProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), id])
            redirect(action: "list")
            return
        }

        [upCommuniProcurementInstance: upCommuniProcurementInstance]
    }

    def update(Long id, Long version) {
        def upCommuniProcurementInstance = UpCommuniProcurement.get(id)
        if (!upCommuniProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upCommuniProcurementInstance.version > version) {
                upCommuniProcurementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement')] as Object[],
                        "Another user has updated this UpCommuniProcurement while you were editing")
                render(view: "edit", model: [upCommuniProcurementInstance: upCommuniProcurementInstance])
                return
            }
        }

        upCommuniProcurementInstance.properties["id", "schemeInfo"] = params



        def i = 0



        while (params["upCommuniProcurementDetails[" + i + "].GOODS_ID"] != null && params["upCommuniProcurementDetails[" + i + "].GOODS_ID"] != "") {


            def upCommuniProcurementDetails

            if (params["upCommuniProcurementDetails[" + i + "].deleted"] == "true" && params["upCommuniProcurementDetails[" + i + "].new"] == "false") {
                upCommuniProcurementDetails = UpCommuniProcurementDetails.get(Long.valueOf(params["upCommuniProcurementDetails[" + i + "].id"]))
                upCommuniProcurementInstance.removeFromUpCommuniProcurementDetails()
                upCommuniProcurementDetails.delete()
                i++
                continue
            }
            else if (params["upCommuniProcurementDetails[" + i + "].deleted"] == "true" && params["upCommuniProcurementDetails[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["upCommuniProcurementDetails[" + i + "].deleted"] == "false" && params["upCommuniProcurementDetails[" + i + "].new"] == "true") {
                upCommuniProcurementDetails = new UpCommuniProcurementDetails()
                upCommuniProcurementDetails.properties['GOODS_ID'] =params["upCommuniProcurementDetails[" + i + "].GOODS_ID"]
            }
            else {
                upCommuniProcurementDetails = UpCommuniProcurementDetails.get(Long.valueOf(params["upCommuniProcurementDetails[" + i + "].id"]))
//                upDirectProcDetails = UpDirectProcDetails.get(Long.valueOf(params["upDirectProcDetails[" + i + "].id"]))
            }

            upCommuniProcurementDetails.properties['GOODS_ID']=params["upCommuniProcurementDetails[" + i + "].GOODS_ID"]
            upCommuniProcurementDetails.properties['GOODS_NAME']=params["upCommuniProcurementDetails[" + i + "].GOODS_NAME"]
            upCommuniProcurementDetails.properties['GOODS_DETAILS']=params["upCommuniProcurementDetails[" + i + "].GOODS_DETAILS"]
            upCommuniProcurementDetails.properties['RATE']=Double.parseDouble(params["upCommuniProcurementDetails[" + i + "].RATE"])
            upCommuniProcurementDetails.properties['AMOUNT']=Double.parseDouble(params["upCommuniProcurementDetails[" + i + "].AMOUNT"])
            upCommuniProcurementDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upCommuniProcurementDetails[" + i + "].TOTAL_PRICE"])


            upCommuniProcurementInstance.addToUpCommuniProcurementDetails(upCommuniProcurementDetails)
            //misPoMasterInstance.addToMisPoDetails(misPoDetail)

            i++

        }

//        upCommuniProcurementInstance.properties = params

        if (!upCommuniProcurementInstance.save(flush: true)) {
            render(view: "edit", model: [upCommuniProcurementInstance: upCommuniProcurementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), upCommuniProcurementInstance.id])
        redirect(action: "show", id: upCommuniProcurementInstance.id)
    }

    def delete(Long id) {
        def upCommuniProcurementInstance = UpCommuniProcurement.get(id)
        if (!upCommuniProcurementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), id])
            redirect(action: "list")
            return
        }

        try {
            upCommuniProcurementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upCommuniProcurement.label', default: 'UpCommuniProcurement'), id])
            redirect(action: "show", id: id)
        }
    }
}
