package payroll

import org.springframework.dao.DataIntegrityViolationException

class Attendance_ProcessController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [attendance_ProcessInstanceList: Attendance_Process.list(params), attendance_ProcessInstanceTotal: Attendance_Process.count()]
    }

    def create() {
        [attendance_ProcessInstance: new Attendance_Process(params)]
    }

    def save() {
        def attendance_ProcessInstance = new Attendance_Process(params)
        if (!attendance_ProcessInstance.save(flush: true)) {
            render(view: "create", model: [attendance_ProcessInstance: attendance_ProcessInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), attendance_ProcessInstance.id])
        redirect(action: "show", id: attendance_ProcessInstance.id)
    }

    def show(Long id) {
        def attendance_ProcessInstance = Attendance_Process.get(id)
        if (!attendance_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), id])
            redirect(action: "list")
            return
        }

        [attendance_ProcessInstance: attendance_ProcessInstance]
    }

    def edit(Long id) {
        def attendance_ProcessInstance = Attendance_Process.get(id)
        if (!attendance_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), id])
            redirect(action: "list")
            return
        }

        [attendance_ProcessInstance: attendance_ProcessInstance]
    }

    def update(Long id, Long version) {
        def attendance_ProcessInstance = Attendance_Process.get(id)
        if (!attendance_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (attendance_ProcessInstance.version > version) {
                attendance_ProcessInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'attendance_Process.label', default: 'Attendance_Process')] as Object[],
                        "Another user has updated this Attendance_Process while you were editing")
                render(view: "edit", model: [attendance_ProcessInstance: attendance_ProcessInstance])
                return
            }
        }

        attendance_ProcessInstance.properties = params

        if (!attendance_ProcessInstance.save(flush: true)) {
            render(view: "edit", model: [attendance_ProcessInstance: attendance_ProcessInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), attendance_ProcessInstance.id])
        redirect(action: "show", id: attendance_ProcessInstance.id)
    }

    def delete(Long id) {
        def attendance_ProcessInstance = Attendance_Process.get(id)
        if (!attendance_ProcessInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), id])
            redirect(action: "list")
            return
        }

        try {
            attendance_ProcessInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'attendance_Process.label', default: 'Attendance_Process'), id])
            redirect(action: "show", id: id)
        }
    }
}
