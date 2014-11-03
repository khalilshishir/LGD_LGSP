package procurement.up.otmprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Up_Proc_Master

class IFTController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [IFTInstanceList: IFT.list(params), IFTInstanceTotal: IFT.count()]
    }

    def create() {
        String procurementType = UpProcType.OTM_PROCUREMENT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('procurementType',procurementType)
        }
        [IFTInstance: new IFT(params), upProcMasterList: results]
    }

    def save() {
        def IFTInstance = new IFT(params)
        IFTInstance.IFT_NUMBER = "UP-PROC-OTM-IFT-".concat(params.IFT_NUMBER)
        if (!IFTInstance.save(flush: true)) {
            render(view: "create", model: [IFTInstance: IFTInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'IFT.label', default: 'IFT'), IFTInstance.id])
        redirect(action: "show", id: IFTInstance.id)
    }

    def show(Long id) {
        def IFTInstance = IFT.get(id)
        if (!IFTInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IFT.label', default: 'IFT'), id])
            redirect(action: "list")
            return
        }

        [IFTInstance: IFTInstance]
    }

    def edit(Long id) {
        def IFTInstance = IFT.get(id)
        def upProcMaster = Up_Proc_Master.get(IFTInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!IFTInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IFT.label', default: 'IFT'), id])
            redirect(action: "list")
            return
        }

        [IFTInstance: IFTInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def IFTInstance = IFT.get(id)
        if (!IFTInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IFT.label', default: 'IFT'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (IFTInstance.version > version) {
                IFTInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'IFT.label', default: 'IFT')] as Object[],
                        "Another user has updated this IFT while you were editing")
                render(view: "edit", model: [IFTInstance: IFTInstance])
                return
            }
        }

        IFTInstance.properties = params

        if (!IFTInstance.save(flush: true)) {
            render(view: "edit", model: [IFTInstance: IFTInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'IFT.label', default: 'IFT'), IFTInstance.id])
        redirect(action: "show", id: IFTInstance.id)
    }

    def delete(Long id) {
        def IFTInstance = IFT.get(id)
        if (!IFTInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IFT.label', default: 'IFT'), id])
            redirect(action: "list")
            return
        }

        try {
            IFTInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'IFT.label', default: 'IFT'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'IFT.label', default: 'IFT'), id])
            redirect(action: "show", id: id)
        }
    }
}
