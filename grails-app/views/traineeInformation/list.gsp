
<%@ page import="training.TraineeInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'traineeInformation.label', default: 'TraineeInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-traineeInformation" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TRAINEE_INFO_ID" title="${message(code: 'traineeInformation.TRAINEE_INFO_ID.label', default: 'Trainee Info ID')}" />
					
						<g:sortableColumn property="TRAINEE_INFO_NAME" title="${message(code: 'traineeInformation.TRAINEE_INFO_NAME.label', default: 'Trainee Info Name')}" />

                        <g:sortableColumn property="TRAINEE_CATEGORY" title="${message(code: 'traineeInformation.TRAINEE_CATEGORY.label', default: 'Trainee Category Name')}" />

                        <g:sortableColumn property="TRAINEE_INFO_GENDER" title="${message(code: 'traineeInformation.TRAINEE_INFO_GENDER.label', default: 'Trainee Info Gender')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${traineeInformationInstanceList}" status="i" var="traineeInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${traineeInformationInstance.id}">${fieldValue(bean: traineeInformationInstance, field: "TRAINEE_INFO_ID")}</g:link></td>
					
						<td>${fieldValue(bean: traineeInformationInstance, field: "TRAINEE_INFO_NAME")}</td>
					
						<td>${fieldValue(bean: traineeInformationInstance, field: "TRAINEE_CATEGORY")}</td>
					
						<td>${fieldValue(bean: traineeInformationInstance, field: "TRAINEE_INFO_GENDER")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${traineeInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
