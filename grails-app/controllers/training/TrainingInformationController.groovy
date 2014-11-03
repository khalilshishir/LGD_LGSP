package training

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class TrainingInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingInformationInstanceList: TrainingInformation.list(params), trainingInformationInstanceTotal: TrainingInformation.count()]
    }

    def create() {
        [trainingInformationInstance: new TrainingInformation(params)]
    }

    def save() {
        def trainingInformationInstance = new TrainingInformation(params)
        if (!trainingInformationInstance.save(flush: true)) {
            render(view: "create", model: [trainingInformationInstance: trainingInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), trainingInformationInstance.id])
        redirect(action: "show", id: trainingInformationInstance.id)
    }

    def show(Long id) {
        def trainingInformationInstance = TrainingInformation.get(id)
        if (!trainingInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), id])
            redirect(action: "list")
            return
        }

        [trainingInformationInstance: trainingInformationInstance]
    }

    def edit(Long id) {
        def trainingInformationInstance = TrainingInformation.get(id)
        if (!trainingInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), id])
            redirect(action: "list")
            return
        }

        [trainingInformationInstance: trainingInformationInstance]
    }

    def update(Long id, Long version) {
        def trainingInformationInstance = TrainingInformation.get(id)
        if (!trainingInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingInformationInstance.version > version) {
                trainingInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'trainingInformation.label', default: 'TrainingInformation')] as Object[],
                          "Another user has updated this TrainingInformation while you were editing")
                render(view: "edit", model: [trainingInformationInstance: trainingInformationInstance])
                return
            }
        }
        /*for date start*/
        Date trainingInfotDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.TR_INFO_TRAINING_DATE)
        trainingInformationInstance.setTR_INFO_TRAINING_DATE(trainingInfotDate)
        /*for date end*/

        trainingInformationInstance.properties = params

        if (!trainingInformationInstance.save(flush: true)) {
            render(view: "edit", model: [trainingInformationInstance: trainingInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), trainingInformationInstance.id])
        redirect(action: "show", id: trainingInformationInstance.id)
    }

    def delete(Long id) {
        def trainingInformationInstance = TrainingInformation.get(id)
        if (!trainingInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingInformation.label', default: 'TrainingInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
