package integration

import org.springframework.dao.DataIntegrityViolationException
import util.Util

class ProjectInfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [projectInfoInstanceList: ProjectInfo.list(params), projectInfoInstanceTotal: ProjectInfo.count()]
    }

    def create() {
        [projectInfoInstance: new ProjectInfo(params)]
    }

    def save() {
        params.dateOfApproval=Util.GetMonDayYearFormate(params.dateOfApproval)
        params.completationDate=Util.GetMonDayYearFormate(params.completationDate)
        params.startingDate=Util.GetMonDayYearFormate(params.startingDate)
        def projectInfoInstance = new ProjectInfo(params)

        if (!projectInfoInstance.save(flush: true)) {
            render(view: "create", model: [projectInfoInstance: projectInfoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), projectInfoInstance.id])
        redirect(action: "show", id: projectInfoInstance.id)
    }

    def show(Long id) {
        def projectInfoInstance = ProjectInfo.get(id)
        if (!projectInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), id])
            redirect(action: "list")
            return
        }

        [projectInfoInstance: projectInfoInstance]
    }

    def edit(Long id) {
        def projectInfoInstance = ProjectInfo.get(id)
        if (!projectInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), id])
            redirect(action: "list")
            return
        }

        [projectInfoInstance: projectInfoInstance]
    }

    def update(Long id, Long version) {
        def projectInfoInstance = ProjectInfo.get(id)
        if (!projectInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (projectInfoInstance.version > version) {
                projectInfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'projectInfo.label', default: 'ProjectInfo')] as Object[],
                        "Another user has updated this ProjectInfo while you were editing")
                render(view: "edit", model: [projectInfoInstance: projectInfoInstance])
                return
            }
        }

        projectInfoInstance.properties = params

        if (!projectInfoInstance.save(flush: true)) {
            render(view: "edit", model: [projectInfoInstance: projectInfoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), projectInfoInstance.id])
        redirect(action: "show", id: projectInfoInstance.id)
    }

    def delete(Long id) {
        def projectInfoInstance = ProjectInfo.get(id)
        if (!projectInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), id])
            redirect(action: "list")
            return
        }

        try {
            projectInfoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'projectInfo.label', default: 'ProjectInfo'), id])
            redirect(action: "show", id: id)
        }
    }
}
