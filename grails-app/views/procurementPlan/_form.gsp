<%@ page import="procurement.pmu.ProcurementPlan" %>



%{--<div class="fieldcontain ${hasErrors(bean: procurementPlanInstance, field: 'perCode', 'error')} ">--}%
	%{--<label for="perCode">--}%
		%{--<g:message code="procurementPlan.perCode.label" default="Per Code" />--}%

	%{--</label>--}%
	%{--<g:textField name="perCode" maxlength="100" value="${procurementPlanInstance?.perCode}"/>--}%
%{--</div>--}%



%{--<div class="fieldcontain ${hasErrors(bean: procurementPlanInstance, field: 'perName', 'error')} ">--}%
	%{--<label for="perName">--}%
		%{--<g:message code="procurementPlan.perName.label" default="Per Name" />--}%

	%{--</label>--}%
	%{--<g:textField name="perName" maxlength="100" value="${procurementPlanInstance?.perName}"/>--}%
%{--</div>--}%



%{--<div class="fieldcontain ${hasErrors(bean: procurementPlanInstance, field: 'createdate', 'error')} ">--}%
	%{--<label for="createdate">--}%
		%{--<g:message code="procurementPlan.createdate.label" default="Createdate" />--}%

	%{--</label>--}%
	%{--<g:datePicker name="createdate" precision="day"  value="${procurementPlanInstance?.createdate}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%



%{--<div class="fieldcontain ${hasErrors(bean: procurementPlanInstance, field: 'isActive', 'error')} ">--}%
	%{--<label for="isActive">--}%
		%{--<g:message code="procurementPlan.isActive.label" default="Is Active" />--}%

	%{--</label>--}%
	%{--<g:checkBox name="isActive" value="${procurementPlanInstance?.isActive}" />--}%
%{--</div>--}%




%{--<div class="fieldcontain ${hasErrors(bean: procurementPlanInstance, field: 'createby', 'error')} ">--}%
	%{--<label for="createby">--}%
		%{--<g:message code="procurementPlan.createby.label" default="Createby" />--}%

	%{--</label>--}%
	%{--<g:textField name="createby" maxlength="100" value="${procurementPlanInstance?.createby}"/>--}%
%{--</div>--}%




<div class="col-xs-4">
    <div class="form-group">
        <label for="perCode"><g:message code="procurementPlan.perCode.label" default="Per Code"/></label>
        <g:textField class="form-control" name="perCode" maxlength="100" value="${procurementPlanInstance?.perCode}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="perName"><g:message code="procurementPlan.perName.label" default="Per Name"/></label>
        <g:textField class="form-control" name="perName" maxlength="100" value="${procurementPlanInstance?.perName}"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="isActive"><g:message code="procurementPlan.isActive.label" default="Is Active" /></label><br>
        <g:checkBox  name="isActive" value="${procurementPlanInstance?.isActive}" />
    </div>
</div>


