package planningbudget

import org.springframework.dao.DataIntegrityViolationException

class SchemeCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [schemeCategoryInstanceList: SchemeCategory.list(params), schemeCategoryInstanceTotal: SchemeCategory.count()]
    }

    def create() {
        [schemeCategoryInstance: new SchemeCategory(params)]
    }

    def save() {
        def schemeCategoryInstance = new SchemeCategory(params)
        if (!schemeCategoryInstance.save(flush: true)) {
            render(view: "create", model: [schemeCategoryInstance: schemeCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), schemeCategoryInstance.id])
        redirect(action: "show", id: schemeCategoryInstance.id)
    }

    def show(Long id) {
        def schemeCategoryInstance = SchemeCategory.get(id)
        if (!schemeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), id])
            redirect(action: "list")
            return
        }

        [schemeCategoryInstance: schemeCategoryInstance]
    }

    def edit(Long id) {
        def schemeCategoryInstance = SchemeCategory.get(id)
        if (!schemeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), id])
            redirect(action: "list")
            return
        }

        [schemeCategoryInstance: schemeCategoryInstance]
    }

    def update(Long id, Long version) {
        def schemeCategoryInstance = SchemeCategory.get(id)
        if (!schemeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (schemeCategoryInstance.version > version) {
                schemeCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'schemeCategory.label', default: 'SchemeCategory')] as Object[],
                        "Another user has updated this SchemeCategory while you were editing")
                render(view: "edit", model: [schemeCategoryInstance: schemeCategoryInstance])
                return
            }
        }

        schemeCategoryInstance.properties = params

        if (!schemeCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [schemeCategoryInstance: schemeCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), schemeCategoryInstance.id])
        redirect(action: "show", id: schemeCategoryInstance.id)
    }

    def delete(Long id) {
        def schemeCategoryInstance = SchemeCategory.get(id)
        if (!schemeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            schemeCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'schemeCategory.label', default: 'SchemeCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
