package fixedAsset

import org.springframework.dao.DataIntegrityViolationException

class LOCATIONController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [LOCATIONInstanceList: LOCATION.list(params), LOCATIONInstanceTotal: LOCATION.count()]
        def LOCATIONInstanceList=LOCATION.findAll()
        render(view: 'list',model: [LOCATIONInstanceList:LOCATIONInstanceList])
    }

    def create() {
        [LOCATIONInstance: new LOCATION(params)]
    }

    def save() {
        def LOCATIONInstance = new LOCATION(params)
        if (!LOCATIONInstance.save(flush: true)) {
            render(view: "create", model: [LOCATIONInstance: LOCATIONInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), LOCATIONInstance.id])
        redirect(action: "show", id: LOCATIONInstance.id)
    }

    def show(Long id) {
        def LOCATIONInstance = LOCATION.get(id)
        if (!LOCATIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), id])
            redirect(action: "list")
            return
        }

        [LOCATIONInstance: LOCATIONInstance]
    }

    def edit(Long id) {
        def LOCATIONInstance = LOCATION.get(id)
        if (!LOCATIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), id])
            redirect(action: "list")
            return
        }

        [LOCATIONInstance: LOCATIONInstance]
    }

    def update(Long id, Long version) {
        def LOCATIONInstance = LOCATION.get(id)
        if (!LOCATIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (LOCATIONInstance.version > version) {
                LOCATIONInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'LOCATION.label', default: 'LOCATION')] as Object[],
                          "Another user has updated this LOCATION while you were editing")
                render(view: "edit", model: [LOCATIONInstance: LOCATIONInstance])
                return
            }
        }

        LOCATIONInstance.properties = params

        if (!LOCATIONInstance.save(flush: true)) {
            render(view: "edit", model: [LOCATIONInstance: LOCATIONInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), LOCATIONInstance.id])
        redirect(action: "show", id: LOCATIONInstance.id)
    }

    def delete(Long id) {
        def LOCATIONInstance = LOCATION.get(id)
        if (!LOCATIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), id])
            redirect(action: "list")
            return
        }

        try {
            LOCATIONInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'LOCATION.label', default: 'LOCATION'), id])
            redirect(action: "show", id: id)
        }
    }
}
