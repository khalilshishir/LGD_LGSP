
<%@ page import="grantmanagement.MarkDstribution" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'markDstribution.label', default: 'Mark Dstribution')}" />
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
		<div id="show-markDstribution" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div class="panel-body">
			<ol class="property-list markDstribution">
			
				<g:if test="${markDstributionInstance?.performanceHead}">
				<li class="fieldcontain">
					<span id="performanceHead-label" class="property-label"><g:message code="markDstribution.performanceHead.label" default="Performance Head : " /></span>
					
						<span class="property-value" aria-labelledby="performanceHead-label"><g:link controller="performanceHead" action="show" id="${markDstributionInstance?.performanceHead?.id}">${markDstributionInstance?.performanceHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${markDstributionInstance?.performanceIndicator}">
				<li class="fieldcontain">
					<span id="performanceIndicator-label" class="property-label"><g:message code="markDstribution.performanceIndicator.label" default="Performance Indicator : " /></span>
					
						<span class="property-value" aria-labelledby="performanceIndicator-label"><g:link controller="performanceIndicator" action="show" id="${markDstributionInstance?.performanceIndicator?.id}">${markDstributionInstance?.performanceIndicator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${markDstributionInstance?.rules}">
				<li class="fieldcontain">
					<span id="rules-label" class="property-label"><g:message code="markDstribution.rules.label" default="Rules : " /></span>
					
						<span class="property-value" aria-labelledby="rules-label"><g:fieldValue bean="${markDstributionInstance}" field="rules"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markDstributionInstance?.mark}">
				<li class="fieldcontain">
					<span id="mark-label" class="property-label"><g:message code="markDstribution.mark.label" default="Mark : " /></span>
					
						<span class="property-value" aria-labelledby="mark-label"><g:fieldValue bean="${markDstributionInstance}" field="mark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markDstributionInstance?.slNo}">
				<li class="fieldcontain">
					<span id="slNo-label" class="property-label"><g:message code="markDstribution.slNo.label" default="Sl No : " /></span>
					
						<span class="property-value" aria-labelledby="slNo-label"><g:fieldValue bean="${markDstributionInstance}" field="slNo"/></span>
					
				</li>
				</g:if>
			
			</ol>
                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${markDstributionInstance?.id}" />
                        <g:link class="save btn btn-primary btn-sm" action="edit" id="${markDstributionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
