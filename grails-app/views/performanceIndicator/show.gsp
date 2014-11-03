
<%@ page import="grantmanagement.PerformanceIndicator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'performanceIndicator.label', default: 'Performance Indicator')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-performanceIndicator" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>
            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div class="panel-body">
			<ol class="property-list performanceIndicator">
			
				<g:if test="${performanceIndicatorInstance?.indicatorName}">
				<li class="fieldcontain">
					<span id="indicatorName-label" class="property-label"><g:message code="performanceIndicator.indicatorName.label" default="Indicator Name : " /></span>
					
						<span class="property-value" aria-labelledby="indicatorName-label"><g:fieldValue bean="${performanceIndicatorInstance}" field="indicatorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${performanceIndicatorInstance?.performanceHead}">
				<li class="fieldcontain">
					<span id="performanceHead-label" class="property-label"><g:message code="performanceIndicator.performanceHead.label" default="Performance Head : " /></span>
					
						<span class="property-value" aria-labelledby="performanceHead-label"><g:link controller="performanceHead" action="show" id="${performanceIndicatorInstance?.performanceHead?.id}">${performanceIndicatorInstance?.performanceHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${performanceIndicatorInstance?.mark}">
				<li class="fieldcontain">
					<span id="mark-label" class="property-label"><g:message code="performanceIndicator.mark.label" default="Mark : " /></span>
					
						<span class="property-value" aria-labelledby="mark-label"><g:fieldValue bean="${performanceIndicatorInstance}" field="mark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${performanceIndicatorInstance?.performanceMeasure}">
				<li class="fieldcontain">
					<span id="performanceMeasure-label" class="property-label"><g:message code="performanceIndicator.performanceMeasure.label" default="Performance Measure : " /></span>
					
						<span class="property-value" aria-labelledby="performanceMeasure-label"><g:fieldValue bean="${performanceIndicatorInstance}" field="performanceMeasure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${performanceIndicatorInstance?.meansOfVerification}">
				<li class="fieldcontain">
					<span id="meansOfVerification-label" class="property-label"><g:message code="performanceIndicator.meansOfVerification.label" default="Means Of Verification : " /></span>
					
						<span class="property-value" aria-labelledby="meansOfVerification-label"><g:fieldValue bean="${performanceIndicatorInstance}" field="meansOfVerification"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${performanceIndicatorInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${performanceIndicatorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
    </body>
</html>
