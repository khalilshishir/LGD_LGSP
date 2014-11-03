package up_asset

import org.springframework.dao.DataIntegrityViolationException

class UpAssetRegisterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upAssetRegisterInstanceList: UpAssetRegister.list(params), upAssetRegisterInstanceTotal: UpAssetRegister.count()]
    }

    def create() {
        [upAssetRegisterInstance: new UpAssetRegister(params)]
    }

    def save() {
        def upAssetRegisterInstance = new UpAssetRegister(params)
        if (!upAssetRegisterInstance.save(flush: true)) {
            render(view: "create", model: [upAssetRegisterInstance: upAssetRegisterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), upAssetRegisterInstance.id])
        redirect(action: "show", id: upAssetRegisterInstance.id)
    }

    def show(Long id) {
        def upAssetRegisterInstance = UpAssetRegister.get(id)
        if (!upAssetRegisterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), id])
            redirect(action: "list")
            return
        }

        [upAssetRegisterInstance: upAssetRegisterInstance]
    }

    def edit(Long id) {
        def upAssetRegisterInstance = UpAssetRegister.get(id)
        if (!upAssetRegisterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), id])
            redirect(action: "list")
            return
        }

        [upAssetRegisterInstance: upAssetRegisterInstance]
    }

    def update(Long id, Long version) {
        def upAssetRegisterInstance = UpAssetRegister.get(id)
        if (!upAssetRegisterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upAssetRegisterInstance.version > version) {
                upAssetRegisterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upAssetRegister.label', default: 'UpAssetRegister')] as Object[],
                        "Another user has updated this UpAssetRegister while you were editing")
                render(view: "edit", model: [upAssetRegisterInstance: upAssetRegisterInstance])
                return
            }
        }

        upAssetRegisterInstance.properties = params

        if (!upAssetRegisterInstance.save(flush: true)) {
            render(view: "edit", model: [upAssetRegisterInstance: upAssetRegisterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), upAssetRegisterInstance.id])
        redirect(action: "show", id: upAssetRegisterInstance.id)
    }

    def delete(Long id) {
        def upAssetRegisterInstance = UpAssetRegister.get(id)
        if (!upAssetRegisterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), id])
            redirect(action: "list")
            return
        }

        try {
            upAssetRegisterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upAssetRegister.label', default: 'UpAssetRegister'), id])
            redirect(action: "show", id: id)
        }
    }
}
