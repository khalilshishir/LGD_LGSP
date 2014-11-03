<%@ page import="payroll.Attendance_Info" %>



%{--<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'FILE_NAME', 'error')} ">
	<label for="FILE_NAME">
		<g:message code="attendance_Info.FILE_NAME.label" default="FILENAME" />
		
	</label>
	<g:textField name="FILE_NAME" value="${attendance_InfoInstance?.FILE_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'ROW_DATA', 'error')} ">
	<label for="ROW_DATA">
		<g:message code="attendance_Info.ROW_DATA.label" default="ROWDATA" />
		
	</label>
	<g:textField name="ROW_DATA" value="${attendance_InfoInstance?.ROW_DATA}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'TERMINAL_ID', 'error')} ">
	<label for="TERMINAL_ID">
		<g:message code="attendance_Info.TERMINAL_ID.label" default="TERMINALID" />
		
	</label>
	<g:textField name="TERMINAL_ID" value="${attendance_InfoInstance?.TERMINAL_ID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'DAY', 'error')} ">
	<label for="DAY">
		<g:message code="attendance_Info.DAY.label" default="DAY" />
		
	</label>
	<g:textField name="DAY" value="${attendance_InfoInstance?.DAY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'MONTH', 'error')} ">
	<label for="MONTH">
		<g:message code="attendance_Info.MONTH.label" default="MONTH" />
		
	</label>
	<g:textField name="MONTH" value="${attendance_InfoInstance?.MONTH}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'HOUR', 'error')} ">
	<label for="HOUR">
		<g:message code="attendance_Info.HOUR.label" default="HOUR" />
		
	</label>
	<g:textField name="HOUR" value="${attendance_InfoInstance?.HOUR}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'MINUTE', 'error')} ">
	<label for="MINUTE">
		<g:message code="attendance_Info.MINUTE.label" default="MINUTE" />
		
	</label>
	<g:textField name="MINUTE" value="${attendance_InfoInstance?.MINUTE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'SECOND', 'error')} ">
	<label for="SECOND">
		<g:message code="attendance_Info.SECOND.label" default="SECOND" />
		
	</label>
	<g:textField name="SECOND" value="${attendance_InfoInstance?.SECOND}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'CARD_NO', 'error')} ">
	<label for="CARD_NO">
		<g:message code="attendance_Info.CARD_NO.label" default="CARDNO" />
		
	</label>
	<g:textField name="CARD_NO" value="${attendance_InfoInstance?.CARD_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'YEAR', 'error')} ">
	<label for="YEAR">
		<g:message code="attendance_Info.YEAR.label" default="YEAR" />
		
	</label>
	<g:textField name="YEAR" value="${attendance_InfoInstance?.YEAR}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_InfoInstance, field: 'HR_MIN_SEC', 'error')} ">
	<label for="HR_MIN_SEC">
		<g:message code="attendance_Info.HR_MIN_SEC.label" default="HRMINSEC" />
		
	</label>
	<g:field name="HR_MIN_SEC" type="number" class="form-control" value="${attendance_InfoInstance.HR_MIN_SEC}"/>
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="FILE_NAME"><g:message code="attendance_Info.FILE_NAME.label" default="File Name" /></label>
            <g:textField class="form-control" name="FILE_NAME" value="${attendance_InfoInstance?.FILE_NAME}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="ROW_DATA"><g:message code="attendance_Info.ROW_DATA.label" default="Row Data" /></label>
            <g:textField class="form-control" name="ROW_DATA" value="${attendance_InfoInstance?.ROW_DATA}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TERMINAL_ID"><g:message code="attendance_Info.TERMINAL_ID.label" default="Terminal ID" /></label>
            <g:textField class="form-control" name="TERMINAL_ID" value="${attendance_InfoInstance?.TERMINAL_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="DAY"><g:message code="attendance_Info.DAY.label" default="Day" /></label>
            <g:textField class="form-control" name="DAY" value="${attendance_InfoInstance?.DAY}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="MONTH"><g:message code="attendance_Info.MONTH.label" default="Month" /></label>
            <g:textField class="form-control" name="MONTH" value="${attendance_InfoInstance?.MONTH}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="HOUR"><g:message code="attendance_Info.HOUR.label" default="Hour" /></label>
            <g:textField class="form-control" name="HOUR" value="${attendance_InfoInstance?.HOUR}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="MINUTE"><g:message code="attendance_Info.MINUTE.label" default="Minute" /></label>
            <g:textField class="form-control" name="MINUTE" value="${attendance_InfoInstance?.MINUTE}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="SECOND"><g:message code="attendance_Info.SECOND.label" default="Second" /></label>
            <g:textField class="form-control" name="SECOND" value="${attendance_InfoInstance?.SECOND}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="CARD_NO"><g:message code="attendance_Info.CARD_NO.label" default="Card No" /></label>
            <g:textField class="form-control" name="CARD_NO" value="${attendance_InfoInstance?.CARD_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="YEAR"><g:message code="attendance_Info.YEAR.label" default="Year" /></label>
            <g:textField class="form-control" name="YEAR" value="${attendance_InfoInstance?.YEAR}"/>
        </div>
    </div>
</div>


