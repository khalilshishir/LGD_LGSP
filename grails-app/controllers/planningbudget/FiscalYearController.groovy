package planningbudget

import org.springframework.dao.DataIntegrityViolationException
import util.Util

class FiscalYearController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [fiscalYearInstanceList: FiscalYear.list(params), fiscalYearInstanceTotal: FiscalYear.count()]
    }

    def create() {
        Date startDate= new Date("07/01/2014")
        Date endDate= new Date("06/30/2014")
        endDate.setYear(endDate.year+1)
        [fiscalYearInstance: new FiscalYear(params),startDate:startDate,endDate:endDate]
    }

    def save() {
        def fiscalYearInstance = new FiscalYear(params)
//        Date startDate=new Date(params.startYear)
//        Date endDate=new Date(params.endDate)
        fiscalYearInstance.fiscalYear=fiscalYearInstance.startYear.calendarDate.getYear() +"-"+fiscalYearInstance.endYear.calendarDate.getYear()
        if (!fiscalYearInstance.save(flush: true)) {
            render(view: "create", model: [fiscalYearInstance: fiscalYearInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), fiscalYearInstance.id])
        redirect(action: "show", id: fiscalYearInstance.id)
    }

    def show(Long id) {
        def fiscalYearInstance = FiscalYear.get(id)
        if (!fiscalYearInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), id])
            redirect(action: "list")
            return
        }

        [fiscalYearInstance: fiscalYearInstance]
    }

    def edit(Long id) {
        def fiscalYearInstance = FiscalYear.get(id)
        if (!fiscalYearInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), id])
            redirect(action: "list")
            return
        }

        [fiscalYearInstance: fiscalYearInstance]
    }

    def update(Long id, Long version) {
        def fiscalYearInstance = FiscalYear.get(id)
        if (!fiscalYearInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (fiscalYearInstance.version > version) {
                fiscalYearInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'fiscalYear.label', default: 'FiscalYear')] as Object[],
                        "Another user has updated this FiscalYear while you were editing")
                render(view: "edit", model: [fiscalYearInstance: fiscalYearInstance])
                return
            }
        }

        fiscalYearInstance.properties = params

        if (!fiscalYearInstance.save(flush: true)) {
            render(view: "edit", model: [fiscalYearInstance: fiscalYearInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), fiscalYearInstance.id])
        redirect(action: "show", id: fiscalYearInstance.id)
    }

    def delete(Long id) {
        def fiscalYearInstance = FiscalYear.get(id)
        if (!fiscalYearInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), id])
            redirect(action: "list")
            return
        }

        try {
            fiscalYearInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'fiscalYear.label', default: 'FiscalYear'), id])
            redirect(action: "show", id: id)
        }
    }
}
