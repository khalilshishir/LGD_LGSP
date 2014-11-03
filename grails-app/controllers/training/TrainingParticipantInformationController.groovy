package training

import org.springframework.dao.DataIntegrityViolationException

class TrainingParticipantInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingParticipantInformationInstanceList: TrainingParticipantInformation.list(params), trainingParticipantInformationInstanceTotal: TrainingParticipantInformation.count()]
    }

    def create() {
        [trainingParticipantInformationInstance: new TrainingParticipantInformation(params)]
    }

    def save() {
        def trainingParticipantInformationInstance = new TrainingParticipantInformation(params)
        if (!trainingParticipantInformationInstance.save(flush: true)) {
            render(view: "create", model: [trainingParticipantInformationInstance: trainingParticipantInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), trainingParticipantInformationInstance.id])
        redirect(action: "show", id: trainingParticipantInformationInstance.id)
    }

    def show(Long id) {
        def trainingParticipantInformationInstance = TrainingParticipantInformation.get(id)
        if (!trainingParticipantInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), id])
            redirect(action: "list")
            return
        }

        [trainingParticipantInformationInstance: trainingParticipantInformationInstance]
    }

    def edit(Long id) {
        def trainingParticipantInformationInstance = TrainingParticipantInformation.get(id)
        if (!trainingParticipantInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), id])
            redirect(action: "list")
            return
        }

        [trainingParticipantInformationInstance: trainingParticipantInformationInstance]
    }

    def update(Long id, Long version) {
        def trainingParticipantInformationInstance = TrainingParticipantInformation.get(id)
        if (!trainingParticipantInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingParticipantInformationInstance.version > version) {
                trainingParticipantInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation')] as Object[],
                        "Another user has updated this TrainingParticipantInformation while you were editing")
                render(view: "edit", model: [trainingParticipantInformationInstance: trainingParticipantInformationInstance])
                return
            }
        }

        trainingParticipantInformationInstance.properties = params

        if (!trainingParticipantInformationInstance.save(flush: true)) {
            render(view: "edit", model: [trainingParticipantInformationInstance: trainingParticipantInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), trainingParticipantInformationInstance.id])
        redirect(action: "show", id: trainingParticipantInformationInstance.id)
    }

    def delete(Long id) {
        def trainingParticipantInformationInstance = TrainingParticipantInformation.get(id)
        if (!trainingParticipantInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingParticipantInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
