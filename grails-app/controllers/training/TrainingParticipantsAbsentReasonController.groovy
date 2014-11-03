package training

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class TrainingParticipantsAbsentReasonController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingParticipantsAbsentReasonInstanceList: TrainingParticipantsAbsentReason.list(params), trainingParticipantsAbsentReasonInstanceTotal: TrainingParticipantsAbsentReason.count()]
    }

    def create() {
        [trainingParticipantsAbsentReasonInstance: new TrainingParticipantsAbsentReason(params)]
    }

    def save() {
        def trainingParticipantsAbsentReasonInstance = new TrainingParticipantsAbsentReason(params)
        if (!trainingParticipantsAbsentReasonInstance.save(flush: true)) {
            render(view: "create", model: [trainingParticipantsAbsentReasonInstance: trainingParticipantsAbsentReasonInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), trainingParticipantsAbsentReasonInstance.id])
        redirect(action: "show", id: trainingParticipantsAbsentReasonInstance.id)
    }

    def show(Long id) {
        def trainingParticipantsAbsentReasonInstance = TrainingParticipantsAbsentReason.get(id)
        if (!trainingParticipantsAbsentReasonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), id])
            redirect(action: "list")
            return
        }

        [trainingParticipantsAbsentReasonInstance: trainingParticipantsAbsentReasonInstance]
    }

    def edit(Long id) {
        def trainingParticipantsAbsentReasonInstance = TrainingParticipantsAbsentReason.get(id)
        if (!trainingParticipantsAbsentReasonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), id])
            redirect(action: "list")
            return
        }

        [trainingParticipantsAbsentReasonInstance: trainingParticipantsAbsentReasonInstance]
    }

    def update(Long id, Long version) {
        def trainingParticipantsAbsentReasonInstance = TrainingParticipantsAbsentReason.get(id)
        if (!trainingParticipantsAbsentReasonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingParticipantsAbsentReasonInstance.version > version) {
                trainingParticipantsAbsentReasonInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason')] as Object[],
                        "Another user has updated this TrainingParticipantsAbsentReason while you were editing")
                render(view: "edit", model: [trainingParticipantsAbsentReasonInstance: trainingParticipantsAbsentReasonInstance])
                return
            }
        }
        /*for date start*/
        Date trainingParticipantsAbsentReasonDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.TPAR_ABSENT_DATE)
        trainingParticipantsAbsentReasonInstance.setTPAR_ABSENT_DATE(trainingParticipantsAbsentReasonDate)
        /*for date end*/

        trainingParticipantsAbsentReasonInstance.properties = params

        if (!trainingParticipantsAbsentReasonInstance.save(flush: true)) {
            render(view: "edit", model: [trainingParticipantsAbsentReasonInstance: trainingParticipantsAbsentReasonInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), trainingParticipantsAbsentReasonInstance.id])
        redirect(action: "show", id: trainingParticipantsAbsentReasonInstance.id)
    }

    def delete(Long id) {
        def trainingParticipantsAbsentReasonInstance = TrainingParticipantsAbsentReason.get(id)
        if (!trainingParticipantsAbsentReasonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingParticipantsAbsentReasonInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason'), id])
            redirect(action: "show", id: id)
        }
    }
}
