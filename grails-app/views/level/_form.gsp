<%@ page import="training.Level" %>



%{--<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'LEVEL_ID', 'error')} ">
	<label for="LEVEL_ID">
		<g:message code="level.LEVEL_ID.label" default="LEVELID" />
		
	</label>
	<g:textField name="LEVEL_ID" value="${levelInstance?.LEVEL_ID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'LEVEL_NAME', 'error')} ">
	<label for="LEVEL_NAME">
		<g:message code="level.LEVEL_NAME.label" default="LEVELNAME" />
		
	</label>
	<g:textField name="LEVEL_NAME" value="${levelInstance?.LEVEL_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'LEVEL_ENTRY_DATE', 'error')} required">
	<label for="LEVEL_ENTRY_DATE">
		<g:message code="level.LEVEL_ENTRY_DATE.label" default="LEVELENTRYDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="LEVEL_ENTRY_DATE" precision="day"  value="${levelInstance?.LEVEL_ENTRY_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'CREATEDATE', 'error')} required">
	<label for="CREATEDATE">
		<g:message code="level.CREATEDATE.label" default="CREATEDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="CREATEDATE" precision="day"  value="${levelInstance?.CREATEDATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'ISACTIVE', 'error')} ">
	<label for="ISACTIVE">
		<g:message code="level.ISACTIVE.label" default="ISACTIVE" />
		
	</label>
	<g:checkBox name="ISACTIVE" value="${levelInstance?.ISACTIVE}" />
</div>

<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'CREATEBY', 'error')} required">
	<label for="CREATEBY">
		<g:message code="level.CREATEBY.label" default="CREATEBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CREATEBY" type="number" value="${levelInstance.CREATEBY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'UPDATEDBY', 'error')} required">
	<label for="UPDATEDBY">
		<g:message code="level.UPDATEDBY.label" default="UPDATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UPDATEDBY" type="number" value="${levelInstance.UPDATEDBY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: levelInstance, field: 'UPDATED', 'error')} required">
	<label for="UPDATED">
		<g:message code="level.UPDATED.label" default="UPDATED" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="UPDATED" precision="day"  value="${levelInstance?.UPDATED}"  />
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="LEVEL_ID"><g:message code="level.LEVEL_ID.label" default="Level ID" /></label>
            <g:textField class="form-control" name="LEVEL_ID" value="${levelInstance?.LEVEL_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="LEVEL_NAME"><g:message code="level.LEVEL_NAME.label" default="Level Name" /></label>
            <g:textField class="form-control" name="LEVEL_NAME" value="${levelInstance?.LEVEL_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="LEVEL_NAME_BN"><g:message code="level.LEVEL_NAME_BN.label" default="লেভেল নাম" /></label>
            <g:textField class="form-control" name="LEVEL_NAME_BN" value="${levelInstance?.LEVEL_NAME_BN}"/>
        </div>
    </div>
</div>

