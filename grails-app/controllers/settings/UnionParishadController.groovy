package settings

import org.springframework.dao.DataIntegrityViolationException

class UnionParishadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [unionParishadInstanceList: UnionParishad.list(params), unionParishadInstanceTotal: UnionParishad.count()]
    }

    def create() {
        [unionParishadInstance: new UnionParishad(params)]
    }

    def save() {
        def unionParishadInstance = new UnionParishad(params)
        if (!unionParishadInstance.save(flush: true)) {
            render(view: "create", model: [unionParishadInstance: unionParishadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), unionParishadInstance.id])
        redirect(action: "show", id: unionParishadInstance.id)
    }

    def show(Long id) {
        def unionParishadInstance = UnionParishad.get(id)
        if (!unionParishadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), id])
            redirect(action: "list")
            return
        }

        [unionParishadInstance: unionParishadInstance]
    }

    def edit(Long id) {
        def unionParishadInstance = UnionParishad.get(id)
        if (!unionParishadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), id])
            redirect(action: "list")
            return
        }

        [unionParishadInstance: unionParishadInstance]
    }

    def update(Long id, Long version) {
        def unionParishadInstance = UnionParishad.get(id)
        if (!unionParishadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (unionParishadInstance.version > version) {
                unionParishadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'unionParishad.label', default: 'UnionParishad')] as Object[],
                        "Another user has updated this UnionParishad while you were editing")
                render(view: "edit", model: [unionParishadInstance: unionParishadInstance])
                return
            }
        }

        unionParishadInstance.properties = params

        if (!unionParishadInstance.save(flush: true)) {
            render(view: "edit", model: [unionParishadInstance: unionParishadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), unionParishadInstance.id])
        redirect(action: "show", id: unionParishadInstance.id)
    }

    def delete(Long id) {
        def unionParishadInstance = UnionParishad.get(id)
        if (!unionParishadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), id])
            redirect(action: "list")
            return
        }

        try {
            unionParishadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'unionParishad.label', default: 'UnionParishad'), id])
            redirect(action: "show", id: id)
        }
    }
}
