package settings

import org.springframework.dao.DataIntegrityViolationException

class SchemeInfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [schemeInfoInstanceList: SchemeInfo.list(params), schemeInfoInstanceTotal: SchemeInfo.count()]
    }

    def create() {
        [schemeInfoInstance: new SchemeInfo(params)]
    }

    def save() {
        def schemeInfoInstance = new SchemeInfo(params)
        if (!schemeInfoInstance.save(flush: true)) {
            render(view: "create", model: [schemeInfoInstance: schemeInfoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), schemeInfoInstance.id])
        redirect(action: "show", id: schemeInfoInstance.id)
    }

    def show(Long id) {
        def schemeInfoInstance = SchemeInfo.get(id)
        if (!schemeInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), id])
            redirect(action: "list")
            return
        }

        [schemeInfoInstance: schemeInfoInstance]
    }

    def edit(Long id) {
        def schemeInfoInstance = SchemeInfo.get(id)
        if (!schemeInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), id])
            redirect(action: "list")
            return
        }

        [schemeInfoInstance: schemeInfoInstance]
    }

    def update(Long id, Long version) {
        def schemeInfoInstance = SchemeInfo.get(id)
        if (!schemeInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (schemeInfoInstance.version > version) {
                schemeInfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'schemeInfo.label', default: 'SchemeInfo')] as Object[],
                          "Another user has updated this SchemeInfo while you were editing")
                render(view: "edit", model: [schemeInfoInstance: schemeInfoInstance])
                return
            }
        }

        schemeInfoInstance.properties = params

        if (!schemeInfoInstance.save(flush: true)) {
            render(view: "edit", model: [schemeInfoInstance: schemeInfoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), schemeInfoInstance.id])
        redirect(action: "show", id: schemeInfoInstance.id)
    }

    def delete(Long id) {
        def schemeInfoInstance = SchemeInfo.get(id)
        if (!schemeInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), id])
            redirect(action: "list")
            return
        }

        try {
            schemeInfoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'schemeInfo.label', default: 'SchemeInfo'), id])
            redirect(action: "show", id: id)
        }
    }
}
