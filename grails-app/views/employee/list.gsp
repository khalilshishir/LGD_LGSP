
<%@ page import="payroll.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-employee" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="EMPLOYEE_ID" title="${message(code: 'employee.EMPLOYEE_ID.label', default: 'Employee ID')}" />
					
						<g:sortableColumn property="EMPLOYEE_NAME" title="${message(code: 'employee.EMPLOYEE_NAME.label', default: 'Employee Name')}" />
					
						<g:sortableColumn property="DESIGNATION_ID" title="${message(code: 'employee.DESIGNATION_ID.label', default: 'Designation ID')}" />
					
						<g:sortableColumn property="DEPARTMENT_ID" title="${message(code: 'employee.DEPARTMENT_ID.label', default: 'Department ID')}" />

                        <th><g:message code="employee.pic_.label" default="Picture" /></th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "EMPLOYEE_ID")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "EMPLOYEE_NAME")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "DESIGNATION_ID")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "DEPARTMENT_ID")}</td>

                        <td><g:link action="show" id="${employeeInstance.id}"><g:img uri="/images/repository/Employee/PIC_/${employeeInstance.pic_url_}" width="50" height="50"/></g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			%{--<div class="pagination">
				<g:paginate total="${employeeInstanceTotal}" />
			</div>--}%
		</div>
	</body>
</html>
