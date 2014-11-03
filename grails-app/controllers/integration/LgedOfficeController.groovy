package integration

import org.springframework.dao.DataIntegrityViolationException

class LgedOfficeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lgedOfficeInstanceList: LgedOffice.list(params), lgedOfficeInstanceTotal: LgedOffice.count()]
    }

    def create() {
        [lgedOfficeInstance: new LgedOffice(params)]
    }

    def save() {
        def lgedOfficeInstance = new LgedOffice(params)
        if (!lgedOfficeInstance.save(flush: true)) {
            render(view: "create", model: [lgedOfficeInstance: lgedOfficeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), lgedOfficeInstance.id])
        redirect(action: "show", id: lgedOfficeInstance.id)
    }

    def show(Long id) {
        def lgedOfficeInstance = LgedOffice.get(id)
        if (!lgedOfficeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), id])
            redirect(action: "list")
            return
        }

        [lgedOfficeInstance: lgedOfficeInstance]
    }

    def edit(Long id) {
        def lgedOfficeInstance = LgedOffice.get(id)
        if (!lgedOfficeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), id])
            redirect(action: "list")
            return
        }

        [lgedOfficeInstance: lgedOfficeInstance]
    }

    def update(Long id, Long version) {
        def lgedOfficeInstance = LgedOffice.get(id)
        if (!lgedOfficeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lgedOfficeInstance.version > version) {
                lgedOfficeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'lgedOffice.label', default: 'LgedOffice')] as Object[],
                        "Another user has updated this LgedOffice while you were editing")
                render(view: "edit", model: [lgedOfficeInstance: lgedOfficeInstance])
                return
            }
        }

        lgedOfficeInstance.properties = params

        if (!lgedOfficeInstance.save(flush: true)) {
            render(view: "edit", model: [lgedOfficeInstance: lgedOfficeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), lgedOfficeInstance.id])
        redirect(action: "show", id: lgedOfficeInstance.id)
    }

    def delete(Long id) {
        def lgedOfficeInstance = LgedOffice.get(id)
        if (!lgedOfficeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), id])
            redirect(action: "list")
            return
        }

        try {
            lgedOfficeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lgedOffice.label', default: 'LgedOffice'), id])
            redirect(action: "show", id: id)
        }
    }
}
