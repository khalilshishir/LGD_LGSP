<%@ page import="payroll.Calendar_Month" %>



%{--<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'HR_CALENDAR_MONTH_ID', 'error')} required">
	<label for="HR_CALENDAR_MONTH_ID">
		<g:message code="calendar_Month.HR_CALENDAR_MONTH_ID.label" default="HRCALENDARMONTHID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="HR_CALENDAR_MONTH_ID" type="number" class="form-control" value="${calendar_MonthInstance.HR_CALENDAR_MONTH_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'START_DATE', 'error')} ">
	<label for="START_DATE">
		<g:message code="calendar_Month.START_DATE.label" default="STARTDATE" />
		
	</label>
	<g:datePicker name="START_DATE" precision="day"  value="${calendar_MonthInstance?.START_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'END_DATE', 'error')} ">
	<label for="END_DATE">
		<g:message code="calendar_Month.END_DATE.label" default="ENDDATE" />
		
	</label>
	<g:datePicker name="END_DATE" precision="day"  value="${calendar_MonthInstance?.END_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'PERIOD_NAME', 'error')} ">
	<label for="PERIOD_NAME">
		<g:message code="calendar_Month.PERIOD_NAME.label" default="PERIODNAME" />
		
	</label>
	<g:textField name="PERIOD_NAME" value="${calendar_MonthInstance?.PERIOD_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'HR_CALENDAR_ID', 'error')} required">
	<label for="HR_CALENDAR_ID">
		<g:message code="calendar_Month.HR_CALENDAR_ID.label" default="HRCALENDARID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="HR_CALENDAR_ID" type="number" class="form-control" value="${calendar_MonthInstance.HR_CALENDAR_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'CALENDAR_YEAR', 'error')} required">
	<label for="CALENDAR_YEAR">
		<g:message code="calendar_Month.CALENDAR_YEAR.label" default="CALENDARYEAR" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CALENDAR_YEAR" type="number" class="form-control" value="${calendar_MonthInstance.CALENDAR_YEAR}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'SERIAL_NO', 'error')} required">
	<label for="SERIAL_NO">
		<g:message code="calendar_Month.SERIAL_NO.label" default="SERIALNO" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="SERIAL_NO" type="number" class="form-control" value="${calendar_MonthInstance.SERIAL_NO}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'IS_SALARY_PROCESS', 'error')} required">
	<label for="IS_SALARY_PROCESS">
		<g:message code="calendar_Month.IS_SALARY_PROCESS.label" default="ISSALARYPROCESS" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="IS_SALARY_PROCESS" type="number" class="form-control" value="${calendar_MonthInstance.IS_SALARY_PROCESS}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'IS_INCREMENT_PROCESS', 'error')} required">
	<label for="IS_INCREMENT_PROCESS">
		<g:message code="calendar_Month.IS_INCREMENT_PROCESS.label" default="ISINCREMENTPROCESS" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="IS_INCREMENT_PROCESS" type="number" class="form-control" value="${calendar_MonthInstance.IS_INCREMENT_PROCESS}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: calendar_MonthInstance, field: 'IS_BONUS_PROCES', 'error')} required">
	<label for="IS_BONUS_PROCES">
		<g:message code="calendar_Month.IS_BONUS_PROCES.label" default="ISBONUSPROCES" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="IS_BONUS_PROCES" type="number" class="form-control" value="${calendar_MonthInstance.IS_BONUS_PROCES}" required=""/>
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="HR_CALENDAR_MONTH_ID"><g:message code="calendar_Month.HR_CALENDAR_MONTH_ID.label" default="HR Calendar Month ID" /></label>
            %{--<g:textField class="form-control" name="HR_CALENDAR_ID" value="${calendar_MonthInstance?.HR_CALENDAR_ID}"/>--}%
            <g:field name="HR_CALENDAR_MONTH_ID" type="number" class="form-control" value="${calendar_MonthInstance.HR_CALENDAR_MONTH_ID}"/>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'START_DATE', 'error')} ">
        <label for="START_DATE">
            <g:message code="calendar_Month.START_DATE.label" default="Start Date" />

        </label>
        <g:datePicker class="form-control" name="START_DATE" precision="day"  value="${calendar_MonthInstance?.START_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: calendar_MonthInstance, field: 'START_DATE', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Start Date</label>
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:calendar_MonthInstance?.START_DATE)}" data-close="true" data-name="START_DATE"></div>
        </div>
    </div>
