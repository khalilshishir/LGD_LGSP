package lookUp

import org.springframework.dao.DataIntegrityViolationException

class AllLookupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [allLookupInstanceList: AllLookup.list(params), allLookupInstanceTotal: AllLookup.count()]
    }

    def create() {
        [allLookupInstance: new AllLookup(params)]
    }

    def save() {
        def allLookupInstance = new AllLookup(params)
        if (!allLookupInstance.save(flush: true)) {
            render(view: "create", model: [allLookupInstance: allLookupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), allLookupInstance.id])
        redirect(action: "show", id: allLookupInstance.id)
    }

    def show(Long id) {
        def allLookupInstance = AllLookup.get(id)
        if (!allLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), id])
            redirect(action: "list")
            return
        }

        [allLookupInstance: allLookupInstance]
    }

    def edit(Long id) {
        def allLookupInstance = AllLookup.get(id)
        if (!allLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), id])
            redirect(action: "list")
            return
        }

        [allLookupInstance: allLookupInstance]
    }

    def update(Long id, Long version) {
        def allLookupInstance = AllLookup.get(id)
        if (!allLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (allLookupInstance.version > version) {
                allLookupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'allLookup.label', default: 'AllLookup')] as Object[],
                          "Another user has updated this AllLookup while you were editing")
                render(view: "edit", model: [allLookupInstance: allLookupInstance])
                return
            }
        }

        allLookupInstance.properties = params

        if (!allLookupInstance.save(flush: true)) {
            render(view: "edit", model: [allLookupInstance: allLookupInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), allLookupInstance.id])
        redirect(action: "show", id: allLookupInstance.id)
    }

    def delete(Long id) {
        def allLookupInstance = AllLookup.get(id)
        if (!allLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), id])
            redirect(action: "list")
            return
        }

        try {
            allLookupInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'allLookup.label', default: 'AllLookup'), id])
            redirect(action: "show", id: id)
        }
    }
}
