<%@ page import="planningbudget.BudgetIncomeMasterHead" %>


<div class="col-xs-6">
    <div class="form-group">
        <label for="masterHeadCode">
            <g:message code="planningbudgetIncomeMasterHead.masterHeadCode.label" default="Master Head ID" />
        </label>
        <g:textField class="form-control" name="masterHeadCode" value="${planningbudgetIncomeMasterHeadInstance?.masterHeadCode}"/>
    </div>

</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="masterHeadName">
            <g:message code="planningbudgetIncomeMasterHead.masterHeadName.label" default="Master Head Name" />
        </label>
        <g:textField class="form-control" name="masterHeadName" value="${planningbudgetIncomeMasterHeadInstance?.masterHeadName}"/>

    </div>
</div>



