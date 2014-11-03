package procurement.up.communityprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type.CommonService
import procurement.up.Up_Proc_Master
import settings.SchemeInfo

class LabourAppoinmentInfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    CommonService commonService

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [labourAppoinmentInfoInstanceList: LabourAppoinmentInfo.list(params), labourAppoinmentInfoInstanceTotal: LabourAppoinmentInfo.count()]
    }

    def create() {
        def upProcMasterListByProcurement = Up_Proc_Master.findAllByProcurementType(UpProcType?.COMMUNITY_PROCUREMENT?.toString())

        [labourAppoinmentInfoInstance: new LabourAppoinmentInfo(params), upProcMasterList: upProcMasterListByProcurement]
    }

    def save() {
        double grantedAmount = params.grantedAmount?.toDouble()
        println(params);
        def labourAppoinmentInfoInstance = new LabourAppoinmentInfo()

        labourAppoinmentInfoInstance.properties["id","UP_PROCUREMENT_MASTER"] = params


        int i = 0, grantAmountCounter = 0
        while (params["labourAppoinmentInfoDetails[" + i + "].WORK_RATE"] != null && params["labourAppoinmentInfoDetails[" + i + "].WORK_RATE"] != "") {


            def labourAppoinmentInfoDetails = new LabourAppoinmentInfoDetails()

            labourAppoinmentInfoDetails.properties['WORK_DETAILS']=params["labourAppoinmentInfoDetails[" + i + "].WORK_DETAILS"]
            labourAppoinmentInfoDetails.properties['WORK_RATE']=Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_RATE"])
            labourAppoinmentInfoDetails.properties['WORK_AMOUNT']=Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_AMOUNT"])
            labourAppoinmentInfoDetails.properties['LABOUR_AMOUNT']=Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].LABOUR_AMOUNT"])
            labourAppoinmentInfoDetails.properties['PER_WORK_DAY_RATE']=Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].PER_WORK_DAY_RATE"])
            labourAppoinmentInfoDetails.properties['WORK_DAY_TOTAL_AMOUNT']=Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_DAY_TOTAL_AMOUNT"])
            labourAppoinmentInfoDetails.properties['COMMENTS']=params["labourAppoinmentInfoDetails[" + i + "].COMMENTS"]

            labourAppoinmentInfoInstance.addToLabourAppoinmentInfoDetails(labourAppoinmentInfoDetails)

            grantAmountCounter += Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_DAY_TOTAL_AMOUNT"])

            i++
        }

        if(grantAmountCounter > grantedAmount){
//            flash.message = "Total Amount Can't be Exceed Granted Amount For The Scheme."
            flash.message = "শ্রমদিবস বাবদ মোট খরচ স্কীমের অনুমোদিত মূল্য হতে অধিক হতে পারবে না ।"
            def upProcMasterListByProcurement = Up_Proc_Master.findAllByProcurementType(UpProcType?.COMMUNITY_PROCUREMENT?.toString())
            render(view: "create", model: [labourAppoinmentInfoInstance: labourAppoinmentInfoInstance, upProcMasterList: upProcMasterListByProcurement, grantedAmount: grantedAmount])
            return
        }

        if (!labourAppoinmentInfoInstance.save(flush: true)) {
            render(view: "create", model: [labourAppoinmentInfoInstance: labourAppoinmentInfoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'Labour Appoinment Info'), labourAppoinmentInfoInstance.id])
        redirect(action: "show", id: labourAppoinmentInfoInstance.id)


    }

    def show(Long id) {
        def labourAppoinmentInfoInstance = LabourAppoinmentInfo.get(id)
        if (!labourAppoinmentInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo'), id])
            redirect(action: "list")
            return
        }

        [labourAppoinmentInfoInstance: labourAppoinmentInfoInstance]
    }

    def edit(Long id) {
        def labourAppoinmentInfoInstance = LabourAppoinmentInfo.get(id)
        def upProcMaster = Up_Proc_Master.get(labourAppoinmentInfoInstance?.UP_PROCUREMENT_MASTER?.id)
        def schemeInfo = SchemeInfo.get(upProcMaster?.SCHEME_INFO?.id)
        String grantedAmount = schemeInfo.GRANTED_AMOUNT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!labourAppoinmentInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo'), id])
            redirect(action: "list")
            return
        }

        [labourAppoinmentInfoInstance: labourAppoinmentInfoInstance, upProcMasterList: results, grantedAmount: grantedAmount]
    }

    def update(Long id, Long version) {
        double grantedAmount = params.grantedAmount?.toDouble()
        def labourAppoinmentInfoInstance = LabourAppoinmentInfo.get(id)
        if (!labourAppoinmentInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo'), id])
            redirect(action: "list")
            return
        }
        if (version != null) {
            if (labourAppoinmentInfoInstance.version > version) {
                labourAppoinmentInfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo')] as Object[],
                        "Another user has updated this LabourAppoinmentInfo while you were editing")
                render(view: "edit", model: [labourAppoinmentInfoInstance: labourAppoinmentInfoInstance])
                return
            }
        }
        labourAppoinmentInfoInstance.properties["id", "UP_PROCUREMENT_MASTER"] = params
        int i = 0, grantAmountCounter = 0
        while (params["labourAppoinmentInfoDetails[" + i + "].WORK_RATE"] != null && params["labourAppoinmentInfoDetails[" + i + "].WORK_RATE"] != "") {
            def studentDetail
            if (params["labourAppoinmentInfoDetails[" + i + "].deleted"] == "true" && params["labourAppoinmentInfoDetails[" + i + "].new"] == "false") {
                studentDetail = LabourAppoinmentInfoDetails.get(Long.valueOf(params["labourAppoinmentInfoDetails[" + i + "].id"]))
                labourAppoinmentInfoInstance.removeFromLabourAppoinmentInfoDetails(studentDetail)
                studentDetail.delete()
                i++
                continue
            } else if (params["labourAppoinmentInfoDetails[" + i + "].deleted"] == "true" && params["labourAppoinmentInfoDetails[" + i + "].new"] == "true") {
                i++
                continue
            } else if (params["labourAppoinmentInfoDetails[" + i + "].deleted"] == "false" && params["labourAppoinmentInfoDetails[" + i + "].new"] == "true") {
                studentDetail = new LabourAppoinmentInfoDetails()
                studentDetail.properties['WORK_RATE'] = params["labourAppoinmentInfoDetails[" + i + "].WORK_RATE"]
            } else {
                studentDetail = LabourAppoinmentInfoDetails.get(Long.valueOf(params["labourAppoinmentInfoDetails[" + i + "].id"]))
            }

            studentDetail.properties['WORK_DETAILS'] = params["labourAppoinmentInfoDetails[" + i + "].WORK_DETAILS"]
            studentDetail.properties['WORK_RATE'] = Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_RATE"])
            studentDetail.properties['WORK_AMOUNT'] = Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_AMOUNT"])
            studentDetail.properties['LABOUR_AMOUNT'] = Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].LABOUR_AMOUNT"])
            studentDetail.properties['PER_WORK_DAY_RATE'] = Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].PER_WORK_DAY_RATE"])
            studentDetail.properties['WORK_DAY_TOTAL_AMOUNT'] = Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_DAY_TOTAL_AMOUNT"])
            studentDetail.properties['COMMENTS'] = params["labourAppoinmentInfoDetails[" + i + "].COMMENTS"]
            labourAppoinmentInfoInstance.addToLabourAppoinmentInfoDetails(studentDetail)

            grantAmountCounter += Double.parseDouble(params["labourAppoinmentInfoDetails[" + i + "].WORK_DAY_TOTAL_AMOUNT"])
            i++
        }

        if(grantAmountCounter > grantedAmount){
            flash.message = "শ্রমদিবস বাবদ মোট খরচ স্কীমের অনুমোদিত মূল্য হতে অধিক হতে পারবে না ।"
            def upProcMaster = Up_Proc_Master.get(labourAppoinmentInfoInstance?.UP_PROCUREMENT_MASTER?.id)
            def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
            def results = upProcMasterListByProcurement.list {
                inList('id',upProcMaster.id)
            }
            render(view: "edit", model: [labourAppoinmentInfoInstance: labourAppoinmentInfoInstance, upProcMasterList: results, grantedAmount: grantedAmount])
            return
        }

        if (!labourAppoinmentInfoInstance.save(flush: true)) {
            render(view: "edit", model: [labourAppoinmentInfoInstance: labourAppoinmentInfoInstance])
            return
        }
        flash.message = message(code: 'default.updated.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo'), labourAppoinmentInfoInstance.id])
        redirect(action: "show", id: labourAppoinmentInfoInstance.id)
    }

    def delete(Long id) {
        def labourAppoinmentInfoInstance = LabourAppoinmentInfo.get(id)
        if (!labourAppoinmentInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo'), id])
            redirect(action: "list")
            return
        }

        try {
            labourAppoinmentInfoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'labourAppoinmentInfo.label', default: 'LabourAppoinmentInfo'), id])
            redirect(action: "show", id: id)
        }
    }

    def setValueForGrantedAmount(){
        String grantedAmount = ""
        if(params.procurementMasterId != null && params.procurementMasterId != "" && params.procurementMasterId != "null"){
            def upProcMaster = Up_Proc_Master.get(params.procurementMasterId?.toLong())
            def schemeInfo = SchemeInfo.get(upProcMaster?.SCHEME_INFO?.id)
            grantedAmount = schemeInfo.GRANTED_AMOUNT
        }
       render (template: 'grantedAmount', model: [grantedAmount: grantedAmount])
    }
}
