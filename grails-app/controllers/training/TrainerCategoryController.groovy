package training

import org.springframework.dao.DataIntegrityViolationException

class TrainerCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [trainerCategoryInstanceList: TrainerCategory.list(params), trainerCategoryInstanceTotal: TrainerCategory.count()]
    }

    def create() {
        [trainerCategoryInstance: new TrainerCategory(params)]
    }

    def save() {
        def trainerCategoryInstance = new TrainerCategory(params)
        if (!trainerCategoryInstance.save(flush: true)) {
            render(view: "create", model: [trainerCategoryInstance: trainerCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), trainerCategoryInstance.id])
        redirect(action: "show", id: trainerCategoryInstance.id)
    }

    def show(Long id) {
        def trainerCategoryInstance = TrainerCategory.get(id)
        if (!trainerCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), id])
            redirect(action: "list")
            return
        }

        [trainerCategoryInstance: trainerCategoryInstance]
    }

    def edit(Long id) {
        def trainerCategoryInstance = TrainerCategory.get(id)
        if (!trainerCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), id])
            redirect(action: "list")
            return
        }

        [trainerCategoryInstance: trainerCategoryInstance]
    }

    def update(Long id, Long version) {
        def trainerCategoryInstance = TrainerCategory.get(id)
        if (!trainerCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (trainerCategoryInstance.version > version) {
                trainerCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'trainerCategory.label', default: 'TrainerCategory')] as Object[],
                        "Another user has updated this TrainerCategory while you were editing")
                render(view: "edit", model: [trainerCategoryInstance: trainerCategoryInstance])
                return
            }
        }

        trainerCategoryInstance.properties = params

        if (!trainerCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [trainerCategoryInstance: trainerCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), trainerCategoryInstance.id])
        redirect(action: "show", id: trainerCategoryInstance.id)
    }

    def delete(Long id) {
        def trainerCategoryInstance = TrainerCategory.get(id)
        if (!trainerCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            trainerCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'trainerCategory.label', default: 'TrainerCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
