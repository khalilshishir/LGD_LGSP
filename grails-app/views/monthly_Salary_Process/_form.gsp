<%@ page import="payroll.Monthly_Salary_Process" %>



%{--<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'SALARY_MONTH', 'error')} ">
	<label for="SALARY_MONTH">
		<g:message code="monthly_Salary_Process.SALARY_MONTH.label" default="SALARYMONTH" />
		
	</label>
	<g:textField name="SALARY_MONTH" value="${monthly_Salary_ProcessInstance?.SALARY_MONTH}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'MONTH_NAME', 'error')} ">
	<label for="MONTH_NAME">
		<g:message code="monthly_Salary_Process.MONTH_NAME.label" default="MONTHNAME" />
		
	</label>
	<g:textField name="MONTH_NAME" value="${monthly_Salary_ProcessInstance?.MONTH_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'YEAR_NAME', 'error')} required">
	<label for="YEAR_NAME">
		<g:message code="monthly_Salary_Process.YEAR_NAME.label" default="YEARNAME" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="YEAR_NAME" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.YEAR_NAME}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'EMPLOYEE_ID', 'error')} ">
	<label for="EMPLOYEE_ID">
		<g:message code="monthly_Salary_Process.EMPLOYEE_ID.label" default="EMPLOYEEID" />
		
	</label>
	<g:select id="EMPLOYEE_ID" name="EMPLOYEE_ID.id" from="${payroll.Employee.list()}" optionKey="id" value="${monthly_Salary_ProcessInstance?.EMPLOYEE_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'CARD_NO', 'error')} ">
	<label for="CARD_NO">
		<g:message code="monthly_Salary_Process.CARD_NO.label" default="CARDNO" />
		
	</label>
	<g:textField name="CARD_NO" value="${monthly_Salary_ProcessInstance?.CARD_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'DEPARTMENT_ID', 'error')} ">
	<label for="DEPARTMENT_ID">
		<g:message code="monthly_Salary_Process.DEPARTMENT_ID.label" default="DEPARTMENTID" />
		
	</label>
	<g:select id="DEPARTMENT_ID" name="DEPARTMENT_ID.id" from="${payroll.Department.list()}" optionKey="id" value="${monthly_Salary_ProcessInstance?.DEPARTMENT_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'DESIGNATION_ID', 'error')} ">
	<label for="DESIGNATION_ID">
		<g:message code="monthly_Salary_Process.DESIGNATION_ID.label" default="DESIGNATIONID" />
		
	</label>
	<g:select id="DESIGNATION_ID" name="DESIGNATION_ID.id" from="${payroll.Designation.list()}" optionKey="id" value="${monthly_Salary_ProcessInstance?.DESIGNATION_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'BANK_NAME', 'error')} ">
	<label for="BANK_NAME">
		<g:message code="monthly_Salary_Process.BANK_NAME.label" default="BANKNAME" />
		
	</label>
	<g:textField name="BANK_NAME" value="${monthly_Salary_ProcessInstance?.BANK_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'BANK_ACCOUNT_NO', 'error')} ">
	<label for="BANK_ACCOUNT_NO">
		<g:message code="monthly_Salary_Process.BANK_ACCOUNT_NO.label" default="BANKACCOUNTNO" />
		
	</label>
	<g:textField name="BANK_ACCOUNT_NO" value="${monthly_Salary_ProcessInstance?.BANK_ACCOUNT_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'BASIC_SALARY', 'error')} required">
	<label for="BASIC_SALARY">
		<g:message code="monthly_Salary_Process.BASIC_SALARY.label" default="BASICSALARY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="BASIC_SALARY" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'BASIC_SALARY')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'HOUSE_RENT', 'error')} required">
	<label for="HOUSE_RENT">
		<g:message code="monthly_Salary_Process.HOUSE_RENT.label" default="HOUSERENT" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="HOUSE_RENT" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'HOUSE_RENT')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'CONVEYANCE', 'error')} required">
	<label for="CONVEYANCE">
		<g:message code="monthly_Salary_Process.CONVEYANCE.label" default="CONVEYANCE" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CONVEYANCE" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'CONVEYANCE')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'MEDICAL', 'error')} required">
	<label for="MEDICAL">
		<g:message code="monthly_Salary_Process.MEDICAL.label" default="MEDICAL" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="MEDICAL" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'MEDICAL')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'WASHING', 'error')} required">
	<label for="WASHING">
		<g:message code="monthly_Salary_Process.WASHING.label" default="WASHING" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="WASHING" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'WASHING')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'DEARNESS', 'error')} required">
	<label for="DEARNESS">
		<g:message code="monthly_Salary_Process.DEARNESS.label" default="DEARNESS" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="DEARNESS" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'DEARNESS')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'PF_OWN', 'error')} required">
	<label for="PF_OWN">
		<g:message code="monthly_Salary_Process.PF_OWN.label" default="PFOWN" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="PF_OWN" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'PF_OWN')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'SPECIAL_ALLOWANCE', 'error')} required">
	<label for="SPECIAL_ALLOWANCE">
		<g:message code="monthly_Salary_Process.SPECIAL_ALLOWANCE.label" default="SPECIALALLOWANCE" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="SPECIAL_ALLOWANCE" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'SPECIAL_ALLOWANCE')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'SPECIAL_ALLOWANCE_DA', 'error')} required">
	<label for="SPECIAL_ALLOWANCE_DA">
		<g:message code="monthly_Salary_Process.SPECIAL_ALLOWANCE_DA.label" default="SPECIALALLOWANCEDA" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="SPECIAL_ALLOWANCE_DA" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'SPECIAL_ALLOWANCE_DA')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'INCOME_TAX', 'error')} required">
	<label for="INCOME_TAX">
		<g:message code="monthly_Salary_Process.INCOME_TAX.label" default="INCOMETAX" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="INCOME_TAX" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'INCOME_TAX')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'ADVANCE', 'error')} required">
	<label for="ADVANCE">
		<g:message code="monthly_Salary_Process.ADVANCE.label" default="ADVANCE" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ADVANCE" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'ADVANCE')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'OTHER_DEDUCTION', 'error')} required">
	<label for="OTHER_DEDUCTION">
		<g:message code="monthly_Salary_Process.OTHER_DEDUCTION.label" default="OTHERDEDUCTION" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="OTHER_DEDUCTION" value="${fieldValue(bean: monthly_Salary_ProcessInstance, field: 'OTHER_DEDUCTION')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'SALARY_TYPE', 'error')} ">
	<label for="SALARY_TYPE">
		<g:message code="monthly_Salary_Process.SALARY_TYPE.label" default="SALARYTYPE" />
		
	</label>
	<g:textField name="SALARY_TYPE" value="${monthly_Salary_ProcessInstance?.SALARY_TYPE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'STATUS', 'error')} ">
	<label for="STATUS">
		<g:message code="monthly_Salary_Process.STATUS.label" default="STATUS" />
		
	</label>
	<g:textField name="STATUS" value="${monthly_Salary_ProcessInstance?.STATUS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'ACCOUNTING', 'error')} required">
	<label for="ACCOUNTING">
		<g:message code="monthly_Salary_Process.ACCOUNTING.label" default="ACCOUNTING" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ACCOUNTING" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.ACCOUNTING}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'BANK_ID', 'error')} required">
	<label for="BANK_ID">
		<g:message code="monthly_Salary_Process.BANK_ID.label" default="BANKID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="BANK_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.BANK_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'BANK_BRANCH_ID', 'error')} required">
	<label for="BANK_BRANCH_ID">
		<g:message code="monthly_Salary_Process.BANK_BRANCH_ID.label" default="BANKBRANCHID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="BANK_BRANCH_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.BANK_BRANCH_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'AFM_ACCOUNT_NO', 'error')} ">
	<label for="AFM_ACCOUNT_NO">
		<g:message code="monthly_Salary_Process.AFM_ACCOUNT_NO.label" default="AFMACCOUNTNO" />
		
	</label>
	<g:textField name="AFM_ACCOUNT_NO" value="${monthly_Salary_ProcessInstance?.AFM_ACCOUNT_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'ACCOUNT_HEAD_ID', 'error')} required">
	<label for="ACCOUNT_HEAD_ID">
		<g:message code="monthly_Salary_Process.ACCOUNT_HEAD_ID.label" default="ACCOUNTHEADID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ACCOUNT_HEAD_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.ACCOUNT_HEAD_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'PAYMENT_DESC', 'error')} ">
	<label for="PAYMENT_DESC">
		<g:message code="monthly_Salary_Process.PAYMENT_DESC.label" default="PAYMENTDESC" />
		
	</label>
	<g:textField name="PAYMENT_DESC" value="${monthly_Salary_ProcessInstance?.PAYMENT_DESC}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'IS_VOUCHER', 'error')} ">
	<label for="IS_VOUCHER">
		<g:message code="monthly_Salary_Process.IS_VOUCHER.label" default="ISVOUCHER" />
		
	</label>
	<g:textField name="IS_VOUCHER" value="${monthly_Salary_ProcessInstance?.IS_VOUCHER}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'VOUCHER_ID', 'error')} required">
	<label for="VOUCHER_ID">
		<g:message code="monthly_Salary_Process.VOUCHER_ID.label" default="VOUCHERID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="VOUCHER_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.VOUCHER_ID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: monthly_Salary_ProcessInstance, field: 'ACCOUNTING_INFO_ID', 'error')} required">
	<label for="ACCOUNTING_INFO_ID">
		<g:message code="monthly_Salary_Process.ACCOUNTING_INFO_ID.label" default="ACCOUNTINGINFOID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ACCOUNTING_INFO_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.ACCOUNTING_INFO_ID}" required=""/>
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="SALARY_MONTH"><g:message code="monthly_Salary_Process.SALARY_MONTH.label" default="Salary Month" /></label>
            <g:textField class="form-control" name="SALARY_MONTH" value="${monthly_Salary_ProcessInstance?.SALARY_MONTH}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="MONTH_NAME"><g:message code="monthly_Salary_Process.MONTH_NAME.label" default="Month Name" /></label>
            <g:textField class="form-control" name="MONTH_NAME" value="${monthly_Salary_ProcessInstance?.MONTH_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="YEAR_NAME"><g:message code="monthly_Salary_Process.YEAR_NAME.label" default="Year Name" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="YEAR_NAME" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.YEAR_NAME}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="EMPLOYEE_ID"><g:message code="monthly_Salary_Process.DESIGNATION_ID.label" default="Employee ID" /></label>
            %{-- <g:textField class="form-control" name="DESIGNATION_ID" value="${employeeInstance?.DESIGNATION_ID}"/>--}%
            <g:select id="EMPLOYEE_ID" name="EMPLOYEE_ID.id" from="${payroll.Employee.list()}" optionKey="id" value="${monthly_Salary_ProcessInstance?.EMPLOYEE_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="CARD_NO"><g:message code="monthly_Salary_Process.CARD_NO.label" default="Card No" /></label>
            <g:textField class="form-control" name="CARD_NO" value="${monthly_Salary_ProcessInstance?.CARD_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="DEPARTMENT_ID"><g:message code="monthly_Salary_Process.DEPARTMENT_ID.label" default="Department ID" /></label>
            %{-- <g:textField class="form-control" name="DESIGNATION_ID" value="${employeeInstance?.DESIGNATION_ID}"/>--}%
            <g:select id="DEPARTMENT_ID" name="DEPARTMENT_ID.id" from="${payroll.Department.list()}" optionKey="id" value="${monthly_Salary_ProcessInstance?.DEPARTMENT_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="DESIGNATION_ID"><g:message code="monthly_Salary_Process.DESIGNATION_ID.label" default="Designation ID" /></label>
            %{-- <g:textField class="form-control" name="DESIGNATION_ID" value="${employeeInstance?.DESIGNATION_ID}"/>--}%
            <g:select id="DESIGNATION_ID" name="DESIGNATION_ID.id" from="${payroll.Designation.list()}" optionKey="id" value="${monthly_Salary_ProcessInstance?.DESIGNATION_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="BANK_NAME"><g:message code="monthly_Salary_Process.BANK_NAME.label" default="Bank Name" /></label>
            <g:textField class="form-control" name="BANK_NAME" value="${monthly_Salary_ProcessInstance?.BANK_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="BANK_ACCOUNT_NO"><g:message code="monthly_Salary_Process.BANK_ACCOUNT_NO.label" default="Bank Account No" /></label>
            <g:textField class="form-control" name="BANK_ACCOUNT_NO" value="${monthly_Salary_ProcessInstance?.BANK_ACCOUNT_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="BASIC_SALARY"><g:message code="monthly_Salary_Process.BASIC_SALARY.label" default="Basic Salary" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="BASIC_SALARY" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.BASIC_SALARY}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="HOUSE_RENT"><g:message code="monthly_Salary_Process.HOUSE_RENT.label" default="House Rent" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="HOUSE_RENT" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.HOUSE_RENT}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="CONVEYANCE"><g:message code="monthly_Salary_Process.CONVEYANCE.label" default="Conveyance" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="CONVEYANCE" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.CONVEYANCE}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="MEDICAL"><g:message code="monthly_Salary_Process.MEDICAL.label" default="Medical" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="MEDICAL" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.MEDICAL}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="WASHING"><g:message code="monthly_Salary_Process.WASHING.label" default="Washing" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="WASHING" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.WASHING}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="DEARNESS"><g:message code="monthly_Salary_Process.DEARNESS.label" default="Dearness" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="DEARNESS" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.DEARNESS}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PF_OWN"><g:message code="monthly_Salary_Process.PF_OWN.label" default="PF Own" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="PF_OWN" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.PF_OWN}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="SPECIAL_ALLOWANCE"><g:message code="monthly_Salary_Process.SPECIAL_ALLOWANCE.label" default="Special Allowance" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="SPECIAL_ALLOWANCE" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.SPECIAL_ALLOWANCE}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="SPECIAL_ALLOWANCE_DA"><g:message code="monthly_Salary_Process.SPECIAL_ALLOWANCE_DA.label" default="Special Allowance DA" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="SPECIAL_ALLOWANCE_DA" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.SPECIAL_ALLOWANCE_DA}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="INCOME_TAX"><g:message code="monthly_Salary_Process.INCOME_TAX.label" default="Income Tax" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="INCOME_TAX" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.INCOME_TAX}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="ADVANCE"><g:message code="monthly_Salary_Process.ADVANCE.label" default="Advance" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="ADVANCE" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.ADVANCE}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="OTHER_DEDUCTION"><g:message code="monthly_Salary_Process.OTHER_DEDUCTION.label" default="Other Deduction" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="OTHER_DEDUCTION" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.OTHER_DEDUCTION}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="SALARY_TYPE"><g:message code="monthly_Salary_Process.SALARY_TYPE.label" default="Salary Type" /></label>
            <g:textField class="form-control" name="SALARY_TYPE" value="${monthly_Salary_ProcessInstance?.SALARY_TYPE}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="STATUS"><g:message code="monthly_Salary_Process.STATUS.label" default="Status" /></label>
            <g:textField class="form-control" name="STATUS" value="${monthly_Salary_ProcessInstance?.STATUS}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="ACCOUNTING"><g:message code="monthly_Salary_Process.ACCOUNTING.label" default="Accounting" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="ACCOUNTING" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.ACCOUNTING}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="BANK_ID"><g:message code="monthly_Salary_Process.BANK_ID.label" default="Bank ID" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="BANK_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.BANK_ID}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="BANK_BRANCH_ID"><g:message code="monthly_Salary_Process.BANK_BRANCH_ID.label" default="Bank Branch ID" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="BANK_BRANCH_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.BANK_BRANCH_ID}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="AFM_ACCOUNT_NO"><g:message code="monthly_Salary_Process.AFM_ACCOUNT_NO.label" default="AFM Account No" /></label>
            <g:textField class="form-control" name="AFM_ACCOUNT_NO" value="${monthly_Salary_ProcessInstance?.AFM_ACCOUNT_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="ACCOUNT_HEAD_ID"><g:message code="monthly_Salary_Process.ACCOUNT_HEAD_ID.label" default="Account Head ID" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="ACCOUNT_HEAD_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.ACCOUNT_HEAD_ID}" class="form-control"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="PAYMENT_DESC"><g:message code="monthly_Salary_Process.PAYMENT_DESC.label" default="Payment Description" /></label>
            <g:textField class="form-control" name="PAYMENT_DESC" value="${monthly_Salary_ProcessInstance?.PAYMENT_DESC}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="IS_VOUCHER"><g:message code="monthly_Salary_Process.IS_VOUCHER.label" default="Is Voucher" /></label>
            <g:textField class="form-control" name="IS_VOUCHER" value="${monthly_Salary_ProcessInstance?.IS_VOUCHER}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="VOUCHER_ID"><g:message code="monthly_Salary_Process.VOUCHER_ID.label" default="Voucher ID" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="VOUCHER_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.VOUCHER_ID}" class="form-control"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="ACCOUNTING_INFO_ID"><g:message code="monthly_Salary_Process.ACCOUNTING_INFO_ID.label" default="Accounting Info ID" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="ACCOUNTING_INFO_ID" type="number" class="form-control" class="form-control" value="${monthly_Salary_ProcessInstance.ACCOUNTING_INFO_ID}" class="form-control"/>
        </div>
    </div>
</div>
