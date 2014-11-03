package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class MeetingLevelController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [meetingLevelInstanceList: MeetingLevel.list(params), meetingLevelInstanceTotal: MeetingLevel.count()]
    }

    def create() {
        [meetingLevelInstance: new MeetingLevel(params)]
    }

    def save() {
        def meetingLevelInstance = new MeetingLevel(params)
        if (!meetingLevelInstance.save(flush: true)) {
            render(view: "create", model: [meetingLevelInstance: meetingLevelInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), meetingLevelInstance.id])
        redirect(action: "show", id: meetingLevelInstance.id)
    }

    def show(Long id) {
        def meetingLevelInstance = MeetingLevel.get(id)
        if (!meetingLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), id])
            redirect(action: "list")
            return
        }

        [meetingLevelInstance: meetingLevelInstance]
    }

    def edit(Long id) {
        def meetingLevelInstance = MeetingLevel.get(id)
        if (!meetingLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), id])
            redirect(action: "list")
            return
        }

        [meetingLevelInstance: meetingLevelInstance]
    }

    def update(Long id, Long version) {
        def meetingLevelInstance = MeetingLevel.get(id)
        if (!meetingLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (meetingLevelInstance.version > version) {
                meetingLevelInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'meetingLevel.label', default: 'MeetingLevel')] as Object[],
                        "Another user has updated this MeetingLevel while you were editing")
                render(view: "edit", model: [meetingLevelInstance: meetingLevelInstance])
                return
            }
        }

        meetingLevelInstance.properties = params

        if (!meetingLevelInstance.save(flush: true)) {
            render(view: "edit", model: [meetingLevelInstance: meetingLevelInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), meetingLevelInstance.id])
        redirect(action: "show", id: meetingLevelInstance.id)
    }

    def delete(Long id) {
        def meetingLevelInstance = MeetingLevel.get(id)
        if (!meetingLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), id])
            redirect(action: "list")
            return
        }

        try {
            meetingLevelInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'meetingLevel.label', default: 'MeetingLevel'), id])
            redirect(action: "show", id: id)
        }
    }
}
