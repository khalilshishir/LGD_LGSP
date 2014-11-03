
<%@ page import="training.TrainingBudget" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingBudget.label', default: 'TrainingBudget')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-trainingBudget" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainingBudget">
			
				<g:if test="${trainingBudgetInstance?.TRAINING_BUDGET_ID}">
				<li class="fieldcontain">
					<span id="TRAINING_BUDGET_ID-label" class="property-label"><g:message code="trainingBudget.TRAINING_BUDGET_ID.label" default="Training Budget ID" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_BUDGET_ID-label"><g:fieldValue bean="${trainingBudgetInstance}" field="TRAINING_BUDGET_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingBudgetInstance?.TRAINING_BUDGET_AMOUNT}">
				<li class="fieldcontain">
					<span id="TRAINING_BUDGET_AMOUNT-label" class="property-label"><g:message code="trainingBudget.TRAINING_BUDGET_AMOUNT.label" default="Training Budget Amount" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_BUDGET_AMOUNT-label"><g:fieldValue bean="${trainingBudgetInstance}" field="TRAINING_BUDGET_AMOUNT"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingBudgetInstance?.TRAINING_BUDGET_AMOUNT_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINING_BUDGET_AMOUNT_BN-label" class="property-label"><g:message code="trainingBudget.TRAINING_BUDGET_AMOUNT_BN.label" default="টাকার পরিমাণ" /></span>

                        <span class="property-value" aria-labelledby="TRAINING_BUDGET_AMOUNT_BN-label"><g:fieldValue bean="${trainingBudgetInstance}" field="TRAINING_BUDGET_AMOUNT_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingBudgetInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="trainingBudget.UNION_PARISHAD.label" default="Union Parishad Name" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:fieldValue bean="${trainingBudgetInstance}" field="UNION_PARISHAD"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainingBudgetInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainingBudgetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
