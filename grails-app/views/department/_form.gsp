<%@ page import="payroll.Department" %>



%{--<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'deptId', 'error')} ">
	<label for="deptId">
		<g:message code="department.deptId.label" default="Dept Id" />
		
	</label>
	<g:textField name="deptId" value="${departmentInstance?.deptId}"/>
</div>--}%


%{--<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'deptName', 'error')} ">
	<label for="deptName">
		<g:message code="department.deptName.label" default="Dept Name" />
		
	</label>
	<g:textField name="deptName" value="${departmentInstance?.deptName}"/>
</div>--}%



%{--<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'is_active', 'error')} ">
	<label for="is_active">
		<g:message code="department.is_active.label" default="Isactive" />
		
	</label>
	<g:checkBox name="is_active" value="${departmentInstance?.is_active}" />
</div>--}%



<div class="col-xs-4">
    <div class="form-group">
        <label for="adjustmentAmount"><g:message code="department.deptId.label" default="Department Id" /></label>
        <g:textField class="form-control" name="deptId" value="${departmentInstance?.deptId}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="adjustmentAmount">		<g:message code="department.deptName.label" default="Department Name" /> </label>
        <g:textField class="form-control" name="deptName" value="${departmentInstance?.deptName}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="adjustmentAmount"><g:message code="department.is_active.label" default="Is Active" /> </label>
        <g:checkBox class="form-control"  name="is_active" value="${departmentInstance?.is_active}" />
    </div>
</div>


