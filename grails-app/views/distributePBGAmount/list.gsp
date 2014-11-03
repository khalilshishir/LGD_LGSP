
<%@ page import="grantmanagement.DistributePBGAmount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'distributePBGAmount.label', default: 'DistributePBGAmount')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-distributePBGAmount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-distributePBGAmount" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="distributePBGAmount.measureCategory.label" default="Measure Category" /></th>
					
						<th><g:message code="distributePBGAmount.fiscalYear.label" default="Fiscal Year" /></th>
					
						<th><g:message code="distributePBGAmount.unionParishad.label" default="Union Parishad" /></th>
					
						<th><g:message code="distributePBGAmount.upazila.label" default="Upazila" /></th>
					
						<th><g:message code="distributePBGAmount.allocatedAmount.label" default="Allocated Amount" /></th>
					
						<g:sortableColumn property="percentage" title="${message(code: 'distributePBGAmount.percentage.label', default: 'Percentage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${distributePBGAmountInstanceList}" status="i" var="distributePBGAmountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${distributePBGAmountInstance.id}">${fieldValue(bean: distributePBGAmountInstance, field: "measureCategory")}</g:link></td>
					
						<td>${fieldValue(bean: distributePBGAmountInstance, field: "fiscalYear")}</td>
					
						<td>${fieldValue(bean: distributePBGAmountInstance, field: "unionParishad")}</td>
					
						<td>${fieldValue(bean: distributePBGAmountInstance, field: "upazila")}</td>
					
						<td>${fieldValue(bean: distributePBGAmountInstance, field: "allocatedAmount")}</td>
					
						<td>${fieldValue(bean: distributePBGAmountInstance, field: "percentage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${distributePBGAmountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
