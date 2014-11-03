<%@ page import="procurement.pmu.PmuProcPlan" %>



<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'SLNO', 'error')} ">
    <label for="SLNO">
        <g:message code="pmuProcurPlan.SLNO.label" default="SLNO"/>

    </label>
    <g:textField name="SLNO" value="${pmuProcurPlanInstance?.SLNO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PACKAGES_NO', 'error')} ">
    <label for="PACKAGES_NO">
        <g:message code="pmuProcurPlan.PACKAGES_NO.label" default="PACKAGESNO"/>

    </label>
    <g:textField name="PACKAGES_NO" value="${pmuProcurPlanInstance?.PACKAGES_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'CONTRACT_DESCRIPTION', 'error')} ">
    <label for="CONTRACT_DESCRIPTION">
        <g:message code="pmuProcurPlan.CONTRACT_DESCRIPTION.label" default="CONTRACTDESCRIPTION"/>

    </label>
    <g:textField name="CONTRACT_DESCRIPTION" value="${pmuProcurPlanInstance?.CONTRACT_DESCRIPTION}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'UNIT', 'error')} ">
    <label for="UNIT">
        <g:message code="pmuProcurPlan.UNIT.label" default="UNIT"/>

    </label>
    <g:textField name="UNIT" value="${pmuProcurPlanInstance?.UNIT}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'QTY_NOS', 'error')} ">
    <label for="QTY_NOS">
        <g:message code="pmuProcurPlan.QTY_NOS.label" default="QTYNOS"/>

    </label>
    <g:textField name="QTY_NOS" value="${pmuProcurPlanInstance?.QTY_NOS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'ESTIMATED_PRICE', 'error')} required">
    <label for="ESTIMATED_PRICE">
        <g:message code="pmuProcurPlan.ESTIMATED_PRICE.label" default="ESTIMATEDPRICE"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="ESTIMATED_PRICE" type="number" value="${pmuProcurPlanInstance.ESTIMATED_PRICE}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PROCEDURE_METHOD', 'error')} ">
    <label for="PROCEDURE_METHOD">
        <g:message code="pmuProcurPlan.PROCEDURE_METHOD.label" default="PROCEDUREMETHOD"/>

    </label>
    <g:textField name="PROCEDURE_METHOD" value="${pmuProcurPlanInstance?.PROCEDURE_METHOD}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PROCUREMEN_GUIDLINE', 'error')} ">
    <label for="PROCUREMEN_GUIDLINE">
        <g:message code="pmuProcurPlan.PROCUREMEN_GUIDLINE.label" default="PROCUREMENGUIDLINE"/>

    </label>
    <g:textField name="PROCUREMEN_GUIDLINE" value="${pmuProcurPlanInstance?.PROCUREMEN_GUIDLINE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PRIORS', 'error')} ">
    <label for="PRIORS">
        <g:message code="pmuProcurPlan.PRIORS.label" default="PRIORS"/>

    </label>
    <g:textField name="PRIORS" value="${pmuProcurPlanInstance?.PRIORS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PLANNED_DATE', 'error')} required">
    <label for="PLANNED_DATE">
        <g:message code="pmuProcurPlan.PLANNED_DATE.label" default="PLANNEDDATE"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="PLANNED_DATE" precision="day" value="${pmuProcurPlanInstance?.PLANNED_DATE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PLANNED_DATE_CONTRCT', 'error')} required">
    <label for="PLANNED_DATE_CONTRCT">
        <g:message code="pmuProcurPlan.PLANNED_DATE_CONTRCT.label" default="PLANNEDDATECONTRCT"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="PLANNED_DATE_CONTRCT" precision="day" value="${pmuProcurPlanInstance?.PLANNED_DATE_CONTRCT}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PLANNED_DATE_DELIVARY', 'error')} required">
    <label for="PLANNED_DATE_DELIVARY">
        <g:message code="pmuProcurPlan.PLANNED_DATE_DELIVARY.label" default="PLANNEDDATEDELIVARY"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="PLANNED_DATE_DELIVARY" precision="day" value="${pmuProcurPlanInstance?.PLANNED_DATE_DELIVARY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'NAME_OF_SUPPLIER', 'error')} ">
    <label for="NAME_OF_SUPPLIER">
        <g:message code="pmuProcurPlan.NAME_OF_SUPPLIER.label" default="NAMEOFSUPPLIER"/>

    </label>
    <g:textField name="NAME_OF_SUPPLIER" value="${pmuProcurPlanInstance?.NAME_OF_SUPPLIER}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'PROCESS_PROCUREMENT', 'error')} ">
    <label for="PROCESS_PROCUREMENT">
        <g:message code="pmuProcurPlan.PROCESS_PROCUREMENT.label" default="PROCESSPROCUREMENT"/>

    </label>
    <g:textField name="PROCESS_PROCUREMENT" value="${pmuProcurPlanInstance?.PROCESS_PROCUREMENT}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'CREATE_DATE', 'error')} ">
    <label for="CREATE_DATE">
        <g:message code="pmuProcurPlan.CREATE_DATE.label" default="CREATEDATE"/>

    </label>
    <g:datePicker name="CREATE_DATE" precision="day" value="${pmuProcurPlanInstance?.CREATE_DATE}" default="none"
                  noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'IS_ACTIVE', 'error')} ">
    <label for="IS_ACTIVE">
        <g:message code="pmuProcurPlan.IS_ACTIVE.label" default="ISACTIVE"/>

    </label>
    <g:checkBox name="IS_ACTIVE" value="${pmuProcurPlanInstance?.IS_ACTIVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'CREATE_BY', 'error')} ">
    <label for="CREATE_BY">
        <g:message code="pmuProcurPlan.CREATE_BY.label" default="CREATEBY"/>

    </label>
    <g:field name="CREATE_BY" type="number" value="${pmuProcurPlanInstance.CREATE_BY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'UPDATED_BY', 'error')} ">
    <label for="UPDATED_BY">
        <g:message code="pmuProcurPlan.UPDATED_BY.label" default="UPDATEDBY"/>

    </label>
    <g:field name="UPDATED_BY" type="number" value="${pmuProcurPlanInstance.UPDATED_BY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pmuProcurPlanInstance, field: 'UPDATE_DATE', 'error')} ">
    <label for="UPDATE_DATE">
        <g:message code="pmuProcurPlan.UPDATE_DATE.label" default="UPDATEDATE"/>

    </label>
    <g:datePicker name="UPDATE_DATE" precision="day" value="${pmuProcurPlanInstance?.UPDATE_DATE}" default="none"
                  noSelection="['': '']"/>
