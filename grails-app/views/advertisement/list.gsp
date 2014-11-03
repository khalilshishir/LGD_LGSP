
<%@ page import="procurement.pmu.Advertisement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advertisement.label', default: 'Advertisement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>


	<body>

    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
    <div id="list-designation" class="content scaffold-list" role="main">
        %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>
        </div>


        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table class="table table-striped">
            <thead>
            <tr>
                <g:sortableColumn property="add_code" title="${message(code: 'advertisement.add_code.label', default: 'Advertisement Code')}" />
					
						<g:sortableColumn property="add_name" title="${message(code: 'advertisement.add_name.label', default: 'Advertisement Name')}" />
					
						<g:sortableColumn property="createdate" title="${message(code: 'advertisement.createdate.label', default: 'Entry Date')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'advertisement.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="createby" title="${message(code: 'advertisement.createby.label', default: 'Createby')}" />
					
					</tr>
				</thead>
				<tbody>
			<g:each in="${advertisementInstanceList}" status="i" var="advertisementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${advertisementInstance.id}">${fieldValue(bean: advertisementInstance, field: "add_code")}</g:link></td>
					
						<td>${fieldValue(bean: advertisementInstance, field: "add_name")}</td>
					
						<td><g:formatDate date="${advertisementInstance.createdate}" /></td>
					
						<td><g:formatBoolean boolean="${advertisementInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: advertisementInstance, field: "createby")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${advertisementInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

