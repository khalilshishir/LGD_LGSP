package training

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class TrainingFeedbackController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingFeedbackInstanceList: TrainingFeedback.list(params), trainingFeedbackInstanceTotal: TrainingFeedback.count()]
    }

    def create() {
        [trainingFeedbackInstance: new TrainingFeedback(params)]
    }

    def save() {
        def trainingFeedbackInstance = new TrainingFeedback(params)
        if (!trainingFeedbackInstance.save(flush: true)) {
            render(view: "create", model: [trainingFeedbackInstance: trainingFeedbackInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), trainingFeedbackInstance.id])
        redirect(action: "show", id: trainingFeedbackInstance.id)
    }

    def show(Long id) {
        def trainingFeedbackInstance = TrainingFeedback.get(id)
        if (!trainingFeedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), id])
            redirect(action: "list")
            return
        }

        [trainingFeedbackInstance: trainingFeedbackInstance]
    }

    def edit(Long id) {
        def trainingFeedbackInstance = TrainingFeedback.get(id)
        if (!trainingFeedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), id])
            redirect(action: "list")
            return
        }

        [trainingFeedbackInstance: trainingFeedbackInstance]
    }

    def update(Long id, Long version) {
        def trainingFeedbackInstance = TrainingFeedback.get(id)
        if (!trainingFeedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingFeedbackInstance.version > version) {
                trainingFeedbackInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainingFeedback.label', default: 'TrainingFeedback')] as Object[],
                        "Another user has updated this TrainingFeedback while you were editing")
                render(view: "edit", model: [trainingFeedbackInstance: trainingFeedbackInstance])
                return
            }
        }
        /*for date start*/
        Date trainingFeedbackDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.TR_FEED_FEEDBACK_DATE)
        trainingFeedbackInstance.setTR_FEED_FEEDBACK_DATE(trainingFeedbackDate)
        /*for date end*/

        trainingFeedbackInstance.properties = params

        if (!trainingFeedbackInstance.save(flush: true)) {
            render(view: "edit", model: [trainingFeedbackInstance: trainingFeedbackInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), trainingFeedbackInstance.id])
        redirect(action: "show", id: trainingFeedbackInstance.id)
    }

    def delete(Long id) {
        def trainingFeedbackInstance = TrainingFeedback.get(id)
        if (!trainingFeedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingFeedbackInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingFeedback.label', default: 'TrainingFeedback'), id])
            redirect(action: "show", id: id)
        }
    }
}
