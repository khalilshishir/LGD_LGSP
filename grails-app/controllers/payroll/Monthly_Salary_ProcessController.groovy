package payroll

import org.springframework.dao.DataIntegrityViolationException

class Monthly_Salary_ProcessController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [monthly_Salary_ProcessInstanceList: Monthly_Salary_Process.list(params), monthly_Salary_ProcessInstanceTotal: Monthly_Salary_Process.count()]
    }

    def create() {
        [monthly_Salary_ProcessInstance: new Monthly_Salary_Process(params)]
    }

    def save() {
        def monthly_Salary_ProcessInstance = new Monthly_Salary_Process(params)
        if (!monthly_Salary_ProcessInstance.save(flush: true)) {
            render(view: "create", model: [monthly_Salary_ProcessInstance: monthly_Salary_ProcessInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), monthly_Salary_ProcessInstance.id])
        redirect(action: "show", id: monthly_Salary_ProcessInstance.id)
    }

    def show(Long id) {
        def monthly_Salary_ProcessInstance = Monthly_Salary_Process.get(id)
        if (!monthly_Salary_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), id])
            redirect(action: "list")
            return
        }

        [monthly_Salary_ProcessInstance: monthly_Salary_ProcessInstance]
    }

    def edit(Long id) {
        def monthly_Salary_ProcessInstance = Monthly_Salary_Process.get(id)
        if (!monthly_Salary_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), id])
            redirect(action: "list")
            return
        }

        [monthly_Salary_ProcessInstance: monthly_Salary_ProcessInstance]
    }

    def update(Long id, Long version) {
        def monthly_Salary_ProcessInstance = Monthly_Salary_Process.get(id)
        if (!monthly_Salary_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (monthly_Salary_ProcessInstance.version > version) {
                monthly_Salary_ProcessInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process')] as Object[],
                        "Another user has updated this Monthly_Salary_Process while you were editing")
                render(view: "edit", model: [monthly_Salary_ProcessInstance: monthly_Salary_ProcessInstance])
                return
            }
        }

        monthly_Salary_ProcessInstance.properties = params

        if (!monthly_Salary_ProcessInstance.save(flush: true)) {
            render(view: "edit", model: [monthly_Salary_ProcessInstance: monthly_Salary_ProcessInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), monthly_Salary_ProcessInstance.id])
        redirect(action: "show", id: monthly_Salary_ProcessInstance.id)
    }

    def delete(Long id) {
        def monthly_Salary_ProcessInstance = Monthly_Salary_Process.get(id)
        if (!monthly_Salary_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), id])
            redirect(action: "list")
            return
        }

        try {
            monthly_Salary_ProcessInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process'), id])
            redirect(action: "show", id: id)
        }
    }
}
