package procurement.up

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.directprocurement.UpDirectProcurementDetails
import settings.Committee
import settings.CommitteeLevel

class Up_Proc_MasterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def upProcurement(){
        render( view: "/layouts/upprochome")
    }
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [up_Proc_MasterInstanceList: Up_Proc_Master.list(params), up_Proc_MasterInstanceTotal: Up_Proc_Master.count()]
    }

    def create() {
        println(params)
        def committeeLevel = CommitteeLevel.getAll()     // here now for ward committee cause oracle is not saving value from id 1
        def committee = Committee.createCriteria();
        def results = committee.list {
            inList('COMMITTEE_LEVEL',committeeLevel)
        }
        def procurementTypeList = UpProcType.values()
        [up_Proc_MasterInstance: new Up_Proc_Master(params), wardCommitteeList: results, procurementTypeList: procurementTypeList]
    }

 /*   def save() {
        def up_Proc_MasterInstance = new Up_Proc_Master(params)
        if (!up_Proc_MasterInstance.save(flush: true)) {
            render(view: "create", model: [up_Proc_MasterInstance: up_Proc_MasterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), up_Proc_MasterInstance.id])
        redirect(action: "show", id: up_Proc_MasterInstance.id)
    }*/
    def save() {

        println(params);
        def upProcMasterInstance = new Up_Proc_Master()

        upProcMasterInstance.properties["id", "DETAILS","SCHEME_INFO","COMMITTEE","procurementType"] = params


        int i = 0
        while (params["upDirectProcurementDetails[" + i + "].GOODS_ID"] != null && params["upDirectProcurementDetails[" + i + "].GOODS_ID"] != "") {
            def upDirectProcDetails = new UpDirectProcurementDetails()

              upDirectProcDetails.properties['GOODS_ID']=params["upDirectProcurementDetails[" + i + "].GOODS_ID"]
            upDirectProcDetails.properties['GOODS_NAME']=params["upDirectProcurementDetails[" + i + "].GOODS_NAME"]
            upDirectProcDetails.properties['GOODS_DETAILS']=params["upDirectProcurementDetails[" + i + "].GOODS_DETAILS"]
            upDirectProcDetails.properties['RATE']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].RATE"])
            upDirectProcDetails.properties['AMOUNT']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].AMOUNT"])
            upDirectProcDetails.properties['TOTAL_PRICE']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].TOTAL_PRICE"])

