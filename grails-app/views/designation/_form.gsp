<%@ page import="payroll.Designation" %>



%{--<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'DESIGNATION_ID', 'error')} ">
	<label for="DESIGNATION_ID">
		<g:message code="designation.DESIGNATION_ID.label" default="DESIGNATIONID" />
		
	</label>
	<g:textField name="DESIGNATION_ID" value="${designationInstance?.DESIGNATION_ID}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'DESIGNATION_NAME', 'error')} ">
	<label for="DESIGNATION_NAME">
		<g:message code="designation.DESIGNATION_NAME.label" default="DESIGNATIONNAME" />
		
	</label>
	<g:textField name="DESIGNATION_NAME" value="${designationInstance?.DESIGNATION_NAME}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'IS_ACTIVE', 'error')} ">
	<label for="IS_ACTIVE">
		<g:message code="designation.IS_ACTIVE.label" default="ISACTIVE" />
		
	</label>
	<g:checkBox name="IS_ACTIVE" value="${designationInstance?.IS_ACTIVE}" />
</div>--}%










<div class="col-xs-4">
    <div class="form-group">
        <label for="DESIGNATION_ID"><g:message code="designation.DESIGNATION_ID.label" default="Designation Id"/></label>
        <g:textField class="form-control" name="DESIGNATION_ID" value="${designationInstance?.DESIGNATION_ID}"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="DESIGNATION_NAME"><g:message code="designation.DESIGNATION_NAME.label" default="Designation Name"/></label>
        <g:textField class="form-control" name="DESIGNATION_NAME" value="${designationInstance?.DESIGNATION_NAME}"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="IS_ACTIVE"><g:message code="designation.IS_ACTIVE.label" default="Is Active"/></label>
        <g:checkBox name="IS_ACTIVE" value="${designationInstance?.IS_ACTIVE}" />
    </div>
</div>
