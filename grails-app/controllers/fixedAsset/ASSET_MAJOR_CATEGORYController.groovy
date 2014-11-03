package fixedAsset

import org.springframework.dao.DataIntegrityViolationException

class ASSET_MAJOR_CATEGORYController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [ASSET_MAJOR_CATEGORYInstanceList: ASSET_MAJOR_CATEGORY.list(params), ASSET_MAJOR_CATEGORYInstanceTotal: ASSET_MAJOR_CATEGORY.count()]
          def ASSET_MAJOR_CATEGORYInstanceList=ASSET_MAJOR_CATEGORY.findAll()
          render(view: 'list',model: [ASSET_MAJOR_CATEGORYInstanceList : ASSET_MAJOR_CATEGORYInstanceList])
    }

    def create() {
        [ASSET_MAJOR_CATEGORYInstance: new ASSET_MAJOR_CATEGORY(params)]
    }

    def save() {
        def ASSET_MAJOR_CATEGORYInstance = new ASSET_MAJOR_CATEGORY(params)
        if (!ASSET_MAJOR_CATEGORYInstance.save(flush: true)) {
            render(view: "create", model: [ASSET_MAJOR_CATEGORYInstance: ASSET_MAJOR_CATEGORYInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), ASSET_MAJOR_CATEGORYInstance.id])
        redirect(action: "show", id: ASSET_MAJOR_CATEGORYInstance.id)
    }

    def show(Long id) {
        def ASSET_MAJOR_CATEGORYInstance = ASSET_MAJOR_CATEGORY.get(id)
        if (!ASSET_MAJOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        [ASSET_MAJOR_CATEGORYInstance: ASSET_MAJOR_CATEGORYInstance]
    }

    def edit(Long id) {
        def ASSET_MAJOR_CATEGORYInstance = ASSET_MAJOR_CATEGORY.get(id)
        if (!ASSET_MAJOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        [ASSET_MAJOR_CATEGORYInstance: ASSET_MAJOR_CATEGORYInstance]
    }

    def update(Long id, Long version) {
        def ASSET_MAJOR_CATEGORYInstance = ASSET_MAJOR_CATEGORY.get(id)
        if (!ASSET_MAJOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ASSET_MAJOR_CATEGORYInstance.version > version) {
                ASSET_MAJOR_CATEGORYInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY')] as Object[],
                        "Another user has updated this ASSET_MAJOR_CATEGORY while you were editing")
                render(view: "edit", model: [ASSET_MAJOR_CATEGORYInstance: ASSET_MAJOR_CATEGORYInstance])
                return
            }
        }

        ASSET_MAJOR_CATEGORYInstance.properties = params

        if (!ASSET_MAJOR_CATEGORYInstance.save(flush: true)) {
            render(view: "edit", model: [ASSET_MAJOR_CATEGORYInstance: ASSET_MAJOR_CATEGORYInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), ASSET_MAJOR_CATEGORYInstance.id])
        redirect(action: "show", id: ASSET_MAJOR_CATEGORYInstance.id)
    }

    def delete(Long id) {
        def ASSET_MAJOR_CATEGORYInstance = ASSET_MAJOR_CATEGORY.get(id)
        if (!ASSET_MAJOR_CATEGORYInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), id])
            redirect(action: "list")
            return
        }

        try {
            ASSET_MAJOR_CATEGORYInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'ASSET_MAJOR_CATEGORY'), id])
            redirect(action: "show", id: id)
        }
    }
}
