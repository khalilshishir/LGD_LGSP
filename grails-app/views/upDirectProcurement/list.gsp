
<%@ page import="procurement.up.directprocurement.UpDirectProcurement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-upDirectProcurement" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label/" default="লিস্ট - ইউনিয়ন পরিষদ ক্রয়" args="[entityName]" /></h3>
                </div>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
                <thead>

					<tr>
					
						<th><g:message code="upDirectProcurement.schemeInfo.label" default="schemeInfo" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upDirectProcurementInstanceList}" status="i" var="upDirectProcurementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${upDirectProcurementInstance.id}">${fieldValue(bean: upDirectProcurementInstance, field: "schemeInfo")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>
</html>
