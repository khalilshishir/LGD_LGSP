package settings

import org.springframework.dao.DataIntegrityViolationException

class MemberDesignationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [memberDesignationInstanceList: MemberDesignation.list(params), memberDesignationInstanceTotal: MemberDesignation.count()]
    }

    def create() {
        [memberDesignationInstance: new MemberDesignation(params)]
    }

    def save() {
        def memberDesignationInstance = new MemberDesignation(params)
        if (!memberDesignationInstance.save(flush: true)) {
            render(view: "create", model: [memberDesignationInstance: memberDesignationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), memberDesignationInstance.id])
        redirect(action: "show", id: memberDesignationInstance.id)
    }

    def show(Long id) {
        def memberDesignationInstance = MemberDesignation.get(id)
        if (!memberDesignationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), id])
            redirect(action: "list")
            return
        }

        [memberDesignationInstance: memberDesignationInstance]
    }

    def edit(Long id) {
        def memberDesignationInstance = MemberDesignation.get(id)
        if (!memberDesignationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), id])
            redirect(action: "list")
            return
        }

        [memberDesignationInstance: memberDesignationInstance]
    }

    def update(Long id, Long version) {
        def memberDesignationInstance = MemberDesignation.get(id)
        if (!memberDesignationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (memberDesignationInstance.version > version) {
                memberDesignationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'memberDesignation.label', default: 'MemberDesignation')] as Object[],
                        "Another user has updated this MemberDesignation while you were editing")
                render(view: "edit", model: [memberDesignationInstance: memberDesignationInstance])
                return
            }
        }

        memberDesignationInstance.properties = params

        if (!memberDesignationInstance.save(flush: true)) {
            render(view: "edit", model: [memberDesignationInstance: memberDesignationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), memberDesignationInstance.id])
        redirect(action: "show", id: memberDesignationInstance.id)
    }

    def delete(Long id) {
        def memberDesignationInstance = MemberDesignation.get(id)
        if (!memberDesignationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), id])
            redirect(action: "list")
            return
        }

        try {
            memberDesignationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'memberDesignation.label', default: 'MemberDesignation'), id])
            redirect(action: "show", id: id)
        }
    }
}
