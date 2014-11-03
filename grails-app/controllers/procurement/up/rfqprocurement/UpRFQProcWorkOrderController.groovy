package procurement.up.rfqprocurement

import comonclass.UpProcType
import org.springframework.dao.DataIntegrityViolationException
import procurement.up.Procurement_Type
import procurement.up.Up_Proc_Master

class UpRFQProcWorkOrderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upRFQProcWorkOrderInstanceList: UpRFQProcWorkOrder.list(params), upRFQProcWorkOrderInstanceTotal: UpRFQProcWorkOrder.count()]
    }

    def create() {
        String procurementType = UpProcType.RFQ_PROCUREMENT
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('procurementType',procurementType)
        }
        [upRFQProcWorkOrderInstance: new UpRFQProcWorkOrder(params), upProcMasterList: results]
    }

    def save() {
        def upRFQProcWorkOrderInstance = new UpRFQProcWorkOrder(params)
        if (!upRFQProcWorkOrderInstance.save(flush: true)) {
            render(view: "create", model: [upRFQProcWorkOrderInstance: upRFQProcWorkOrderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), upRFQProcWorkOrderInstance.id])
        redirect(action: "show", id: upRFQProcWorkOrderInstance.id)
    }

    def show(Long id) {
        def upRFQProcWorkOrderInstance = UpRFQProcWorkOrder.get(id)
        if (!upRFQProcWorkOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), id])
            redirect(action: "list")
            return
        }

        [upRFQProcWorkOrderInstance: upRFQProcWorkOrderInstance]
    }

    def edit(Long id) {
        def upRFQProcWorkOrderInstance = UpRFQProcWorkOrder.get(id)
        def upProcMaster = Up_Proc_Master.get(upRFQProcWorkOrderInstance?.UP_PROC_MASTER?.id)
        def upProcMasterListByProcurement = Up_Proc_Master.createCriteria();
        def results = upProcMasterListByProcurement.list {
            inList('id',upProcMaster.id)
        }
        if (!upRFQProcWorkOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), id])
            redirect(action: "list")
            return
        }

        [upRFQProcWorkOrderInstance: upRFQProcWorkOrderInstance, upProcMasterList: results]
    }

    def update(Long id, Long version) {
        def upRFQProcWorkOrderInstance = UpRFQProcWorkOrder.get(id)
        if (!upRFQProcWorkOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upRFQProcWorkOrderInstance.version > version) {
                upRFQProcWorkOrderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder')] as Object[],
                          "Another user has updated this UpRFQProcWorkOrder while you were editing")
                render(view: "edit", model: [upRFQProcWorkOrderInstance: upRFQProcWorkOrderInstance])
                return
            }
        }

        upRFQProcWorkOrderInstance.properties = params

        if (!upRFQProcWorkOrderInstance.save(flush: true)) {
            render(view: "edit", model: [upRFQProcWorkOrderInstance: upRFQProcWorkOrderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), upRFQProcWorkOrderInstance.id])
        redirect(action: "show", id: upRFQProcWorkOrderInstance.id)
    }

    def delete(Long id) {
        def upRFQProcWorkOrderInstance = UpRFQProcWorkOrder.get(id)
        if (!upRFQProcWorkOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), id])
            redirect(action: "list")
            return
        }

        try {
            upRFQProcWorkOrderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upRFQProcWorkOrder.label', default: 'UpRFQProcWorkOrder'), id])
            redirect(action: "show", id: id)
        }
    }
}
