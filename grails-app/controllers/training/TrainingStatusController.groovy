package training

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class TrainingStatusController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingStatusInstanceList: TrainingStatus.list(params), trainingStatusInstanceTotal: TrainingStatus.count()]
    }

    def create() {
        [trainingStatusInstance: new TrainingStatus(params)]
    }

    def save() {
        def trainingStatusInstance = new TrainingStatus(params)
        if (!trainingStatusInstance.save(flush: true)) {
            render(view: "create", model: [trainingStatusInstance: trainingStatusInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), trainingStatusInstance.id])
        redirect(action: "show", id: trainingStatusInstance.id)
    }

    def show(Long id) {
        def trainingStatusInstance = TrainingStatus.get(id)
        if (!trainingStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), id])
            redirect(action: "list")
            return
        }

        [trainingStatusInstance: trainingStatusInstance]
    }

    def edit(Long id) {
        def trainingStatusInstance = TrainingStatus.get(id)
        if (!trainingStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), id])
            redirect(action: "list")
            return
        }

        [trainingStatusInstance: trainingStatusInstance]
    }

    def update(Long id, Long version) {
        def trainingStatusInstance = TrainingStatus.get(id)
        if (!trainingStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingStatusInstance.version > version) {
                trainingStatusInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainingStatus.label', default: 'TrainingStatus')] as Object[],
                        "Another user has updated this TrainingStatus while you were editing")
                render(view: "edit", model: [trainingStatusInstance: trainingStatusInstance])
                return
            }
        }
        /*for date start*/
        Date trainingStatusDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.TR_STAT_DATE_OF_TRAINING)
        trainingStatusInstance.setTR_STAT_DATE_OF_TRAINING(trainingStatusDate)
        /*for date end*/

        trainingStatusInstance.properties = params

        if (!trainingStatusInstance.save(flush: true)) {
            render(view: "edit", model: [trainingStatusInstance: trainingStatusInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), trainingStatusInstance.id])
        redirect(action: "show", id: trainingStatusInstance.id)
    }

    def delete(Long id) {
        def trainingStatusInstance = TrainingStatus.get(id)
        if (!trainingStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingStatusInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingStatus.label', default: 'TrainingStatus'), id])
            redirect(action: "show", id: id)
        }
    }
}
