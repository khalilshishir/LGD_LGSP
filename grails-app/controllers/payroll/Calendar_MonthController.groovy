package payroll

import org.springframework.dao.DataIntegrityViolationException

class Calendar_MonthController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [calendar_MonthInstanceList: Calendar_Month.list(params), calendar_MonthInstanceTotal: Calendar_Month.count()]
    }

    def create() {
        [calendar_MonthInstance: new Calendar_Month(params)]
    }

    def save() {
        def calendar_MonthInstance = new Calendar_Month(params)
        if (!calendar_MonthInstance.save(flush: true)) {
            render(view: "create", model: [calendar_MonthInstance: calendar_MonthInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), calendar_MonthInstance.id])
        redirect(action: "show", id: calendar_MonthInstance.id)
    }

    def show(Long id) {
        def calendar_MonthInstance = Calendar_Month.get(id)
        if (!calendar_MonthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), id])
            redirect(action: "list")
            return
        }

        [calendar_MonthInstance: calendar_MonthInstance]
    }

    def edit(Long id) {
        def calendar_MonthInstance = Calendar_Month.get(id)
        if (!calendar_MonthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), id])
            redirect(action: "list")
            return
        }

        [calendar_MonthInstance: calendar_MonthInstance]
    }

    def update(Long id, Long version) {
        def calendar_MonthInstance = Calendar_Month.get(id)
        if (!calendar_MonthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (calendar_MonthInstance.version > version) {
                calendar_MonthInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'calendar_Month.label', default: 'Calendar_Month')] as Object[],
                        "Another user has updated this Calendar_Month while you were editing")
                render(view: "edit", model: [calendar_MonthInstance: calendar_MonthInstance])
                return
            }
        }

        calendar_MonthInstance.properties = params

        if (!calendar_MonthInstance.save(flush: true)) {
            render(view: "edit", model: [calendar_MonthInstance: calendar_MonthInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), calendar_MonthInstance.id])
        redirect(action: "show", id: calendar_MonthInstance.id)
    }

    def delete(Long id) {
        def calendar_MonthInstance = Calendar_Month.get(id)
        if (!calendar_MonthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), id])
            redirect(action: "list")
            return
        }

        try {
            calendar_MonthInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'calendar_Month.label', default: 'Calendar_Month'), id])
            redirect(action: "show", id: id)
        }
    }
}
