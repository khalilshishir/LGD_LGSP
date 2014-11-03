
<%@ page import="PMS.PmuProcurPlanForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pmuProcurPlanForm.label', default: 'PmuProcurPlanForm')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pmuProcurPlanForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pmuProcurPlanForm" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pmuProcurPlanForm">
			
				<g:if test="${pmuProcurPlanFormInstance?.SLNO}">
				<li class="fieldcontain">
					<span id="SLNO-label" class="property-label"><g:message code="pmuProcurPlanForm.SLNO.label" default="SLNO" /></span>
					
						<span class="property-value" aria-labelledby="SLNO-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="SLNO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PACKAGES_NO}">
				<li class="fieldcontain">
					<span id="PACKAGES_NO-label" class="property-label"><g:message code="pmuProcurPlanForm.PACKAGES_NO.label" default="PACKAGESNO" /></span>
					
						<span class="property-value" aria-labelledby="PACKAGES_NO-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="PACKAGES_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.CONTRACT_DESCRIPTION}">
				<li class="fieldcontain">
					<span id="CONTRACT_DESCRIPTION-label" class="property-label"><g:message code="pmuProcurPlanForm.CONTRACT_DESCRIPTION.label" default="CONTRACTDESCRIPTION" /></span>
					
						<span class="property-value" aria-labelledby="CONTRACT_DESCRIPTION-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="CONTRACT_DESCRIPTION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.UNIT}">
				<li class="fieldcontain">
					<span id="UNIT-label" class="property-label"><g:message code="pmuProcurPlanForm.UNIT.label" default="UNIT" /></span>
					
						<span class="property-value" aria-labelledby="UNIT-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="UNIT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.QTY_NOS}">
				<li class="fieldcontain">
					<span id="QTY_NOS-label" class="property-label"><g:message code="pmuProcurPlanForm.QTY_NOS.label" default="QTYNOS" /></span>
					
						<span class="property-value" aria-labelledby="QTY_NOS-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="QTY_NOS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.ESTIMATED_PRICE}">
				<li class="fieldcontain">
					<span id="ESTIMATED_PRICE-label" class="property-label"><g:message code="pmuProcurPlanForm.ESTIMATED_PRICE.label" default="ESTIMATEDPRICE" /></span>
					
						<span class="property-value" aria-labelledby="ESTIMATED_PRICE-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="ESTIMATED_PRICE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PROCEDURE_METHOD}">
				<li class="fieldcontain">
					<span id="PROCEDURE_METHOD-label" class="property-label"><g:message code="pmuProcurPlanForm.PROCEDURE_METHOD.label" default="PROCEDUREMETHOD" /></span>
					
						<span class="property-value" aria-labelledby="PROCEDURE_METHOD-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="PROCEDURE_METHOD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PROCUREMEN_GUIDLINE}">
				<li class="fieldcontain">
					<span id="PROCUREMEN_GUIDLINE-label" class="property-label"><g:message code="pmuProcurPlanForm.PROCUREMEN_GUIDLINE.label" default="PROCUREMENGUIDLINE" /></span>
					
						<span class="property-value" aria-labelledby="PROCUREMEN_GUIDLINE-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="PROCUREMEN_GUIDLINE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PRIORS}">
				<li class="fieldcontain">
					<span id="PRIORS-label" class="property-label"><g:message code="pmuProcurPlanForm.PRIORS.label" default="PRIORS" /></span>
					
						<span class="property-value" aria-labelledby="PRIORS-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="PRIORS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PLANNED_DATE}">
				<li class="fieldcontain">
					<span id="PLANNED_DATE-label" class="property-label"><g:message code="pmuProcurPlanForm.PLANNED_DATE.label" default="PLANNEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="PLANNED_DATE-label"><g:formatDate date="${pmuProcurPlanFormInstance?.PLANNED_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PLANNED_DATE_CONTRCT}">
				<li class="fieldcontain">
					<span id="PLANNED_DATE_CONTRCT-label" class="property-label"><g:message code="pmuProcurPlanForm.PLANNED_DATE_CONTRCT.label" default="PLANNEDDATECONTRCT" /></span>
					
						<span class="property-value" aria-labelledby="PLANNED_DATE_CONTRCT-label"><g:formatDate date="${pmuProcurPlanFormInstance?.PLANNED_DATE_CONTRCT}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PLANNED_DATE_DELIVARY}">
				<li class="fieldcontain">
					<span id="PLANNED_DATE_DELIVARY-label" class="property-label"><g:message code="pmuProcurPlanForm.PLANNED_DATE_DELIVARY.label" default="PLANNEDDATEDELIVARY" /></span>
					
						<span class="property-value" aria-labelledby="PLANNED_DATE_DELIVARY-label"><g:formatDate date="${pmuProcurPlanFormInstance?.PLANNED_DATE_DELIVARY}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.NAME_OF_SUPPLIER}">
				<li class="fieldcontain">
					<span id="NAME_OF_SUPPLIER-label" class="property-label"><g:message code="pmuProcurPlanForm.NAME_OF_SUPPLIER.label" default="NAMEOFSUPPLIER" /></span>
					
						<span class="property-value" aria-labelledby="NAME_OF_SUPPLIER-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="NAME_OF_SUPPLIER"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.PROCESS_PROCUREMENT}">
				<li class="fieldcontain">
					<span id="PROCESS_PROCUREMENT-label" class="property-label"><g:message code="pmuProcurPlanForm.PROCESS_PROCUREMENT.label" default="PROCESSPROCUREMENT" /></span>
					
						<span class="property-value" aria-labelledby="PROCESS_PROCUREMENT-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="PROCESS_PROCUREMENT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.CREATE_DATE}">
				<li class="fieldcontain">
					<span id="CREATE_DATE-label" class="property-label"><g:message code="pmuProcurPlanForm.CREATE_DATE.label" default="CREATEDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATE_DATE-label"><g:formatDate date="${pmuProcurPlanFormInstance?.CREATE_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.IS_ACTIVE}">
				<li class="fieldcontain">
					<span id="IS_ACTIVE-label" class="property-label"><g:message code="pmuProcurPlanForm.IS_ACTIVE.label" default="ISACTIVE" /></span>
					
						<span class="property-value" aria-labelledby="IS_ACTIVE-label"><g:formatBoolean boolean="${pmuProcurPlanFormInstance?.IS_ACTIVE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.CREATE_BY}">
				<li class="fieldcontain">
					<span id="CREATE_BY-label" class="property-label"><g:message code="pmuProcurPlanForm.CREATE_BY.label" default="CREATEBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATE_BY-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="CREATE_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.UPDATED_BY}">
				<li class="fieldcontain">
					<span id="UPDATED_BY-label" class="property-label"><g:message code="pmuProcurPlanForm.UPDATED_BY.label" default="UPDATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${pmuProcurPlanFormInstance}" field="UPDATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.UPDATE_DATE}">
				<li class="fieldcontain">
					<span id="UPDATE_DATE-label" class="property-label"><g:message code="pmuProcurPlanForm.UPDATE_DATE.label" default="UPDATEDATE" /></span>
					
						<span class="property-value" aria-labelledby="UPDATE_DATE-label"><g:formatDate date="${pmuProcurPlanFormInstance?.UPDATE_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcurPlanFormInstance?.pmuProcurPlanWbsForm}">
				<li class="fieldcontain">
					<span id="pmuProcurPlanWbsForm-label" class="property-label"><g:message code="pmuProcurPlanForm.pmuProcurPlanWbsForm.label" default="Pmu Procur Plan Wbs Form" /></span>
					
						<g:each in="${pmuProcurPlanFormInstance.pmuProcurPlanWbsForm}" var="p">
						<span class="property-value" aria-labelledby="pmuProcurPlanWbsForm-label"><g:link controller="pmuProcurPlanWbsForm" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pmuProcurPlanFormInstance?.id}" />
					<g:link class="edit" action="edit" id="${pmuProcurPlanFormInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
