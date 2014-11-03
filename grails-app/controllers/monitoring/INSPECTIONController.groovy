package monitoring

import org.springframework.dao.DataIntegrityViolationException

class INSPECTIONController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [INSPECTIONInstanceList: INSPECTION.list(params), INSPECTIONInstanceTotal: INSPECTION.count()]
    }

    def create() {
        [INSPECTIONInstance: new INSPECTION(params)]
    }

    def save() {
        def INSPECTIONInstance = new INSPECTION(params)
        if (!INSPECTIONInstance.save(flush: true)) {
            render(view: "create", model: [INSPECTIONInstance: INSPECTIONInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), INSPECTIONInstance.id])
        redirect(action: "show", id: INSPECTIONInstance.id)
    }

    def show(Long id) {
        def INSPECTIONInstance = INSPECTION.get(id)
        if (!INSPECTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), id])
            redirect(action: "list")
            return
        }

        [INSPECTIONInstance: INSPECTIONInstance]
    }

    def edit(Long id) {
        def INSPECTIONInstance = INSPECTION.get(id)
        if (!INSPECTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), id])
            redirect(action: "list")
            return
        }

        [INSPECTIONInstance: INSPECTIONInstance]
    }

    def update(Long id, Long version) {
        def INSPECTIONInstance = INSPECTION.get(id)
        if (!INSPECTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (INSPECTIONInstance.version > version) {
                INSPECTIONInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'INSPECTION.label', default: 'INSPECTION')] as Object[],
                          "Another user has updated this INSPECTION while you were editing")
                render(view: "edit", model: [INSPECTIONInstance: INSPECTIONInstance])
                return
            }
        }

        INSPECTIONInstance.properties = params

        if (!INSPECTIONInstance.save(flush: true)) {
            render(view: "edit", model: [INSPECTIONInstance: INSPECTIONInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), INSPECTIONInstance.id])
        redirect(action: "show", id: INSPECTIONInstance.id)
    }

    def delete(Long id) {
        def INSPECTIONInstance = INSPECTION.get(id)
        if (!INSPECTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), id])
            redirect(action: "list")
            return
        }

        try {
            INSPECTIONInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'INSPECTION.label', default: 'INSPECTION'), id])
            redirect(action: "show", id: id)
        }
    }
}
