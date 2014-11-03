package audit

import org.springframework.dao.DataIntegrityViolationException

class AuditPdisController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [auditPdisInstanceList: AuditPdis.list(params), auditPdisInstanceTotal: AuditPdis.count()]
    }

    def create() {
        [auditPdisInstance: new AuditPdis(params)]
    }

    def save() {
        def auditPdisInstance = new AuditPdis(params)
        if (!auditPdisInstance.save(flush: true)) {
            render(view: "create", model: [auditPdisInstance: auditPdisInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), auditPdisInstance.id])
        redirect(action: "show", id: auditPdisInstance.id)
    }

    def show(Long id) {
        def auditPdisInstance = AuditPdis.get(id)
        if (!auditPdisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), id])
            redirect(action: "list")
            return
        }

        [auditPdisInstance: auditPdisInstance]
    }

    def edit(Long id) {
        def auditPdisInstance = AuditPdis.get(id)
        if (!auditPdisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), id])
            redirect(action: "list")
            return
        }

        [auditPdisInstance: auditPdisInstance]
    }

    def update(Long id, Long version) {
        def auditPdisInstance = AuditPdis.get(id)
        if (!auditPdisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (auditPdisInstance.version > version) {
                auditPdisInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'auditPdis.label', default: 'AuditPdis')] as Object[],
                        "Another user has updated this AuditPdis while you were editing")
                render(view: "edit", model: [auditPdisInstance: auditPdisInstance])
                return
            }
        }

        auditPdisInstance.properties = params

        if (!auditPdisInstance.save(flush: true)) {
            render(view: "edit", model: [auditPdisInstance: auditPdisInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), auditPdisInstance.id])
        redirect(action: "show", id: auditPdisInstance.id)
    }

    def delete(Long id) {
        def auditPdisInstance = AuditPdis.get(id)
        if (!auditPdisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), id])
            redirect(action: "list")
            return
        }

        try {
            auditPdisInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'auditPdis.label', default: 'AuditPdis'), id])
            redirect(action: "show", id: id)
        }
    }
}
