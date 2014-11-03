package training

import org.springframework.dao.DataIntegrityViolationException

class TraineeInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [traineeInformationInstanceList: TraineeInformation.list(params), traineeInformationInstanceTotal: TraineeInformation.count()]
    }

    def create() {
        [traineeInformationInstance: new TraineeInformation(params)]
    }

    def save() {
        def traineeInformationInstance = new TraineeInformation(params)
        if (!traineeInformationInstance.save(flush: true)) {
            render(view: "create", model: [traineeInformationInstance: traineeInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), traineeInformationInstance.id])
        redirect(action: "show", id: traineeInformationInstance.id)
    }

    def show(Long id) {
        def traineeInformationInstance = TraineeInformation.get(id)
        if (!traineeInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), id])
            redirect(action: "list")
            return
        }

        [traineeInformationInstance: traineeInformationInstance]
    }

    def edit(Long id) {
        def traineeInformationInstance = TraineeInformation.get(id)
        if (!traineeInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), id])
            redirect(action: "list")
            return
        }

        [traineeInformationInstance: traineeInformationInstance]
    }

    def update(Long id, Long version) {
        def traineeInformationInstance = TraineeInformation.get(id)
        if (!traineeInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (traineeInformationInstance.version > version) {
                traineeInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'traineeInformation.label', default: 'TraineeInformation')] as Object[],
                        "Another user has updated this TraineeInformation while you were editing")
                render(view: "edit", model: [traineeInformationInstance: traineeInformationInstance])
                return
            }
        }

        traineeInformationInstance.properties = params

        if (!traineeInformationInstance.save(flush: true)) {
            render(view: "edit", model: [traineeInformationInstance: traineeInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), traineeInformationInstance.id])
        redirect(action: "show", id: traineeInformationInstance.id)
    }

    def delete(Long id) {
        def traineeInformationInstance = TraineeInformation.get(id)
        if (!traineeInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            traineeInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'traineeInformation.label', default: 'TraineeInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
