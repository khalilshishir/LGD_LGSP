
<%@ page import="procurement.pmu.MeetingCommittee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meetingCommittee.label', default: 'MeetingCommittee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-meetingCommittee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-meetingCommittee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list meetingCommittee">
			
				<g:if test="${meetingCommitteeInstance?.meeting_code}">
				<li class="fieldcontain">
					<span id="meeting_code-label" class="property-label"><g:message code="meetingCommittee.meeting_code.label" default="Meetingcode" /></span>
					
						<span class="property-value" aria-labelledby="meeting_code-label"><g:fieldValue bean="${meetingCommitteeInstance}" field="meeting_code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingCommitteeInstance?.met_name}">
				<li class="fieldcontain">
					<span id="met_name-label" class="property-label"><g:message code="meetingCommittee.met_name.label" default="Metname" /></span>
					
						<span class="property-value" aria-labelledby="met_name-label"><g:fieldValue bean="${meetingCommitteeInstance}" field="met_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingCommitteeInstance?.createdate}">
				<li class="fieldcontain">
					<span id="createdate-label" class="property-label"><g:message code="meetingCommittee.createdate.label" default="Createdate" /></span>
					
						<span class="property-value" aria-labelledby="createdate-label"><g:formatDate date="${meetingCommitteeInstance?.createdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingCommitteeInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="meetingCommittee.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${meetingCommitteeInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingCommitteeInstance?.createby}">
				<li class="fieldcontain">
					<span id="createby-label" class="property-label"><g:message code="meetingCommittee.createby.label" default="Createby" /></span>
					
						<span class="property-value" aria-labelledby="createby-label"><g:fieldValue bean="${meetingCommitteeInstance}" field="createby"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${meetingCommitteeInstance?.id}" />
					<g:link class="edit" action="edit" id="${meetingCommitteeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
