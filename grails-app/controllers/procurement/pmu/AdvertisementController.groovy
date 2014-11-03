package procurement.pmu

import org.springframework.dao.DataIntegrityViolationException

class AdvertisementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [advertisementInstanceList: Advertisement.list(params), advertisementInstanceTotal: Advertisement.count()]
    }

    def create() {
        [advertisementInstance: new Advertisement(params)]
    }

    def save() {
        def advertisementInstance = new Advertisement(params)
        if (!advertisementInstance.save(flush: true)) {
            render(view: "create", model: [advertisementInstance: advertisementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), advertisementInstance.id])
        redirect(action: "show", id: advertisementInstance.id)
    }

    def show(Long id) {
        def advertisementInstance = Advertisement.get(id)
        if (!advertisementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), id])
            redirect(action: "list")
            return
        }

        [advertisementInstance: advertisementInstance]
    }

    def edit(Long id) {
        def advertisementInstance = Advertisement.get(id)
        if (!advertisementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), id])
            redirect(action: "list")
            return
        }

        [advertisementInstance: advertisementInstance]
    }

    def update(Long id, Long version) {
        def advertisementInstance = Advertisement.get(id)
        if (!advertisementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (advertisementInstance.version > version) {
                advertisementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'advertisement.label', default: 'Advertisement')] as Object[],
                        "Another user has updated this Advertisement while you were editing")
                render(view: "edit", model: [advertisementInstance: advertisementInstance])
                return
            }
        }

        advertisementInstance.properties = params

        if (!advertisementInstance.save(flush: true)) {
            render(view: "edit", model: [advertisementInstance: advertisementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), advertisementInstance.id])
        redirect(action: "show", id: advertisementInstance.id)
    }

    def delete(Long id) {
        def advertisementInstance = Advertisement.get(id)
        if (!advertisementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), id])
            redirect(action: "list")
            return
        }

        try {
            advertisementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'advertisement.label', default: 'Advertisement'), id])
            redirect(action: "show", id: id)
        }
    }
}
