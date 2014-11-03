package audit

import org.springframework.dao.DataIntegrityViolationException

class AuditFirmController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [auditFirmInstanceList: AuditFirm.list(params), auditFirmInstanceTotal: AuditFirm.count()]
    }

    def create() {
        [auditFirmInstance: new AuditFirm(params)]
    }

    def save() {
        def auditFirmInstance = new AuditFirm(params)
        if (!auditFirmInstance.save(flush: true)) {
            render(view: "create", model: [auditFirmInstance: auditFirmInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), auditFirmInstance.id])
        redirect(action: "show", id: auditFirmInstance.id)
    }

    def show(Long id) {
        def auditFirmInstance = AuditFirm.get(id)
        if (!auditFirmInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), id])
            redirect(action: "list")
            return
        }

        [auditFirmInstance: auditFirmInstance]
    }

    def edit(Long id) {
        def auditFirmInstance = AuditFirm.get(id)
        if (!auditFirmInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), id])
            redirect(action: "list")
            return
        }

        [auditFirmInstance: auditFirmInstance]
    }

    def update(Long id, Long version) {
        def auditFirmInstance = AuditFirm.get(id)
        if (!auditFirmInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (auditFirmInstance.version > version) {
                auditFirmInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'auditFirm.label', default: 'AuditFirm')] as Object[],
                        "Another user has updated this AuditFirm while you were editing")
                render(view: "edit", model: [auditFirmInstance: auditFirmInstance])
                return
            }
        }

        auditFirmInstance.properties = params

        if (!auditFirmInstance.save(flush: true)) {
            render(view: "edit", model: [auditFirmInstance: auditFirmInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), auditFirmInstance.id])
        redirect(action: "show", id: auditFirmInstance.id)
    }

    def delete(Long id) {
        def auditFirmInstance = AuditFirm.get(id)
        if (!auditFirmInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), id])
            redirect(action: "list")
            return
        }

        try {
            auditFirmInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'auditFirm.label', default: 'AuditFirm'), id])
            redirect(action: "show", id: id)
        }
    }
}