</div>

<div class="row">
    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'END_DATE', 'error')} " style="padding-left: 10px">
        <label for="END_DATE">
            <g:message code="calendar_Month.END_DATE.label" default="End Date" />

        </label>
        <g:datePicker class="form-control" name="END_DATE" precision="day"  value="${calendar_MonthInstance?.END_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div style="padding-left: 10px" class="col-xs-6 ${hasErrors(bean: calendar_MonthInstance, field: 'END_DATE', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">End Date</label>
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:calendar_MonthInstance?.END_DATE)}" data-close="true" data-name="END_DATE"></div>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PERIOD_NAME"><g:message code="calendar_Month.PERIOD_NAME.label" default="Period Name" /></label>
            <g:textField class="form-control" name="PERIOD_NAME" value="${calendar_MonthInstance?.PERIOD_NAME}"/>
            %{--<g:field name="PERIOD_NAME" type="number" class="form-control" value="${calendar_MonthInstance.PERIOD_NAME}"/>--}%
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="HR_CALENDAR_ID"><g:message code="calendar_Month.HR_CALENDAR_ID.label" default="HR Calendar ID" /></label>
            %{--<g:textField class="form-control" name="HR_CALENDAR_ID" value="${calendar_MonthInstance?.HR_CALENDAR_ID}"/>--}%
            <g:field name="HR_CALENDAR_ID" type="number" class="form-control" value="${calendar_MonthInstance.HR_CALENDAR_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="CALENDAR_YEAR"><g:message code="calendar_Month.CALENDAR_YEAR.label" default="Calendar Year" /></label>
            %{--<g:textField class="form-control" name="CALENDAR_YEAR" value="${calendar_MonthInstance?.CALENDAR_YEAR}"/>--}%
            <g:field name="CALENDAR_YEAR" type="number" class="form-control" value="${calendar_MonthInstance.CALENDAR_YEAR}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="SERIAL_NO"><g:message code="calendar_Month.SERIAL_NO.label" default="Serial No" /></label>
            %{--<g:textField class="form-control" name="HR_CALENDAR_ID" value="${calendar_MonthInstance?.HR_CALENDAR_ID}"/>--}%
            <g:field name="SERIAL_NO" type="number" class="form-control" value="${calendar_MonthInstance.SERIAL_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="IS_SALARY_PROCESS"><g:message code="calendar_Month.IS_SALARY_PROCESS.label" default="IS Salary Process" /></label>
            %{--<g:textField class="form-control" name="IS_SALARY_PROCESS" value="${calendar_MonthInstance?.IS_SALARY_PROCESS}"/>--}%
            <g:field name="IS_SALARY_PROCESS" type="number" class="form-control" value="${calendar_MonthInstance.IS_SALARY_PROCESS}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="IS_INCREMENT_PROCESS"><g:message code="calendar_Month.IS_INCREMENT_PROCESS.label" default="IS Increment Process" /></label>
            %{--<g:textField class="form-control" name="IS_INCREMENT_PROCESS" value="${calendar_MonthInstance?.IS_INCREMENT_PROCESS}"/>--}%
            <g:field name="IS_INCREMENT_PROCESS" type="number" class="form-control" value="${calendar_MonthInstance.IS_INCREMENT_PROCESS}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="IS_BONUS_PROCES"><g:message code="calendar_Month.IS_BONUS_PROCES.label" default="IS Bonus Process" /></label>
            %{--<g:textField class="form-control" name="IS_BONUS_PROCES" value="${calendar_MonthInstance?.IS_BONUS_PROCES}"/>--}%
            <g:field name="IS_BONUS_PROCES" type="number" class="form-control" value="${calendar_MonthInstance.IS_BONUS_PROCES}"/>
        </div>
    </div>
</div>

