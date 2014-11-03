
<%@ page import="grantmanagement.DistributePBGAmount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-distributePBGAmount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-distributePBGAmount" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list distributePBGAmount">
			
				<g:if test="${distributePBGAmountInstance?.measureCategory}">
				<li class="fieldcontain">
					<span id="measureCategory-label" class="property-label"><g:message code="distributePBGAmount.measureCategory.label" default="Measure Category" /></span>
					
						<span class="property-value" aria-labelledby="measureCategory-label"><g:link controller="performanceMeasureCategory" action="show" id="${distributePBGAmountInstance?.measureCategory?.id}">${distributePBGAmountInstance?.measureCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.fiscalYear}">
				<li class="fieldcontain">
					<span id="fiscalYear-label" class="property-label"><g:message code="distributePBGAmount.fiscalYear.label" default="Fiscal Year" /></span>
					
						<span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${distributePBGAmountInstance?.fiscalYear?.id}">${distributePBGAmountInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="distributePBGAmount.unionParishad.label" default="Union Parishad" /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${distributePBGAmountInstance?.unionParishad?.id}">${distributePBGAmountInstance?.unionParishad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.upazila}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="distributePBGAmount.upazila.label" default="Upazila" /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show" id="${distributePBGAmountInstance?.upazila?.id}">${distributePBGAmountInstance?.upazila?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.allocatedAmount}">
				<li class="fieldcontain">
					<span id="allocatedAmount-label" class="property-label"><g:message code="distributePBGAmount.allocatedAmount.label" default="Allocated Amount" /></span>
					
						<span class="property-value" aria-labelledby="allocatedAmount-label"><g:link controller="allocatedAmount" action="show" id="${distributePBGAmountInstance?.allocatedAmount?.id}">${distributePBGAmountInstance?.allocatedAmount?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.percentage}">
				<li class="fieldcontain">
					<span id="percentage-label" class="property-label"><g:message code="distributePBGAmount.percentage.label" default="Percentage" /></span>
					
						<span class="property-value" aria-labelledby="percentage-label"><g:fieldValue bean="${distributePBGAmountInstance}" field="percentage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.amountPBG}">
				<li class="fieldcontain">
					<span id="amountPBG-label" class="property-label"><g:message code="distributePBGAmount.amountPBG.label" default="Amount PBG" /></span>
					
						<span class="property-value" aria-labelledby="amountPBG-label"><g:fieldValue bean="${distributePBGAmountInstance}" field="amountPBG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.totalAmount}">
				<li class="fieldcontain">
					<span id="totalAmount-label" class="property-label"><g:message code="distributePBGAmount.totalAmount.label" default="Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="totalAmount-label"><g:fieldValue bean="${distributePBGAmountInstance}" field="totalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributePBGAmountInstance?.distributeBBGAmount}">
				<li class="fieldcontain">
					<span id="distributeBBGAmount-label" class="property-label"><g:message code="distributePBGAmount.distributeBBGAmount.label" default="Distribute BBGA mount" /></span>
					
						<span class="property-value" aria-labelledby="distributeBBGAmount-label"><g:link controller="distributeBBGAmount" action="show" id="${distributePBGAmountInstance?.distributeBBGAmount?.id}">${distributePBGAmountInstance?.distributeBBGAmount?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${distributePBGAmountInstance?.id}" />
					<g:link class="edit" action="edit" id="${distributePBGAmountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
