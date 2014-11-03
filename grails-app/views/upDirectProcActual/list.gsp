
<%@ page import="procurement.up.directprocurement.UpDirectProc" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upDirectProcActual.label', default: 'UP Direct Procurement Actual')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-upDirectProcActual" class="content scaffold-list" role="main">
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
					
                        <g:sortableColumn property="upDirectProcActual.UP_PROC_MASTER" title="${message(code: 'upDirectProcActual.UP_PROC_MASTER.label', default: 'UP Procurement Master')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upDirectProcActualInstanceList}" status="i" var="upDirectProcActualInstance">
					<tr>
					
						<td><g:link action="show" id="${upDirectProcActualInstance.id}">${fieldValue(bean: upDirectProcActualInstance, field: "UP_PROC_MASTER")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${upDirectProcActualInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