//            upDirectProcDetails.properties['ACTUAL_RATE']=params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"])
//            upDirectProcDetails.properties['ACTUAL_AMOUNT']=params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"])
//            upDirectProcDetails.properties['ACTUAL_TOTAL_PRICE']=(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"])*(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"])))

            upProcMasterInstance.addToUpDirectProcurementDetails(upDirectProcDetails)


            i++
        }

        if (!upProcMasterInstance.save(flush: true)) {
            render(view: "create", model: [up_Proc_MasterInstance: upProcMasterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'up_Proc_Master.label', default: 'up Proc Master'), upProcMasterInstance.id])
        redirect(action: "show", id: upProcMasterInstance.id)
    }

    def show(Long id) {
        def up_Proc_MasterInstance = Up_Proc_Master.get(id)
        if (!up_Proc_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), id])
            redirect(action: "list")
            return
        }

        [up_Proc_MasterInstance: up_Proc_MasterInstance]
    }

    def edit(Long id) {
        def up_Proc_MasterInstance = Up_Proc_Master.get(id)
        def committee = Committee.get(up_Proc_MasterInstance?.COMMITTEE?.id)
        def committeeList = Committee.createCriteria();
//        String procType = up_Proc_MasterInstance.PROCUREMENT_TYPE?.toUpperCase().replaceAll(" ", "_").trim()
////        procType.replaceAll("", "_").trim()
//        println(procType)
        def procurementTypeList = UpProcType.getAt(up_Proc_MasterInstance?.procurementType?.toUpperCase()?.replaceAll(" ", "_")?.trim())
        def results = committeeList.list {
            inList('id',committee.id)
        }
        if (!up_Proc_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), id])
            redirect(action: "list")
            return
        }

        [up_Proc_MasterInstance: up_Proc_MasterInstance, wardCommitteeList: results, procurementTypeList: procurementTypeList]
    }

    def update(Long id, Long version) {
        def up_Proc_MasterInstance = Up_Proc_Master.get(id)
        if (!up_Proc_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (up_Proc_MasterInstance.version > version) {
                up_Proc_MasterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master')] as Object[],
                          "Another user has updated this Up_Proc_Master while you were editing")
                render(view: "edit", model: [up_Proc_MasterInstance: up_Proc_MasterInstance])
                return
            }
        }

        up_Proc_MasterInstance.properties["id", "DETAILS","SCHEME_INFO","COMMITTEE","procurementType"] = params



        def i = 0



        while (params["upDirectProcurementDetails[" + i + "].GOODS_ID"] != null && params["upDirectProcurementDetails[" + i + "].GOODS_ID"] != "") {


            def studentDetail

            if (params["upDirectProcurementDetails[" + i + "].deleted"] == "true" && params["upDirectProcurementDetails[" + i + "].new"] == "false") {
                studentDetail = UpDirectProcurementDetails.get(Long.valueOf(params["upDirectProcurementDetails[" + i + "].id"]))
                up_Proc_MasterInstance.removeFromUpDirectProcurementDetails(studentDetail)
                studentDetail.delete()
                i++
                continue
            }
            else if (params["upDirectProcurementDetails[" + i + "].deleted"] == "true" && params["upDirectProcurementDetails[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["upDirectProcurementDetails[" + i + "].deleted"] == "false" && params["upDirectProcurementDetails[" + i + "].new"] == "true") {
                studentDetail = new UpDirectProcurementDetails()
                studentDetail.properties['GOODS_ID'] =params["upDirectProcurementDetails[" + i + "].GOODS_ID"]
            }
            else {
                studentDetail = UpDirectProcurementDetails.get(Long.valueOf(params["upDirectProcurementDetails[" + i + "].id"]))
            }

            studentDetail.properties['GOODS_ID']=params["upDirectProcurementDetails[" + i + "].GOODS_ID"]
            studentDetail.properties['GOODS_NAME']=params["upDirectProcurementDetails[" + i + "].GOODS_NAME"]
            studentDetail.properties['GOODS_DETAILS']=params["upDirectProcurementDetails[" + i + "].GOODS_DETAILS"]
            studentDetail.properties['RATE']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].RATE"])
            studentDetail.properties['AMOUNT']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].AMOUNT"])
            studentDetail.properties['TOTAL_PRICE']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].TOTAL_PRICE"])

//            studentDetail.properties['ACTUAL_RATE']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"])
//            studentDetail.properties['ACTUAL_AMOUNT']=Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"])
//            studentDetail.properties['ACTUAL_TOTAL_PRICE']=(Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]))*(Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]))



//            studentDetail.properties['ACTUAL_RATE']=params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"])
//            studentDetail.properties['ACTUAL_AMOUNT']=params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"])
//            studentDetail.properties['ACTUAL_TOTAL_PRICE']=(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_RA"])*(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]==null || params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"]=="" ? 0 : Double.parseDouble(params["upDirectProcurementDetails[" + i + "].ACTUAL_AM"])))


            up_Proc_MasterInstance.addToUpDirectProcurementDetails(studentDetail)
            //misPoMasterInstance.addToMisPoDetails(misPoDetail)

            i++

        }

        if (!up_Proc_MasterInstance.save(flush: true)) {
            render(view: "edit", model: [up_Proc_MasterInstance: up_Proc_MasterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), up_Proc_MasterInstance.id])
        redirect(action: "show", id: up_Proc_MasterInstance.id)




}

    def delete(Long id) {
        def up_Proc_MasterInstance = Up_Proc_Master.get(id)
        if (!up_Proc_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), id])
            redirect(action: "list")
            return
        }
/*
        def  upDirectProcurementDetailsInstance=new UpDirectProcurementDetails()
//        upDirectProcurementDetailsInstance.removeFromUpDirectProcurementDetails(upDirectProcurementDetailsInstance)
        up_Proc_MasterInstance.removeFromUpDirectProcurementDetails(upDirectProcurementDetailsInstance)
*/

        try {
            up_Proc_MasterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'up_Proc_Master.label', default: 'Up_Proc_Master'), id])
            redirect(action: "show", id: id)
        }
    }
}
