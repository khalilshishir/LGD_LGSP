package procurement.pmu

import org.springframework.dao.DataIntegrityViolationException

class MeetingCommitteeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [meetingCommitteeInstanceList: MeetingCommittee.list(params), meetingCommitteeInstanceTotal: MeetingCommittee.count()]
    }

    def create() {
        [meetingCommitteeInstance: new MeetingCommittee(params)]
    }

    def save() {
        def meetingCommitteeInstance = new MeetingCommittee(params)
        if (!meetingCommitteeInstance.save(flush: true)) {
            render(view: "create", model: [meetingCommitteeInstance: meetingCommitteeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), meetingCommitteeInstance.id])
        redirect(action: "show", id: meetingCommitteeInstance.id)
    }

    def show(Long id) {
        def meetingCommitteeInstance = MeetingCommittee.get(id)
        if (!meetingCommitteeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), id])
            redirect(action: "list")
            return
        }

        [meetingCommitteeInstance: meetingCommitteeInstance]
    }

    def edit(Long id) {
        def meetingCommitteeInstance = MeetingCommittee.get(id)
        if (!meetingCommitteeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), id])
            redirect(action: "list")
            return
        }

        [meetingCommitteeInstance: meetingCommitteeInstance]
    }

    def update(Long id, Long version) {
        def meetingCommitteeInstance = MeetingCommittee.get(id)
        if (!meetingCommitteeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (meetingCommitteeInstance.version > version) {
                meetingCommitteeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'meetingCommittee.label', default: 'MeetingCommittee')] as Object[],
                        "Another user has updated this MeetingCommittee while you were editing")
                render(view: "edit", model: [meetingCommitteeInstance: meetingCommitteeInstance])
                return
            }
        }

        meetingCommitteeInstance.properties = params

        if (!meetingCommitteeInstance.save(flush: true)) {
            render(view: "edit", model: [meetingCommitteeInstance: meetingCommitteeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), meetingCommitteeInstance.id])
        redirect(action: "show", id: meetingCommitteeInstance.id)
    }

    def delete(Long id) {
        def meetingCommitteeInstance = MeetingCommittee.get(id)
        if (!meetingCommitteeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), id])
            redirect(action: "list")
            return
        }

        try {
            meetingCommitteeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'meetingCommittee.label', default: 'MeetingCommittee'), id])
            redirect(action: "show", id: id)
        }
    }
}
