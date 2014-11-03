package training

import org.springframework.dao.DataIntegrityViolationException

class TraineeCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [traineeCategoryInstanceList: TraineeCategory.list(params), traineeCategoryInstanceTotal: TraineeCategory.count()]
    }

    def create() {
        [traineeCategoryInstance: new TraineeCategory(params)]
    }

    def save() {
        def traineeCategoryInstance = new TraineeCategory(params)
        if (!traineeCategoryInstance.save(flush: true)) {
            render(view: "create", model: [traineeCategoryInstance: traineeCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), traineeCategoryInstance.id])
        redirect(action: "show", id: traineeCategoryInstance.id)
    }

    def show(Long id) {
        def traineeCategoryInstance = TraineeCategory.get(id)
        if (!traineeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), id])
            redirect(action: "list")
            return
        }

        [traineeCategoryInstance: traineeCategoryInstance]
    }

    def edit(Long id) {
        def traineeCategoryInstance = TraineeCategory.get(id)
        if (!traineeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), id])
            redirect(action: "list")
            return
        }

        [traineeCategoryInstance: traineeCategoryInstance]
    }

    def update(Long id, Long version) {
        def traineeCategoryInstance = TraineeCategory.get(id)
        if (!traineeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (traineeCategoryInstance.version > version) {
                traineeCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'traineeCategory.label', default: 'TraineeCategory')] as Object[],
                        "Another user has updated this TraineeCategory while you were editing")
                render(view: "edit", model: [traineeCategoryInstance: traineeCategoryInstance])
                return
            }
        }

        traineeCategoryInstance.properties = params

        if (!traineeCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [traineeCategoryInstance: traineeCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), traineeCategoryInstance.id])
        redirect(action: "show", id: traineeCategoryInstance.id)
    }

    def delete(Long id) {
        def traineeCategoryInstance = TraineeCategory.get(id)
        if (!traineeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            traineeCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'traineeCategory.label', default: 'TraineeCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
