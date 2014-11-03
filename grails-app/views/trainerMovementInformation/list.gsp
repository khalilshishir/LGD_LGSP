
<%@ page import="training.TrainerMovementInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainerMovementInformation" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TR_MOV_INFO_ID" title="${message(code: 'trainerMovementInformation.TR_MOV_INFO_ID.label', default: 'Trainer Movement Info ID')}" />
					
						<g:sortableColumn property="TR_MOV_INFO_NAME" title="${message(code: 'trainerMovementInformation.TR_MOV_INFO_NAME.label', default: 'Trainer Movement Info Name')}" />
					
						<g:sortableColumn property="TR_MOV_INFO_PRE_LOCATION" title="${message(code: 'trainerMovementInformation.TR_MOV_INFO_PRE_LOCATION.label', default: 'TR Move Info Present Location')}" />
					
						<g:sortableColumn property="TR_MOV_INFO_NEW_LOCATION" title="${message(code: 'trainerMovementInformation.TR_MOV_INFO_NEW_LOCATION.label', default: 'TR Move Info New Location')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainerMovementInformationInstanceList}" status="i" var="trainerMovementInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainerMovementInformationInstance.id}">${fieldValue(bean: trainerMovementInformationInstance, field: "TR_MOV_INFO_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainerMovementInformationInstance, field: "TR_MOV_INFO_NAME")}</td>
					
						<td>${fieldValue(bean: trainerMovementInformationInstance, field: "TR_MOV_INFO_PRE_LOCATION")}</td>
					
						<td>${fieldValue(bean: trainerMovementInformationInstance, field: "TR_MOV_INFO_NEW_LOCATION")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainerMovementInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
