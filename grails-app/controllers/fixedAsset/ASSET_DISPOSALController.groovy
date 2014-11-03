package fixedAsset

import org.springframework.dao.DataIntegrityViolationException
import lookUp.AllLookup

class ASSET_DISPOSALController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ASSET_DISPOSALInstanceList: ASSET_DISPOSAL.list(params), ASSET_DISPOSALInstanceTotal: ASSET_DISPOSAL.count()]
    }

    def create() {
        [ASSET_DISPOSALInstance: new ASSET_DISPOSAL(params)]
    }

    def save() {
        def ASSET_DISPOSALInstance = new ASSET_DISPOSAL(params)
        def ASSET_BOOKInstance=ASSET_BOOK.get(ASSET_DISPOSALInstance.ASSET_BOOK_ID.id)
        def disposed=AllLookup.executeQuery("from AllLookup where lookup_name='Disposed Asset'")
       def disposed_id = AllLookup.findById(Long.valueOf(disposed.id[0]))

        ASSET_BOOKInstance.setIS_ACTIVE(false)
        ASSET_BOOKInstance.setASSET_STATUS(disposed_id)

        ASSET_BOOKInstance.save()
        if (!ASSET_DISPOSALInstance.save(flush: true)) {
            render(view: "create", model: [ASSET_DISPOSALInstance: ASSET_DISPOSALInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), ASSET_DISPOSALInstance.id])
        redirect(action: "show", id: ASSET_DISPOSALInstance.id)
    }

    def show(Long id) {
        def ASSET_DISPOSALInstance = ASSET_DISPOSAL.get(id)
        if (!ASSET_DISPOSALInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), id])
            redirect(action: "list")
            return
        }

        [ASSET_DISPOSALInstance: ASSET_DISPOSALInstance]
    }

    def edit(Long id) {
        def ASSET_DISPOSALInstance = ASSET_DISPOSAL.get(id)
        if (!ASSET_DISPOSALInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), id])
            redirect(action: "list")
            return
        }

        [ASSET_DISPOSALInstance: ASSET_DISPOSALInstance]
    }

    def update(Long id, Long version) {
        def ASSET_DISPOSALInstance = ASSET_DISPOSAL.get(id)
        if (!ASSET_DISPOSALInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ASSET_DISPOSALInstance.version > version) {
                ASSET_DISPOSALInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL')] as Object[],
                        "Another user has updated this ASSET_DISPOSAL while you were editing")
                render(view: "edit", model: [ASSET_DISPOSALInstance: ASSET_DISPOSALInstance])
                return
            }
        }

        ASSET_DISPOSALInstance.properties = params

        if (!ASSET_DISPOSALInstance.save(flush: true)) {
            render(view: "edit", model: [ASSET_DISPOSALInstance: ASSET_DISPOSALInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), ASSET_DISPOSALInstance.id])
        redirect(action: "show", id: ASSET_DISPOSALInstance.id)
    }

    def delete(Long id) {
        def ASSET_DISPOSALInstance = ASSET_DISPOSAL.get(id)
        if (!ASSET_DISPOSALInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), id])
            redirect(action: "list")
            return
        }

        try {
            ASSET_DISPOSALInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ASSET_DISPOSAL.label', default: 'ASSET_DISPOSAL'), id])
            redirect(action: "show", id: id)
        }
    }
}
