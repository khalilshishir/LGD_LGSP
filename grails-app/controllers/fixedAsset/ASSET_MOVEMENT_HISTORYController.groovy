package fixedAsset

import org.springframework.dao.DataIntegrityViolationException

class ASSET_MOVEMENT_HISTORYController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ASSET_MOVEMENT_HISTORYInstanceList: ASSET_MOVEMENT_HISTORY.list(params), ASSET_MOVEMENT_HISTORYInstanceTotal: ASSET_MOVEMENT_HISTORY.count()]
    }

    def create() {
        [ASSET_MOVEMENT_HISTORYInstance: new ASSET_MOVEMENT_HISTORY(params)]
    }

    def save() {
        def ASSET_MOVEMENT_HISTORYInstance = new ASSET_MOVEMENT_HISTORY(params)
        if (!ASSET_MOVEMENT_HISTORYInstance.save(flush: true)) {
            render(view: "create", model: [ASSET_MOVEMENT_HISTORYInstance: ASSET_MOVEMENT_HISTORYInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), ASSET_MOVEMENT_HISTORYInstance.id])
        redirect(action: "show", id: ASSET_MOVEMENT_HISTORYInstance.id)
    }

    def show(Long id) {
        def ASSET_MOVEMENT_HISTORYInstance = ASSET_MOVEMENT_HISTORY.get(id)
        if (!ASSET_MOVEMENT_HISTORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), id])
            redirect(action: "list")
            return
        }

        [ASSET_MOVEMENT_HISTORYInstance: ASSET_MOVEMENT_HISTORYInstance]
    }

    def edit(Long id) {
        def ASSET_MOVEMENT_HISTORYInstance = ASSET_MOVEMENT_HISTORY.get(id)
        if (!ASSET_MOVEMENT_HISTORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), id])
            redirect(action: "list")
            return
        }

        [ASSET_MOVEMENT_HISTORYInstance: ASSET_MOVEMENT_HISTORYInstance]
    }

    def update(Long id, Long version) {
        def ASSET_MOVEMENT_HISTORYInstance = ASSET_MOVEMENT_HISTORY.get(id)
        if (!ASSET_MOVEMENT_HISTORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ASSET_MOVEMENT_HISTORYInstance.version > version) {
                ASSET_MOVEMENT_HISTORYInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY')] as Object[],
                        "Another user has updated this ASSET_MOVEMENT_HISTORY while you were editing")
                render(view: "edit", model: [ASSET_MOVEMENT_HISTORYInstance: ASSET_MOVEMENT_HISTORYInstance])
                return
            }
        }

        ASSET_MOVEMENT_HISTORYInstance.properties = params

        if (!ASSET_MOVEMENT_HISTORYInstance.save(flush: true)) {
            render(view: "edit", model: [ASSET_MOVEMENT_HISTORYInstance: ASSET_MOVEMENT_HISTORYInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), ASSET_MOVEMENT_HISTORYInstance.id])
        redirect(action: "show", id: ASSET_MOVEMENT_HISTORYInstance.id)
    }

    def delete(Long id) {
        def ASSET_MOVEMENT_HISTORYInstance = ASSET_MOVEMENT_HISTORY.get(id)
        if (!ASSET_MOVEMENT_HISTORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), id])
            redirect(action: "list")
            return
        }

        try {
            ASSET_MOVEMENT_HISTORYInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'ASSET_MOVEMENT_HISTORY'), id])
            redirect(action: "show", id: id)
        }
    }
}
