
<%@ page import="lookUp.AllLookup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'allLookup.label', default: 'AllLookup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-allLookup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-allLookup" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list allLookup">
			
				<g:if test="${allLookupInstance?.lookup_name}">
				<li class="fieldcontain">
					<span id="lookup_name-label" class="property-label"><g:message code="allLookup.lookup_name.label" default="Lookupname" /></span>
					
						<span class="property-value" aria-labelledby="lookup_name-label"><g:fieldValue bean="${allLookupInstance}" field="lookup_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${allLookupInstance?.allLookup}">
				<li class="fieldcontain">
					<span id="allLookup-label" class="property-label"><g:message code="allLookup.allLookup.label" default="All Lookup" /></span>
					
						<g:each in="${allLookupInstance.allLookup}" var="a">
						<span class="property-value" aria-labelledby="allLookup-label"><g:link controller="allLookup" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${allLookupInstance?.parentIdAllLookup}">
				<li class="fieldcontain">
					<span id="parentIdAllLookup-label" class="property-label"><g:message code="allLookup.parentIdAllLookup.label" default="Parent Id All Lookup" /></span>
					
						<span class="property-value" aria-labelledby="parentIdAllLookup-label"><g:link controller="lookup" action="show" id="${allLookupInstance?.parentIdAllLookup?.id}">${allLookupInstance?.parentIdAllLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${allLookupInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${allLookupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>

