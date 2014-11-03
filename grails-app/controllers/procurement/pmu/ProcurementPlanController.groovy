package procurement.pmu

import org.springframework.dao.DataIntegrityViolationException

class ProcurementPlanController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [procurementPlanInstanceList: ProcurementPlan.list(params), procurementPlanInstanceTotal: ProcurementPlan.count()]
    }

    def create() {
        [procurementPlanInstance: new ProcurementPlan(params)]
    }

    def save() {
        def procurementPlanInstance = new ProcurementPlan(params)
        if (!procurementPlanInstance.save(flush: true)) {
            render(view: "create", model: [procurementPlanInstance: procurementPlanInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), procurementPlanInstance.id])
        redirect(action: "show", id: procurementPlanInstance.id)
    }

    def show(Long id) {
        def procurementPlanInstance = ProcurementPlan.get(id)
        if (!procurementPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), id])
            redirect(action: "list")
            return
        }

        [procurementPlanInstance: procurementPlanInstance]
    }

    def edit(Long id) {
        def procurementPlanInstance = ProcurementPlan.get(id)
        if (!procurementPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), id])
            redirect(action: "list")
            return
        }

        [procurementPlanInstance: procurementPlanInstance]
    }

    def update(Long id, Long version) {
        def procurementPlanInstance = ProcurementPlan.get(id)
        if (!procurementPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (procurementPlanInstance.version > version) {
                procurementPlanInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'procurementPlan.label', default: 'ProcurementPlan')] as Object[],
                          "Another user has updated this ProcurementPlan while you were editing")
                render(view: "edit", model: [procurementPlanInstance: procurementPlanInstance])
                return
            }
        }

        procurementPlanInstance.properties = params

        if (!procurementPlanInstance.save(flush: true)) {
            render(view: "edit", model: [procurementPlanInstance: procurementPlanInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), procurementPlanInstance.id])
        redirect(action: "show", id: procurementPlanInstance.id)
    }

    def delete(Long id) {
        def procurementPlanInstance = ProcurementPlan.get(id)
        if (!procurementPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), id])
            redirect(action: "list")
            return
        }

        try {
            procurementPlanInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'procurementPlan.label', default: 'ProcurementPlan'), id])
            redirect(action: "show", id: id)
        }
    }
}
