package procurement.up

import org.springframework.dao.DataIntegrityViolationException

class Procurement_TypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [procurement_TypeInstanceList: Procurement_Type.list(params), procurement_TypeInstanceTotal: Procurement_Type.count()]
    }

    def create() {
        [procurement_TypeInstance: new Procurement_Type(params)]
    }

    def save() {
        def procurement_TypeInstance = new Procurement_Type(params)
        if (!procurement_TypeInstance.save(flush: true)) {
            render(view: "create", model: [procurement_TypeInstance: procurement_TypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), procurement_TypeInstance.id])
        redirect(action: "show", id: procurement_TypeInstance.id)
    }

    def show(Long id) {
        def procurement_TypeInstance = Procurement_Type.get(id)
        if (!procurement_TypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), id])
            redirect(action: "list")
            return
        }

        [procurement_TypeInstance: procurement_TypeInstance]
    }

    def edit(Long id) {
        def procurement_TypeInstance = Procurement_Type.get(id)
        if (!procurement_TypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), id])
            redirect(action: "list")
            return
        }

        [procurement_TypeInstance: procurement_TypeInstance]
    }

    def update(Long id, Long version) {
        def procurement_TypeInstance = Procurement_Type.get(id)
        if (!procurement_TypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (procurement_TypeInstance.version > version) {
                procurement_TypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'procurement_Type.label', default: 'Procurement_Type')] as Object[],
                          "Another user has updated this Procurement_Type while you were editing")
                render(view: "edit", model: [procurement_TypeInstance: procurement_TypeInstance])
                return
            }
        }

        procurement_TypeInstance.properties = params

        if (!procurement_TypeInstance.save(flush: true)) {
            render(view: "edit", model: [procurement_TypeInstance: procurement_TypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), procurement_TypeInstance.id])
        redirect(action: "show", id: procurement_TypeInstance.id)
    }

    def delete(Long id) {
        def procurement_TypeInstance = Procurement_Type.get(id)
        if (!procurement_TypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), id])
            redirect(action: "list")
            return
        }

        try {
            procurement_TypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'procurement_Type.label', default: 'Procurement_Type'), id])
            redirect(action: "show", id: id)
        }
    }
}
