
<%@ page import="accounts.AfmBankBranch" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'afmBankBranch.label', default: 'AfmBankBranch')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-afmBankBranch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-afmBankBranch" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="branchName" title="${message(code: 'afmBankBranch.branchName.label', default: 'Branch Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'afmBankBranch.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="accountType" title="${message(code: 'afmBankBranch.accountType.label', default: 'Account Type')}" />
					
						<g:sortableColumn property="accountNo" title="${message(code: 'afmBankBranch.accountNo.label', default: 'Account No')}" />
					
						<th><g:message code="afmBankBranch.afmBankInfo.label" default="Afm Bank Info" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${afmBankBranchInstanceList}" status="i" var="afmBankBranchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${afmBankBranchInstance.id}">${fieldValue(bean: afmBankBranchInstance, field: "branchName")}</g:link></td>
					
						<td>${fieldValue(bean: afmBankBranchInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: afmBankBranchInstance, field: "accountType")}</td>
					
						<td>${fieldValue(bean: afmBankBranchInstance, field: "accountNo")}</td>
					
						<td>${fieldValue(bean: afmBankBranchInstance, field: "afmBankInfo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${afmBankBranchInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
