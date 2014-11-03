package training

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class OthersTrainingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [othersTrainingInstanceList: OthersTraining.list(params), othersTrainingInstanceTotal: OthersTraining.count()]
    }

    def create() {
        [othersTrainingInstance: new OthersTraining(params)]
    }

    def save() {
        def othersTrainingInstance = new OthersTraining(params)
        if (!othersTrainingInstance.save(flush: true)) {
            render(view: "create", model: [othersTrainingInstance: othersTrainingInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), othersTrainingInstance.id])
        redirect(action: "show", id: othersTrainingInstance.id)
    }

    def show(Long id) {
        def othersTrainingInstance = OthersTraining.get(id)
        if (!othersTrainingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), id])
            redirect(action: "list")
            return
        }

        [othersTrainingInstance: othersTrainingInstance]
    }

    def edit(Long id) {
        def othersTrainingInstance = OthersTraining.get(id)
        if (!othersTrainingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), id])
            redirect(action: "list")
            return
        }

        [othersTrainingInstance: othersTrainingInstance]
    }

    def update(Long id, Long version) {
        def othersTrainingInstance = OthersTraining.get(id)
        if (!othersTrainingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (othersTrainingInstance.version > version) {
                othersTrainingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'othersTraining.label', default: 'OthersTraining')] as Object[],
                        "Another user has updated this OthersTraining while you were editing")
                render(view: "edit", model: [othersTrainingInstance: othersTrainingInstance])
                return
            }
        }
        /*for date start*/
        Date othersTrainingStartDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.OTH_TR_START_DATE)
        othersTrainingInstance.setOTH_TR_START_DATE(othersTrainingStartDate)

        Date othersTrainingEndDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.OTH_TR_END_DATE)
        othersTrainingInstance.setOTH_TR_END_DATE(othersTrainingEndDate)
        /*for date end*/

        othersTrainingInstance.properties = params

        if (!othersTrainingInstance.save(flush: true)) {
            render(view: "edit", model: [othersTrainingInstance: othersTrainingInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), othersTrainingInstance.id])
        redirect(action: "show", id: othersTrainingInstance.id)
    }

    def delete(Long id) {
        def othersTrainingInstance = OthersTraining.get(id)
        if (!othersTrainingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), id])
            redirect(action: "list")
            return
        }

        try {
            othersTrainingInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'othersTraining.label', default: 'OthersTraining'), id])
            redirect(action: "show", id: id)
        }
    }
}
