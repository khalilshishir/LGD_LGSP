package settings

import org.springframework.dao.DataIntegrityViolationException

class CommitteeLevelController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [committeeLevelInstanceList: CommitteeLevel.list(params), committeeLevelInstanceTotal: CommitteeLevel.count()]
    }

    def create() {
        [committeeLevelInstance: new CommitteeLevel(params)]
    }

    def save() {
        def committeeLevelInstance = new CommitteeLevel(params)
        if (!committeeLevelInstance.save(flush: true)) {
            render(view: "create", model: [committeeLevelInstance: committeeLevelInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), committeeLevelInstance.id])
        redirect(action: "show", id: committeeLevelInstance.id)
    }

    def show(Long id) {
        def committeeLevelInstance = CommitteeLevel.get(id)
        if (!committeeLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), id])
            redirect(action: "list")
            return
        }

        [committeeLevelInstance: committeeLevelInstance]
    }

    def edit(Long id) {
        def committeeLevelInstance = CommitteeLevel.get(id)
        if (!committeeLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), id])
            redirect(action: "list")
            return
        }

        [committeeLevelInstance: committeeLevelInstance]
    }

    def update(Long id, Long version) {
        def committeeLevelInstance = CommitteeLevel.get(id)
        if (!committeeLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (committeeLevelInstance.version > version) {
                committeeLevelInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'committeeLevel.label', default: 'CommitteeLevel')] as Object[],
                        "Another user has updated this CommitteeLevel while you were editing")
                render(view: "edit", model: [committeeLevelInstance: committeeLevelInstance])
                return
            }
        }

        committeeLevelInstance.properties = params

        if (!committeeLevelInstance.save(flush: true)) {
            render(view: "edit", model: [committeeLevelInstance: committeeLevelInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), committeeLevelInstance.id])
        redirect(action: "show", id: committeeLevelInstance.id)
    }

    def delete(Long id) {
        def committeeLevelInstance = CommitteeLevel.get(id)
        if (!committeeLevelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), id])
            redirect(action: "list")
            return
        }

        try {
            committeeLevelInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'committeeLevel.label', default: 'CommitteeLevel'), id])
            redirect(action: "show", id: id)
        }
    }
}
