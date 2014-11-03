<%@ page import="training.InstitutionInformation" %>



%{--<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'INSTITUTION_ID', 'error')} ">
	<label for="INSTITUTION_ID">
		<g:message code="institution_Information.INSTITUTION_ID.label" default="INSTITUTIONID" />
		
	</label>
	<g:textField name="INSTITUTION_ID" value="${institution_InformationInstance?.INSTITUTION_ID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'INSTITUTION_NAME', 'error')} ">
	<label for="INSTITUTION_NAME">
		<g:message code="institution_Information.INSTITUTION_NAME.label" default="INSTITUTIONNAME" />
		
	</label>
	<g:textField name="INSTITUTION_NAME" value="${institution_InformationInstance?.INSTITUTION_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'INSTITUTION_ENTRY_DATE', 'error')} required">
	<label for="INSTITUTION_ENTRY_DATE">
		<g:message code="institution_Information.INSTITUTION_ENTRY_DATE.label" default="INSTITUTIONENTRYDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="INSTITUTION_ENTRY_DATE" precision="day"  value="${institution_InformationInstance?.INSTITUTION_ENTRY_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'CREATEDATE', 'error')} required">
	<label for="CREATEDATE">
		<g:message code="institution_Information.CREATEDATE.label" default="CREATEDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="CREATEDATE" precision="day"  value="${institution_InformationInstance?.CREATEDATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'ISACTIVE', 'error')} ">
	<label for="ISACTIVE">
		<g:message code="institution_Information.ISACTIVE.label" default="ISACTIVE" />
		
	</label>
	<g:checkBox name="ISACTIVE" value="${institution_InformationInstance?.ISACTIVE}" />
</div>

<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'CREATEBY', 'error')} required">
	<label for="CREATEBY">
		<g:message code="institution_Information.CREATEBY.label" default="CREATEBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CREATEBY" type="number" value="${institution_InformationInstance.CREATEBY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'UPDATEDBY', 'error')} required">
	<label for="UPDATEDBY">
		<g:message code="institution_Information.UPDATEDBY.label" default="UPDATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UPDATEDBY" type="number" value="${institution_InformationInstance.UPDATEDBY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: institution_InformationInstance, field: 'UPDATED', 'error')} required">
	<label for="UPDATED">
		<g:message code="institution_Information.UPDATED.label" default="UPDATED" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="UPDATED" precision="day"  value="${institution_InformationInstance?.UPDATED}"  />
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="INSTITUTION_ID"><g:message code="institutionInformation.INSTITUTION_ID.label" default="Institution ID" /></label>
            <g:textField class="form-control" name="INSTITUTION_ID" value="${institutionInformationInstance?.INSTITUTION_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="INSTITUTION_NAME"><g:message code="institutionInformation.INSTITUTION_NAME.label" default="Institution Name" /></label>
            <g:textField class="form-control" name="INSTITUTION_NAME" value="${institutionInformationInstance?.INSTITUTION_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="INSTITUTION_NAME_BN"><g:message code="institutionInformation.INSTITUTION_NAME_BN.label" default="ইন্সটিটিউশান নাম" /></label>
            <g:textField class="form-control" name="INSTITUTION_NAME_BN" value="${institutionInformationInstance?.INSTITUTION_NAME_BN}"/>
        </div>
    </div>
</div>