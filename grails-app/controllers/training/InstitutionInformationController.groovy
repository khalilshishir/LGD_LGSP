package training

import org.springframework.dao.DataIntegrityViolationException

class InstitutionInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [institutionInformationInstanceList: InstitutionInformation.list(params), institutionInformationInstanceTotal: InstitutionInformation.count()]
    }

    def create() {
        [institutionInformationInstance: new InstitutionInformation(params)]
    }

    def save() {
        def institutionInformationInstance = new InstitutionInformation(params)
        if (!institutionInformationInstance.save(flush: true)) {
            render(view: "create", model: [institutionInformationInstance: institutionInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), institutionInformationInstance.id])
        redirect(action: "show", id: institutionInformationInstance.id)
    }

    def show(Long id) {
        def institutionInformationInstance = InstitutionInformation.get(id)
        if (!institutionInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), id])
            redirect(action: "list")
            return
        }

        [institutionInformationInstance: institutionInformationInstance]
    }

    def edit(Long id) {
        def institutionInformationInstance = InstitutionInformation.get(id)
        if (!institutionInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), id])
            redirect(action: "list")
            return
        }

        [institutionInformationInstance: institutionInformationInstance]
    }

    def update(Long id, Long version) {
        def institutionInformationInstance = InstitutionInformation.get(id)
        if (!institutionInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (institutionInformationInstance.version > version) {
                institutionInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'institutionInformation.label', default: 'InstitutionInformation')] as Object[],
                        "Another user has updated this InstitutionInformation while you were editing")
                render(view: "edit", model: [institutionInformationInstance: institutionInformationInstance])
                return
            }
        }

        institutionInformationInstance.properties = params

        if (!institutionInformationInstance.save(flush: true)) {
            render(view: "edit", model: [institutionInformationInstance: institutionInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), institutionInformationInstance.id])
        redirect(action: "show", id: institutionInformationInstance.id)
    }

    def delete(Long id) {
        def institutionInformationInstance = InstitutionInformation.get(id)
        if (!institutionInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            institutionInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'institutionInformation.label', default: 'InstitutionInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
