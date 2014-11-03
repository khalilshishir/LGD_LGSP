
<%@ page import="hrms.HrLookup" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrLookup.label', default: 'Lookup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hrLookup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		%{--<div id="show-hrLookup" class="content scaffold-show" role="main">--}%
        <div id="wrapper">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>


        <g:form>
            <fieldset class="buttons">
                <g:hiddenField name="id" value="${hrLookupInstance?.id}" />
                <g:link class="edit" action="edit" id="${hrLookupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
        </g:form>


			<ol class="property-list hrLookup">
			
				<g:if test="${hrLookupInstance?.lookupValue}">
				<li class="fieldcontain">
					<span id="lookupValue-label" class="property-label"><g:message code="hrLookup.lookupValue.label" default="Lookup Value:" /></span>
					
						<span class="property-value" aria-labelledby="lookupValue-label"><g:fieldValue bean="${hrLookupInstance}" field="lookupValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrLookupInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="hrLookup.isActive.label" default="Is Active:" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${hrLookupInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrLookupInstance?.hrLookupTypeIdLookupType}">
				<li class="fieldcontain">
					<span id="hrLookupTypeIdLookupType-label" class="property-label"><g:message code="hrLookup.hrLookupTypeIdLookupType.label" default="Lookup Type:" /></span>
					
						<span class="property-value" aria-labelledby="hrLookupTypeIdLookupType-label">%{--<g:link controller="hrLookupType" action="show" id="${hrLookupInstance?.hrLookupTypeIdLookupType?.id}">--}%${hrLookupInstance?.hrLookupTypeIdLookupType?.encodeAsHTML()}%{--</g:link>--}%</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${hrLookupInstance?.id}" />
					<g:link class="edit" action="edit" id="${hrLookupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
