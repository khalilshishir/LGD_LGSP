
<%@ page import="planningbudget.Meeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meetingLevel.label', default: 'MeetingLevel')}" />
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
		<div id="show-meetingLevel" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
			<h3><g:message code="default.show.label" args="[entityName]" /></h3>
                    </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
			<ol class="property-list meetingLevel">
			
				<g:if test="${meetingLevelInstance?.levelName}">
				<li class="fieldcontain">
					<span id="levelName-label" class="property-label"><g:message code="meetingLevel.levelName.label" default="Level Name" /></span>
					
						<span class="property-value" aria-labelledby="levelName-label"><g:fieldValue bean="${meetingLevelInstance}" field="levelName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${meetingLevelInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${meetingLevelInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                    </div>
                </div>
		</div>
	</body>
</html>
