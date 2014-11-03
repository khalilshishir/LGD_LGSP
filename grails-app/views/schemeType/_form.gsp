<%@ page import="settings.SchemeType" %>



<div class="fieldcontain ${hasErrors(bean: schemeTypeInstance, field: 'NAME', 'error')} ">
	<label for="NAME">
		<g:message code="schemeType.NAME.label" default="NAME" />
		
	</label>
	<g:textField name="NAME" value="${schemeTypeInstance?.NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: schemeTypeInstance, field: 'CREATED_BY', 'error')} required">
	<label for="CREATED_BY">
		<g:message code="schemeType.CREATED_BY.label" default="CREATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CREATED_BY" type="number" value="${schemeTypeInstance.CREATED_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: schemeTypeInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="schemeType.CREATED_DATE.label" default="CREATEDDATE" />
		
	</label>
	<g:datePicker name="CREATED_DATE" precision="day"  value="${schemeTypeInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: schemeTypeInstance, field: 'UPDATED_BY', 'error')} required">
	<label for="UPDATED_BY">
		<g:message code="schemeType.UPDATED_BY.label" default="UPDATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UPDATED_BY" type="number" value="${schemeTypeInstance.UPDATED_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: schemeTypeInstance, field: 'UPDATED_DATE', 'error')} ">
	<label for="UPDATED_DATE">
		<g:message code="schemeType.UPDATED_DATE.label" default="UPDATEDDATE" />
		
	</label>
	<g:datePicker name="UPDATED_DATE" precision="day"  value="${schemeTypeInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />
</div>

