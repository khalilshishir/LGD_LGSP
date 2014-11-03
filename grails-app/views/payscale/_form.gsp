<%@ page import="payroll.Payscale" %>



%{--<div class="fieldcontain ${hasErrors(bean: payscaleInstance, field: 'PAYSCALE_ID', 'error')} required">
	<label for="PAYSCALE_ID">
		<g:message code="payscale.PAYSCALE_ID.label" default="PAYSCALEID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="PAYSCALE_ID" type="number" class="form-control" value="${payscaleInstance.PAYSCALE_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscaleInstance, field: 'GRADE_NO', 'error')} ">
	<label for="GRADE_NO">
		<g:message code="payscale.GRADE_NO.label" default="GRADENO" />
		
	</label>
	<g:textField name="GRADE_NO" value="${payscaleInstance?.GRADE_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscaleInstance, field: 'DESIGNATION_ID', 'error')} ">
	<label for="DESIGNATION_ID">
		<g:message code="payscale.DESIGNATION_ID.label" default="DESIGNATIONID" />
		
	</label>
	<g:select id="DESIGNATION_ID" name="DESIGNATION_ID.id" from="${payroll.Designation.list()}" optionKey="id" value="${payscaleInstance?.DESIGNATION_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="PAYSCALE_ID"><g:message code="payscale.PAYSCALE_ID.label" default="Payscale ID" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="PAYSCALE_ID" type="number" class="form-control" value="${payscaleInstance.PAYSCALE_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="GRADE_NO"><g:message code="payscale.GRADE_NO.label" default="Grade No" /></label>
            <g:textField class="form-control" name="GRADE_NO" value="${payscaleInstance?.GRADE_NO}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="DESIGNATION_ID"><g:message code="payscale.DESIGNATION_ID.label" default="Designation ID" /></label>
            %{-- <g:textField class="form-control" name="DESIGNATION_ID" value="${employeeInstance?.DESIGNATION_ID}"/>--}%
            <g:select id="DESIGNATION_ID" name="DESIGNATION_ID.id" from="${payroll.Designation.list()}" optionKey="id" value="${payscaleInstance?.DESIGNATION_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>