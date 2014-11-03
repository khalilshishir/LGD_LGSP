<%@ page import="audit.UpInspection" %>



<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'UP_I_REP_NAME', 'error')} ">
	<label for="UP_I_REP_NAME">
		<g:message code="upInspection.UP_I_REP_NAME.label" default="UPIREPNAME" />

	</label>
	<g:textField name="UP_I_REP_NAME" value="${upInspectionInstance?.UP_I_REP_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'UP_I_REP_NAME_BN', 'error')} ">
	<label for="UP_I_REP_NAME_BN">
		<g:message code="upInspection.UP_I_REP_NAME_BN.label" default="UPIREPNAMEBN" />

	</label>
	<g:textField name="UP_I_REP_NAME_BN" value="${upInspectionInstance?.UP_I_REP_NAME_BN}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'UP_I_REP_DES', 'error')} ">
	<label for="UP_I_REP_DES">
		<g:message code="upInspection.UP_I_REP_DES.label" default="UPIREPDES" />

	</label>
	<g:textField name="UP_I_REP_DES" value="${upInspectionInstance?.UP_I_REP_DES}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'UP_I_REP_DES_BN', 'error')} ">
	<label for="UP_I_REP_DES_BN">
		<g:message code="upInspection.UP_I_REP_DES_BN.label" default="UPIREPDESBN" />

	</label>
	<g:textField name="UP_I_REP_DES_BN" value="${upInspectionInstance?.UP_I_REP_DES_BN}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'IFROM_DATE', 'error')} required">
	<label for="IFROM_DATE">
		<g:message code="upInspection.IFROM_DATE.label" default="IFROMDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="IFROM_DATE" precision="day"  value="${upInspectionInstance?.IFROM_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'ITO_DATE', 'error')} required">
	<label for="ITO_DATE">
		<g:message code="upInspection.ITO_DATE.label" default="ITODATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ITO_DATE" precision="day"  value="${upInspectionInstance?.ITO_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'CREATED_BY', 'error')} required">
	<label for="CREATED_BY">
		<g:message code="upInspection.CREATED_BY.label" default="CREATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CREATED_BY" type="number" value="${upInspectionInstance.CREATED_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="upInspection.CREATED_DATE.label" default="CREATEDDATE" />

	</label>
	<g:datePicker name="CREATED_DATE" precision="day"  value="${upInspectionInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'UPDATED_BY', 'error')} required">
	<label for="UPDATED_BY">
		<g:message code="upInspection.UPDATED_BY.label" default="UPDATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UPDATED_BY" type="number" value="${upInspectionInstance.UPDATED_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'UPDATED_DATE', 'error')} ">
	<label for="UPDATED_DATE">
		<g:message code="upInspection.UPDATED_DATE.label" default="UPDATEDDATE" />

	</label>
	<g:datePicker name="UPDATED_DATE" precision="day"  value="${upInspectionInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'IS_ACTIVE', 'error')} ">
	<label for="IS_ACTIVE">
		<g:message code="upInspection.IS_ACTIVE.label" default="ISACTIVE" />
		
	</label>
	<g:checkBox name="IS_ACTIVE" value="${upInspectionInstance?.IS_ACTIVE}" />
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'UP_I_REP_EXPE', 'error')} ">
	<label for="UP_I_REP_EXPE">
		<g:message code="upInspection.UP_I_REP_EXPE.label" default="UPIREPEXPE" />
		
	</label>
	<g:textField name="UP_I_REP_EXPE" value="${upInspectionInstance?.UP_I_REP_EXPE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: upInspectionInstance, field: 'auditPackage', 'error')} required">
	<label for="auditPackage">
		<g:message code="upInspection.auditPackage.label" default="Audit Package" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="auditPackage" name="auditPackage.id" from="${audit.AuditPackage.list()}" optionKey="id" required="" value="${upInspectionInstance?.auditPackage?.id}" class="many-to-one"/>
</div>

