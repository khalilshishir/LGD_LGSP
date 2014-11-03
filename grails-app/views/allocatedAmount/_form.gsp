<%@ page import="grantmanagement.AllocatedAmount" %>

<div class="col-xs-6">
    <div class="form-group">
        <label for="allocatedAmount">
            <g:message code="allocatedAmount.allocatedAmount.label" default="Allocated Amount" />
        </label>
        <g:textField class="form-control" name="allocatedAmount" value="${fieldValue(bean: allocatedAmountInstance, field: 'allocatedAmount')}" required=""/>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="fiscalYear">
            <g:message code="allocatedAmount.fiscalYear.label" default="Fiscal Year" />
            <span class="required-indicator">*</span>
        </label>
        <g:select  class="form-control" id="fiscalYear" name="fiscalYear.id" from="${planningbudget.FiscalYear.list()}" optionKey="id" optionValue="fiscalYear" required="required" value="${allocatedAmountInstance?.fiscalYear?.id}"/>
    </div>
</div>


