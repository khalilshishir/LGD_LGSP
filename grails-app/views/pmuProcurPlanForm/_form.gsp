<%@ page import="PMS.PmuProcurPlanForm" %>



<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'SLNO', 'error')} ">
	<label for="SLNO">
		<g:message code="pmuProcurPlanForm.SLNO.label" default="SLNO" />
		
	</label>
	<g:textField name="SLNO" value="${pmuProcurPlanFormInstance?.SLNO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PACKAGES_NO', 'error')} ">
	<label for="PACKAGES_NO">
		<g:message code="pmuProcurPlanForm.PACKAGES_NO.label" default="PACKAGESNO" />
		
	</label>
	<g:textField name="PACKAGES_NO" value="${pmuProcurPlanFormInstance?.PACKAGES_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'CONTRACT_DESCRIPTION', 'error')} ">
	<label for="CONTRACT_DESCRIPTION">
		<g:message code="pmuProcurPlanForm.CONTRACT_DESCRIPTION.label" default="CONTRACTDESCRIPTION" />
		
	</label>
	<g:textField name="CONTRACT_DESCRIPTION" value="${pmuProcurPlanFormInstance?.CONTRACT_DESCRIPTION}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'UNIT', 'error')} ">
	<label for="UNIT">
		<g:message code="pmuProcurPlanForm.UNIT.label" default="UNIT" />
		
	</label>
	<g:textField name="UNIT" value="${pmuProcurPlanFormInstance?.UNIT}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'QTY_NOS', 'error')} ">
	<label for="QTY_NOS">
		<g:message code="pmuProcurPlanForm.QTY_NOS.label" default="QTYNOS" />
		
	</label>
	<g:textField name="QTY_NOS" value="${pmuProcurPlanFormInstance?.QTY_NOS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'ESTIMATED_PRICE', 'error')} required">
	<label for="ESTIMATED_PRICE">
		<g:message code="pmuProcurPlanForm.ESTIMATED_PRICE.label" default="ESTIMATEDPRICE" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ESTIMATED_PRICE" type="number" value="${pmuProcurPlanFormInstance.ESTIMATED_PRICE}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PROCEDURE_METHOD', 'error')} ">
	<label for="PROCEDURE_METHOD">
		<g:message code="pmuProcurPlanForm.PROCEDURE_METHOD.label" default="PROCEDUREMETHOD" />
		
	</label>
	<g:textField name="PROCEDURE_METHOD" value="${pmuProcurPlanFormInstance?.PROCEDURE_METHOD}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PROCUREMEN_GUIDLINE', 'error')} ">
	<label for="PROCUREMEN_GUIDLINE">
		<g:message code="pmuProcurPlanForm.PROCUREMEN_GUIDLINE.label" default="PROCUREMENGUIDLINE" />
		
	</label>
	<g:textField name="PROCUREMEN_GUIDLINE" value="${pmuProcurPlanFormInstance?.PROCUREMEN_GUIDLINE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PRIORS', 'error')} ">
	<label for="PRIORS">
		<g:message code="pmuProcurPlanForm.PRIORS.label" default="PRIORS" />
		
	</label>
	<g:textField name="PRIORS" value="${pmuProcurPlanFormInstance?.PRIORS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PLANNED_DATE', 'error')} required">
	<label for="PLANNED_DATE">
		<g:message code="pmuProcurPlanForm.PLANNED_DATE.label" default="PLANNEDDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="PLANNED_DATE" precision="day"  value="${pmuProcurPlanFormInstance?.PLANNED_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PLANNED_DATE_CONTRCT', 'error')} required">
	<label for="PLANNED_DATE_CONTRCT">
		<g:message code="pmuProcurPlanForm.PLANNED_DATE_CONTRCT.label" default="PLANNEDDATECONTRCT" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="PLANNED_DATE_CONTRCT" precision="day"  value="${pmuProcurPlanFormInstance?.PLANNED_DATE_CONTRCT}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PLANNED_DATE_DELIVARY', 'error')} required">
	<label for="PLANNED_DATE_DELIVARY">
		<g:message code="pmuProcurPlanForm.PLANNED_DATE_DELIVARY.label" default="PLANNEDDATEDELIVARY" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="PLANNED_DATE_DELIVARY" precision="day"  value="${pmuProcurPlanFormInstance?.PLANNED_DATE_DELIVARY}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'NAME_OF_SUPPLIER', 'error')} ">
	<label for="NAME_OF_SUPPLIER">
		<g:message code="pmuProcurPlanForm.NAME_OF_SUPPLIER.label" default="NAMEOFSUPPLIER" />
		
	</label>
	<g:textField name="NAME_OF_SUPPLIER" value="${pmuProcurPlanFormInstance?.NAME_OF_SUPPLIER}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'PROCESS_PROCUREMENT', 'error')} ">
	<label for="PROCESS_PROCUREMENT">
		<g:message code="pmuProcurPlanForm.PROCESS_PROCUREMENT.label" default="PROCESSPROCUREMENT" />
		
	</label>
	<g:textField name="PROCESS_PROCUREMENT" value="${pmuProcurPlanFormInstance?.PROCESS_PROCUREMENT}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'CREATE_DATE', 'error')} ">
	<label for="CREATE_DATE">
		<g:message code="pmuProcurPlanForm.CREATE_DATE.label" default="CREATEDATE" />
		
	</label>
	<g:datePicker name="CREATE_DATE" precision="day"  value="${pmuProcurPlanFormInstance?.CREATE_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'IS_ACTIVE', 'error')} ">
	<label for="IS_ACTIVE">
		<g:message code="pmuProcurPlanForm.IS_ACTIVE.label" default="ISACTIVE" />
		
	</label>
	<g:checkBox name="IS_ACTIVE" value="${pmuProcurPlanFormInstance?.IS_ACTIVE}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'CREATE_BY', 'error')} ">
	<label for="CREATE_BY">
		<g:message code="pmuProcurPlanForm.CREATE_BY.label" default="CREATEBY" />
		
	</label>
	<g:field name="CREATE_BY" type="number" value="${pmuProcurPlanFormInstance.CREATE_BY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'UPDATED_BY', 'error')} ">
	<label for="UPDATED_BY">
		<g:message code="pmuProcurPlanForm.UPDATED_BY.label" default="UPDATEDBY" />
		
	</label>
	<g:field name="UPDATED_BY" type="number" value="${pmuProcurPlanFormInstance.UPDATED_BY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'UPDATE_DATE', 'error')} ">
	<label for="UPDATE_DATE">
		<g:message code="pmuProcurPlanForm.UPDATE_DATE.label" default="UPDATEDATE" />
		
	</label>
	<g:datePicker name="UPDATE_DATE" precision="day"  value="${pmuProcurPlanFormInstance?.UPDATE_DATE}" default="none" noSelection="['': '']" />
</div>

%{--<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanFormInstance, field: 'pmuProcurPlanWbsForm', 'error')} ">--}%
	%{--<label for="pmuProcurPlanWbsForm">--}%
		%{--<g:message code="pmuProcurPlanForm.pmuProcurPlanWbsForm.label" default="Pmu Procur Plan Wbs Form" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select name="pmuProcurPlanWbsForm" from="${PMS.PmuProcurPlanWbsForm.list()}" multiple="multiple" optionKey="id" size="5" value="${pmuProcurPlanFormInstance?.pmuProcurPlanWbsForm*.id}" class="many-to-many"/>--}%
%{--</div>--}%

