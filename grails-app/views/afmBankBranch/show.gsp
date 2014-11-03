
<%@ page import="accounts.AfmBankBranch" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'afmBankBranch.label', default: 'AfmBankBranch')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-afmBankBranch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-afmBankBranch" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list afmBankBranch">
			
				<g:if test="${afmBankBranchInstance?.branchName}">
				<li class="fieldcontain">
					<span id="branchName-label" class="property-label"><g:message code="afmBankBranch.branchName.label" default="Branch Name" /></span>
					
						<span class="property-value" aria-labelledby="branchName-label"><g:fieldValue bean="${afmBankBranchInstance}" field="branchName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afmBankBranchInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="afmBankBranch.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${afmBankBranchInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afmBankBranchInstance?.accountType}">
				<li class="fieldcontain">
					<span id="accountType-label" class="property-label"><g:message code="afmBankBranch.accountType.label" default="Account Type" /></span>
					
						<span class="property-value" aria-labelledby="accountType-label"><g:fieldValue bean="${afmBankBranchInstance}" field="accountType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afmBankBranchInstance?.accountNo}">
				<li class="fieldcontain">
					<span id="accountNo-label" class="property-label"><g:message code="afmBankBranch.accountNo.label" default="Account No" /></span>
					
						<span class="property-value" aria-labelledby="accountNo-label"><g:fieldValue bean="${afmBankBranchInstance}" field="accountNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afmBankBranchInstance?.afmBankInfo}">
				<li class="fieldcontain">
					<span id="afmBankInfo-label" class="property-label"><g:message code="afmBankBranch.afmBankInfo.label" default="Afm Bank Info" /></span>
					
						<span class="property-value" aria-labelledby="afmBankInfo-label"><g:link controller="afmBankInfo" action="show" id="${afmBankBranchInstance?.afmBankInfo?.id}">${afmBankBranchInstance?.afmBankInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${afmBankBranchInstance?.id}" />
					<g:link class="edit" action="edit" id="${afmBankBranchInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
