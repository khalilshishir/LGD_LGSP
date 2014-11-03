
<%@ page import="training.TrainingStatus" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingStatus.label', default: 'TrainingStatus')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainingStatus" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TR_STAT_ID" title="${message(code: 'trainingStatus.TR_STAT_ID.label', default: 'Training Status ID')}" />

                        <g:sortableColumn property="TRAINEE_INFO" title="${message(code: 'trainingStatus.TRAINEE_INFO.label', default: 'Trainee Info Name')}" />
					
						<g:sortableColumn property="TR_STAT_ATTENDENT" title="${message(code: 'trainingStatus.TR_STAT_ATTENDENT.label', default: 'TR Status Attendent')}" />
					
						<g:sortableColumn property="TR_STAT_DATE_OF_TRAINING" title="${message(code: 'trainingStatus.TR_STAT_DATE_OF_TRAINING.label', default: 'TS Date of Training')}" />
					
						<g:sortableColumn property="TR_STAT_NO_OF_TRAINED" title="${message(code: 'trainingStatus.TR_STAT_NO_OF_TRAINED.label', default: 'TS No of Trained')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingStatusInstanceList}" status="i" var="trainingStatusInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingStatusInstance.id}">${fieldValue(bean: trainingStatusInstance, field: "TR_STAT_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainingStatusInstance, field: "TRAINEE_INFO")}</td>
					
						<td>${fieldValue(bean: trainingStatusInstance, field: "TR_STAT_ATTENDENT")}</td>
					
						<td><g:formatDate date="${trainingStatusInstance.TR_STAT_DATE_OF_TRAINING}" /></td>
					
						<td>${fieldValue(bean: trainingStatusInstance, field: "TR_STAT_NO_OF_TRAINED")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingStatusInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
