
<%@ page import="grantmanagement.UnionPorishodPerformanceEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unionPorishodPerformanceEntry.label', default: 'Union Porishod Performance Entry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-unionPorishodPerformanceEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-unionPorishodPerformanceEntry" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div class="panel-body">
            <ol class="property-list unionPorishodPerformanceEntry">
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.organiztionType}">
				<li class="fieldcontain">
					<span id="organiztionType-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.organiztionType.label" default="Organiztion Type : " /></span>
					
						<span class="property-value" aria-labelledby="organiztionType-label"><g:fieldValue bean="${unionPorishodPerformanceEntryInstance}" field="organiztionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.performanceHead}">
				<li class="fieldcontain">
					<span id="performanceHead-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.performanceHead.label" default="Performance Head : " /></span>
					
						<span class="property-value" aria-labelledby="performanceHead-label"><g:link controller="performanceHead" action="show" id="${unionPorishodPerformanceEntryInstance?.performanceHead?.id}">${unionPorishodPerformanceEntryInstance?.performanceHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.performanceIndicator}">
				<li class="fieldcontain">
					<span id="performanceIndicator-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.performanceIndicator.label" default="Performance Indicator : " /></span>
					
						<span class="property-value" aria-labelledby="performanceIndicator-label"><g:link controller="performanceIndicator" action="show" id="${unionPorishodPerformanceEntryInstance?.performanceIndicator?.id}">${unionPorishodPerformanceEntryInstance?.performanceIndicator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.markDstribution}">
				<li class="fieldcontain">
					<span id="markDstribution-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.markDstribution.label" default="Mark Dstribution : " /></span>
					
						<span class="property-value" aria-labelledby="markDstribution-label"><g:link controller="markDstribution" action="show" id="${unionPorishodPerformanceEntryInstance?.markDstribution?.id}">${unionPorishodPerformanceEntryInstance?.markDstribution?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.division.label" default="Division : " /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${unionPorishodPerformanceEntryInstance?.division?.id}">${unionPorishodPerformanceEntryInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.district.label" default="District : " /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${unionPorishodPerformanceEntryInstance?.district?.id}">${unionPorishodPerformanceEntryInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.obtainMark}">
				<li class="fieldcontain">
					<span id="obtainMark-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.obtainMark.label" default="Obtain Mark : " /></span>
					
						<span class="property-value" aria-labelledby="obtainMark-label"><g:fieldValue bean="${unionPorishodPerformanceEntryInstance}" field="obtainMark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.fiscalYear}">
				<li class="fieldcontain">
					<span id="fiscalYear-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.fiscalYear.label" default="Fiscal Year : " /></span>
					
						<span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${unionPorishodPerformanceEntryInstance?.fiscalYear?.id}">${unionPorishodPerformanceEntryInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.unionParishad.label" default="Union Parishad : " /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${unionPorishodPerformanceEntryInstance?.unionParishad?.id}">${unionPorishodPerformanceEntryInstance?.unionParishad?.UP_NAME.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionPorishodPerformanceEntryInstance?.upazila}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="unionPorishodPerformanceEntry.upazila.label" default="Upazila : " /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show" id="${unionPorishodPerformanceEntryInstance?.upazila?.id}">${unionPorishodPerformanceEntryInstance?.upazila?.UPZ_NAME.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${unionPorishodPerformanceEntryInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${unionPorishodPerformanceEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
            </div>
        </div>
    </body>
</html>

				%{--<fieldset class="buttons">--}%
					%{--<g:hiddenField name="id" value="${unionPorishodPerformanceEntryInstance?.id}" />--}%
					%{--<g:link class="edit" action="edit" id="${unionPorishodPerformanceEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				%{--</fieldset>--}%
			%{--</g:form>--}%
		%{--</div>--}%
	%{--</body>--}%
%{--</html>--}%
