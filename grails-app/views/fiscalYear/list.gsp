
<%@ page import="planningbudget.FiscalYear" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fiscalYear.label', default: 'Fiscal Year')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-fiscalYear" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed" >
                <thead>
                <tr>
					
						<g:sortableColumn property="name" title="${message(code: 'fiscalYear.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="startYear" title="${message(code: 'fiscalYear.startYear.label', default: 'Start Year')}" />
					
						<g:sortableColumn property="endYear" title="${message(code: 'fiscalYear.endYear.label', default: 'End Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fiscalYearInstanceList}" status="i" var="fiscalYearInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fiscalYearInstance.id}">${fieldValue(bean: fiscalYearInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${fiscalYearInstance.startYear}" /></td>
					
						<td><g:formatDate date="${fiscalYearInstance.endYear}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${fiscalYearInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
