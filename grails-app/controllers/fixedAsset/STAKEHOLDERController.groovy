package fixedAsset

import org.springframework.dao.DataIntegrityViolationException

class STAKEHOLDERController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [STAKEHOLDERInstanceList: STAKEHOLDER.list(params), STAKEHOLDERInstanceTotal: STAKEHOLDER.count()]
    }

    def create() {
        [STAKEHOLDERInstance: new STAKEHOLDER(params)]
    }

    def save() {
        def STAKEHOLDERInstance = new STAKEHOLDER(params)
        if (!STAKEHOLDERInstance.save(flush: true)) {
            render(view: "create", model: [STAKEHOLDERInstance: STAKEHOLDERInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), STAKEHOLDERInstance.id])
        redirect(action: "show", id: STAKEHOLDERInstance.id)
    }

    def show(Long id) {
        def STAKEHOLDERInstance = STAKEHOLDER.get(id)
        if (!STAKEHOLDERInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), id])
            redirect(action: "list")
            return
        }

        [STAKEHOLDERInstance: STAKEHOLDERInstance]
    }

    def edit(Long id) {
        def STAKEHOLDERInstance = STAKEHOLDER.get(id)
        if (!STAKEHOLDERInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), id])
            redirect(action: "list")
            return
        }

        [STAKEHOLDERInstance: STAKEHOLDERInstance]
    }

    def update(Long id, Long version) {
        def STAKEHOLDERInstance = STAKEHOLDER.get(id)
        if (!STAKEHOLDERInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (STAKEHOLDERInstance.version > version) {
                STAKEHOLDERInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER')] as Object[],
                        "Another user has updated this STAKEHOLDER while you were editing")
                render(view: "edit", model: [STAKEHOLDERInstance: STAKEHOLDERInstance])
                return
            }
        }

        STAKEHOLDERInstance.properties = params

        if (!STAKEHOLDERInstance.save(flush: true)) {
            render(view: "edit", model: [STAKEHOLDERInstance: STAKEHOLDERInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), STAKEHOLDERInstance.id])
        redirect(action: "show", id: STAKEHOLDERInstance.id)
    }

    def delete(Long id) {
        def STAKEHOLDERInstance = STAKEHOLDER.get(id)
        if (!STAKEHOLDERInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), id])
            redirect(action: "list")
            return
        }

        try {
            STAKEHOLDERInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER'), id])
            redirect(action: "show", id: id)
        }
    }
}
