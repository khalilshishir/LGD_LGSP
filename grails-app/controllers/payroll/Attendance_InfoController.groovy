package payroll

import org.springframework.dao.DataIntegrityViolationException

class Attendance_InfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [attendance_InfoInstanceList: Attendance_Info.list(params), attendance_InfoInstanceTotal: Attendance_Info.count()]
    }

    def create() {
        [attendance_InfoInstance: new Attendance_Info(params)]
    }

    def save() {
        def attendance_InfoInstance = new Attendance_Info(params)
        if (!attendance_InfoInstance.save(flush: true)) {
            render(view: "create", model: [attendance_InfoInstance: attendance_InfoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), attendance_InfoInstance.id])
        redirect(action: "show", id: attendance_InfoInstance.id)
    }

    def show(Long id) {
        def attendance_InfoInstance = Attendance_Info.get(id)
        if (!attendance_InfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), id])
            redirect(action: "list")
            return
        }

        [attendance_InfoInstance: attendance_InfoInstance]
    }

    def edit(Long id) {
        def attendance_InfoInstance = Attendance_Info.get(id)
        if (!attendance_InfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), id])
            redirect(action: "list")
            return
        }

        [attendance_InfoInstance: attendance_InfoInstance]
    }

    def update(Long id, Long version) {
        def attendance_InfoInstance = Attendance_Info.get(id)
        if (!attendance_InfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (attendance_InfoInstance.version > version) {
                attendance_InfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'attendance_Info.label', default: 'Attendance_Info')] as Object[],
                        "Another user has updated this Attendance_Info while you were editing")
                render(view: "edit", model: [attendance_InfoInstance: attendance_InfoInstance])
                return
            }
        }

        attendance_InfoInstance.properties = params

        if (!attendance_InfoInstance.save(flush: true)) {
            render(view: "edit", model: [attendance_InfoInstance: attendance_InfoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), attendance_InfoInstance.id])
        redirect(action: "show", id: attendance_InfoInstance.id)
    }

    def delete(Long id) {
        def attendance_InfoInstance = Attendance_Info.get(id)
        if (!attendance_InfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), id])
            redirect(action: "list")
            return
        }

        try {
            attendance_InfoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'attendance_Info.label', default: 'Attendance_Info'), id])
            redirect(action: "show", id: id)
        }
    }
}
