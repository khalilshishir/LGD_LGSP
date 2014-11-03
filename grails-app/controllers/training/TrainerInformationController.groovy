package training

import org.springframework.dao.DataIntegrityViolationException

class TrainerInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainerInformationInstanceList: TrainerInformation.list(params), trainerInformationInstanceTotal: TrainerInformation.count()]
    }

    def create() {
        [trainerInformationInstance: new TrainerInformation(params)]
    }

    def save() {
        def trainerInformationInstance = new TrainerInformation(params)
        if (!trainerInformationInstance.save(flush: true)) {
            render(view: "create", model: [trainerInformationInstance: trainerInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), trainerInformationInstance.id])
        redirect(action: "show", id: trainerInformationInstance.id)
    }

    def show(Long id) {
        def trainerInformationInstance = TrainerInformation.get(id)
        if (!trainerInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), id])
            redirect(action: "list")
            return
        }

        [trainerInformationInstance: trainerInformationInstance]
    }

    def edit(Long id) {
        def trainerInformationInstance = TrainerInformation.get(id)
        if (!trainerInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), id])
            redirect(action: "list")
            return
        }

        [trainerInformationInstance: trainerInformationInstance]
    }

    def update(Long id, Long version) {
        def trainerInformationInstance = TrainerInformation.get(id)
        if (!trainerInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainerInformationInstance.version > version) {
                trainerInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainerInformation.label', default: 'TrainerInformation')] as Object[],
                        "Another user has updated this TrainerInformation while you were editing")
                render(view: "edit", model: [trainerInformationInstance: trainerInformationInstance])
                return
            }
        }

        trainerInformationInstance.properties = params

        if (!trainerInformationInstance.save(flush: true)) {
            render(view: "edit", model: [trainerInformationInstance: trainerInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), trainerInformationInstance.id])
        redirect(action: "show", id: trainerInformationInstance.id)
    }

    def delete(Long id) {
        def trainerInformationInstance = TrainerInformation.get(id)
        if (!trainerInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            trainerInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainerInformation.label', default: 'TrainerInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
