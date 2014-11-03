
<%@ page import="payroll.Attendance_Info" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance_Info.label', default: 'Attendance_Info')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-attendance_Info" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-attendance_Info" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="FILE_NAME" title="${message(code: 'attendance_Info.FILE_NAME.label', default: 'File Name')}" />
					
						<g:sortableColumn property="ROW_DATA" title="${message(code: 'attendance_Info.ROW_DATA.label', default: 'Row Data')}" />
					
						<g:sortableColumn property="TERMINAL_ID" title="${message(code: 'attendance_Info.TERMINAL_ID.label', default: 'Terminal ID')}" />
					
						<g:sortableColumn property="DAY" title="${message(code: 'attendance_Info.DAY.label', default: 'Day')}" />
					
						<g:sortableColumn property="MONTH" title="${message(code: 'attendance_Info.MONTH.label', default: 'Month')}" />
					
						<g:sortableColumn property="HOUR" title="${message(code: 'attendance_Info.HOUR.label', default: 'Hour')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${attendance_InfoInstanceList}" status="i" var="attendance_InfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${attendance_InfoInstance.id}">${fieldValue(bean: attendance_InfoInstance, field: "FILE_NAME")}</g:link></td>
					
						<td>${fieldValue(bean: attendance_InfoInstance, field: "ROW_DATA")}</td>
					
						<td>${fieldValue(bean: attendance_InfoInstance, field: "TERMINAL_ID")}</td>
					
						<td>${fieldValue(bean: attendance_InfoInstance, field: "DAY")}</td>
					
						<td>${fieldValue(bean: attendance_InfoInstance, field: "MONTH")}</td>
					
						<td>${fieldValue(bean: attendance_InfoInstance, field: "HOUR")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${attendance_InfoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