</div>




<div class="col-xs-4">
    <div class="form-group">
        <label for="SLNO">
            <g:message code="pmuProcurPlan.SLNO.label" default="SLNO"/>
        </label>
        <g:textField class="form-control" name="SLNO" value="${pmuProcurPlanInstance?.SLNO}"/>

    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="PACKAGES_NO">
            <g:message code="pmuProcurPlan.PACKAGES_NO.label" default="PACKAGES_NO"/>
        </label>
        <g:textField class="form-control" name="PACKAGES_NO" value="${pmuProcurPlanInstance?.PACKAGES_NO}"/>

    </div>
</div>



<div class="col-xs-4">
    <div class="form-group">
        <label for="CONTRACT_DESCRIPTION">
            <g:message code="pmuProcurPlan.CONTRACT_DESCRIPTION.label" default="CONTRACT_DESCRIPTION"/>
        </label>
        <g:textField class="form-control" name="CONTRACT_DESCRIPTION" value="${pmuProcurPlanInstance?.CONTRACT_DESCRIPTION}"/>

    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="UNIT">
            <g:message code="pmuProcurPlan.UNIT.label" default="UNIT"/>
        </label>
        <g:textField class="form-control" name="UNIT" value="${pmuProcurPlanInstance?.UNIT}"/>

    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="QTY_NOS">
            <g:message code="pmuProcurPlan.QTY_NOS.label" default="UNIT"/>
        </label>
        <g:textField class="form-control" name="QTY_NOS" value="${pmuProcurPlanInstance?.QTY_NOS}"/>

    </div>
</div>




<div class="col-xs-4">
    <div class="form-group">
        <label for="QTY_NOS">
            <g:message code="pmuProcurPlan.QTY_NOS.label" default="UNIT"/>
        </label>
        <g:textField class="form-control" name="ESTIMATED_PRICE" value="${pmuProcurPlanInstance?.QTY_NOS}"/>

    </div>
</div>