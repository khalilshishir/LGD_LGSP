package integration

import org.springframework.dao.DataIntegrityViolationException
import util.Util

class LgedAuditInfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lgedAuditInfoInstanceList: LgedAuditInfo.list(params), lgedAuditInfoInstanceTotal: LgedAuditInfo.count()]
    }

    def create() {
        [lgedAuditInfoInstance: new LgedAuditInfo(params)]
    }

    def save() {
        params.complainDate=Util.getDateMonddyyyy(params.complainDate)

        def lgedAuditInfoInstance = new LgedAuditInfo(params)
        if (!lgedAuditInfoInstance.save(flush: true)) {
            render(view: "create", model: [lgedAuditInfoInstance: lgedAuditInfoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), lgedAuditInfoInstance.id])
        redirect(action: "show", id: lgedAuditInfoInstance.id)
    }

    def show(Long id) {
        def lgedAuditInfoInstance = LgedAuditInfo.get(id)
        if (!lgedAuditInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), id])
            redirect(action: "list")
            return
        }

        [lgedAuditInfoInstance: lgedAuditInfoInstance]
    }

    def edit(Long id) {
        def lgedAuditInfoInstance = LgedAuditInfo.get(id)
        if (!lgedAuditInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), id])
            redirect(action: "list")
            return
        }

        [lgedAuditInfoInstance: lgedAuditInfoInstance]
    }

    def update(Long id, Long version) {
        def lgedAuditInfoInstance = LgedAuditInfo.get(id)
        if (!lgedAuditInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lgedAuditInfoInstance.version > version) {
                lgedAuditInfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo')] as Object[],
                        "Another user has updated this LgedAuditInfo while you were editing")
                render(view: "edit", model: [lgedAuditInfoInstance: lgedAuditInfoInstance])
                return
            }
        }

        lgedAuditInfoInstance.properties = params

        if (!lgedAuditInfoInstance.save(flush: true)) {
            render(view: "edit", model: [lgedAuditInfoInstance: lgedAuditInfoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), lgedAuditInfoInstance.id])
        redirect(action: "show", id: lgedAuditInfoInstance.id)
    }

    def delete(Long id) {
        def lgedAuditInfoInstance = LgedAuditInfo.get(id)
        if (!lgedAuditInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), id])
            redirect(action: "list")
            return
        }

        try {
            lgedAuditInfoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo'), id])
            redirect(action: "show", id: id)
        }
    }
}
