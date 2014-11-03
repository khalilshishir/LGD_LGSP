package procurement.up.directprocurement

import org.springframework.dao.DataIntegrityViolationException
import settings.SchemeInfo

class UpDirectProcController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
//        redirect(action: "list", params: params)
    }
     def loadSchemeInfo(){
            def scheme=SchemeInfo.read(params.schemeInfoId)

         render (template: "schemeInfo",model: [scheme:scheme])
     }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [upDirectProcInstanceList: UpDirectProc.list(params), upDirectProcInstanceTotal: UpDirectProc.count()]
    }

    def create() {
        [upDirectProcInstance: new UpDirectProc(params)]
    }

    def save() {
        def upDirectProcInstance = new UpDirectProc(params)
        if (!upDirectProcInstance.save(flush: true)) {
            render(view: "create", model: [upDirectProcInstance: upDirectProcInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), upDirectProcInstance.id])
        redirect(action: "show", id: upDirectProcInstance.id)
    }

    def show(Long id) {
        def upDirectProcInstance = UpDirectProc.get(id)
        if (!upDirectProcInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        [upDirectProcInstance: upDirectProcInstance]
    }

    def edit(Long id) {
        def upDirectProcInstance = UpDirectProc.get(id)
        if (!upDirectProcInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        [upDirectProcInstance: upDirectProcInstance]
    }

    def update(Long id, Long version) {
        def upDirectProcInstance = UpDirectProc.get(id)
        if (!upDirectProcInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (upDirectProcInstance.version > version) {
                upDirectProcInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'upDirectProc.label', default: 'UpDirectProc')] as Object[],
                        "Another user has updated this UpDirectProc while you were editing")
                render(view: "edit", model: [upDirectProcInstance: upDirectProcInstance])
                return
            }
        }

        upDirectProcInstance.properties = params

        if (!upDirectProcInstance.save(flush: true)) {
            render(view: "edit", model: [upDirectProcInstance: upDirectProcInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), upDirectProcInstance.id])
        redirect(action: "show", id: upDirectProcInstance.id)
    }

    def delete(Long id) {
        def upDirectProcInstance = UpDirectProc.get(id)
        if (!upDirectProcInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
            return
        }

        try {
            upDirectProcInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'upDirectProc.label', default: 'UpDirectProc'), id])
            redirect(action: "show", id: id)
        }
    }
}
