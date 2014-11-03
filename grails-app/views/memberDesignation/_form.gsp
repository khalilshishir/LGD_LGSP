<%@ page import="settings.MemberDesignation" %>



<div class="fieldcontain ${hasErrors(bean: memberDesignationInstance, field: 'NAME', 'error')} ">
	<label for="NAME">
		<g:message code="memberDesignation.NAME.label" default="NAME" />
		
	</label>
	<g:textField name="NAME" value="${memberDesignationInstance?.NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberDesignationInstance, field: 'CREATED_BY', 'error')} required">
	<label for="CREATED_BY">
		<g:message code="memberDesignation.CREATED_BY.label" default="CREATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CREATED_BY" type="number" value="${memberDesignationInstance.CREATED_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberDesignationInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="memberDesignation.CREATED_DATE.label" default="CREATEDDATE" />
		
	</label>
	<g:datePicker name="CREATED_DATE" precision="day"  value="${memberDesignationInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: memberDesignationInstance, field: 'UPDATED_BY', 'error')} required">
	<label for="UPDATED_BY">
		<g:message code="memberDesignation.UPDATED_BY.label" default="UPDATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UPDATED_BY" type="number" value="${memberDesignationInstance.UPDATED_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberDesignationInstance, field: 'UPDATED_DATE', 'error')} ">
	<label for="UPDATED_DATE">
		<g:message code="memberDesignation.UPDATED_DATE.label" default="UPDATEDDATE" />
		
	</label>
	<g:datePicker name="UPDATED_DATE" precision="day"  value="${memberDesignationInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />
</div>

