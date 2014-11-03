
<%@ page import="planningbudget.Meeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meeting.label', default: 'Meeting')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-meeting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-meeting" class="content scaffold-list" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
			<h3><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="subject" title="${message(code: 'meeting.subject.label', default: 'Subject')}" />
					
						<th><g:message code="meeting.meetingLevel.label" default="Meeting Level" /></th>
					
						<g:sortableColumn property="meetingDate" title="${message(code: 'meeting.meetingDate.label', default: 'Meeting Date')}" />
					
						<g:sortableColumn property="startTIme" title="${message(code: 'meeting.startTIme.label', default: 'Start Time')}" />
					
						<g:sortableColumn property="endTime" title="${message(code: 'meeting.endTime.label', default: 'End Time')}" />

                        <g:sortableColumn property="unionParishad" title="${message(code: 'meeting.endTime.label', default: 'Union Parishad')}" />

                        <g:sortableColumn property="word" title="${message(code: 'meeting.endTime.label', default: 'Word')}" />
					
						<g:sortableColumn property="numberOfAttendent" title="${message(code: 'meeting.numberOfAttendent.label', default: 'Number Of Attendent')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${meetingInstanceList}" status="i" var="meetingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${meetingInstance.id}">${fieldValue(bean: meetingInstance, field: "subject")}</g:link></td>
					
						<td>${fieldValue(bean: meetingInstance, field: "meetingLevel")}</td>
					
						<td><g:formatDate format="dd/MM/yyyy" date="${meetingInstance.meetingDate}" /></td>
					
						<td><g:formatDate format="hh:mm a" type="time" date="${meetingInstance.startTime}" /></td>
					
						<td><g:formatDate format="hh:mm a" type="time" date="${meetingInstance.endTime}" /></td>

                        <td>${fieldValue(bean: meetingInstance, field: "unionParishad.UP_NAME")}</td>

                        <td>${fieldValue(bean: meetingInstance, field: "ward.WARD_NO")}</td>
					
						<td>${fieldValue(bean: meetingInstance, field: "numberOfAttendent")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${meetingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
