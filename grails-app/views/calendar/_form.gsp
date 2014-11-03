<%@ page import="payroll.Calendar" %>



%{--<div class="fieldcontain ${hasErrors(bean: calendarInstance, field: 'HR_CALENDAR_ID', 'error')} required">
	<label for="HR_CALENDAR_ID">
		<g:message code="calendar.HR_CALENDAR_ID.label" default="HRCALENDARID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="HR_CALENDAR_ID" type="number" class="form-control" value="${calendarInstance.HR_CALENDAR_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendarInstance, field: 'CALENDAR_YEAR', 'error')} ">
	<label for="CALENDAR_YEAR">
		<g:message code="calendar.CALENDAR_YEAR.label" default="CALENDARYEAR" />
		
	</label>
	<g:textField name="CALENDAR_YEAR" value="${calendarInstance?.CALENDAR_YEAR}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendarInstance, field: 'START_MONTH', 'error')} required">
	<label for="START_MONTH">
		<g:message code="calendar.START_MONTH.label" default="STARTMONTH" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="START_MONTH" type="number" class="form-control" value="${calendarInstance.START_MONTH}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendarInstance, field: 'END_MONTH', 'error')} required">
	<label for="END_MONTH">
		<g:message code="calendar.END_MONTH.label" default="ENDMONTH" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="END_MONTH" type="number" class="form-control" value="${calendarInstance.END_MONTH}" required=""/>
</div>--}%


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="HR_CALENDAR_ID"><g:message code="calendar.HR_CALENDAR_ID.label" default="HR Calendar ID" /></label>
            %{--<g:textField class="form-control" name="HR_CALENDAR_ID" value="${calendarInstance?.HR_CALENDAR_ID}"/>--}%
            <g:field name="HR_CALENDAR_ID" type="number" class="form-control" value="${calendarInstance.HR_CALENDAR_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="CALENDAR_YEAR"><g:message code="calendar.CALENDAR_YEAR.label" default="Calendar Year" /></label>
            <g:textField class="form-control" name="CALENDAR_YEAR" value="${calendarInstance?.CALENDAR_YEAR}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="START_MONTH"><g:message code="calendar.START_MONTH.label" default="Start Month" /></label>
            %{--<g:textField class="form-control" name="START_MONTH" value="${calendarInstance?.START_MONTH}"/>--}%
            <g:field name="START_MONTH" type="number" class="form-control" value="${calendarInstance.START_MONTH}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="END_MONTH"><g:message code="calendar.END_MONTH.label" default="End Month" /></label>
            %{--<g:textField class="form-control" name="END_MONTH" value="${calendarInstance?.END_MONTH}"/>--}%
            <g:field name="END_MONTH" type="number" class="form-control" value="${calendarInstance.END_MONTH}"/>
        </div>
    </div>
</div>

