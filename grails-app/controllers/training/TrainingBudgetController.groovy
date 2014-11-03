package training

import org.springframework.dao.DataIntegrityViolationException

class TrainingBudgetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingBudgetInstanceList: TrainingBudget.list(params), trainingBudgetInstanceTotal: TrainingBudget.count()]
    }

    def create() {
        [trainingBudgetInstance: new TrainingBudget(params)]
    }

    def save() {
        def trainingBudgetInstance = new TrainingBudget(params)
        if (!trainingBudgetInstance.save(flush: true)) {
            render(view: "create", model: [trainingBudgetInstance: trainingBudgetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), trainingBudgetInstance.id])
        redirect(action: "show", id: trainingBudgetInstance.id)
    }

    def show(Long id) {
        def trainingBudgetInstance = TrainingBudget.get(id)
        if (!trainingBudgetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), id])
            redirect(action: "list")
            return
        }

        [trainingBudgetInstance: trainingBudgetInstance]
    }

    def edit(Long id) {
        def trainingBudgetInstance = TrainingBudget.get(id)
        if (!trainingBudgetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), id])
            redirect(action: "list")
            return
        }

        [trainingBudgetInstance: trainingBudgetInstance]
    }

    def update(Long id, Long version) {
        def trainingBudgetInstance = TrainingBudget.get(id)
        if (!trainingBudgetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingBudgetInstance.version > version) {
                trainingBudgetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainingBudget.label', default: 'TrainingBudget')] as Object[],
                        "Another user has updated this TrainingBudget while you were editing")
                render(view: "edit", model: [trainingBudgetInstance: trainingBudgetInstance])
                return
            }
        }

        trainingBudgetInstance.properties = params

        if (!trainingBudgetInstance.save(flush: true)) {
            render(view: "edit", model: [trainingBudgetInstance: trainingBudgetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), trainingBudgetInstance.id])
        redirect(action: "show", id: trainingBudgetInstance.id)
    }

    def delete(Long id) {
        def trainingBudgetInstance = TrainingBudget.get(id)
        if (!trainingBudgetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingBudgetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingBudget.label', default: 'TrainingBudget'), id])
            redirect(action: "show", id: id)
        }
    }
}
