
<%@ page import="payroll.Employee_Leave" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee_Leave.label', default: 'Employee_Leave')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-employee_Leave" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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

		<div id="list-employee_Leave" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			%{--<table class="table table-striped">--}%
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">

				<thead>
					<tr>
					
						<th><g:message code="employee_Leave.EMPLOYEE_ID.label" default="Employee Name" /></th>
					
						<g:sortableColumn property="CARD_NO" title="${message(code: 'employee_Leave.CARD_NO.label', default: 'Card No')}" />
					
						<g:sortableColumn property="APPLICATION_DATE" title="${message(code: 'employee_Leave.APPLICATION_DATE.label', default: 'Application Date')}" />
					
						<th><g:message code="employee_Leave.LEAVE_TYPE_ID.label" default="Leave Type" /></th>
					
						<g:sortableColumn property="START_DATE" title="${message(code: 'employee_Leave.START_DATE.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="END_DATE" title="${message(code: 'employee_Leave.END_DATE.label', default: 'End Date')}" />
					
					</tr>
				</thead>
				<tbody>
				%{--<g:each in="${i}" status="i" var="employee_LeaveInstance">--}%
                <g:each in="${employee_LeaveInstanceList}" status="i" var="employee_LeaveInstance">

					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employee_LeaveInstance.id}">${fieldValue(bean: employee_LeaveInstance, field: "EMPLOYEE_ID")}</g:link></td>
					
						<td>${fieldValue(bean: employee_LeaveInstance, field: "CARD_NO")}</td>
					
						<td><g:formatDate format="dd/MM/yyyy" date="${employee_LeaveInstance.APPLICATION_DATE}" /></td>
					
						<td>${fieldValue(bean: employee_LeaveInstance, field: "LEAVE_TYPE_ID")}</td>
					
						<td><g:formatDate format="dd/MM/yyyy" date="${employee_LeaveInstance.START_DATE}" /></td>

						<td><g:formatDate format="dd/MM/yyyy" date="${employee_LeaveInstance.END_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			%{--<div class="pagination">
				<g:paginate total="${employee_LeaveInstanceTotal}" />
			</div>--}%
		</div>
	</body>
</html>
