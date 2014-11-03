package training

import org.springframework.dao.DataIntegrityViolationException

class IECInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [IECInformationInstanceList: IECInformation.list(params), IECInformationInstanceTotal: IECInformation.count()]
    }

    def create() {
        [IECInformationInstance: new IECInformation(params)]
    }

    def save() {
        def IECInformationInstance = new IECInformation(params)
        if (!IECInformationInstance.save(flush: true)) {
            render(view: "create", model: [IECInformationInstance: IECInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), IECInformationInstance.id])
        redirect(action: "show", id: IECInformationInstance.id)
    }

    def show(Long id) {
        def IECInformationInstance = IECInformation.get(id)
        if (!IECInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), id])
            redirect(action: "list")
            return
        }

        [IECInformationInstance: IECInformationInstance]
    }

    def edit(Long id) {
        def IECInformationInstance = IECInformation.get(id)
        if (!IECInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), id])
            redirect(action: "list")
            return
        }

        [IECInformationInstance: IECInformationInstance]
    }

    def update(Long id, Long version) {
        def IECInformationInstance = IECInformation.get(id)
        if (!IECInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (IECInformationInstance.version > version) {
                IECInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'IECInformation.label', default: 'IECInformation')] as Object[],
                        "Another user has updated this IECInformation while you were editing")
                render(view: "edit", model: [IECInformationInstance: IECInformationInstance])
                return
            }
        }

        IECInformationInstance.properties = params

        if (!IECInformationInstance.save(flush: true)) {
            render(view: "edit", model: [IECInformationInstance: IECInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), IECInformationInstance.id])
        redirect(action: "show", id: IECInformationInstance.id)
    }

    def delete(Long id) {
        def IECInformationInstance = IECInformation.get(id)
        if (!IECInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            IECInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'IECInformation.label', default: 'IECInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
