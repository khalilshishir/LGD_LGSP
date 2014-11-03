
<%@ page import="settings.CommitteeType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'committeeType.label', default: 'CommitteeType')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-committeeType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="show-committeeType" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list committeeType">
			
				<g:if test="${committeeTypeInstance?.NAME}">
				<li class="fieldcontain">
					<span id="NAME-label" class="property-label"><g:message code="committeeType.NAME.label" default="NAME" /></span>
					
						<span class="property-value" aria-labelledby="NAME-label"><g:fieldValue bean="${committeeTypeInstance}" field="NAME"/></span>
					
				</li>
				</g:if>
			%{----}%
				%{--<g:if test="${committeeTypeInstance?.CREATED_BY}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="CREATED_BY-label" class="property-label"><g:message code="committeeType.CREATED_BY.label" default="CREATEDBY" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${committeeTypeInstance}" field="CREATED_BY"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${committeeTypeInstance?.CREATED_DATE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="CREATED_DATE-label" class="property-label"><g:message code="committeeType.CREATED_DATE.label" default="CREATEDDATE" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${committeeTypeInstance?.CREATED_DATE}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${committeeTypeInstance?.UPDATED_BY}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="UPDATED_BY-label" class="property-label"><g:message code="committeeType.UPDATED_BY.label" default="UPDATEDBY" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${committeeTypeInstance}" field="UPDATED_BY"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${committeeTypeInstance?.UPDATED_DATE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="UPDATED_DATE-label" class="property-label"><g:message code="committeeType.UPDATED_DATE.label" default="UPDATEDDATE" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="UPDATED_DATE-label"><g:formatDate date="${committeeTypeInstance?.UPDATED_DATE}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${committeeTypeInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${committeeTypeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
        </div>
    </div>
    </body>
</html>
