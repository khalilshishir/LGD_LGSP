<%@ page import="settings.UnionParishad; training.TrainingBudget" %>





<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINING_BUDGET_ID"><g:message code="trainingBudget.TRAINING_BUDGET_ID.label" default="Training Budget ID" /></label>
            <g:textField class="form-control" name="TRAINING_BUDGET_ID" value="${trainingBudgetInstance?.TRAINING_BUDGET_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TRAINING_BUDGET_AMOUNT"><g:message code="trainingBudget.TRAINING_BUDGET_AMOUNT.label" default="Training Budget Amount" /></label>
            <g:textField class="form-control" name="TRAINING_BUDGET_AMOUNT" value="${trainingBudgetInstance.TRAINING_BUDGET_AMOUNT}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINING_BUDGET_AMOUNT_BN"><g:message code="trainingBudget.TRAINING_BUDGET_AMOUNT_BN.label" default="টাকার পরিমাণ" /></label>
            <g:textField class="form-control" name="TRAINING_BUDGET_AMOUNT_BN" value="${trainingBudgetInstance.TRAINING_BUDGET_AMOUNT_BN}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="UNION_PARISHAD"><g:message code="trainingBudget.UNION_PARISHAD.label" default="Union Parishar Name" /></label>
            <g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" value="${trainingBudgetInstance?.UNION_PARISHAD?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>