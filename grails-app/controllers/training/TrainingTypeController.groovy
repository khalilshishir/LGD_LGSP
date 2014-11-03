package training

import org.springframework.dao.DataIntegrityViolationException

class TrainingTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainingTypeInstanceList: TrainingType.list(params), trainingTypeInstanceTotal: TrainingType.count()]
    }

    def create() {
        [trainingTypeInstance: new TrainingType(params)]
    }

    def save() {
        def trainingTypeInstance = new TrainingType(params)
        if (!trainingTypeInstance.save(flush: true)) {
            render(view: "create", model: [trainingTypeInstance: trainingTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), trainingTypeInstance.id])
        redirect(action: "show", id: trainingTypeInstance.id)
    }

    def show(Long id) {
        def trainingTypeInstance = TrainingType.get(id)
        if (!trainingTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), id])
            redirect(action: "list")
            return
        }

        [trainingTypeInstance: trainingTypeInstance]
    }

    def edit(Long id) {
        def trainingTypeInstance = TrainingType.get(id)
        if (!trainingTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), id])
            redirect(action: "list")
            return
        }

        [trainingTypeInstance: trainingTypeInstance]
    }

    def update(Long id, Long version) {
        def trainingTypeInstance = TrainingType.get(id)
        if (!trainingTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainingTypeInstance.version > version) {
                trainingTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainingType.label', default: 'TrainingType')] as Object[],
                        "Another user has updated this TrainingType while you were editing")
                render(view: "edit", model: [trainingTypeInstance: trainingTypeInstance])
                return
            }
        }

        trainingTypeInstance.properties = params

        if (!trainingTypeInstance.save(flush: true)) {
            render(view: "edit", model: [trainingTypeInstance: trainingTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), trainingTypeInstance.id])
        redirect(action: "show", id: trainingTypeInstance.id)
    }

    def delete(Long id) {
        def trainingTypeInstance = TrainingType.get(id)
        if (!trainingTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), id])
            redirect(action: "list")
            return
        }

        try {
            trainingTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), id])
            redirect(action: "show", id: id)
        }
    }
}
