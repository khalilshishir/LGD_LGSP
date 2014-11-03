
<%@ page import="procurement.pmu.MeetingCommittee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meetingCommittee.label', default: 'MeetingCommittee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-meetingCommittee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-meetingCommittee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="meeting_code" title="${message(code: 'meetingCommittee.meeting_code.label', default: 'Meetingcode')}" />
					
						<g:sortableColumn property="met_name" title="${message(code: 'meetingCommittee.met_name.label', default: 'Metname')}" />
					
						<g:sortableColumn property="createdate" title="${message(code: 'meetingCommittee.createdate.label', default: 'Createdate')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'meetingCommittee.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="createby" title="${message(code: 'meetingCommittee.createby.label', default: 'Createby')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${meetingCommitteeInstanceList}" status="i" var="meetingCommitteeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${meetingCommitteeInstance.id}">${fieldValue(bean: meetingCommitteeInstance, field: "meeting_code")}</g:link></td>
					
						<td>${fieldValue(bean: meetingCommitteeInstance, field: "met_name")}</td>
					
						<td><g:formatDate date="${meetingCommitteeInstance.createdate}" /></td>
					
						<td><g:formatBoolean boolean="${meetingCommitteeInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: meetingCommitteeInstance, field: "createby")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${meetingCommitteeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
