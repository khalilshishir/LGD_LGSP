
<%@ page import="settings.Ward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ward.label', default: 'Ward')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-ward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

        <div id="show-ward" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div class="panel-body">

			<ol class="property-list ward">
			

			
				<g:if test="${wardInstance?.WARD_NO}">
				<li class="fieldcontain">
					<span id="WARD_NO-label" class="property-label"><g:message code="ward.WARD_NO.label" default="Ward No: " /></span>
					
						<span class="property-value" aria-labelledby="WARD_NO-label"><g:fieldValue bean="${wardInstance}" field="WARD_NO"/></span>
					
				</li>
				</g:if>
				<g:if test="${wardInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="ward.district.label" default="District: " /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${wardInstance?.district?.id}">${wardInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${wardInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="ward.division.label" default="Division: " /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${wardInstance?.division?.id}">${wardInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${wardInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="ward.unionParishad.label" default="Union Parishad: " /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${wardInstance?.unionParishad?.id}">${wardInstance?.unionParishad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${wardInstance?.upazila}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="ward.upazila.label" default="Upazila: " /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show" id="${wardInstance?.upazila?.id}">${wardInstance?.upazila?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${wardInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${wardInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
    </body>
</html>
