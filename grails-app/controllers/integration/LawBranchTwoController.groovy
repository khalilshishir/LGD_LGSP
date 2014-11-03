package integration

import org.springframework.dao.DataIntegrityViolationException
import util.Util

class LawBranchTwoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lawBranchTwoInstanceList: LawBranchTwo.list(params), lawBranchTwoInstanceTotal: LawBranchTwo.count()]
    }

    def create() {
        [lawBranchTwoInstance: new LawBranchTwo(params)]
    }

    def save() {
        params.receiveDate=Util.GetMonDayYearFormate(params.receiveDate)
        params.endingDate=Util.GetMonDayYearFormate(params.endingDate)
        def lawBranchTwoInstance = new LawBranchTwo(params)
        if (!lawBranchTwoInstance.save(flush: true)) {
            render(view: "create", model: [lawBranchTwoInstance: lawBranchTwoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), lawBranchTwoInstance.id])
        redirect(action: "show", id: lawBranchTwoInstance.id)
    }

    def show(Long id) {
        def lawBranchTwoInstance = LawBranchTwo.get(id)
        if (!lawBranchTwoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), id])
            redirect(action: "list")
            return
        }

        [lawBranchTwoInstance: lawBranchTwoInstance]
    }

    def edit(Long id) {
        def lawBranchTwoInstance = LawBranchTwo.get(id)
        if (!lawBranchTwoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), id])
            redirect(action: "list")
            return
        }

        [lawBranchTwoInstance: lawBranchTwoInstance]
    }

    def update(Long id, Long version) {
        params.receiveDate=Util.GetMonDayYearFormate(params.receiveDate)
        params.endingDate=Util.GetMonDayYearFormate(params.endingDate)
        def lawBranchTwoInstance = LawBranchTwo.get(id)
        if (!lawBranchTwoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lawBranchTwoInstance.version > version) {
                lawBranchTwoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo')] as Object[],
                        "Another user has updated this LawBranchTwo while you were editing")
                render(view: "edit", model: [lawBranchTwoInstance: lawBranchTwoInstance])
                return
            }
        }

        lawBranchTwoInstance.properties = params

        if (!lawBranchTwoInstance.save(flush: true)) {
            render(view: "edit", model: [lawBranchTwoInstance: lawBranchTwoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), lawBranchTwoInstance.id])
        redirect(action: "show", id: lawBranchTwoInstance.id)
    }

    def delete(Long id) {
        def lawBranchTwoInstance = LawBranchTwo.get(id)
        if (!lawBranchTwoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), id])
            redirect(action: "list")
            return
        }

        try {
            lawBranchTwoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lawBranchTwo.label', default: 'LawBranchTwo'), id])
            redirect(action: "show", id: id)
        }
    }
}
