
<%@ page import="training.TrainingFeedback" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingFeedback.label', default: 'TrainingFeedback')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainingFeedback" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TR_FEED_ID" title="${message(code: 'trainingFeedback.TR_FEED_ID.label', default: 'Training Feedback ID')}" />

                        <g:sortableColumn property="TPI" title="${message(code: 'trainingFeedback.TPI.label', default: 'TR Participant Info Name')}" />
					
						<g:sortableColumn property="TR_FEED_FEEDBACK" title="${message(code: 'trainingFeedback.TR_FEED_FEEDBACK.label', default: 'Training Feedback')}" />
					
						<g:sortableColumn property="TR_FEED_FEEDBACK_DATE" title="${message(code: 'trainingFeedback.TR_FEED_FEEDBACK_DATE.label', default: 'Training Feedback Date')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingFeedbackInstanceList}" status="i" var="trainingFeedbackInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingFeedbackInstance.id}">${fieldValue(bean: trainingFeedbackInstance, field: "TR_FEED_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainingFeedbackInstance, field: "TPI")}</td>

                        <td>${fieldValue(bean: trainingFeedbackInstance, field: "TR_FEED_FEEDBACK")}</td>
					
						<td><g:formatDate date="${trainingFeedbackInstance.TR_FEED_FEEDBACK_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingFeedbackInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
