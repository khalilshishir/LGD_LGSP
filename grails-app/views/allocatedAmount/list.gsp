
<%@ page import="grantmanagement.AllocatedAmount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'allocatedAmount.label', default: 'Allocated Amount')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>

    <div id="list-allocatedAmount" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed" >
            <thead>
					<tr>
					
						<g:sortableColumn property="allocatedAmount" title="${message(code: 'allocatedAmount.allocatedAmount.label', default: 'Allocated Amount')}" />
					
						<th><g:message code="allocatedAmount.fiscalYear.label" default="Fiscal Year" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${allocatedAmountInstanceList}" status="i" var="allocatedAmountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${allocatedAmountInstance.id}">${fieldValue(bean: allocatedAmountInstance, field: "allocatedAmount")}</g:link></td>
					
						<td>${fieldValue(bean: allocatedAmountInstance, field: "fiscalYear")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${allocatedAmountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
