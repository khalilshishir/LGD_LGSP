

<%@ page import="hrms.HrDepartment" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrDepartment.label', default: 'Department')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
    <div id="list-hrDepartment" class="content scaffold-list" role="main">
        %{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status" style="font-family: arial, helvetica, verdana, sans-serif;font-weight: bold; color: #008000;margin: 1%;">${flash.message}</div>
        </g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed" >
            <thead>
            <tr>
                <g:sortableColumn property="departmentName"
                                  title="${message(code: 'hrDepartment.departmentName.label', default: 'Department Name')}"/>

                <g:sortableColumn property="shortName"
                                  title="${message(code: 'hrDepartment.shortName.label', default: 'Short Name')}"/>

                <g:sortableColumn property="isActive"
                                  title="${message(code: 'hrDepartment.isActive.label', default: 'Active Status')}"/>

                <g:sortableColumn property="sortOrder"
                                  title="${message(code: 'hrDepartment.sortOrder.label', default: 'Sorting Order')}"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${hrDepartmentInstanceList}" status="i" var="hrDepartmentInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show" id="${hrDepartmentInstance.id}">
                        ${fieldValue(bean: hrDepartmentInstance, field: "departmentName")}</g:link>
                    </td>
                    <td>${fieldValue(bean: hrDepartmentInstance, field: "shortName")}</td>
                    <td>
                        %{--${fieldValue(bean: hrDepartmentInstance, field: "isActive")}--}%
                        <g:if test="${hrDepartmentInstance?.isActive==true}">
                            Yes
                        </g:if>
                        <g:elseif test="${hrDepartmentInstance?.isActive==false}">
                            No
                        </g:elseif>
                        <g:else>

                        </g:else>
                    </td>
                    <td>${fieldValue(bean: hrDepartmentInstance, field: "sortOrder")}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
	</body>
</html>



