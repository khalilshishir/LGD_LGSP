package integration

import org.springframework.dao.DataIntegrityViolationException
import util.Util

class CaseInformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [caseInformationInstanceList: CaseInformation.list(params), caseInformationInstanceTotal: CaseInformation.count()]
    }

    def create() {
        [caseInformationInstance: new CaseInformation(params)]
    }

    def save() {
        params.caseDate=Util.GetMonDayYearFormate(params.caseDate)
        params.receiveDate=Util.GetMonDayYearFormate(params.receiveDate)
        params.answerDate=Util.GetMonDayYearFormate(params.answerDate)
        params.hearingDate=Util.GetMonDayYearFormate(params.hearingDate)

        def caseInformationInstance = new CaseInformation(params)
        if(params.comments)
            caseInformationInstance.comments=params.comments
        if (!caseInformationInstance.save(flush: true)) {
            render(view: "create", model: [caseInformationInstance: caseInformationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), caseInformationInstance.id])
        redirect(action: "show", id: caseInformationInstance.id)
    }

    def show(Long id) {
        def caseInformationInstance = CaseInformation.get(id)
        if (!caseInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), id])
            redirect(action: "list")
            return
        }

        [caseInformationInstance: caseInformationInstance]
    }

    def edit(Long id) {
        def caseInformationInstance = CaseInformation.get(id)
        if (!caseInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), id])
            redirect(action: "list")
            return
        }

        [caseInformationInstance: caseInformationInstance]
    }

    def update(Long id, Long version) {
        params.caseDate=Util.GetMonDayYearFormate(params.caseDate)
        params.receiveDate=Util.GetMonDayYearFormate(params.receiveDate)
        params.answerDate=Util.GetMonDayYearFormate(params.answerDate)
        params.hearingDate=Util.GetMonDayYearFormate(params.hearingDate)

        def caseInformationInstance = CaseInformation.get(id)
        if(params.comments)
            caseInformationInstance.comments=params.comments
        if (!caseInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (caseInformationInstance.version > version) {
                caseInformationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'caseInformation.label', default: 'CaseInformation')] as Object[],
                        "Another user has updated this CaseInformation while you were editing")
                render(view: "edit", model: [caseInformationInstance: caseInformationInstance])
                return
            }
        }

        caseInformationInstance.properties = params

        if (!caseInformationInstance.save(flush: true)) {
            render(view: "edit", model: [caseInformationInstance: caseInformationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), caseInformationInstance.id])
        redirect(action: "show", id: caseInformationInstance.id)
    }

    def delete(Long id) {
        def caseInformationInstance = CaseInformation.get(id)
        if (!caseInformationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), id])
            redirect(action: "list")
            return
        }

        try {
            caseInformationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'caseInformation.label', default: 'CaseInformation'), id])
            redirect(action: "show", id: id)
        }
    }
}
