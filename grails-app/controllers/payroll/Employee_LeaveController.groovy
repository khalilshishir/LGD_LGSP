package payroll

import org.springframework.dao.DataIntegrityViolationException

class Employee_LeaveController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [employee_LeaveInstanceList: Employee_Leave.list(params), employee_LeaveInstanceTotal: Employee_Leave.count()]
        def employee_LeaveInstanceList=Employee_Leave.findAll()
        render(view: 'list',model: [employee_LeaveInstanceList:employee_LeaveInstanceList])
    }

    def create() {
        [employee_LeaveInstance: new Employee_Leave(params)]
    }

    def save() {
        def employee_LeaveInstance = new Employee_Leave(params)
        if (!employee_LeaveInstance.save(flush: true)) {
            render(view: "create", model: [employee_LeaveInstance: employee_LeaveInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), employee_LeaveInstance.id])
        redirect(action: "show", id: employee_LeaveInstance.id)
    }

    def show(Long id) {
        def employee_LeaveInstance = Employee_Leave.get(id)
        if (!employee_LeaveInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), id])
            redirect(action: "list")
            return
        }

        [employee_LeaveInstance: employee_LeaveInstance]
    }

    def edit(Long id) {
        def employee_LeaveInstance = Employee_Leave.get(id)
        if (!employee_LeaveInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), id])
            redirect(action: "list")
            return
        }

        [employee_LeaveInstance: employee_LeaveInstance]
    }

    def update(Long id, Long version) {
        def employee_LeaveInstance = Employee_Leave.get(id)
        if (!employee_LeaveInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employee_LeaveInstance.version > version) {
                employee_LeaveInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'employee_Leave.label', default: 'Employee_Leave')] as Object[],
                        "Another user has updated this Employee_Leave while you were editing")
                render(view: "edit", model: [employee_LeaveInstance: employee_LeaveInstance])
                return
            }
        }

        employee_LeaveInstance.properties = params

        if (!employee_LeaveInstance.save(flush: true)) {
            render(view: "edit", model: [employee_LeaveInstance: employee_LeaveInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), employee_LeaveInstance.id])
        redirect(action: "show", id: employee_LeaveInstance.id)
    }

    def delete(Long id) {
        def employee_LeaveInstance = Employee_Leave.get(id)
        if (!employee_LeaveInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), id])
            redirect(action: "list")
            return
        }

        try {
            employee_LeaveInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'employee_Leave.label', default: 'Employee_Leave'), id])
            redirect(action: "show", id: id)
        }
    }
}
