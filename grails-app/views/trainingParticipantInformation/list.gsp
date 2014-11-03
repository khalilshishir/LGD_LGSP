
<%@ page import="training.TrainingParticipantInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trainingParticipantInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trainingParticipantInformation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="TPI_ID" title="${message(code: 'trainingParticipantInformation.TPI_ID.label', default: 'TPIID')}" />
					
						<g:sortableColumn property="TPI_NAME" title="${message(code: 'trainingParticipantInformation.TPI_NAME.label', default: 'TPINAME')}" />
					
						<th><g:message code="trainingParticipantInformation.TRAINEE_INFORMATION.label" default="TRAINEEINFORMATION" /></th>
					
						<g:sortableColumn property="TPI_DURATION" title="${message(code: 'trainingParticipantInformation.TPI_DURATION.label', default: 'TPIDURATION')}" />
					
						<th><g:message code="trainingParticipantInformation.TRAINING_INFORMATION.label" default="TRAININGINFORMATION" /></th>
					
						<g:sortableColumn property="TPI_TRAINING_DATE" title="${message(code: 'trainingParticipantInformation.TPI_TRAINING_DATE.label', default: 'TPITRAININGDATE')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingParticipantInformationInstanceList}" status="i" var="trainingParticipantInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingParticipantInformationInstance.id}">${fieldValue(bean: trainingParticipantInformationInstance, field: "TPI_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainingParticipantInformationInstance, field: "TPI_NAME")}</td>
					
						<td>${fieldValue(bean: trainingParticipantInformationInstance, field: "TRAINEE_INFORMATION")}</td>
					
						<td>${fieldValue(bean: trainingParticipantInformationInstance, field: "TPI_DURATION")}</td>
					
						<td>${fieldValue(bean: trainingParticipantInformationInstance, field: "TRAINING_INFORMATION")}</td>
					
						<td><g:formatDate date="${trainingParticipantInformationInstance.TPI_TRAINING_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingParticipantInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
