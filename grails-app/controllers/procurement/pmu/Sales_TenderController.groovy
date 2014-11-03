package procurement.pmu

import org.springframework.dao.DataIntegrityViolationException

class Sales_TenderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sales_TenderInstanceList: Sales_Tender.list(params), sales_TenderInstanceTotal: Sales_Tender.count()]
    }

    def create() {
        [sales_TenderInstance: new Sales_Tender(params)]
    }

    def save() {
        def sales_TenderInstance = new Sales_Tender(params)
        if (!sales_TenderInstance.save(flush: true)) {
            render(view: "create", model: [sales_TenderInstance: sales_TenderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), sales_TenderInstance.id])
        redirect(action: "show", id: sales_TenderInstance.id)
    }

    def show(Long id) {
        def sales_TenderInstance = Sales_Tender.get(id)
        if (!sales_TenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), id])
            redirect(action: "list")
            return
        }

        [sales_TenderInstance: sales_TenderInstance]
    }

    def edit(Long id) {
        def sales_TenderInstance = Sales_Tender.get(id)
        if (!sales_TenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), id])
            redirect(action: "list")
            return
        }

        [sales_TenderInstance: sales_TenderInstance]
    }

    def update(Long id, Long version) {
        def sales_TenderInstance = Sales_Tender.get(id)
        if (!sales_TenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (sales_TenderInstance.version > version) {
                sales_TenderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sales_Tender.label', default: 'Sales_Tender')] as Object[],
                          "Another user has updated this Sales_Tender while you were editing")
                render(view: "edit", model: [sales_TenderInstance: sales_TenderInstance])
                return
            }
        }

        sales_TenderInstance.properties = params

        if (!sales_TenderInstance.save(flush: true)) {
            render(view: "edit", model: [sales_TenderInstance: sales_TenderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), sales_TenderInstance.id])
        redirect(action: "show", id: sales_TenderInstance.id)
    }

    def delete(Long id) {
        def sales_TenderInstance = Sales_Tender.get(id)
        if (!sales_TenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), id])
            redirect(action: "list")
            return
        }

        try {
            sales_TenderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sales_Tender.label', default: 'Sales_Tender'), id])
            redirect(action: "show", id: id)
        }
    }
}
