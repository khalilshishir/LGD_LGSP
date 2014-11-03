<%@ page import="planningbudget.BudgetExpenditureMasterHead" %>


<div class="col-xs-6">
    <div class="form-group">
        <label for="masterHeadCode">
            <g:message code="budgetExpenditureMasterHead.masterHeadCode.label" default="Master Head ID" />
            %{--<g:message code="budgetIncomeMasterHead.masterHeadCode.label" default="Master Head Code" />--}%
        </label>
        <g:textField class="form-control" name="masterHeadCode" value="${budgetExpenditureMasterHeadInstance?.masterHeadCode}"/>
        %{--<g:textField class="form-control" name="masterHeadCode" value="${budgetIncomeMasterHeadInstance?.masterHeadCode}"/>--}%
    </div>

</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="masterHeadName">
            <g:message code="budgetExpenditureMasterHead.masterHeadName.label" default="Master Head Name" />
            %{--<g:message code="budgetIncomeMasterHead.masterHeadName.label" default="Master Head Name" />--}%
        </label>
        <g:textField class="form-control" name="masterHeadName" value="${budgetExpenditureMasterHeadInstance?.masterHeadName}"/>
        %{--<g:textField class="form-control" name="masterHeadName" value="${budgetIncomeMasterHeadInstance?.masterHeadName}"/>--}%

    </div>
</div>
