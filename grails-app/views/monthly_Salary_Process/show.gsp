
<%@ page import="payroll.Monthly_Salary_Process" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monthly_Salary_Process.label', default: 'Monthly_Salary_Process')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-monthly_Salary_Process" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-monthly_Salary_Process" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list monthly_Salary_Process">
			
				<g:if test="${monthly_Salary_ProcessInstance?.SALARY_MONTH}">
				<li class="fieldcontain">
					<span id="SALARY_MONTH-label" class="property-label"><g:message code="monthly_Salary_Process.SALARY_MONTH.label" default="Salary Month" /></span>
					
						<span class="property-value" aria-labelledby="SALARY_MONTH-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="SALARY_MONTH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.MONTH_NAME}">
				<li class="fieldcontain">
					<span id="MONTH_NAME-label" class="property-label"><g:message code="monthly_Salary_Process.MONTH_NAME.label" default="Month Name" /></span>
					
						<span class="property-value" aria-labelledby="MONTH_NAME-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="MONTH_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.YEAR_NAME}">
				<li class="fieldcontain">
					<span id="YEAR_NAME-label" class="property-label"><g:message code="monthly_Salary_Process.YEAR_NAME.label" default="Year Name" /></span>
					
						<span class="property-value" aria-labelledby="YEAR_NAME-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="YEAR_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.EMPLOYEE_ID}">
				<li class="fieldcontain">
					<span id="EMPLOYEE_ID-label" class="property-label"><g:message code="monthly_Salary_Process.EMPLOYEE_ID.label" default="Employee ID" /></span>
					
						<span class="property-value" aria-labelledby="EMPLOYEE_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="EMPLOYEE_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.CARD_NO}">
				<li class="fieldcontain">
					<span id="CARD_NO-label" class="property-label"><g:message code="monthly_Salary_Process.CARD_NO.label" default="Card No" /></span>
					
						<span class="property-value" aria-labelledby="CARD_NO-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="CARD_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.DEPARTMENT_ID}">
				<li class="fieldcontain">
					<span id="DEPARTMENT_ID-label" class="property-label"><g:message code="monthly_Salary_Process.DEPARTMENT_ID.label" default="Department ID" /></span>
					
						<span class="property-value" aria-labelledby="DEPARTMENT_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="DEPARTMENT_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.DESIGNATION_ID}">
				<li class="fieldcontain">
					<span id="DESIGNATION_ID-label" class="property-label"><g:message code="monthly_Salary_Process.DESIGNATION_ID.label" default="Designation ID" /></span>
					
						<span class="property-value" aria-labelledby="DESIGNATION_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="DESIGNATION_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.BANK_NAME}">
				<li class="fieldcontain">
					<span id="BANK_NAME-label" class="property-label"><g:message code="monthly_Salary_Process.BANK_NAME.label" default="Bank Name" /></span>
					
						<span class="property-value" aria-labelledby="BANK_NAME-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="BANK_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.BANK_ACCOUNT_NO}">
				<li class="fieldcontain">
					<span id="BANK_ACCOUNT_NO-label" class="property-label"><g:message code="monthly_Salary_Process.BANK_ACCOUNT_NO.label" default="Bank Account No" /></span>
					
						<span class="property-value" aria-labelledby="BANK_ACCOUNT_NO-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="BANK_ACCOUNT_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.BASIC_SALARY}">
				<li class="fieldcontain">
					<span id="BASIC_SALARY-label" class="property-label"><g:message code="monthly_Salary_Process.BASIC_SALARY.label" default="Basic Salary" /></span>
					
						<span class="property-value" aria-labelledby="BASIC_SALARY-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="BASIC_SALARY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.HOUSE_RENT}">
				<li class="fieldcontain">
					<span id="HOUSE_RENT-label" class="property-label"><g:message code="monthly_Salary_Process.HOUSE_RENT.label" default="House Rent" /></span>
					
						<span class="property-value" aria-labelledby="HOUSE_RENT-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="HOUSE_RENT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.CONVEYANCE}">
				<li class="fieldcontain">
					<span id="CONVEYANCE-label" class="property-label"><g:message code="monthly_Salary_Process.CONVEYANCE.label" default="Conveyance" /></span>
					
						<span class="property-value" aria-labelledby="CONVEYANCE-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="CONVEYANCE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.MEDICAL}">
				<li class="fieldcontain">
					<span id="MEDICAL-label" class="property-label"><g:message code="monthly_Salary_Process.MEDICAL.label" default="Medical" /></span>
					
						<span class="property-value" aria-labelledby="MEDICAL-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="MEDICAL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.WASHING}">
				<li class="fieldcontain">
					<span id="WASHING-label" class="property-label"><g:message code="monthly_Salary_Process.WASHING.label" default="Washing" /></span>
					
						<span class="property-value" aria-labelledby="WASHING-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="WASHING"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.DEARNESS}">
				<li class="fieldcontain">
					<span id="DEARNESS-label" class="property-label"><g:message code="monthly_Salary_Process.DEARNESS.label" default="Dearness" /></span>
					
						<span class="property-value" aria-labelledby="DEARNESS-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="DEARNESS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.PF_OWN}">
				<li class="fieldcontain">
					<span id="PF_OWN-label" class="property-label"><g:message code="monthly_Salary_Process.PF_OWN.label" default="PF Own" /></span>
					
						<span class="property-value" aria-labelledby="PF_OWN-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="PF_OWN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.SPECIAL_ALLOWANCE}">
				<li class="fieldcontain">
					<span id="SPECIAL_ALLOWANCE-label" class="property-label"><g:message code="monthly_Salary_Process.SPECIAL_ALLOWANCE.label" default="Special Allowance" /></span>
					
						<span class="property-value" aria-labelledby="SPECIAL_ALLOWANCE-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="SPECIAL_ALLOWANCE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.SPECIAL_ALLOWANCE_DA}">
				<li class="fieldcontain">
					<span id="SPECIAL_ALLOWANCE_DA-label" class="property-label"><g:message code="monthly_Salary_Process.SPECIAL_ALLOWANCE_DA.label" default="Special Allowanc DA" /></span>
					
						<span class="property-value" aria-labelledby="SPECIAL_ALLOWANCE_DA-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="SPECIAL_ALLOWANCE_DA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.INCOME_TAX}">
				<li class="fieldcontain">
					<span id="INCOME_TAX-label" class="property-label"><g:message code="monthly_Salary_Process.INCOME_TAX.label" default="Income Tax" /></span>
					
						<span class="property-value" aria-labelledby="INCOME_TAX-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="INCOME_TAX"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.ADVANCE}">
				<li class="fieldcontain">
					<span id="ADVANCE-label" class="property-label"><g:message code="monthly_Salary_Process.ADVANCE.label" default="Advance" /></span>
					
						<span class="property-value" aria-labelledby="ADVANCE-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="ADVANCE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.OTHER_DEDUCTION}">
				<li class="fieldcontain">
					<span id="OTHER_DEDUCTION-label" class="property-label"><g:message code="monthly_Salary_Process.OTHER_DEDUCTION.label" default="Other Deduction" /></span>
					
						<span class="property-value" aria-labelledby="OTHER_DEDUCTION-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="OTHER_DEDUCTION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.SALARY_TYPE}">
				<li class="fieldcontain">
					<span id="SALARY_TYPE-label" class="property-label"><g:message code="monthly_Salary_Process.SALARY_TYPE.label" default="Salary Type" /></span>
					
						<span class="property-value" aria-labelledby="SALARY_TYPE-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="SALARY_TYPE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.STATUS}">
				<li class="fieldcontain">
					<span id="STATUS-label" class="property-label"><g:message code="monthly_Salary_Process.STATUS.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="STATUS-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="STATUS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.ACCOUNTING}">
				<li class="fieldcontain">
					<span id="ACCOUNTING-label" class="property-label"><g:message code="monthly_Salary_Process.ACCOUNTING.label" default="Accounting" /></span>
					
						<span class="property-value" aria-labelledby="ACCOUNTING-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="ACCOUNTING"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.BANK_ID}">
				<li class="fieldcontain">
					<span id="BANK_ID-label" class="property-label"><g:message code="monthly_Salary_Process.BANK_ID.label" default="Bank ID" /></span>
					
						<span class="property-value" aria-labelledby="BANK_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="BANK_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.BANK_BRANCH_ID}">
				<li class="fieldcontain">
					<span id="BANK_BRANCH_ID-label" class="property-label"><g:message code="monthly_Salary_Process.BANK_BRANCH_ID.label" default="Bank Branch ID" /></span>
					
						<span class="property-value" aria-labelledby="BANK_BRANCH_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="BANK_BRANCH_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.AFM_ACCOUNT_NO}">
				<li class="fieldcontain">
					<span id="AFM_ACCOUNT_NO-label" class="property-label"><g:message code="monthly_Salary_Process.AFM_ACCOUNT_NO.label" default="AFM Account No" /></span>
					
						<span class="property-value" aria-labelledby="AFM_ACCOUNT_NO-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="AFM_ACCOUNT_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.ACCOUNT_HEAD_ID}">
				<li class="fieldcontain">
					<span id="ACCOUNT_HEAD_ID-label" class="property-label"><g:message code="monthly_Salary_Process.ACCOUNT_HEAD_ID.label" default="Account Head ID" /></span>
					
						<span class="property-value" aria-labelledby="ACCOUNT_HEAD_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="ACCOUNT_HEAD_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.PAYMENT_DESC}">
				<li class="fieldcontain">
					<span id="PAYMENT_DESC-label" class="property-label"><g:message code="monthly_Salary_Process.PAYMENT_DESC.label" default="Payment Description" /></span>
					
						<span class="property-value" aria-labelledby="PAYMENT_DESC-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="PAYMENT_DESC"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.IS_VOUCHER}">
				<li class="fieldcontain">
					<span id="IS_VOUCHER-label" class="property-label"><g:message code="monthly_Salary_Process.IS_VOUCHER.label" default="Is Voucher" /></span>
					
						<span class="property-value" aria-labelledby="IS_VOUCHER-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="IS_VOUCHER"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.VOUCHER_ID}">
				<li class="fieldcontain">
					<span id="VOUCHER_ID-label" class="property-label"><g:message code="monthly_Salary_Process.VOUCHER_ID.label" default="Voucher ID" /></span>
					
						<span class="property-value" aria-labelledby="VOUCHER_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="VOUCHER_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monthly_Salary_ProcessInstance?.ACCOUNTING_INFO_ID}">
				<li class="fieldcontain">
					<span id="ACCOUNTING_INFO_ID-label" class="property-label"><g:message code="monthly_Salary_Process.ACCOUNTING_INFO_ID.label" default="Accounting Info ID" /></span>
					
						<span class="property-value" aria-labelledby="ACCOUNTING_INFO_ID-label"><g:fieldValue bean="${monthly_Salary_ProcessInstance}" field="ACCOUNTING_INFO_ID"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${monthly_Salary_ProcessInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${monthly_Salary_ProcessInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
