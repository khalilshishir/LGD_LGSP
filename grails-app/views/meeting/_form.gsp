<%@ page import="planningbudget.Meeting" %>
%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="DIS_ID"><g:message code="district.DIS_ID.label" default="District ID" /></label>--}%
        %{--<g:textField class="form-control" name="DIS_ID" value="${districtInstance?.DIS_ID}"/>--}%
    %{--</div>--}%
%{--</div>--}%
<div class="row">
    <div class="col-xs-12">
        <div class="form-group fieldcontain ${hasErrors(bean: meetingInstance, field: 'subject', 'error')}">
            <label for="subject">Meeting Subject</label>
            <g:textField name="subject" class="form-control meeting_sub" value="${meetingInstance?.subject}"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="meetingLevel">Level</label>
            <g:select id="meetingLevel"  name="meetingLevel.id" from="${planningbudget.MeetingLevel.list()}" noSelection="${['null':'Select One...']}" optionKey="id" required="required" value="${meetingInstance?.meetingLevel?.id}" class="form-control many-to-one"/>
        </div><!--form-->
    </div><!--column-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="meetingDate">
                <g:message code="meeting.meetingDate.label" default="Meeting Date" />
                <span class="required-indicator">*</span>
            </label>

            <div class="bfh-datepicker" name="meetingDate" data-date="${formatDate(format:'MM/dd/yyyy',date:meetingDate)}" data-min="01/15/2013" data-close="true" onloadeddata="meetingDate" data-name="meetingDate"></div>
        </div>
    </div><!--column-->
</div>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="startTIme">
                <g:message code="meeting.startTIme.label" default="Start Time" />
                <span class="required-indicator">*</span>
            </label>
            <div class="bfh-timepicker" data-mode="12h" data-time="${startTime}" data-name="startTime"></div>
        </div>
    </div><!--end col-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="endTime">
                <g:message code="meeting.endTime.label" default="End Time" />
                <span class="required-indicator">*</span>
            </label>
            <div class="bfh-timepicker" data-mode="12h" data-time="${endTime}" data-name="endTime"></div>

        </div>
    </div><!--end col-->
</div>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="division">
                <g:message code="meeting.division.label" default="Choose Division" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="division" name="division.id" from="${settings.Division.list()}" optionKey="id" required="" value="${meetingInstance?.division?.id}" class="form-control many-to-one" noSelection="${['null':'Select One...']}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="district">
                <g:message code="meeting.district.label" default="Choose District" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="district" name="district.id" from="${settings.District.list()}" optionKey="id" required="" value="${meetingInstance?.district?.id}" class="form-control many-to-one" noSelection="${['null':'Select One...']}"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="upazila">
                <g:message code="meeting.upazila.label" default="Choose Upazila" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${meetingInstance?.upazila?.id}" class="form-control many-to-one" noSelection="${['null':'Select One...']}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="up_id">Choose Union Parishad
            <span class="required-indicator">*</span>
            </label>
            <g:select id="unionParishad" name="unionParishad" from="${settings.UnionParishad.list()}" optionKey="id" required="required" value="${meetingInstance?.unionParishad?.id}" class="form-control many-to-one" noSelection="${['null':'Select One...']}"/>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="ward">
                <g:message code="meeting.ward.label" default="Ward" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="ward" name="ward.id" from="${settings.Ward.list()}" optionKey="id" required="" value="${meetingInstance?.ward?.id}" class="form-control many-to-one" noSelection="${['null':'Select One...']}"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <div class="form-group">
            <label for="minutes">
                <g:message code="meeting.minutes.label" default="Minutes" />

            </label>
            <g:textArea name="minutes" value="${meetingInstance?.minutes}" class="form-control" required="required"/>
        </div>
    </div><!--end col-->
</div>
<div class="row">
    <div class="col-xs-4">
        <div class="form-group">
            <label for="numberOfAttendent">
                <g:message code="meeting.numberOfAttendent.label" default="Number Of Attendent" />
                <span class="required-indicator">*</span>
            </label>
            <g:field name="numberOfAttendent" type="number" value="${meetingInstance.numberOfAttendent}" required="required" class="form-control"/>
        </div>
    </div><!--end col-->
    <div class="col-xs-4">
        <div class="form-group">
            <label for="numberOfWomenAttendent">
                <g:message code="meeting.numberOfWomenAttendent.label" default="Number Of Women Attendent" />
                <span class="required-indicator">*</span>
            </label>
            <g:field name="numberOfWomenAttendent" type="number" value="${meetingInstance.numberOfWomenAttendent}" required="required" class="form-control"/>
        </div>
    </div><!--end col-->
    <div class="col-xs-4">
        <div class="form-group">
            <label for="numberOfVoter">
                <g:message code="meeting.numberOfVoter.label" default="Number Of Voter" />
                <span class="required-indicator">*</span>
            </label>
            <g:field name="numberOfVoter" type="number" value="${meetingInstance.numberOfVoter}" required="required" class="form-control"/>
        </div>
    </div><!--end col-->
