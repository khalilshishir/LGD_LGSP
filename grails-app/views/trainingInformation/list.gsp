
<%@ page import="training.TrainingInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingInformation.label', default: 'TrainingInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainingInformation" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TRAINING_INFO_ID" title="${message(code: 'trainingInformation.TRAINING_INFO_ID.label', default: 'Training Information ID')}" />
					
						<g:sortableColumn property="TRAINING_INFO_STATUS" title="${message(code: 'trainingInformation.TRAINING_INFO_STATUS.label', default: 'Training Information Status')}" />

                        <g:sortableColumn property="TRAINING_TYPE" title="${message(code: 'trainingInformation.TRAINING_TYPE.label', default: 'Training Type Name')}" />

						<g:sortableColumn property="TR_INFO_TRAINING_DATE" title="${message(code: 'trainingInformation.TR_INFO_TRAINING_DATE.label', default: 'Training Info Training Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingInformationInstanceList}" status="i" var="trainingInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingInformationInstance.id}">${fieldValue(bean: trainingInformationInstance, field: "TRAINING_INFO_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainingInformationInstance, field: "TRAINING_INFO_STATUS")}</td>
					
						<td>${fieldValue(bean: trainingInformationInstance, field: "TRAINING_TYPE")}</td>
					
						<td><g:formatDate date="${trainingInformationInstance.TR_INFO_TRAINING_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
