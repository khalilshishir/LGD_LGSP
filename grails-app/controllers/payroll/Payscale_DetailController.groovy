package payroll

import org.springframework.dao.DataIntegrityViolationException

class Payscale_DetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [payscale_DetailInstanceList: Payscale_Detail.list(params), payscale_DetailInstanceTotal: Payscale_Detail.count()]
    }

    def create() {
        [payscale_DetailInstance: new Payscale_Detail(params)]
    }

    def save() {
        def payscale_DetailInstance = new Payscale_Detail(params)
        if (!payscale_DetailInstance.save(flush: true)) {
            render(view: "create", model: [payscale_DetailInstance: payscale_DetailInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), payscale_DetailInstance.id])
        redirect(action: "show", id: payscale_DetailInstance.id)
    }

    def show(Long id) {
        def payscale_DetailInstance = Payscale_Detail.get(id)
        if (!payscale_DetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), id])
            redirect(action: "list")
            return
        }

        [payscale_DetailInstance: payscale_DetailInstance]
    }

    def edit(Long id) {
        def payscale_DetailInstance = Payscale_Detail.get(id)
        if (!payscale_DetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), id])
            redirect(action: "list")
            return
        }

        [payscale_DetailInstance: payscale_DetailInstance]
    }

    def update(Long id, Long version) {
        def payscale_DetailInstance = Payscale_Detail.get(id)
        if (!payscale_DetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (payscale_DetailInstance.version > version) {
                payscale_DetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'payscale_Detail.label', default: 'Payscale_Detail')] as Object[],
                        "Another user has updated this Payscale_Detail while you were editing")
                render(view: "edit", model: [payscale_DetailInstance: payscale_DetailInstance])
                return
            }
        }

        payscale_DetailInstance.properties = params

        if (!payscale_DetailInstance.save(flush: true)) {
            render(view: "edit", model: [payscale_DetailInstance: payscale_DetailInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), payscale_DetailInstance.id])
        redirect(action: "show", id: payscale_DetailInstance.id)
    }

    def delete(Long id) {
        def payscale_DetailInstance = Payscale_Detail.get(id)
        if (!payscale_DetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), id])
            redirect(action: "list")
            return
        }

        try {
            payscale_DetailInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'payscale_Detail.label', default: 'Payscale_Detail'), id])
            redirect(action: "show", id: id)
        }
    }
}
