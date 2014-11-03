
<%@ page import="grantmanagement.DistributedAmount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'distributedAmount.label', default: 'DistributedAmount')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-distributedAmount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-distributedAmount" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list distributedAmount">
			
				<g:if test="${distributedAmountInstance?.measureCategory}">
				<li class="fieldcontain">
					<span id="measureCategory-label" class="property-label"><g:message code="distributedAmount.measureCategory.label" default="Measure Category" /></span>
					
						<span class="property-value" aria-labelledby="measureCategory-label"><g:link controller="performanceMeasureCategory" action="show" id="${distributedAmountInstance?.measureCategory?.id}">${distributedAmountInstance?.measureCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributedAmountInstance?.fiscalYear}">
				<li class="fieldcontain">
					<span id="fiscalYear-label" class="property-label"><g:message code="distributedAmount.fiscalYear.label" default="Fiscal Year" /></span>
					
						<span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${distributedAmountInstance?.fiscalYear?.id}">${distributedAmountInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributedAmountInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="distributedAmount.unionParishad.label" default="Union Parishad" /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${distributedAmountInstance?.unionParishad?.id}">${distributedAmountInstance?.unionParishad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributedAmountInstance?.upazila}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="distributedAmount.upazila.label" default="Upazila" /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show" id="${distributedAmountInstance?.upazila?.id}">${distributedAmountInstance?.upazila?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributedAmountInstance?.amountBBG}">
				<li class="fieldcontain">
					<span id="amountBBG-label" class="property-label"><g:message code="distributedAmount.amountBBG.label" default="Amount BBG" /></span>
					
						<span class="property-value" aria-labelledby="amountBBG-label"><g:fieldValue bean="${distributedAmountInstance}" field="amountBBG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributedAmountInstance?.amountPBG}">
				<li class="fieldcontain">
					<span id="amountPBG-label" class="property-label"><g:message code="distributedAmount.amountPBG.label" default="Amount PBG" /></span>
					
						<span class="property-value" aria-labelledby="amountPBG-label"><g:fieldValue bean="${distributedAmountInstance}" field="amountPBG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributedAmountInstance?.totalAmount}">
				<li class="fieldcontain">
					<span id="totalAmount-label" class="property-label"><g:message code="distributedAmount.totalAmount.label" default="Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="totalAmount-label"><g:fieldValue bean="${distributedAmountInstance}" field="totalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributedAmountInstance?.allocatedAmount}">
				<li class="fieldcontain">
					<span id="allocatedAmount-label" class="property-label"><g:message code="distributedAmount.allocatedAmount.label" default="Allocated Amount" /></span>
					
						<span class="property-value" aria-labelledby="allocatedAmount-label"><g:link controller="allocatedAmount" action="show" id="${distributedAmountInstance?.allocatedAmount?.id}">${distributedAmountInstance?.allocatedAmount?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${distributedAmountInstance?.id}" />
					<g:link class="edit" action="edit" id="${distributedAmountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
