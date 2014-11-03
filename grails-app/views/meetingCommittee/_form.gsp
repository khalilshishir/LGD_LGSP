<%@ page import="procurement.pmu.MeetingCommittee" %>



<div class="fieldcontain ${hasErrors(bean: meetingCommitteeInstance, field: 'meeting_code', 'error')} ">
	<label for="meeting_code">
		<g:message code="meetingCommittee.meeting_code.label" default="Meetingcode" />
		
	</label>
	<g:textField name="meeting_code" maxlength="100" value="${meetingCommitteeInstance?.meeting_code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingCommitteeInstance, field: 'met_name', 'error')} ">
	<label for="met_name">
		<g:message code="meetingCommittee.met_name.label" default="Metname" />
		
	</label>
	<g:textField name="met_name" maxlength="100" value="${meetingCommitteeInstance?.met_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingCommitteeInstance, field: 'createdate', 'error')} ">
	<label for="createdate">
		<g:message code="meetingCommittee.createdate.label" default="Createdate" />
		
	</label>
	<g:datePicker name="createdate" precision="day"  value="${meetingCommitteeInstance?.createdate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: meetingCommitteeInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="meetingCommittee.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${meetingCommitteeInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: meetingCommitteeInstance, field: 'createby', 'error')} ">
	<label for="createby">
		<g:message code="meetingCommittee.createby.label" default="Createby" />
		
	</label>
	<g:textField name="createby" maxlength="100" value="${meetingCommitteeInstance?.createby}"/>
</div>

