
<%@ page import="settings.MemberDesignation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memberDesignation.label', default: 'MemberDesignation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-memberDesignation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-memberDesignation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list memberDesignation">
			
				<g:if test="${memberDesignationInstance?.NAME}">
				<li class="fieldcontain">
					<span id="NAME-label" class="property-label"><g:message code="memberDesignation.NAME.label" default="NAME" /></span>
					
						<span class="property-value" aria-labelledby="NAME-label"><g:fieldValue bean="${memberDesignationInstance}" field="NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberDesignationInstance?.CREATED_BY}">
				<li class="fieldcontain">
					<span id="CREATED_BY-label" class="property-label"><g:message code="memberDesignation.CREATED_BY.label" default="CREATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${memberDesignationInstance}" field="CREATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberDesignationInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="memberDesignation.CREATED_DATE.label" default="CREATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${memberDesignationInstance?.CREATED_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberDesignationInstance?.UPDATED_BY}">
				<li class="fieldcontain">
					<span id="UPDATED_BY-label" class="property-label"><g:message code="memberDesignation.UPDATED_BY.label" default="UPDATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${memberDesignationInstance}" field="UPDATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberDesignationInstance?.UPDATED_DATE}">
				<li class="fieldcontain">
					<span id="UPDATED_DATE-label" class="property-label"><g:message code="memberDesignation.UPDATED_DATE.label" default="UPDATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_DATE-label"><g:formatDate date="${memberDesignationInstance?.UPDATED_DATE}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${memberDesignationInstance?.id}" />
					<g:link class="edit" action="edit" id="${memberDesignationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
