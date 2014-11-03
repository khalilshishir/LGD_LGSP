<%@ page import="lookUp.AllLookup; lookUp.Lookup" %>

<div class="col-xs-4">
    <div class="form-group">
        <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="চুক্তি মূল্য" /></label>
        %{--<g:select id="UP_PROCUREMENT_MASTER" name="UP_PROCUREMENT_MASTER.id" from="${SchemeInfo.list()}" optionKey="id" optionValue="GRANTED_AMOUNT" required="" value="${advanceAdjustmentInstance?.UP_PROCUREMENT_MASTER?.id}" class="form-control " readonly=""/>--}%
        <g:textField class="form-control" id="GRANTED_AMOUNT" name="GRANTED_AMOUNT" required="" readonly="" value="${grantedAmount}" />
    </div>
</div>

<div class="col-xs-3">
    <div class="form-group">
        <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="পূর্বে কত টাকা অগ্রিম নিয়েছে" /></label>
        %{--<g:select id="UP_PROCUREMENT_MASTER" name="UP_PROCUREMENT_MASTER.id" from="${SchemeInfo.list()}" optionKey="id" optionValue="GRANTED_AMOUNT" required="" value="${advanceAdjustmentInstance?.UP_PROCUREMENT_MASTER?.id}" class="form-control " readonly=""/>--}%
        <g:textField id="location" name="location"  class="form-control" readonly="" value="${previousAdvanceAdjustment}"/>
    </div>
</div>
<div class="col-xs-1">
    <div class="form-group">
        <label><br/></label>
        %{--<span style="font-size: 20px;color: #808080"  class='glyphicon glyphicon-search' onclick="alert('ok');"></span>--}%
        <div class="btn-group">
            <a class="showPreviousAdvanceAdjustment btn btn-warning" id="showPreviousAdvanceAdjustment" referenceId="${fieldValue(bean: advanceAdjustmentInstance, field: "id")}"
               title="Show Previous Advance Adjustment" onclick="showModal();">Show <i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="মজুরি দেয়ার জন্য হাতে আছে" /></label>
        <g:textField id="location" name="location"  class="form-control" readonly="" value="${cashInHandToPayWages}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="বর্তমানে কত টাকা নিতে পারবে" /></label>
        <g:textField id="location" name="location"  class="form-control" readonly="" value="${payableAmount}"/>

    </div>
</div>
