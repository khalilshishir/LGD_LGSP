package settings

import org.springframework.dao.DataIntegrityViolationException

class UpazilaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upazilaInstanceList: Upazila.list(params), upazilaInstanceTotal: Upazila.count()]
    }

    def create() {
        [upazilaInstance: new Upazila(params)]
    }

    def save() {
        def upazilaInstance = new Upazila(params)
        if (!upazilaInstance.save(flush: true)) {
            render(view: "create", model: [upazilaInstance: upazilaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upazila.label', default: 'Upazila'), upazilaInstance.id])
        redirect(action: "show", id: upazilaInstance.id)
    }

    def show(Long id) {
        def upazilaInstance = Upazila.get(id)
        if (!upazilaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upazila.label', default: 'Upazila'), id])
            redirect(action: "list")
            return
        }

        [upazilaInstance: upazilaInstance]
    }

    def edit(Long id) {
        def upazilaInstance = Upazila.get(id)
        if (!upazilaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upazila.label', default: 'Upazila'), id])
            redirect(action: "list")
            return
        }

        [upazilaInstance: upazilaInstance]
    }

    def update(Long id, Long version) {
        def upazilaInstance = Upazila.get(id)
        if (!upazilaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upazila.label', default: 'Upazila'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upazilaInstance.version > version) {
                upazilaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upazila.label', default: 'Upazila')] as Object[],
                        "Another user has updated this Upazila while you were editing")
                render(view: "edit", model: [upazilaInstance: upazilaInstance])
                return
            }
        }

        upazilaInstance.properties = params

        if (!upazilaInstance.save(flush: true)) {
            render(view: "edit", model: [upazilaInstance: upazilaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upazila.label', default: 'Upazila'), upazilaInstance.id])
        redirect(action: "show", id: upazilaInstance.id)
    }

    def delete(Long id) {
        def upazilaInstance = Upazila.get(id)
        if (!upazilaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upazila.label', default: 'Upazila'), id])
            redirect(action: "list")
            return
        }

        try {
            upazilaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upazila.label', default: 'Upazila'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upazila.label', default: 'Upazila'), id])
            redirect(action: "show", id: id)
        }
    }
}
