
<%@ page import="settings.District" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'district.label', default: 'District')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-district" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="show-district" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list district">


				<g:if test="${districtInstance?.DIS_ID}">
				<li class="fieldcontain">
					<span id="DIS_ID-label" class="property-label"><g:message code="district.DIS_ID.label" default="District ID : " /></span>
					
						<span class="property-value" aria-labelledby="DIS_ID-label"><g:fieldValue bean="${districtInstance}" field="DIS_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${districtInstance?.DIS_NAME}">
				<li class="fieldcontain">
					<span id="DIS_NAME-label" class="property-label"><g:message code="district.DIS_NAME.label" default="District Name : " /></span>
					
						<span class="property-value" aria-labelledby="DIS_NAME-label"><g:fieldValue bean="${districtInstance}" field="DIS_NAME"/></span>
					
				</li>
				</g:if>
			

			
				<g:if test="${districtInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="district.division.label" default="Division : " /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${districtInstance?.division?.id}">${districtInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>

			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${districtInstance?.id}" />

                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${districtInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
			</g:form>
            </div>
		</div>
	</body>
</html>
