
<%@ page import="payroll.Attendance_Process" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance_Process.label', default: 'Attendance_Process')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-attendance_Process" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-attendance_Process" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="ATTN_MONTH" title="${message(code: 'attendance_Process.ATTN_MONTH.label', default: 'Attendance Month')}" />
					
						<g:sortableColumn property="ATTN_YEAR" title="${message(code: 'attendance_Process.ATTN_YEAR.label', default: 'Attendance Year')}" />
					
						<g:sortableColumn property="EMPLOYEE_ID" title="${message(code: 'attendance_Process.EMPLOYEE_ID.label', default: 'Employee ID')}" />
					
						<g:sortableColumn property="CARD_NO" title="${message(code: 'attendance_Process.CARD_NO.label', default: 'Card No')}" />

                        <g:sortableColumn property="EMPLOYEE_NAME" title="${message(code: 'attendance_Process.EMPLOYEE_NAME.label', default: 'Employee Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${attendance_ProcessInstanceList}" status="i" var="attendance_ProcessInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${attendance_ProcessInstance.id}">${fieldValue(bean: attendance_ProcessInstance, field: "ATTN_MONTH")}</g:link></td>
					
						<td>${fieldValue(bean: attendance_ProcessInstance, field: "ATTN_YEAR")}</td>
					
						<td>${fieldValue(bean: attendance_ProcessInstance, field: "EMPLOYEE_ID")}</td>
					
						<td>${fieldValue(bean: attendance_ProcessInstance, field: "CARD_NO")}</td>
					
						<td>${fieldValue(bean: attendance_ProcessInstance, field: "EMPLOYEE_NAME")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${attendance_ProcessInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
