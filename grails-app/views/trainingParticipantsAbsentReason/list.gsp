
<%@ page import="training.TrainingParticipantsAbsentReason" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainingParticipantsAbsentReason" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TPAR_NAME" title="${message(code: 'trainingParticipantsAbsentReason.TPAR_NAME.label', default: 'TPAR Name')}" />
					
						<g:sortableColumn property="TPAR_REASON" title="${message(code: 'trainingParticipantsAbsentReason.TPAR_REASON.label', default: 'TPAR Reason')}" />
					
						<g:sortableColumn property="TPAR_ABSENT_DATE" title="${message(code: 'trainingParticipantsAbsentReason.TPAR_ABSENT_DATE.label', default: 'TPAR Absent Date')}" />

                        <g:sortableColumn property="TPI" title="${message(code: 'trainingParticipantsAbsentReason.TPI.label', default: 'TPI Name')}" />

                        <g:sortableColumn property="UNION_PARISHAD" title="${message(code: 'trainingParticipantsAbsentReason.UNION_PARISHAD.label', default: 'Union Parishad Name')}" />

                    </tr>
				</thead>
				<tbody>
				<g:each in="${trainingParticipantsAbsentReasonInstanceList}" status="i" var="trainingParticipantsAbsentReasonInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingParticipantsAbsentReasonInstance.id}">${fieldValue(bean: trainingParticipantsAbsentReasonInstance, field: "TPAR_NAME")}</g:link></td>
					
						<td>${fieldValue(bean: trainingParticipantsAbsentReasonInstance, field: "TPAR_REASON")}</td>
					
						<td><g:formatDate date="${trainingParticipantsAbsentReasonInstance.TPAR_ABSENT_DATE}" /></td>
					
						<td>${fieldValue(bean: trainingParticipantsAbsentReasonInstance, field: "TPI")}</td>
					
						<td>${fieldValue(bean: trainingParticipantsAbsentReasonInstance, field: "UNION_PARISHAD")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingParticipantsAbsentReasonInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
