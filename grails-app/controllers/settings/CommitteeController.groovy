package settings

import org.springframework.dao.DataIntegrityViolationException

class CommitteeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [committeeInstanceList: Committee.list(params), committeeInstanceTotal: Committee.count()]
    }

    def create() {
        [committeeInstance: new Committee(params)]
    }

    def save() {
        println(params);
        def committeeInstance = new Committee()

        committeeInstance.properties["id", "COMMITTEE_ID","COMMITTEE_NAME","DIVISION","DISTRICT","UPAZILA","UNION_PARISHAD","WARD","COMMITTEE_LEVEL"] = params
//        committeeInstance.NO_OF_MEMBER =params.committeeMember.size()

        int i = 0
        while (params["committeeMember[" + i + "].MEMBER_NAME"] != null && params["committeeMember[" + i + "].MEMBER_NAME"] != "") {
            println("Member designation ID is >> " + params["committeeMember[" + i + "].MEMBER_DESIGNATION"])
            def committeeMember = new CommitteeMember()
            committeeMember.properties['MEMBER_NAME']=params["committeeMember[" + i + "].MEMBER_NAME"]
            committeeMember.properties['MEMBER_DESIGNATION']=MemberDesignation.get(params["committeeMember[" + i + "].MEMBER_DESIGNATION"])
            committeeMember.properties['MEMBER_ADDRESS']=params["committeeMember[" + i + "].MEMBER_ADDRESS"]
            committeeMember.properties['MOBILE_NO']=params["committeeMember[" + i + "].MOBILE_NO"]
            committeeMember.properties['EMAIL_ADDRESS']=params["committeeMember[" + i + "].EMAIL_ADDRESS"]
            committeeMember.properties['NATIONAL_ID_CARD_NO']=params["committeeMember[" + i + "].NATIONAL_ID_CARD_NO"]

            committeeInstance.addToCommitteeMember(committeeMember)

            i++
        }
        committeeInstance.NO_OF_MEMBER =i
        if (!committeeInstance.save(flush: true)) {
            render(view: "create", model: [committeeInstance: committeeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'committee.label', default: 'Committee'), committeeInstance.id])
        redirect(action: "show", id: committeeInstance.id)
    }

    def show(Long id) {
        def committeeInstance = Committee.get(id)
        if (!committeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committee.label', default: 'Committee'), id])
            redirect(action: "list")
            return
        }

        [committeeInstance: committeeInstance]
    }

    def edit(Long id) {
        def committeeInstance = Committee.get(id)
        if (!committeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committee.label', default: 'Committee'), id])
            redirect(action: "list")
            return
        }

        [committeeInstance: committeeInstance]
    }

    def update(Long id, Long version) {
        def committeeInstance = Committee.get(id)
        if (!committeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committee.label', default: 'Committee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (committeeInstance.version > version) {
                committeeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'committee.label', default: 'Committee')] as Object[],
                        "Another user has updated this Committee while you were editing")
                render(view: "edit", model: [committeeInstance: committeeInstance])
                return
            }
        }

        committeeInstance.properties["id", "COMMITTEE_ID","COMMITTEE_NAME","DIVISION","DISTRICT","UPAZILA","UNION_PARISHAD","WARD","COMMITTEE_LEVEL"] = params

        def i = 0
        while (params["committeeMember[" + i + "].MEMBER_DESIGNATION"] != null) {
            def studentDetail
            if (params["committeeMember[" + i + "].deleted"] == "true" && params["committeeMember[" + i + "].new"] == "false") {
                studentDetail = CommitteeMember.get(Long.valueOf(params["committeeMember[" + i + "].id"]))
                committeeInstance.removeFromCommitteeMember(studentDetail)
                studentDetail.delete()
                i++
                continue
            }
            else if (params["committeeMember[" + i + "].deleted"] == "true" && params["committeeMember[" + i + "].new"] == "true") {
                i++
                continue
            }
            else if (params["committeeMember[" + i + "].deleted"] == "false" && params["committeeMember[" + i + "].new"] == "true") {
                studentDetail = new CommitteeMember()
                studentDetail.properties['MEMBER_DESIGNATION'] =params["committeeMember[" + i + "].MEMBER_DESIGNATION"]
            }
            else {
                studentDetail = CommitteeMember.get(Long.valueOf(params["committeeMember[" + i + "].id"]))
            }

            studentDetail.properties['MEMBER_NAME']=params["committeeMember[" + i + "].MEMBER_NAME"]
//            studentDetail.properties['MEMBER_DESIGNATION']=params["committeeMember[" + i + "].MEMBER_DESIGNATION"]
            studentDetail.properties['MEMBER_DESIGNATION']=MemberDesignation.get(params["committeeMember[" + i + "].MEMBER_DESIGNATION"])
            studentDetail.properties['MEMBER_ADDRESS']=params["committeeMember[" + i + "].MEMBER_ADDRESS"]
            studentDetail.properties['MOBILE_NO']=params["committeeMember[" + i + "].MOBILE_NO"]
            studentDetail.properties['EMAIL_ADDRESS']=params["committeeMember[" + i + "].EMAIL_ADDRESS"]
            studentDetail.properties['NATIONAL_ID_CARD_NO']=params["committeeMember[" + i + "].NATIONAL_ID_CARD_NO"]

            committeeInstance.addToCommitteeMember(studentDetail)

            i++
        }

        committeeInstance.NO_OF_MEMBER = i

        if (!committeeInstance.save(flush: true)) {
            render(view: "edit", model: [committeeInstance: committeeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'committee.label', default: 'Committee'), committeeInstance.id])
        redirect(action: "show", id: committeeInstance.id)
    }

    def delete(Long id) {
        def committeeInstance = Committee.get(id)
        if (!committeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'committee.label', default: 'Committee'), id])
            redirect(action: "list")
            return
        }

        try {
            committeeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'committee.label', default: 'Committee'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'committee.label', default: 'Committee'), id])
            redirect(action: "show", id: id)
        }
    }
}