</div>
%{--<div class="col-xs-12 fieldcontain ${hasErrors(bean: meetingInstance, field: 'subject', 'error')} ">--}%
%{--<div class="row">--}%
%{--<div class="form-group">--}%
	%{--<label for="subject">--}%
		%{--<g:message code="meeting.subject.label" default="Subject" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="subject" value="${meetingInstance?.subject}"/>--}%
    %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'meetingLevel', 'error')} required">--}%
%{--<div class="form-group">--}%
	%{--<label for="meetingLevel">--}%
		%{--<g:message code="meeting.meetingLevel.label" default="Meeting Level" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="meetingLevel" name="meetingLevel.id" from="${meeting.MeetingLevel.list()}" optionKey="id" required="" value="${meetingInstance?.meetingLevel?.id}" class="many-to-one"/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'meetingDate', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="meetingDate">--}%
		%{--<g:message code="meeting.meetingDate.label" default="Meeting Date" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:datePicker name="meetingDate" precision="day"  value="${meetingInstance?.meetingDate}"  />--}%
    %{--<div class="bfh-datepicker" name="meetingDate" data-min="01/15/2013" data-close="true" data-name="meetingDate"></div>--}%
    %{--<g:textField name="meetingDate" class="bfh-datepicker" data-min="01/15/2013" data-close="true" value="${meetingInstance?.meetingDate}"></g:textField>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'startTIme', 'error')} required">--}%
%{--<div class="form-group">--}%
	%{--<label for="startTIme">--}%
		%{--<g:message code="meeting.startTIme.label" default="Start TI me" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:datePicker name="startTIme" precision="day"  value="${meetingInstance?.startTIme}"  />--}%
    %{--<g:textField name="startTIme"  value="${meetingInstance?.startTIme}"></g:textField>--}%
    %{--<div class="bfh-timepicker" data-mode="12h" data-name="startTime"></div>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'endTime', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="endTime">--}%
		%{--<g:message code="meeting.endTime.label" default="End Time" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:datePicker name="endTime" precision="day"  value="${meetingInstance?.endTime}"  />--}%
    %{--<g:textField name="endTime" value="${meetingInstance?.endTime}"></g:textField>--}%
    %{--<div class="bfh-timepicker" data-mode="12h" data-name="endTime"></div>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'numberOfAttendent', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="numberOfAttendent">--}%
		%{--<g:message code="meeting.numberOfAttendent.label" default="Number Of Attendent" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="numberOfAttendent" type="number" value="${meetingInstance.numberOfAttendent}" required=""/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'numberOfWomenAttendent', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="numberOfWomenAttendent">--}%
		%{--<g:message code="meeting.numberOfWomenAttendent.label" default="Number Of Women Attendent" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="numberOfWomenAttendent" type="number" value="${meetingInstance.numberOfWomenAttendent}" required=""/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'numberOfVoter', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="numberOfVoter">--}%
		%{--<g:message code="meeting.numberOfVoter.label" default="Number Of Voter" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="numberOfVoter" type="number" value="${meetingInstance.numberOfVoter}" required=""/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'district', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="district">--}%
		%{--<g:message code="meeting.district.label" default="District" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="district" name="district.id" from="${settings.District.list()}" optionKey="id" required="" value="${meetingInstance?.district?.id}" class="many-to-one"/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'division', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="division">--}%
		%{--<g:message code="meeting.division.label" default="Division" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="division" name="division.id" from="${settings.Division.list()}" optionKey="id" required="" value="${meetingInstance?.division?.id}" class="many-to-one"/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'minutes', 'error')} ">--}%
%{--<div class="form-group">--}%
    %{--<label for="minutes">--}%
		%{--<g:message code="meeting.minutes.label" default="Minutes" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="minutes" value="${meetingInstance?.minutes}"/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'upazila', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="upazila">--}%
		%{--<g:message code="meeting.upazila.label" default="Upazila" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${meetingInstance?.upazila?.id}" class="many-to-one"/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4 fieldcontain ${hasErrors(bean: meetingInstance, field: 'ward', 'error')} required">--}%
%{--<div class="form-group">--}%
    %{--<label for="ward">--}%
		%{--<g:message code="meeting.ward.label" default="Ward" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="ward" name="ward.id" from="${settings.Ward.list()}" optionKey="id" required="" value="${meetingInstance?.ward?.id}" class="many-to-one"/>--}%
    %{--</div>--}%
%{--</div>--}%

