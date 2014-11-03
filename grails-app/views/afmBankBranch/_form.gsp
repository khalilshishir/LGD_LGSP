<%@ page import="accounts.AfmBankBranch" %>



<div class="fieldcontain ${hasErrors(bean: afmBankBranchInstance, field: 'branchName', 'error')} required">
	<label for="branchName">
		<g:message code="afmBankBranch.branchName.label" default="Branch Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="branchName" maxlength="75" required="" value="${afmBankBranchInstance?.branchName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: afmBankBranchInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="afmBankBranch.address.label" default="Address" />
		
	</label>
	<g:textField name="address" maxlength="100" value="${afmBankBranchInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: afmBankBranchInstance, field: 'accountType', 'error')} ">
	<label for="accountType">
		<g:message code="afmBankBranch.accountType.label" default="Account Type" />
		
	</label>
	<g:textField name="accountType" maxlength="100" value="${afmBankBranchInstance?.accountType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: afmBankBranchInstance, field: 'accountNo', 'error')} ">
	<label for="accountNo">
		<g:message code="afmBankBranch.accountNo.label" default="Account No" />
		
	</label>
	<g:textField name="accountNo" maxlength="100" value="${afmBankBranchInstance?.accountNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: afmBankBranchInstance, field: 'afmBankInfo', 'error')} required">
	<label for="afmBankInfo">
		<g:message code="afmBankBranch.afmBankInfo.label" default="Afm Bank Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="afmBankInfo" name="afmBankInfo.id" from="${accounts.AfmBankInfo.list()}" optionKey="id" required="" value="${afmBankBranchInstance?.afmBankInfo?.id}" class="many-to-one"/>
</div>

