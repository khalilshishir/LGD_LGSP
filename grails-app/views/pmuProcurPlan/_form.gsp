<%@ page import="procurement.pmu.PmuProcPlan" %>


<div class="col-xs-6">
<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'SLNO', 'error')} ">
    <label for="SLNO">
        <g:message code="pmuProcurPlan.SLNO.label" default="SLNO"/>

    </label>
    <g:textField class="form-control" name="SLNO" value="${pmuProcurPlanInstance?.SLNO}"/>
</div>
</div>

<div class="col-xs-6">
<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PACKAGES_NO', 'error')} ">
    <label for="PACKAGES_NO">
        <g:message code="pmuProcurPlan.PACKAGES_NO.label" default="PACKAGESNO"/>

    </label>
    <g:textField class="form-control" name="PACKAGES_NO" value="${pmuProcurPlanInstance?.PACKAGES_NO}"/>
</div>
</div>

<div class="col-xs-6">
<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'CONTRACT_DESCRIPTION', 'error')} ">
    <label for="CONTRACT_DESCRIPTION">
        <g:message code="pmuProcurPlan.CONTRACT_DESCRIPTION.label" default="CONTRACTDESCRIPTION"/>

    </label>
    <g:textField class="form-control" name="CONTRACT_DESCRIPTION" value="${pmuProcurPlanInstance?.CONTRACT_DESCRIPTION}"/>
</div>
</div>

<div class="col-xs-6">
<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'UNIT', 'error')} ">
    <label for="UNIT">
        <g:message code="pmuProcurPlan.UNIT.label" default="UNIT"/>

    </label>
    <g:textField class="form-control" name="UNIT" value="${pmuProcurPlanInstance?.UNIT}"/>
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'QTY_NOS', 'error')} ">
    <label for="QTY_NOS">
        <g:message code="pmuProcurPlan.QTY_NOS.label" default="QTYNOS"/>

    </label>
    <g:textField class="form-control" name="QTY_NOS" value="${pmuProcurPlanInstance?.QTY_NOS}"/>
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'ESTIMATED_PRICE', 'error')} required">
    <label for="ESTIMATED_PRICE">
        <g:message code="pmuProcurPlan.ESTIMATED_PRICE.label" default="ESTIMATEDPRICE"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="ESTIMATED_PRICE" type="number" value="${pmuProcurPlanInstance.ESTIMATED_PRICE}" required=""/>
</div>
</div>


<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'PROCEDURE_METHOD', 'error')} ">
    <label for="PROCEDURE_METHOD">
        <g:message code="pmuProcurPlan.PROCEDURE_METHOD.label" default="PROCEDUREMETHOD"/>

    </label>
    <g:textField class="form-control" name="PROCEDURE_METHOD" value="${pmuProcurPlanInstance?.PROCEDURE_METHOD}"/>
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'PROCUREMEN_GUIDLINE', 'error')} ">
    <label for="PROCUREMEN_GUIDLINE">
        <g:message code="pmuProcurPlan.PROCUREMEN_GUIDLINE.label" default="PROCUREMENGUIDLINE"/>

    </label>
    <g:textField class="form-control" name="PROCUREMEN_GUIDLINE" value="${pmuProcurPlanInstance?.PROCUREMEN_GUIDLINE}"/>
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'PRIORS', 'error')} ">
    <label for="PRIORS">
        <g:message code="pmuProcurPlan.PRIORS.label" default="PRIORS"/>

    </label>
    <g:textField class="form-control" name="PRIORS" value="${pmuProcurPlanInstance?.PRIORS}"/>
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'PLANNED_DATE', 'error')} required">
    <label for="PLANNED_DATE">
        <g:message code="pmuProcurPlan.PLANNED_DATE.label" default="PLANNEDDATE"/>
        <span class="required-indicator">*</span>
    </label>
    <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcurPlanInstance?.PLANNED_DATE)}" data-close="true" data-name="PLANNED_DATE"></div>
    %{--<g:datePicker name="PLANNED_DATE" precision="day" value="${pmuProcurPlanInstance?.PLANNED_DATE}"/>--}%
</div>
</div>

<div class="col-xs-6">

<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'PLANNED_DATE_CONTRCT', 'error')} required">
    <label for="PLANNED_DATE_CONTRCT">
        <g:message code="pmuProcurPlan.PLANNED_DATE_CONTRCT.label" default="PLANNEDDATECONTRCT"/>
        <span class="required-indicator">*</span>
    </label>
    <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcurPlanInstance?.PLANNED_DATE_CONTRCT)}" data-close="true" data-name="PLANNED_DATE_CONTRCT"></div>
    %{--<g:datePicker name="PLANNED_DATE_CONTRCT" precision="day" value="${pmuProcurPlanInstance?.PLANNED_DATE_CONTRCT}"/>--}%
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'PLANNED_DATE_DELIVARY', 'error')} required">
    <label for="PLANNED_DATE_DELIVARY">
        <g:message code="pmuProcurPlan.PLANNED_DATE_DELIVARY.label" default="PLANNEDDATEDELIVARY"/>
        <span class="required-indicator">*</span>
    </label>
    <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcurPlanInstance?.PLANNED_DATE_DELIVARY)}" data-close="true" data-name="PLANNED_DATE_DELIVARY"></div>
    %{--<g:datePicker class="form-control" name="PLANNED_DATE_DELIVARY" precision="day" value="${pmuProcurPlanInstance?.PLANNED_DATE_DELIVARY}"/>--}%
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'NAME_OF_SUPPLIER', 'error')} ">
    <label for="NAME_OF_SUPPLIER">
        <g:message code="pmuProcurPlan.NAME_OF_SUPPLIER.label" default="NAMEOFSUPPLIER"/>

    </label>
    <g:textField class="form-control" name="NAME_OF_SUPPLIER" value="${pmuProcurPlanInstance?.NAME_OF_SUPPLIER}"/>
</div>
</div>

<div class="col-xs-6">
<div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'PROCESS_PROCUREMENT', 'error')} ">
    <label for="PROCESS_PROCUREMENT">
        <g:message code="pmuProcurPlan.PROCESS_PROCUREMENT.label" default="PROCESSPROCUREMENT"/>

    </label>
    <g:textField class="form-control" name="PROCESS_PROCUREMENT" value="${pmuProcurPlanInstance?.PROCESS_PROCUREMENT}"/>
</div>
</div>
