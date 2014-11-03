package audit

import org.springframework.dao.DataIntegrityViolationException

class UpManagementLetterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upManagementLetterInstanceList: UpManagementLetter.list(params), upManagementLetterInstanceTotal: UpManagementLetter.count()]
    }

    def create() {
        [upManagementLetterInstance: new UpManagementLetter(params)]
    }

    def save() {
        def upManagementLetterInstance = new UpManagementLetter(params)
        if (!upManagementLetterInstance.save(flush: true)) {
            render(view: "create", model: [upManagementLetterInstance: upManagementLetterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), upManagementLetterInstance.id])
        redirect(action: "show", id: upManagementLetterInstance.id)
    }

    def show(Long id) {
        def upManagementLetterInstance = UpManagementLetter.get(id)
        if (!upManagementLetterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), id])
            redirect(action: "list")
            return
        }

        [upManagementLetterInstance: upManagementLetterInstance]
    }

    def edit(Long id) {
        def upManagementLetterInstance = UpManagementLetter.get(id)
        if (!upManagementLetterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), id])
            redirect(action: "list")
            return
        }

        [upManagementLetterInstance: upManagementLetterInstance]
    }

    def update(Long id, Long version) {
        def upManagementLetterInstance = UpManagementLetter.get(id)
        if (!upManagementLetterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upManagementLetterInstance.version > version) {
                upManagementLetterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upManagementLetter.label', default: 'UpManagementLetter')] as Object[],
                        "Another user has updated this UpManagementLetter while you were editing")
                render(view: "edit", model: [upManagementLetterInstance: upManagementLetterInstance])
                return
            }
        }

        upManagementLetterInstance.properties = params

        if (!upManagementLetterInstance.save(flush: true)) {
            render(view: "edit", model: [upManagementLetterInstance: upManagementLetterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), upManagementLetterInstance.id])
        redirect(action: "show", id: upManagementLetterInstance.id)
    }

    def delete(Long id) {
        def upManagementLetterInstance = UpManagementLetter.get(id)
        if (!upManagementLetterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), id])
            redirect(action: "list")
            return
        }

        try {
            upManagementLetterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upManagementLetter.label', default: 'UpManagementLetter'), id])
            redirect(action: "show", id: id)
        }
    }
}
