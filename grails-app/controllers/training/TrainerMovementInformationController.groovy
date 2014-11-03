package training

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class TrainerMovementInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainerMovementInformationInstanceList: TrainerMovementInformation.list(params), trainerMovementInformationInstanceTotal: TrainerMovementInformation.count()]
    }

    def create() {
        [trainerMovementInformationInstance: new TrainerMovementInformation(params)]
    }

    def save() {
        def trainerMovementInformationInstance = new TrainerMovementInformation(params)
        if (!trainerMovementInformationInstance.save(flush: true)) {
            render(view: "create", model: [trainerMovementInformationInstance: trainerMovementInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), trainerMovementInformationInstance.id])
        redirect(action: "show", id: trainerMovementInformationInstance.id)
    }

    def show(Long id) {
        def trainerMovementInformationInstance = TrainerMovementInformation.get(id)
        if (!trainerMovementInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), id])
            redirect(action: "list")
            return
        }

        [trainerMovementInformationInstance: trainerMovementInformationInstance]
    }

    def edit(Long id) {
        def trainerMovementInformationInstance = TrainerMovementInformation.get(id)
        if (!trainerMovementInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), id])
            redirect(action: "list")
            return
        }

        [trainerMovementInformationInstance: trainerMovementInformationInstance]
    }

    def update(Long id, Long version) {
        def trainerMovementInformationInstance = TrainerMovementInformation.get(id)
        if (!trainerMovementInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainerMovementInformationInstance.version > version) {
                trainerMovementInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation')] as Object[],
                        "Another user has updated this TrainerMovementInformation while you were editing")
                render(view: "edit", model: [trainerMovementInformationInstance: trainerMovementInformationInstance])
                return
            }
        }
        /*for date start*/
        Date trainerMovementDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.TR_MOV_INFO_MOVEMENT_DATE)
        trainerMovementInformationInstance.setTR_MOV_INFO_MOVEMENT_DATE(trainerMovementDate)
        /*for date end*/

        trainerMovementInformationInstance.properties = params

        if (!trainerMovementInformationInstance.save(flush: true)) {
            render(view: "edit", model: [trainerMovementInformationInstance: trainerMovementInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), trainerMovementInformationInstance.id])
        redirect(action: "show", id: trainerMovementInformationInstance.id)
    }

    def delete(Long id) {
        def trainerMovementInformationInstance = TrainerMovementInformation.get(id)
        if (!trainerMovementInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            trainerMovementInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
