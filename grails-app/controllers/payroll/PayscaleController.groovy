package payroll

import org.springframework.dao.DataIntegrityViolationException

class PayscaleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [payscaleInstanceList: Payscale.list(params), payscaleInstanceTotal: Payscale.count()]
    }

    def create() {
        [payscaleInstance: new Payscale(params)]
    }

    def save() {
        def payscaleInstance = new Payscale(params)
        if (!payscaleInstance.save(flush: true)) {
            render(view: "create", model: [payscaleInstance: payscaleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'payscale.label', default: 'Payscale'), payscaleInstance.id])
        redirect(action: "show", id: payscaleInstance.id)
    }

    def show(Long id) {
        def payscaleInstance = Payscale.get(id)
        if (!payscaleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale.label', default: 'Payscale'), id])
            redirect(action: "list")
            return
        }

        [payscaleInstance: payscaleInstance]
    }

    def edit(Long id) {
        def payscaleInstance = Payscale.get(id)
        if (!payscaleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale.label', default: 'Payscale'), id])
            redirect(action: "list")
            return
        }

        [payscaleInstance: payscaleInstance]
    }

    def update(Long id, Long version) {
        def payscaleInstance = Payscale.get(id)
        if (!payscaleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale.label', default: 'Payscale'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (payscaleInstance.version > version) {
                payscaleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'payscale.label', default: 'Payscale')] as Object[],
                        "Another user has updated this Payscale while you were editing")
                render(view: "edit", model: [payscaleInstance: payscaleInstance])
                return
            }
        }

        payscaleInstance.properties = params

        if (!payscaleInstance.save(flush: true)) {
            render(view: "edit", model: [payscaleInstance: payscaleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'payscale.label', default: 'Payscale'), payscaleInstance.id])
        redirect(action: "show", id: payscaleInstance.id)
    }

    def delete(Long id) {
        def payscaleInstance = Payscale.get(id)
        if (!payscaleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale.label', default: 'Payscale'), id])
            redirect(action: "list")
            return
        }

        try {
            payscaleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'payscale.label', default: 'Payscale'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'payscale.label', default: 'Payscale'), id])
            redirect(action: "show", id: id)
        }
    }
}
