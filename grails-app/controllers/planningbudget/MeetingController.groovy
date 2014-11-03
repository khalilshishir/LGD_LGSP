package planningbudget

import org.springframework.dao.DataIntegrityViolationException
import settings.UnionParishad
import util.Util

import javax.xml.crypto.Data
import java.sql.Time

class MeetingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [meetingInstanceList: Meeting.list(params), meetingInstanceTotal: Meeting.count()]
    }

    def create() {
        def meetingDate=new Date().clearTime()
        def startTime=new Date().timeString.toString()
        def endTime=new Date().timeString.toString()
        [meetingInstance: new Meeting(params),meetingDate:meetingDate,startTime: startTime,endTime: endTime]
    }

    def save() {
        def temp=params.meetingDate
        params.meetingDate=Util.getDateMonddyyyy(params.meetingDate)
        params.startTime=Util.getDateMonddyyyyHHmin(temp+" "+params.startTime)
        params.endTime=Util.getDateMonddyyyyHHmin(temp+" "+params.endTime)

//                params.startTIme=Util.GetCurrentDateMonddyyyyHHmin()
//        params.endTime=Util.GetCurrentDateMonddyyyyHHmin()

        def meetingInstance = new Meeting(params)
        if(params.unionParishad)
            meetingInstance.unionParishad=UnionParishad.get(params.unionParishad)
        if (!meetingInstance.save(flush: true)) {
            render(view: "create", model: [meetingInstance: meetingInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'meeting.label', default: 'Meeting'), meetingInstance.id])
        redirect(action: "show", id: meetingInstance.id)
    }

    def show(Long id) {
        def meetingInstance = Meeting.get(id)
        if (!meetingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meeting.label', default: 'Meeting'), id])
            redirect(action: "list")
            return
        }

        [meetingInstance: meetingInstance]
    }

    def edit(Long id) {
        def meetingInstance = Meeting.get(id)
        def startTime=meetingInstance.startTime.timeString.toString()
        def endTime=meetingInstance.endTime.timeString.toString()
        if (!meetingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meeting.label', default: 'Meeting'), id])
            redirect(action: "list")
            return
        }

        [meetingInstance: meetingInstance,meetingDate:meetingInstance?.meetingDate ,startTime:startTime,endTime:endTime]
    }

    def update(Long id, Long version) {
        def meetingInstance = Meeting.get(id)

        if (!meetingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meeting.label', default: 'Meeting'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (meetingInstance.version > version) {
                meetingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'meeting.label', default: 'Meeting')] as Object[],
                          "Another user has updated this Meeting while you were editing")
                render(view: "edit", model: [meetingInstance: meetingInstance])
                return
            }
        }
        def temp=params.meetingDate
        params.meetingDate=Util.getDateMonddyyyy(params.meetingDate)
        params.startTime=Util.getDateMonddyyyyHHmin(temp+" "+params.startTime)
        params.endTime=Util.getDateMonddyyyyHHmin(temp+" "+params.endTime)

        meetingInstance.properties = params

        if (!meetingInstance.save(flush: true)) {
            render(view: "edit", model: [meetingInstance: meetingInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'meeting.label', default: 'Meeting'), meetingInstance.id])
        redirect(action: "show", id: meetingInstance.id)
    }

    def delete(Long id) {
        def meetingInstance = Meeting.get(id)
        if (!meetingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'meeting.label', default: 'Meeting'), id])
            redirect(action: "list")
            return
        }

        try {
            meetingInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'meeting.label', default: 'Meeting'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'meeting.label', default: 'Meeting'), id])
            redirect(action: "show", id: id)
        }
    }
}
