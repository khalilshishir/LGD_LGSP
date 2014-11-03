
<%@ page import="training.TrainingOrientationRefresherTrainingPeerLearning" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainingOrientationRefresherTrainingPeerLearning" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="NAME_OF_TRAINING" title="${message(code: 'trainingOrientationRefresherTrainingPeerLearning.NAME_OF_TRAINING.label', default: 'Name of Training')}" />
					
						<g:sortableColumn property="SUBJECT" title="${message(code: 'trainingOrientationRefresherTrainingPeerLearning.SUBJECT.label', default: 'Subject')}" />
					
						<g:sortableColumn property="PARTICIPANT" title="${message(code: 'trainingOrientationRefresherTrainingPeerLearning.PARTICIPANT.label', default: 'Participant')}" />
					
						<g:sortableColumn property="DURATION" title="${message(code: 'trainingOrientationRefresherTrainingPeerLearning.DURATION.label', default: 'Duration')}" />
					

					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingOrientationRefresherTrainingPeerLearningInstanceList}" status="i" var="trainingOrientationRefresherTrainingPeerLearningInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingOrientationRefresherTrainingPeerLearningInstance.id}">${fieldValue(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: "NAME_OF_TRAINING")}</g:link></td>
					
						<td>${fieldValue(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: "SUBJECT")}</td>
					
						<td>${fieldValue(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: "PARTICIPANT")}</td>
					
						<td>${fieldValue(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: "DURATION")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingOrientationRefresherTrainingPeerLearningInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
