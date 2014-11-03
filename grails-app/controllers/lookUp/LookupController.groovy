package lookUp

import org.springframework.dao.DataIntegrityViolationException

class LookupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lookupInstanceList: Lookup.list(params), lookupInstanceTotal: Lookup.count()]
    }

    def create() {
        [lookupInstance: new Lookup(params)]
    }

    def save() {
        def lookupInstance = new Lookup(params)
        if (!lookupInstance.save(flush: true)) {
            render(view: "create", model: [lookupInstance: lookupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lookup.label', default: 'Lookup'), lookupInstance.id])
        redirect(action: "show", id: lookupInstance.id)
    }

    def show(Long id) {
        def lookupInstance = Lookup.get(id)
        if (!lookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lookup.label', default: 'Lookup'), id])
            redirect(action: "list")
            return
        }

        [lookupInstance: lookupInstance]
    }

    def edit(Long id) {
        def lookupInstance = Lookup.get(id)
        if (!lookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lookup.label', default: 'Lookup'), id])
            redirect(action: "list")
            return
        }

        [lookupInstance: lookupInstance]
    }

    def update(Long id, Long version) {
        def lookupInstance = Lookup.get(id)
        if (!lookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lookup.label', default: 'Lookup'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lookupInstance.version > version) {
                lookupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'lookup.label', default: 'Lookup')] as Object[],
                        "Another user has updated this Lookup while you were editing")
                render(view: "edit", model: [lookupInstance: lookupInstance])
                return
            }
        }

        lookupInstance.properties = params

        if (!lookupInstance.save(flush: true)) {
            render(view: "edit", model: [lookupInstance: lookupInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lookup.label', default: 'Lookup'), lookupInstance.id])
        redirect(action: "show", id: lookupInstance.id)
    }

    def delete(Long id) {
        def lookupInstance = Lookup.get(id)
        if (!lookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lookup.label', default: 'Lookup'), id])
            redirect(action: "list")
            return
        }

        try {
            lookupInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lookup.label', default: 'Lookup'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lookup.label', default: 'Lookup'), id])
            redirect(action: "show", id: id)
        }
    }
}
