package procurement.up.otmprocurement

import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Up_Proc_Master

class UP_OTM_Tender_DocumentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [UP_OTM_Tender_DocumentInstanceList: UP_OTM_Tender_Document.list(params), UP_OTM_Tender_DocumentInstanceTotal: UP_OTM_Tender_Document.count()]
    }

    def create() {
        def procurementType = Procurement_Type.get(4)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('PROCUREMENT_TYPE',procurementType)
        }
        [UP_OTM_Tender_DocumentInstance: new UP_OTM_Tender_Document(params), upProcMasterList: results]
    }

    def save() {
        def UP_OTM_Tender_DocumentInstance = new UP_OTM_Tender_Document(params)
        if (!UP_OTM_Tender_DocumentInstance.save(flush: true)) {
            render(view: "create", model: [UP_OTM_Tender_DocumentInstance: UP_OTM_Tender_DocumentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), UP_OTM_Tender_DocumentInstance.id])
        redirect(action: "show", id: UP_OTM_Tender_DocumentInstance.id)
    }

    def show(Long id) {
        def UP_OTM_Tender_DocumentInstance = UP_OTM_Tender_Document.get(id)
        if (!UP_OTM_Tender_DocumentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), id])
            redirect(action: "list")
            return
        }

        [UP_OTM_Tender_DocumentInstance: UP_OTM_Tender_DocumentInstance]
    }

    def edit(Long id) {
        def UP_OTM_Tender_DocumentInstance = UP_OTM_Tender_Document.get(id)
        def upProcMaster = Up_Proc_Master.get(UP_OTM_Tender_DocumentInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!UP_OTM_Tender_DocumentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), id])
            redirect(action: "list")
            return
        }

        [UP_OTM_Tender_DocumentInstance: UP_OTM_Tender_DocumentInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def UP_OTM_Tender_DocumentInstance = UP_OTM_Tender_Document.get(id)
        if (!UP_OTM_Tender_DocumentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (UP_OTM_Tender_DocumentInstance.version > version) {
                UP_OTM_Tender_DocumentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document')] as Object[],
                        "Another user has updated this UP_OTM_Tender_Document while you were editing")
                render(view: "edit", model: [UP_OTM_Tender_DocumentInstance: UP_OTM_Tender_DocumentInstance])
                return
            }
        }

        UP_OTM_Tender_DocumentInstance.properties = params

        if (!UP_OTM_Tender_DocumentInstance.save(flush: true)) {
            render(view: "edit", model: [UP_OTM_Tender_DocumentInstance: UP_OTM_Tender_DocumentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), UP_OTM_Tender_DocumentInstance.id])
        redirect(action: "show", id: UP_OTM_Tender_DocumentInstance.id)
    }

    def delete(Long id) {
        def UP_OTM_Tender_DocumentInstance = UP_OTM_Tender_Document.get(id)
        if (!UP_OTM_Tender_DocumentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), id])
            redirect(action: "list")
            return
        }

        try {
            UP_OTM_Tender_DocumentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'UP_OTM_Tender_Document.label', default: 'UP_OTM_Tender_Document'), id])
            redirect(action: "show", id: id)
        }
    }
}
