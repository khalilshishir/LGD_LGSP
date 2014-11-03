package fixedAsset

import org.springframework.dao.DataIntegrityViolationException

class COMITYController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [COMITYInstanceList: COMITY.list(params), COMITYInstanceTotal: COMITY.count()]
    }

    def create() {
        [COMITYInstance: new COMITY(params)]
    }

    def save() {
        /*def COMITYInstance = new COMITY(params)
        if (!COMITYInstance.save(flush: true)) {
            render(view: "create", model: [COMITYInstance: COMITYInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'COMITY.label', default: 'COMITY'), COMITYInstance.id])
        redirect(action: "show", id: COMITYInstance.id)*/

        def COMITYInstance = new COMITY()
        COMITYInstance.properties["ID","COMITY_NAME","WORK_PURPOSE","DESCRIPTION","START_DATE","END_DATE","IS_ACTIVE"]=params
        int i=0
        while (params["comityDtl[" + i + "].id"] != null) {


            def comityDtl = new COMITY_DTL()
//            suggestTeacherForTrainingDtl.properties['teacherName']=params["suggestTeacherForTrainingDtl[" + i + "].teacherName"]

            def stakeholderId = params["comityDtl[" + i + "].STAKEHOLDER_ID"]
            def stakeholder = STAKEHOLDER.findById(Long.valueOf(stakeholderId))
            comityDtl.setSTAKEHOLDER_ID(stakeholder)
            def remarks=params["comityDtl[" + i + "].REMARKS"]
            comityDtl.setREMARKS(remarks)
//            suggestTeacherForTrainingDtl.properties['status']=params["suggestTeacherForTrainingDtl[" + i + "].status"]
            COMITYInstance.addToComityDtl(comityDtl)
            i++
        }
        if (!COMITYInstance.save(flush: true)) {
            render(view: "create", model: [COMITYInstance: COMITYInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'COMITY.label', default: 'COMITY'), COMITYInstance.id])
        redirect(action: "show", id: COMITYInstance.id)

    }

    def show(Long id) {
        def COMITYInstance = COMITY.get(id)
        if (!COMITYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'COMITY.label', default: 'COMITY'), id])
            redirect(action: "list")
            return
        }

        [COMITYInstance: COMITYInstance]
    }

    def edit(Long id) {
        def COMITYInstance = COMITY.get(id)
        if (!COMITYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'COMITY.label', default: 'COMITY'), id])
            redirect(action: "list")
            return
        }

        [COMITYInstance: COMITYInstance]
    }

    def update(Long id, Long version) {
        def COMITYInstance = COMITY.get(id)
//        def COMITYInstanceForDelete = COMITY.get(id)
//        COMITYInstanceForDelete.delete()
        if (!COMITYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'COMITY.label', default: 'COMITY'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (COMITYInstance.version > version) {
                COMITYInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'COMITY.label', default: 'COMITY')] as Object[],
                        "Another user has updated this COMITY while you were editing")
                render(view: "edit", model: [COMITYInstance: COMITYInstance])
                return
            }
        }

//        COMITYInstance.properties = params
        COMITYInstance.properties["ID","COMITY_NAME","WORK_PURPOSE","DESCRIPTION","START_DATE","END_DATE","IS_ACTIVE"]=params

        int i=0
//        def allDtl=COMITY_DTL(params.id)
        while (params["comityDtl[" + i + "].id"] != null) {

            def comityDtl
            //def studentDetail

            if (params["comityDtl[" + i + "].deleted"] == "true" && params["comityDtl[" + i + "].new"] == "false") {
                comityDtl = COMITY_DTL.get(Long.valueOf(params["comityDtl[" + i + "].id"]))
                COMITYInstance.removeFromComityDtl(comityDtl)
                comityDtl.delete()
                i++
                continue
            }
            else if (params["comityDtl[" + i + "].deleted"] == "true" && params["comityDtl[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["comityDtl[" + i + "].deleted"] == "false" && params["comityDtl[" + i + "].new"] == "true") {
                comityDtl = new COMITY_DTL()
                comityDtl.properties['id'] =params["comityDtl[" + i + "].id"]
            }
            else {
                comityDtl = COMITY_DTL.get(Long.valueOf(params["comityDtl[" + i + "].id"]))
            }



//            def suggestTeacherForTrainingDtl = new SuggestTeacherForTrainingDtl()
//            suggestTeacherForTrainingDtl.properties['teacherName']=params["suggestTeacherForTrainingDtl[" + i + "].teacherName"]

            def stakeholderId = params["comityDtl[" + i + "].STAKEHOLDER_ID"]
            def stakeholder = STAKEHOLDER.findById(Long.valueOf(stakeholderId))
            comityDtl.setSTAKEHOLDER_ID(stakeholder)
            def remarks=params["comityDtl[" + i + "].REMARKS"]
            comityDtl.setREMARKS(remarks)
            COMITYInstance.addToComityDtl(comityDtl)

            i++
        }
        if (!COMITYInstance.save(flush: true)) {
            render(view: "edit", model: [COMITYInstance: COMITYInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'COMITY.label', default: 'COMITY'), COMITYInstance.id])
        redirect(action: "show", id: COMITYInstance.id)
    }

    def delete(Long id) {
        def COMITYInstance = COMITY.get(id)
        if (!COMITYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'COMITY.label', default: 'COMITY'), id])
            redirect(action: "list")
            return
        }

        try {
            COMITYInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'COMITY.label', default: 'COMITY'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'COMITY.label', default: 'COMITY'), id])
            redirect(action: "show", id: id)
        }
    }
}
