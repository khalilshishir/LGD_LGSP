package grantmanagement

import org.springframework.dao.DataIntegrityViolationException

class PerformanceHeadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [performanceHeadInstanceList: PerformanceHead.list(params), performanceHeadInstanceTotal: PerformanceHead.count()]
    }

    def create() {
        [performanceHeadInstance: new PerformanceHead(params)]
    }

    def save() {
        def performanceHeadInstance = new PerformanceHead(params)
        if (!performanceHeadInstance.save(flush: true)) {
            render(view: "create", model: [performanceHeadInstance: performanceHeadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), performanceHeadInstance.id])
        redirect(action: "show", id: performanceHeadInstance.id)
    }

    def show(Long id) {
        def performanceHeadInstance = PerformanceHead.get(id)
        if (!performanceHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), id])
            redirect(action: "list")
            return
        }

        [performanceHeadInstance: performanceHeadInstance]
    }

    def edit(Long id) {
        def performanceHeadInstance = PerformanceHead.get(id)
        if (!performanceHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), id])
            redirect(action: "list")
            return
        }

        [performanceHeadInstance: performanceHeadInstance]
    }

    def update(Long id, Long version) {
        def performanceHeadInstance = PerformanceHead.get(id)
        if (!performanceHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (performanceHeadInstance.version > version) {
                performanceHeadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'performanceHead.label', default: 'PerformanceHead')] as Object[],
                          "Another user has updated this PerformanceHead while you were editing")
                render(view: "edit", model: [performanceHeadInstance: performanceHeadInstance])
                return
            }
        }

        performanceHeadInstance.properties = params

        if (!performanceHeadInstance.save(flush: true)) {
            render(view: "edit", model: [performanceHeadInstance: performanceHeadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), performanceHeadInstance.id])
        redirect(action: "show", id: performanceHeadInstance.id)
    }

    def delete(Long id) {
        def performanceHeadInstance = PerformanceHead.get(id)
        if (!performanceHeadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), id])
            redirect(action: "list")
            return
        }

        try {
            performanceHeadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'performanceHead.label', default: 'PerformanceHead'), id])
            redirect(action: "show", id: id)
        }
    }
}
