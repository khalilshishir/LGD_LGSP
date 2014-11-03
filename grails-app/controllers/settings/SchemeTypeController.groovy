package settings

import org.springframework.dao.DataIntegrityViolationException

class SchemeTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [schemeTypeInstanceList: SchemeType.list(params), schemeTypeInstanceTotal: SchemeType.count()]
    }

    def create() {
        [schemeTypeInstance: new SchemeType(params)]
    }

    def save() {
        def schemeTypeInstance = new SchemeType(params)
        if (!schemeTypeInstance.save(flush: true)) {
            render(view: "create", model: [schemeTypeInstance: schemeTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), schemeTypeInstance.id])
        redirect(action: "show", id: schemeTypeInstance.id)
    }

    def show(Long id) {
        def schemeTypeInstance = SchemeType.get(id)
        if (!schemeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), id])
            redirect(action: "list")
            return
        }

        [schemeTypeInstance: schemeTypeInstance]
    }

    def edit(Long id) {
        def schemeTypeInstance = SchemeType.get(id)
        if (!schemeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), id])
            redirect(action: "list")
            return
        }

        [schemeTypeInstance: schemeTypeInstance]
    }

    def update(Long id, Long version) {
        def schemeTypeInstance = SchemeType.get(id)
        if (!schemeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (schemeTypeInstance.version > version) {
                schemeTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'schemeType.label', default: 'SchemeType')] as Object[],
                        "Another user has updated this SchemeType while you were editing")
                render(view: "edit", model: [schemeTypeInstance: schemeTypeInstance])
                return
            }
        }

        schemeTypeInstance.properties = params

        if (!schemeTypeInstance.save(flush: true)) {
            render(view: "edit", model: [schemeTypeInstance: schemeTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), schemeTypeInstance.id])
        redirect(action: "show", id: schemeTypeInstance.id)
    }

    def delete(Long id) {
        def schemeTypeInstance = SchemeType.get(id)
        if (!schemeTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), id])
            redirect(action: "list")
            return
        }

        try {
            schemeTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'schemeType.label', default: 'SchemeType'), id])
            redirect(action: "show", id: id)
        }
    }
}
