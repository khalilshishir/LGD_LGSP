
<%@ page import="planningbudget.BudgetIncomeMasterHead" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'budgetIncomeMasterHead.label', default: 'UP Income Master Head')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>

        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">

            <thead>
					<tr>

						<g:sortableColumn property="masterHeadName" title="${message(code: 'budgetIncomeMasterHead.masterHeadName.label', default: 'Master Head Name')}" />

						<g:sortableColumn property="masterHeadCode" title="${message(code: 'budgetIncomeMasterHead.masterHeadCode.label', default: 'Master Head Code')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${budgetIncomeMasterHeadInstanceList}" status="i" var="budgetIncomeMasterHeadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${budgetIncomeMasterHeadInstance.id}">${fieldValue(bean: budgetIncomeMasterHeadInstance, field: "masterHeadName")}</g:link></td>

						<td>${fieldValue(bean: budgetIncomeMasterHeadInstance, field: "masterHeadCode")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${budgetIncomeMasterHeadInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
