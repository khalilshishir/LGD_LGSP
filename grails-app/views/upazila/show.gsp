
<%@ page import="settings.Upazila" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upazila.label', default: 'Upazila')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-upazila" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

		<div id="show-upazila" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>


            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>


            <div class="panel-body">
			<ol class="property-list upazila">


				<g:if test="${upazilaInstance?.UPZ_ID}">
				<li class="fieldcontain">
					<span id="UPZ_ID-label" class="property-label"><g:message code="upazila.UPZ_ID.label" default="Upazila ID: " /></span>
					
						<span class="property-value" aria-labelledby="UPZ_ID-label"><g:fieldValue bean="${upazilaInstance}" field="UPZ_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upazilaInstance?.UPZ_NAME}">
				<li class="fieldcontain">
					<span id="UPZ_NAME-label" class="property-label"><g:message code="upazila.UPZ_NAME.label" default="Upazila Name: " /></span>
					
						<span class="property-value" aria-labelledby="UPZ_NAME-label"><g:fieldValue bean="${upazilaInstance}" field="UPZ_NAME"/></span>
					
				</li>
				</g:if>

				<g:if test="${upazilaInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="upazila.district.label" default="District: " /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${upazilaInstance?.district?.id}">${upazilaInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${upazilaInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="upazila.division.label" default="Division: " /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${upazilaInstance?.division?.id}">${upazilaInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${upazilaInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${upazilaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
    </body>
</html>
