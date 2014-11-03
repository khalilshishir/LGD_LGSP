
<%@ page import="payroll.Department" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-department" class=" scaffold-list" role="main">
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

						<g:sortableColumn property="deptId" title="${message(code: 'department.deptId.label', default: 'Department Id')}" />

						<g:sortableColumn property="deptName" title="${message(code: 'department.deptName.label', default: 'Department Name')}" />

						<g:sortableColumn property="is_active" title="${message(code: 'department.is_active.label', default: 'Active')}" />

					</tr>
				</thead>
				<tbody>
				%{--<g:each in="${departmentInstanceList}" status="i" var="departmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
                <g:each in="${departmentInstanceList}"  var="departmentInstance">
                    <tr>

						<td><g:link action="show" id="${departmentInstance.id}">${fieldValue(bean: departmentInstance, field: "deptId")}</g:link></td>

						<td>${fieldValue(bean: departmentInstance, field: "deptName")}</td>

						<td><g:formatBoolean boolean="${departmentInstance.is_active}" /></td>
                        %{--<td><span class="glyphicon glyphicon-search"></span></td>--}%

					</tr>
				</g:each>
				</tbody>
			</table>






			%{--<div class="pagination">
				<g:paginate total="${departmentInstanceTotal}" />
			</div>--}%
		</div>
    %{--<script>
        jQuery(document).ready(function () {
            $('#example').dataTable();

        });

    </script>--}%
	</body>
</html>
