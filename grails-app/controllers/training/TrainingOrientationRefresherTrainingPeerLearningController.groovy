package training

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class TrainingOrientationRefresherTrainingPeerLearningController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingOrientationRefresherTrainingPeerLearningInstanceList: TrainingOrientationRefresherTrainingPeerLearning.list(params), trainingOrientationRefresherTrainingPeerLearningInstanceTotal: TrainingOrientationRefresherTrainingPeerLearning.count()]
    }

    def create() {
        [trainingOrientationRefresherTrainingPeerLearningInstance: new TrainingOrientationRefresherTrainingPeerLearning(params)]
    }

    def save() {
        def trainingOrientationRefresherTrainingPeerLearningInstance = new TrainingOrientationRefresherTrainingPeerLearning(params)
        if (!trainingOrientationRefresherTrainingPeerLearningInstance.save(flush: true)) {
            render(view: "create", model: [trainingOrientationRefresherTrainingPeerLearningInstance: trainingOrientationRefresherTrainingPeerLearningInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), trainingOrientationRefresherTrainingPeerLearningInstance.id])
        redirect(action: "show", id: trainingOrientationRefresherTrainingPeerLearningInstance.id)
    }

    def show(Long id) {
        def trainingOrientationRefresherTrainingPeerLearningInstance = TrainingOrientationRefresherTrainingPeerLearning.get(id)
        if (!trainingOrientationRefresherTrainingPeerLearningInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), id])
            redirect(action: "list")
            return
        }

        [trainingOrientationRefresherTrainingPeerLearningInstance: trainingOrientationRefresherTrainingPeerLearningInstance]
    }

    def edit(Long id) {
        def trainingOrientationRefresherTrainingPeerLearningInstance = TrainingOrientationRefresherTrainingPeerLearning.get(id)
        if (!trainingOrientationRefresherTrainingPeerLearningInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), id])
            redirect(action: "list")
            return
        }

        [trainingOrientationRefresherTrainingPeerLearningInstance: trainingOrientationRefresherTrainingPeerLearningInstance]
    }

    def update(Long id, Long version) {
        def trainingOrientationRefresherTrainingPeerLearningInstance = TrainingOrientationRefresherTrainingPeerLearning.get(id)
        if (!trainingOrientationRefresherTrainingPeerLearningInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingOrientationRefresherTrainingPeerLearningInstance.version > version) {
                trainingOrientationRefresherTrainingPeerLearningInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning')] as Object[],
                        "Another user has updated this TrainingOrientationRefresherTrainingPeerLearning while you were editing")
                render(view: "edit", model: [trainingOrientationRefresherTrainingPeerLearningInstance: trainingOrientationRefresherTrainingPeerLearningInstance])
                return
            }
        }
        /*for date start*/
        Date trainingStartDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.TRAINING_START_DATE)
        trainingOrientationRefresherTrainingPeerLearningInstance.setTRAINING_START_DATE(trainingStartDate)

        Date trainingEndDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.TRAINING_END_DATE)
        trainingOrientationRefresherTrainingPeerLearningInstance.setTRAINING_END_DATE(trainingEndDate)
        /*for date end*/

        trainingOrientationRefresherTrainingPeerLearningInstance.properties = params

        if (!trainingOrientationRefresherTrainingPeerLearningInstance.save(flush: true)) {
            render(view: "edit", model: [trainingOrientationRefresherTrainingPeerLearningInstance: trainingOrientationRefresherTrainingPeerLearningInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), trainingOrientationRefresherTrainingPeerLearningInstance.id])
        redirect(action: "show", id: trainingOrientationRefresherTrainingPeerLearningInstance.id)
    }

    def delete(Long id) {
        def trainingOrientationRefresherTrainingPeerLearningInstance = TrainingOrientationRefresherTrainingPeerLearning.get(id)
        if (!trainingOrientationRefresherTrainingPeerLearningInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingOrientationRefresherTrainingPeerLearningInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning'), id])
            redirect(action: "show", id: id)
        }
    }
}
