
<%@ page import="grantmanagement.DistributeBBGAmount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-distributeBBGAmount" class="content scaffold-list" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<th><g:message code="distributeBBGAmount.fiscalYear.label" default="Fiscal Year" /></th>
					
						<th><g:message code="distributeBBGAmount.unionParishad.label" default="Union Parishad" /></th>
					
						<th><g:message code="distributeBBGAmount.upazila.label" default="Upazila" /></th>
					
						<g:sortableColumn property="amountPrimaryBBG" title="${message(code: 'distributeBBGAmount.amountPrimaryBBG.label', default: 'Amount Primary BBG')}" />
					
						<g:sortableColumn property="amountAreaBBG" title="${message(code: 'distributeBBGAmount.amountAreaBBG.label', default: 'Amount Area BBG')}" />
					
						<g:sortableColumn property="amountPopulationBBG" title="${message(code: 'distributeBBGAmount.amountPopulationBBG.label', default: 'Amount Population BBG')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${distributeBBGAmountInstanceList}" status="i" var="distributeBBGAmountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${distributeBBGAmountInstance.id}">${fieldValue(bean: distributeBBGAmountInstance, field: "fiscalYear")}</g:link></td>
					
						<td>${fieldValue(bean: distributeBBGAmountInstance, field: "unionParishad.UP_NAME")}</td>
					
						<td>${fieldValue(bean: distributeBBGAmountInstance, field: "upazila")}</td>
					
						<td>${fieldValue(bean: distributeBBGAmountInstance, field: "amountPrimaryBBG")}</td>
					
						<td>${fieldValue(bean: distributeBBGAmountInstance, field: "amountAreaBBG")}</td>
					
						<td>${fieldValue(bean: distributeBBGAmountInstance, field: "amountPopulationBBG")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${distributeBBGAmountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
