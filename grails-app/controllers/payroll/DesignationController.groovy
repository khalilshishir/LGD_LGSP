package payroll

import org.springframework.dao.DataIntegrityViolationException

class DesignationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [designationInstanceList: Designation.list(params), designationInstanceTotal: Designation.count()]
        def designationInstanceList=Designation.findAll()
        render(view: 'list',model:[designationInstanceList: designationInstanceList] )
    }

    def create() {
        [designationInstance: new Designation(params)]
    }

    def save() {
        def designationInstance = new Designation(params)
        if (!designationInstance.save(flush: true)) {
            render(view: "create", model: [designationInstance: designationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'designation.label', default: 'Designation'), designationInstance.id])
        redirect(action: "show", id: designationInstance.id)
    }

    def show(Long id) {
        def designationInstance = Designation.get(id)
        if (!designationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'designation.label', default: 'Designation'), id])
            redirect(action: "list")
            return
        }

        [designationInstance: designationInstance]
    }

    def edit(Long id) {
        def designationInstance = Designation.get(id)
        if (!designationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'designation.label', default: 'Designation'), id])
            redirect(action: "list")
            return
        }

        [designationInstance: designationInstance]
    }

    def update(Long id, Long version) {
        def designationInstance = Designation.get(id)
        if (!designationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'designation.label', default: 'Designation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (designationInstance.version > version) {
                designationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'designation.label', default: 'Designation')] as Object[],
                        "Another user has updated this Designation while you were editing")
                render(view: "edit", model: [designationInstance: designationInstance])
                return
            }
        }

        designationInstance.properties = params

        if (!designationInstance.save(flush: true)) {
            render(view: "edit", model: [designationInstance: designationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'designation.label', default: 'Designation'), designationInstance.id])
        redirect(action: "show", id: designationInstance.id)
    }

    def delete(Long id) {
        def designationInstance = Designation.get(id)
        if (!designationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'designation.label', default: 'Designation'), id])
            redirect(action: "list")
            return
        }

        try {
            designationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'designation.label', default: 'Designation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'designation.label', default: 'Designation'), id])
            redirect(action: "show", id: id)
        }
    }
}
