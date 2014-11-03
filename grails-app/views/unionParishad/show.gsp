
<%@ page import="settings.UnionParishad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unionParishad.label', default: 'UnionParishad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-unionParishad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

        <div id="show-unionParishad" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div class="panel-body">

			<ol class="property-list unionParishad">
			
				<g:if test="${unionParishadInstance?.UP_ID}">
				<li class="fieldcontain">
					<span id="UP_ID-label" class="property-label"><g:message code="unionParishad.UP_ID.label" default="UP ID : " /></span>
					
						<span class="property-value" aria-labelledby="UP_ID-label"><g:fieldValue bean="${unionParishadInstance}" field="UP_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionParishadInstance?.UP_NAME}">
				<li class="fieldcontain">
					<span id="UP_NAME-label" class="property-label"><g:message code="unionParishad.UP_NAME.label" default="UP Name : " /></span>
					
						<span class="property-value" aria-labelledby="UP_NAME-label"><g:fieldValue bean="${unionParishadInstance}" field="UP_NAME"/></span>
					
				</li>
				</g:if>
			
				%{--<g:if test="${unionParishadInstance?.CREATED_BY}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="CREATED_BY-label" class="property-label"><g:message code="unionParishad.CREATED_BY.label" default="CREATEDBY" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${unionParishadInstance}" field="CREATED_BY"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${unionParishadInstance?.CREATED_DATE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="CREATED_DATE-label" class="property-label"><g:message code="unionParishad.CREATED_DATE.label" default="CREATEDDATE" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${unionParishadInstance?.CREATED_DATE}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			
				%{--<g:if test="${unionParishadInstance?.UPDATED_BY}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="UPDATED_BY-label" class="property-label"><g:message code="unionParishad.UPDATED_BY.label" default="UPDATEDBY" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${unionParishadInstance}" field="UPDATED_BY"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${unionParishadInstance?.UPDATED_DATE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="UPDATED_DATE-label" class="property-label"><g:message code="unionParishad.UPDATED_DATE.label" default="UPDATEDDATE" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="UPDATED_DATE-label"><g:formatDate date="${unionParishadInstance?.UPDATED_DATE}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%

                <g:if test="${unionParishadInstance?.upazila}">
                    <li class="fieldcontain">
                        <span id="upazila-label" class="property-label"><g:message code="unionParishad.upazila.label" default="Upazila : " /></span>

                        <span class="property-value" aria-labelledby="upazila-label">
                            <g:link controller="upazila" action="show" id="${unionParishadInstance?.upazila?.id}">
                                ${unionParishadInstance?.upazila?.UPZ_NAME.encodeAsHTML()}
                            </g:link>
                        </span>

                    </li>
                </g:if>

				<g:if test="${unionParishadInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="unionParishad.district.label" default="District : " /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${unionParishadInstance?.district?.id}">${unionParishadInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unionParishadInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="unionParishad.division.label" default="Division : " /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${unionParishadInstance?.division?.id}">${unionParishadInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${unionParishadInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${unionParishadInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
    </body>
</html>
