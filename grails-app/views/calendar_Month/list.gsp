
<%@ page import="payroll.Calendar_Month" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendar_Month.label', default: 'Calendar_Month')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-calendar_Month" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-calendar_Month" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="HR_CALENDAR_MONTH_ID" title="${message(code: 'calendar_Month.HR_CALENDAR_MONTH_ID.label', default: 'HR Calendar Month ID')}" />
					
						<g:sortableColumn property="START_DATE" title="${message(code: 'calendar_Month.START_DATE.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="END_DATE" title="${message(code: 'calendar_Month.END_DATE.label', default: 'End Date')}" />
					
						<g:sortableColumn property="PERIOD_NAME" title="${message(code: 'calendar_Month.PERIOD_NAME.label', default: 'Period Name')}" />
					
						<g:sortableColumn property="HR_CALENDAR_ID" title="${message(code: 'calendar_Month.HR_CALENDAR_ID.label', default: 'HR Calendar ID')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${calendar_MonthInstanceList}" status="i" var="calendar_MonthInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${calendar_MonthInstance.id}">${fieldValue(bean: calendar_MonthInstance, field: "HR_CALENDAR_MONTH_ID")}</g:link></td>
					
						<td><g:formatDate date="${calendar_MonthInstance.START_DATE}" /></td>
					
						<td><g:formatDate date="${calendar_MonthInstance.END_DATE}" /></td>
					
						<td>${fieldValue(bean: calendar_MonthInstance, field: "PERIOD_NAME")}</td>
					
						<td>${fieldValue(bean: calendar_MonthInstance, field: "HR_CALENDAR_ID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${calendar_MonthInstanceTotal}" />
			</div>
        </div>
    </body>
</html>