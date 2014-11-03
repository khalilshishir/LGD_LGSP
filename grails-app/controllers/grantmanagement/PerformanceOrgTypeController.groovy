package grantmanagement

import org.springframework.dao.DataIntegrityViolationException

class PerformanceOrgTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [performanceOrgTypeInstanceList: PerformanceOrgType.list(params), performanceOrgTypeInstanceTotal: PerformanceOrgType.count()]
    }

    def create() {
        [performanceOrgTypeInstance: new PerformanceOrgType(params)]
    }

    def save() {
        def performanceOrgTypeInstance = new PerformanceOrgType(params)
        if (!performanceOrgTypeInstance.save(flush: true)) {
            render(view: "create", model: [performanceOrgTypeInstance: performanceOrgTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), performanceOrgTypeInstance.id])
        redirect(action: "show", id: performanceOrgTypeInstance.id)
    }

    def show(Long id) {
        def performanceOrgTypeInstance = PerformanceOrgType.get(id)
        if (!performanceOrgTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), id])
            redirect(action: "list")
            return
        }

        [performanceOrgTypeInstance: performanceOrgTypeInstance]
    }

    def edit(Long id) {
        def performanceOrgTypeInstance = PerformanceOrgType.get(id)
        if (!performanceOrgTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), id])
            redirect(action: "list")
            return
        }

        [performanceOrgTypeInstance: performanceOrgTypeInstance]
    }

    def update(Long id, Long version) {
        def performanceOrgTypeInstance = PerformanceOrgType.get(id)
        if (!performanceOrgTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (performanceOrgTypeInstance.version > version) {
                performanceOrgTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType')] as Object[],
                          "Another user has updated this PerformanceOrgType while you were editing")
                render(view: "edit", model: [performanceOrgTypeInstance: performanceOrgTypeInstance])
                return
            }
        }

        performanceOrgTypeInstance.properties = params

        if (!performanceOrgTypeInstance.save(flush: true)) {
            render(view: "edit", model: [performanceOrgTypeInstance: performanceOrgTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), performanceOrgTypeInstance.id])
        redirect(action: "show", id: performanceOrgTypeInstance.id)
    }

    def delete(Long id) {
        def performanceOrgTypeInstance = PerformanceOrgType.get(id)
        if (!performanceOrgTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), id])
            redirect(action: "list")
            return
        }

        try {
            performanceOrgTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'performanceOrgType.label', default: 'PerformanceOrgType'), id])
            redirect(action: "show", id: id)
        }
    }
}
