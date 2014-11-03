
<%@ page import="training.TrainingBudget" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingBudget.label', default: 'TrainingBudget')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainingBudget" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
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
					
						<g:sortableColumn property="TRAINING_BUDGET_ID" title="${message(code: 'trainingBudget.TRAINING_BUDGET_ID.label', default: 'Training Budget ID')}" />
					
						<g:sortableColumn property="TRAINING_BUDGET_AMOUNT" title="${message(code: 'trainingBudget.TRAINING_BUDGET_AMOUNT.label', default: 'Training Budget Amount')}" />

						<g:sortableColumn property="UNION_PARISHAD" title="${message(code: 'trainingBudget.UNION_PARISHAD.label', default: 'Union Parishad Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingBudgetInstanceList}" status="i" var="trainingBudgetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingBudgetInstance.id}">${fieldValue(bean: trainingBudgetInstance, field: "TRAINING_BUDGET_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainingBudgetInstance, field: "TRAINING_BUDGET_AMOUNT")}</td>
					
						<td>${fieldValue(bean: trainingBudgetInstance, field: "UNION_PARISHAD")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingBudgetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
