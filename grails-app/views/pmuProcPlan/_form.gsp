<%@ page import="lookUp.Lookup; lookUp.AllLookup; procurement.pmu.PmuProcPlan" %>



<div class="col-xs-4">
    <div class="fieldcontain ${hasErrors(bean: pmuProcPlanInstance, field: 'packageNo', 'error')} ">
        <label for="packageNo">
            <g:message code="pmuProcPlan.packageNo.label" default="Package No" />

        </label>
        <g:textField required="" class="form-control" name="packageNo" value="${pmuProcPlanInstance?.packageNo}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="fieldcontain ${hasErrors(bean: pmuProcPlanInstance, field: 'contractDescription', 'error')} ">
        <label for="contractDescription">
            <g:message code="pmuProcPlan.contractDescription.label" default="Contract Description" />

        </label>
        <g:textField required="" class="form-control" name="contractDescription" value="${pmuProcPlanInstance?.contractDescription}"/>
    </div>
</div>


<div class="col-xs-4">

    <div class="fieldcontain ${hasErrors(bean: pmuProcPlanInstance, field: 'unit', 'error')} required">
        <label for="unit">
            <g:message code="pmuProcPlan.unit.label" default="Unit" />
            <span class="required-indicator">*</span>
        </label>
        <g:select  required="" id="unit" name="unit.id"
                   from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('Unit'))}"
                   optionKey="id" value="${pmuProcPlanInstance?.unit?.id}" class="form-control"
                   noSelection="['': '-Select-']"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="fieldcontain ${hasErrors(bean: pmuProcPlanInstance, field: 'quantity', 'error')} ">
        <label for="quantity">
            <g:message code="pmuProcPlan.quantity.label" default="Quantity" />

        </label>
        <g:field  name="quantity"  type="number" class="form-control" value="${pmuProcPlanInstance.quantity}" required=""/>
    </div>
</div>
<div class="col-xs-4">

    <div class="fieldcontain ${hasErrors(bean: pmuProcPlanInstance, field: 'estimatedPrice', 'error')} required">
        <label for="estimatedPrice">
            <g:message code="pmuProcPlan.estimatedPrice.label" default="Estimated Price" />
            <span class="required-indicator">*</span>
        </label>
        <g:field name="estimatedPrice" type="number" class="form-control" value="${pmuProcPlanInstance.estimatedPrice}" required=""/>
    </div>
</div>
<div class="col-xs-4">
    <div class="fieldcontain ${hasErrors(bean: pmuProcPlanInstance, field: 'procurementMethod', 'error')} required">
        <label for="procurementMethod">
            <g:message code="pmuProcPlan.procurementMethod.label" default="Procurement Method" />
            <span class="required-indicator">*</span>
        </label>
        <g:select required="" id="procurementMethod" name="procurementMethod.id"
                  from="${AllLookup.findAllByParentIdAllLookup(Lookup.findByType_name('procurement_Method'))}"
                  optionKey="id" value="${pmuProcPlanInstance?.procurementMethod?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
</div>
<div class="col-xs-4">

    <div class="fieldcontain ${hasErrors(bean: pmuProcPlanInstance, field: 'procurementGuideLine', 'error')} required">
        <label for="procurementGuideLine">
            <g:message code="pmuProcPlan.procurementGuideLine.label" default="Procurement Guide Line" />
            <span class="required-indicator">*</span>
        </label>
        %{--<g:select id="procurementGuideLine" name="procurementGuideLine.id" from="${lookUp.AllLookup.list()}" optionKey="id" required="" value="${pmuProcPlanInstance?.procurementGuideLine?.id}" class="many-to-one"/>--}%
        <g:select required="" required="" id="procurementGuideLine" name="procurementGuideLine.id"
                  from="${AllLookup.findAllByParentIdAllLookup(Lookup.findByType_name('procurement_Guide_Line'))}"
                  optionKey="id" value="${pmuProcPlanInstance?.procurementGuideLine?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: pmuProcurPlanInstance, field: 'planedDate', 'error')} required">
        <label for="planedDate">
            <g:message code="pmuProcurPlan.planedDate.label" default="planed Date"/>
            <span class="required-indicator">*</span>
        </label>
        <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcurPlanInstance?.planedDate)}" data-close="true" data-name="planedDate"></div>
        %{--<g:datePicker name="PLANNED_DATE" precision="day" value="${pmuProcurPlanInstance?.PLANNED_DATE}"/>--}%
    </div>
</div>

<div class="">
    <label class="test" >
      &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <g:checkBox  name="isPrior" value="${pmuProcPlanInstance?.isPrior}"/> &nbsp &nbsp &nbsp Is Prior
    </label>
</div>

