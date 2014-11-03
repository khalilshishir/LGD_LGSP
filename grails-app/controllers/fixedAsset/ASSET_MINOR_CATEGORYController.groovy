package fixedAsset

import org.springframework.dao.DataIntegrityViolationException

class ASSET_MINOR_CATEGORYController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ASSET_MINOR_CATEGORYInstanceList: ASSET_MINOR_CATEGORY.list(params), ASSET_MINOR_CATEGORYInstanceTotal: ASSET_MINOR_CATEGORY.count()]
    }

    def create() {
        [ASSET_MINOR_CATEGORYInstance: new ASSET_MINOR_CATEGORY(params)]
    }

    def save() {
        def ASSET_MINOR_CATEGORYInstance = new ASSET_MINOR_CATEGORY(params)
        if (!ASSET_MINOR_CATEGORYInstance.save(flush: true)) {
            render(view: "create", model: [ASSET_MINOR_CATEGORYInstance: ASSET_MINOR_CATEGORYInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), ASSET_MINOR_CATEGORYInstance.id])
        redirect(action: "show", id: ASSET_MINOR_CATEGORYInstance.id)
    }

    def show(Long id) {
        def ASSET_MINOR_CATEGORYInstance = ASSET_MINOR_CATEGORY.get(id)
        if (!ASSET_MINOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        [ASSET_MINOR_CATEGORYInstance: ASSET_MINOR_CATEGORYInstance]
    }

    def edit(Long id) {
        def ASSET_MINOR_CATEGORYInstance = ASSET_MINOR_CATEGORY.get(id)
        if (!ASSET_MINOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        [ASSET_MINOR_CATEGORYInstance: ASSET_MINOR_CATEGORYInstance]
    }

    def update(Long id, Long version) {
        def ASSET_MINOR_CATEGORYInstance = ASSET_MINOR_CATEGORY.get(id)
        if (!ASSET_MINOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ASSET_MINOR_CATEGORYInstance.version > version) {
                ASSET_MINOR_CATEGORYInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY')] as Object[],
                        "Another user has updated this ASSET_MINOR_CATEGORY while you were editing")
                render(view: "edit", model: [ASSET_MINOR_CATEGORYInstance: ASSET_MINOR_CATEGORYInstance])
                return
            }
        }

        ASSET_MINOR_CATEGORYInstance.properties = params

        if (!ASSET_MINOR_CATEGORYInstance.save(flush: true)) {
            render(view: "edit", model: [ASSET_MINOR_CATEGORYInstance: ASSET_MINOR_CATEGORYInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), ASSET_MINOR_CATEGORYInstance.id])
        redirect(action: "show", id: ASSET_MINOR_CATEGORYInstance.id)
    }

    def delete(Long id) {
        def ASSET_MINOR_CATEGORYInstance = ASSET_MINOR_CATEGORY.get(id)
        if (!ASSET_MINOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        try {
            ASSET_MINOR_CATEGORYInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY'), id])
            redirect(action: "show", id: id)
        }
    }
}
