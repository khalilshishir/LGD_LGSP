
<%@ page import="training.IECInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'IECInformation.label', default: 'IECInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-IECInformation" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
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
					
						<g:sortableColumn property="IECI_ID" title="${message(code: 'IECInformation.IECI_ID.label', default: 'IEC Information ID')}" />
					
						<g:sortableColumn property="IECI_NATURE_OF_IEC_ACTIVI" title="${message(code: 'IECInformation.IECI_NATURE_OF_IEC_ACTIVI.label', default: 'IECI Nature of IEC Act')}" />
					
						<g:sortableColumn property="IECI_PURPOSE" title="${message(code: 'IECInformation.IECI_PURPOSE.label', default: 'IECI Purpose')}" />
					
						<g:sortableColumn property="IECI_SERVICE_PROVIDERS" title="${message(code: 'IECInformation.IECI_SERVICE_PROVIDERS.label', default: 'IECI Service Providers')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${IECInformationInstanceList}" status="i" var="IECInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${IECInformationInstance.id}">${fieldValue(bean: IECInformationInstance, field: "IECI_ID")}</g:link></td>
					
						<td>${fieldValue(bean: IECInformationInstance, field: "IECI_NATURE_OF_IEC_ACTIVI")}</td>
					
						<td>${fieldValue(bean: IECInformationInstance, field: "IECI_PURPOSE")}</td>
					
						<td>${fieldValue(bean: IECInformationInstance, field: "IECI_SERVICE_PROVIDERS")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${IECInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
