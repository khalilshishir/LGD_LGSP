
<%@ page import="grantmanagement.UnionPorishod2PerformanceEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unionPorishod2PerformanceEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unionPorishod2PerformanceEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unionPorishod2PerformanceEntry">
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.organiztionType}">
				<li class="fieldcontain">
					<span id="organiztionType-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.organiztionType.label" default="Organiztion Type" /></span>
					
						<span class="property-value" aria-labelledby="organiztionType-label"><g:fieldValue bean="${unionPorishod2PerformanceEntryInstance}" field="organiztionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.performanceHead}">
				<li class="fieldcontain">
					<span id="performanceHead-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.performanceHead.label" default="Performance Head" /></span>
					
						<span class="property-value" aria-labelledby="performanceHead-label"><g:link controller="performanceHead" action="show" id="${unionPorishod2PerformanceEntryInstance?.performanceHead?.id}">${unionPorishod2PerformanceEntryInstance?.performanceHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.performanceIndicator}">
				<li class="fieldcontain">
					<span id="performanceIndicator-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.performanceIndicator.label" default="Performance Indicator" /></span>
					
						<span class="property-value" aria-labelledby="performanceIndicator-label"><g:link controller="performanceIndicator" action="show" id="${unionPorishod2PerformanceEntryInstance?.performanceIndicator?.id}">${unionPorishod2PerformanceEntryInstance?.performanceIndicator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.markDstribution}">
				<li class="fieldcontain">
					<span id="markDstribution-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.markDstribution.label" default="Mark Dstribution" /></span>
					
						<span class="property-value" aria-labelledby="markDstribution-label"><g:link controller="markDstribution" action="show" id="${unionPorishod2PerformanceEntryInstance?.markDstribution?.id}">${unionPorishod2PerformanceEntryInstance?.markDstribution?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.division.label" default="Division" /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${unionPorishod2PerformanceEntryInstance?.division?.id}">${unionPorishod2PerformanceEntryInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${unionPorishod2PerformanceEntryInstance?.district?.id}">${unionPorishod2PerformanceEntryInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.obtainMark}">
				<li class="fieldcontain">
					<span id="obtainMark-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.obtainMark.label" default="Obtain Mark" /></span>
					
						<span class="property-value" aria-labelledby="obtainMark-label"><g:fieldValue bean="${unionPorishod2PerformanceEntryInstance}" field="obtainMark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.fiscalYear}">
				<li class="fieldcontain">
					<span id="fiscalYear-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.fiscalYear.label" default="Fiscal Year" /></span>
					
						<span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${unionPorishod2PerformanceEntryInstance?.fiscalYear?.id}">${unionPorishod2PerformanceEntryInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.unionParishad.label" default="Union Parishad" /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${unionPorishod2PerformanceEntryInstance?.unionParishad?.id}">${unionPorishod2PerformanceEntryInstance?.unionParishad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishod2PerformanceEntryInstance?.upazila}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="unionPorishod2PerformanceEntry.upazila.label" default="Upazila" /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show" id="${unionPorishod2PerformanceEntryInstance?.upazila?.id}">${unionPorishod2PerformanceEntryInstance?.upazila?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${unionPorishod2PerformanceEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${unionPorishod2PerformanceEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
