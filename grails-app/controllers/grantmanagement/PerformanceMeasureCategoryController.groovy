package grantmanagement

import org.springframework.dao.DataIntegrityViolationException

class PerformanceMeasureCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [performanceMeasureCategoryInstanceList: PerformanceMeasureCategory.list(params), performanceMeasureCategoryInstanceTotal: PerformanceMeasureCategory.count()]
    }

    def create() {
        [performanceMeasureCategoryInstance: new PerformanceMeasureCategory(params)]
    }

    def save() {
        def performanceMeasureCategoryInstance = new PerformanceMeasureCategory(params)
        if (!performanceMeasureCategoryInstance.save(flush: true)) {
            render(view: "create", model: [performanceMeasureCategoryInstance: performanceMeasureCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), performanceMeasureCategoryInstance.id])
        redirect(action: "show", id: performanceMeasureCategoryInstance.id)
    }

    def show(Long id) {
        def performanceMeasureCategoryInstance = PerformanceMeasureCategory.get(id)
        if (!performanceMeasureCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), id])
            redirect(action: "list")
            return
        }

        [performanceMeasureCategoryInstance: performanceMeasureCategoryInstance]
    }

    def edit(Long id) {
        def performanceMeasureCategoryInstance = PerformanceMeasureCategory.get(id)
        if (!performanceMeasureCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), id])
            redirect(action: "list")
            return
        }

        [performanceMeasureCategoryInstance: performanceMeasureCategoryInstance]
    }

    def update(Long id, Long version) {
        def performanceMeasureCategoryInstance = PerformanceMeasureCategory.get(id)
        if (!performanceMeasureCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (performanceMeasureCategoryInstance.version > version) {
                performanceMeasureCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory')] as Object[],
                        "Another user has updated this PerformanceMeasureCategory while you were editing")
                render(view: "edit", model: [performanceMeasureCategoryInstance: performanceMeasureCategoryInstance])
                return
            }
        }

        performanceMeasureCategoryInstance.properties = params

        if (!performanceMeasureCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [performanceMeasureCategoryInstance: performanceMeasureCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), performanceMeasureCategoryInstance.id])
        redirect(action: "show", id: performanceMeasureCategoryInstance.id)
    }

    def delete(Long id) {
        def performanceMeasureCategoryInstance = PerformanceMeasureCategory.get(id)
        if (!performanceMeasureCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            performanceMeasureCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'performanceMeasureCategory.label', default: 'PerformanceMeasureCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
