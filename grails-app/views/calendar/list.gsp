
<%@ page import="payroll.Calendar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendar.label', default: 'Calendar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-calendar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-calendar" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
					
						<g:sortableColumn property="HR_CALENDAR_ID" title="${message(code: 'calendar.HR_CALENDAR_ID.label', default: 'HR Calendar ID')}" />
					
						<g:sortableColumn property="CALENDAR_YEAR" title="${message(code: 'calendar.CALENDAR_YEAR.label', default: 'Calendar Year')}" />
					
						<g:sortableColumn property="START_MONTH" title="${message(code: 'calendar.START_MONTH.label', default: 'Start Month')}" />
					
						<g:sortableColumn property="END_MONTH" title="${message(code: 'calendar.END_MONTH.label', default: 'End Month')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${calendarInstanceList}" status="i" var="calendarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${calendarInstance.id}">${fieldValue(bean: calendarInstance, field: "HR_CALENDAR_ID")}</g:link></td>
					
						<td>${fieldValue(bean: calendarInstance, field: "CALENDAR_YEAR")}</td>
					
						<td>${fieldValue(bean: calendarInstance, field: "START_MONTH")}</td>
					
						<td>${fieldValue(bean: calendarInstance, field: "END_MONTH")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${calendarInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
