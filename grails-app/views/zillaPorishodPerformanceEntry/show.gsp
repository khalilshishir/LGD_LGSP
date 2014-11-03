
<%@ page import="grantmanagement.ZillaPorishodPerformanceEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-zillaPorishodPerformanceEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-zillaPorishodPerformanceEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list zillaPorishodPerformanceEntry">
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.organiztionType}">
				<li class="fieldcontain">
					<span id="organiztionType-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.organiztionType.label" default="Organiztion Type" /></span>
					
						<span class="property-value" aria-labelledby="organiztionType-label"><g:fieldValue bean="${zillaPorishodPerformanceEntryInstance}" field="organiztionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.performanceHead}">
				<li class="fieldcontain">
					<span id="performanceHead-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.performanceHead.label" default="Performance Head" /></span>
					
						<span class="property-value" aria-labelledby="performanceHead-label"><g:link controller="performanceHead" action="show" id="${zillaPorishodPerformanceEntryInstance?.performanceHead?.id}">${zillaPorishodPerformanceEntryInstance?.performanceHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.performanceIndicator}">
				<li class="fieldcontain">
					<span id="performanceIndicator-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.performanceIndicator.label" default="Performance Indicator" /></span>
					
						<span class="property-value" aria-labelledby="performanceIndicator-label"><g:link controller="performanceIndicator" action="show" id="${zillaPorishodPerformanceEntryInstance?.performanceIndicator?.id}">${zillaPorishodPerformanceEntryInstance?.performanceIndicator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.markDstribution}">
				<li class="fieldcontain">
					<span id="markDstribution-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.markDstribution.label" default="Mark Dstribution" /></span>
					
						<span class="property-value" aria-labelledby="markDstribution-label"><g:link controller="markDstribution" action="show" id="${zillaPorishodPerformanceEntryInstance?.markDstribution?.id}">${zillaPorishodPerformanceEntryInstance?.markDstribution?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.division.label" default="Division" /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${zillaPorishodPerformanceEntryInstance?.division?.id}">${zillaPorishodPerformanceEntryInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${zillaPorishodPerformanceEntryInstance?.district?.id}">${zillaPorishodPerformanceEntryInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.obtainMark}">
				<li class="fieldcontain">
					<span id="obtainMark-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.obtainMark.label" default="Obtain Mark" /></span>
					
						<span class="property-value" aria-labelledby="obtainMark-label"><g:fieldValue bean="${zillaPorishodPerformanceEntryInstance}" field="obtainMark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${zillaPorishodPerformanceEntryInstance?.fiscalYear}">
				<li class="fieldcontain">
					<span id="fiscalYear-label" class="property-label"><g:message code="zillaPorishodPerformanceEntry.fiscalYear.label" default="Fiscal Year" /></span>
					
						<span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${zillaPorishodPerformanceEntryInstance?.fiscalYear?.id}">${zillaPorishodPerformanceEntryInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${zillaPorishodPerformanceEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${zillaPorishodPerformanceEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
