package audit

import org.springframework.dao.DataIntegrityViolationException

class AuditPackageController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [auditPackageInstanceList: AuditPackage.list(params), auditPackageInstanceTotal: AuditPackage.count()]
    }

    def create() {
        [auditPackageInstance: new AuditPackage(params)]
    }

    def save() {
        def auditPackageInstance = new AuditPackage(params)
        if (!auditPackageInstance.save(flush: true)) {
            render(view: "create", model: [auditPackageInstance: auditPackageInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), auditPackageInstance.id])
        redirect(action: "show", id: auditPackageInstance.id)
    }

    def show(Long id) {
        def auditPackageInstance = AuditPackage.get(id)
        if (!auditPackageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), id])
            redirect(action: "list")
            return
        }

        [auditPackageInstance: auditPackageInstance]
    }

    def edit(Long id) {
        def auditPackageInstance = AuditPackage.get(id)
        if (!auditPackageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), id])
            redirect(action: "list")
            return
        }

        [auditPackageInstance: auditPackageInstance]
    }

    def update(Long id, Long version) {
        def auditPackageInstance = AuditPackage.get(id)
        if (!auditPackageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (auditPackageInstance.version > version) {
                auditPackageInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'auditPackage.label', default: 'AuditPackage')] as Object[],
                          "Another user has updated this AuditPackage while you were editing")
                render(view: "edit", model: [auditPackageInstance: auditPackageInstance])
                return
            }
        }

        auditPackageInstance.properties = params

        if (!auditPackageInstance.save(flush: true)) {
            render(view: "edit", model: [auditPackageInstance: auditPackageInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), auditPackageInstance.id])
        redirect(action: "show", id: auditPackageInstance.id)
    }

    def delete(Long id) {
        def auditPackageInstance = AuditPackage.get(id)
        if (!auditPackageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), id])
            redirect(action: "list")
            return
        }

        try {
            auditPackageInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'auditPackage.label', default: 'AuditPackage'), id])
            redirect(action: "show", id: id)
        }
    }
}
