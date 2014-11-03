
<%@ page import="payroll.Monthly_Salary_Process" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-monthly_Salary_Process" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-monthly_Salary_Process" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="SALARY_MONTH" title="${message(code: 'monthly_Salary_Process.SALARY_MONTH.label', default: 'Salary Month')}" />
					
						<g:sortableColumn property="MONTH_NAME" title="${message(code: 'monthly_Salary_Process.MONTH_NAME.label', default: 'Month Name')}" />
					
						<g:sortableColumn property="YEAR_NAME" title="${message(code: 'monthly_Salary_Process.YEAR_NAME.label', default: 'Year Name')}" />

                        <g:sortableColumn property="EMPLOYEE_ID" title="${message(code: 'monthly_Salary_Process.EMPLOYEE_ID.label', default: 'Employee ID')}" />
					
						<g:sortableColumn property="CARD_NO" title="${message(code: 'monthly_Salary_Process.CARD_NO.label', default: 'Card No')}" />

                        <g:sortableColumn property="DEPARTMENT_ID" title="${message(code: 'monthly_Salary_Process.DEPARTMENT_ID.label', default: 'Department ID')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${monthly_Salary_ProcessInstanceList}" status="i" var="monthly_Salary_ProcessInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${monthly_Salary_ProcessInstance.id}">${fieldValue(bean: monthly_Salary_ProcessInstance, field: "SALARY_MONTH")}</g:link></td>
					
						<td>${fieldValue(bean: monthly_Salary_ProcessInstance, field: "MONTH_NAME")}</td>
					
						<td>${fieldValue(bean: monthly_Salary_ProcessInstance, field: "YEAR_NAME")}</td>
					
						<td>${fieldValue(bean: monthly_Salary_ProcessInstance, field: "EMPLOYEE_ID")}</td>
					
						<td>${fieldValue(bean: monthly_Salary_ProcessInstance, field: "CARD_NO")}</td>
					
						<td>${fieldValue(bean: monthly_Salary_ProcessInstance, field: "DEPARTMENT_ID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${monthly_Salary_ProcessInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
