
<%@ page import="procurement.pmu.PmuProcPlan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pmuProcPlan.label', default: 'PmuProcPlan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message
                code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message
                code="default.new.label" args="[entityName]"/></g:link></a>
    </p>
		<div id="show-pmuProcPlan" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
                <div class="panel-body">
			<ol class="property-list pmuProcPlan">
			
				<g:if test="${pmuProcPlanInstance?.packageNo}">
				<li class="fieldcontain">
					<span id="packageNo-label" class="property-label"><g:message code="pmuProcPlan.packageNo.label" default="Package No" /></span>
					
						<span class="property-value" aria-labelledby="packageNo-label"><g:fieldValue bean="${pmuProcPlanInstance}" field="packageNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcPlanInstance?.contractDescription}">
				<li class="fieldcontain">
					<span id="contractDescription-label" class="property-label"><g:message code="pmuProcPlan.contractDescription.label" default="Contract Description" /></span>
					
						<span class="property-value" aria-labelledby="contractDescription-label"><g:fieldValue bean="${pmuProcPlanInstance}" field="contractDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcPlanInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="pmuProcPlan.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:link controller="allLookup" action="show" id="${pmuProcPlanInstance?.unit?.id}">${pmuProcPlanInstance?.unit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcPlanInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="pmuProcPlan.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${pmuProcPlanInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcPlanInstance?.estimatedPrice}">
				<li class="fieldcontain">
					<span id="estimatedPrice-label" class="property-label"><g:message code="pmuProcPlan.estimatedPrice.label" default="Estimated Price" /></span>
					
						<span class="property-value" aria-labelledby="estimatedPrice-label"><g:fieldValue bean="${pmuProcPlanInstance}" field="estimatedPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcPlanInstance?.procurementMethod}">
				<li class="fieldcontain">
					<span id="procurementMethod-label" class="property-label"><g:message code="pmuProcPlan.procurementMethod.label" default="Procurement Method" /></span>
					
						<span class="property-value" aria-labelledby="procurementMethod-label"><g:link controller="allLookup" action="show" id="${pmuProcPlanInstance?.procurementMethod?.id}">${pmuProcPlanInstance?.procurementMethod?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcPlanInstance?.procurementGuideLine}">
				<li class="fieldcontain">
					<span id="procurementGuideLine-label" class="property-label"><g:message code="pmuProcPlan.procurementGuideLine.label" default="Procurement Guide Line" /></span>
					
						<span class="property-value" aria-labelledby="procurementGuideLine-label"><g:link controller="allLookup" action="show" id="${pmuProcPlanInstance?.procurementGuideLine?.id}">${pmuProcPlanInstance?.procurementGuideLine?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pmuProcPlanInstance?.planedDate}">
				<li class="fieldcontain">
					<span id="planedDate-label" class="property-label"><g:message code="pmuProcPlan.planedDate.label" default="Planed Date" /></span>
					
						<span class="property-value" aria-labelledby="planedDate-label"><g:formatDate date="${pmuProcPlanInstance?.planedDate}" /></span>
					
				</li>
				</g:if>
			

			
				<g:if test="${pmuProcPlanInstance?.IS_ACTIVE}">
				<li class="fieldcontain">
					<span id="IS_ACTIVE-label" class="property-label"><g:message code="pmuProcPlan.IS_ACTIVE.label" default="ISACTIVE" /></span>
					
						<span class="property-value" aria-labelledby="IS_ACTIVE-label"><g:formatBoolean boolean="${pmuProcPlanInstance?.IS_ACTIVE}" /></span>
					
				</li>
				</g:if>
			

			
				<g:if test="${pmuProcPlanInstance?.isPrior}">
				<li class="fieldcontain">
					<span id="isPrior-label" class="property-label"><g:message code="pmuProcPlan.isPrior.label" default="Is Prior" /></span>
					
						<span class="property-value" aria-labelledby="isPrior-label"><g:formatBoolean boolean="${pmuProcPlanInstance?.isPrior}" /></span>
					
				</li>
				</g:if>
			

			
			</ol>
            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${pmuProcPlanInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${pmuProcPlanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
                </div></div>
		</div>
	</body>
</html>
