<%@ page import="payroll.Payscale_Detail" %>



%{--<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'PAYSCALE_ID', 'error')} ">
	<label for="PAYSCALE_ID">
		<g:message code="payscale_Detail.PAYSCALE_ID.label" default="PAYSCALEID" />
		
	</label>
	<g:select id="PAYSCALE_ID" name="PAYSCALE_ID.id" from="${payroll.Payscale.list()}" optionKey="id" value="${payscale_DetailInstance?.PAYSCALE_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'STAGE', 'error')} required">
	<label for="STAGE">
		<g:message code="payscale_Detail.STAGE.label" default="STAGE" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="STAGE" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.STAGE}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'BASIC', 'error')} required">
	<label for="BASIC">
		<g:message code="payscale_Detail.BASIC.label" default="BASIC" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="BASIC" value="${fieldValue(bean: payscale_DetailInstance, field: 'BASIC')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'DA', 'error')} required">
	<label for="DA">
		<g:message code="payscale_Detail.DA.label" default="DA" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="DA" value="${fieldValue(bean: payscale_DetailInstance, field: 'DA')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'HOUSE_RENT', 'error')} required">
	<label for="HOUSE_RENT">
		<g:message code="payscale_Detail.HOUSE_RENT.label" default="HOUSERENT" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="HOUSE_RENT" value="${fieldValue(bean: payscale_DetailInstance, field: 'HOUSE_RENT')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'CONVEYANCE_ALLOW', 'error')} required">
	<label for="CONVEYANCE_ALLOW">
		<g:message code="payscale_Detail.CONVEYANCE_ALLOW.label" default="CONVEYANCEALLOW" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CONVEYANCE_ALLOW" value="${fieldValue(bean: payscale_DetailInstance, field: 'CONVEYANCE_ALLOW')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'WASHING_ALLOW', 'error')} required">
	<label for="WASHING_ALLOW">
		<g:message code="payscale_Detail.WASHING_ALLOW.label" default="WASHINGALLOW" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="WASHING_ALLOW" value="${fieldValue(bean: payscale_DetailInstance, field: 'WASHING_ALLOW')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'MEDICAL_ALLOW', 'error')} required">
	<label for="MEDICAL_ALLOW">
		<g:message code="payscale_Detail.MEDICAL_ALLOW.label" default="MEDICALALLOW" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="MEDICAL_ALLOW" value="${fieldValue(bean: payscale_DetailInstance, field: 'MEDICAL_ALLOW')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'PF_CONTRIBUTION', 'error')} required">
	<label for="PF_CONTRIBUTION">
		<g:message code="payscale_Detail.PF_CONTRIBUTION.label" default="PFCONTRIBUTION" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="PF_CONTRIBUTION" value="${fieldValue(bean: payscale_DetailInstance, field: 'PF_CONTRIBUTION')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'FESTIVAL_BONUS', 'error')} required">
	<label for="FESTIVAL_BONUS">
		<g:message code="payscale_Detail.FESTIVAL_BONUS.label" default="FESTIVALBONUS" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="FESTIVAL_BONUS" value="${fieldValue(bean: payscale_DetailInstance, field: 'FESTIVAL_BONUS')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'ANNUAL_BONUS', 'error')} required">
	<label for="ANNUAL_BONUS">
		<g:message code="payscale_Detail.ANNUAL_BONUS.label" default="ANNUALBONUS" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ANNUAL_BONUS" value="${fieldValue(bean: payscale_DetailInstance, field: 'ANNUAL_BONUS')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: payscale_DetailInstance, field: 'GRATUITY', 'error')} required">
	<label for="GRATUITY">
		<g:message code="payscale_Detail.GRATUITY.label" default="GRATUITY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="GRATUITY" value="${fieldValue(bean: payscale_DetailInstance, field: 'GRATUITY')}" required=""/>
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="PAYSCALE_ID"><g:message code="payscale_Detail.PAYSCALE_ID.label" default="Payscale ID" /></label>
            %{-- <g:textField class="form-control" name="DESIGNATION_ID" value="${employeeInstance?.DESIGNATION_ID}"/>--}%
            <g:select id="PAYSCALE_ID" name="PAYSCALE_ID.id" from="${payroll.Payscale.list()}" optionKey="id" value="${payscale_DetailInstance?.PAYSCALE_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="STAGE"><g:message code="payscale_Detail.STAGE.label" default="Stage" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="STAGE" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.STAGE}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="BASIC"><g:message code="payscale_Detail.BASIC.label" default="Basic" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="BASIC" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.BASIC}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="DA"><g:message code="payscale_Detail.DA.label" default="DA" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="DA" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.DA}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="HOUSE_RENT"><g:message code="payscale_Detail.HOUSE_RENT.label" default="House Rent" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="HOUSE_RENT" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.HOUSE_RENT}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="CONVEYANCE_ALLOW"><g:message code="payscale_Detail.CONVEYANCE_ALLOW.label" default="Conveyance Allow" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="CONVEYANCE_ALLOW" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.CONVEYANCE_ALLOW}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="WASHING_ALLOW"><g:message code="payscale_Detail.WASHING_ALLOW.label" default="Washing Allow " /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="WASHING_ALLOW" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.WASHING_ALLOW}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="MEDICAL_ALLOW"><g:message code="payscale_Detail.MEDICAL_ALLOW.label" default="Medical Allow" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="MEDICAL_ALLOW" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.MEDICAL_ALLOW}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="PF_CONTRIBUTION"><g:message code="payscale_Detail.PF_CONTRIBUTION.label" default="PF Contribution" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="PF_CONTRIBUTION" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.PF_CONTRIBUTION}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="FESTIVAL_BONUS"><g:message code="payscale_Detail.FESTIVAL_BONUS.label" default="Fastival Bonus" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="FESTIVAL_BONUS" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.FESTIVAL_BONUS}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="ANNUAL_BONUS"><g:message code="payscale_Detail.ANNUAL_BONUS.label" default="Anual Bonus" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="ANNUAL_BONUS" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.ANNUAL_BONUS}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="GRATUITY"><g:message code="payscale_Detail.GRATUITY.label" default="Gratuity" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="GRATUITY" type="number" class="form-control" class="form-control" value="${payscale_DetailInstance.GRATUITY}"/>
        </div>
    </div>
</div>