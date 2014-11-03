
<%@ page import="training.TrainingFeedback" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingFeedback.label', default: 'TrainingFeedback')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-trainingFeedback" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainingFeedback">
			
				<g:if test="${trainingFeedbackInstance?.TR_FEED_ID}">
				<li class="fieldcontain">
					<span id="TR_FEED_ID-label" class="property-label"><g:message code="trainingFeedback.TR_FEED_ID.label" default="Training Feedback ID" /></span>
					
						<span class="property-value" aria-labelledby="TR_FEED_ID-label"><g:fieldValue bean="${trainingFeedbackInstance}" field="TR_FEED_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingFeedbackInstance?.TPI}">
				<li class="fieldcontain">
					<span id="TPI-label" class="property-label"><g:message code="trainingFeedback.TPI.label" default="Training Participant Info Name" /></span>
					
						<span class="property-value" aria-labelledby="TPI-label"><g:link controller="trainingParticipantInformation" action="show" id="${trainingFeedbackInstance?.TPI?.id}">${trainingFeedbackInstance?.TPI?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingFeedbackInstance?.TR_FEED_FEEDBACK}">
				<li class="fieldcontain">
					<span id="TR_FEED_FEEDBACK-label" class="property-label"><g:message code="trainingFeedback.TR_FEED_FEEDBACK.label" default="Training Feedback" /></span>
					
						<span class="property-value" aria-labelledby="TR_FEED_FEEDBACK-label"><g:fieldValue bean="${trainingFeedbackInstance}" field="TR_FEED_FEEDBACK"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingFeedbackInstance?.TR_FEED_FEEDBACK_BN}">
                    <li class="fieldcontain">
                        <span id="TR_FEED_FEEDBACK_BN-label" class="property-label"><g:message code="trainingFeedback.TR_FEED_FEEDBACK_BN.label" default="প্রশিক্ষণ প্রতিক্রিয়া" /></span>

                        <span class="property-value" aria-labelledby="TR_FEED_FEEDBACK_BN-label"><g:fieldValue bean="${trainingFeedbackInstance}" field="TR_FEED_FEEDBACK_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingFeedbackInstance?.TR_FEED_FEEDBACK_DATE}">
				<li class="fieldcontain">
					<span id="TR_FEED_FEEDBACK_DATE-label" class="property-label"><g:message code="trainingFeedback.TR_FEED_FEEDBACK_DATE.label" default="Training Feedback Date" /></span>
					
						<span class="property-value" aria-labelledby="TR_FEED_FEEDBACK_DATE-label"><g:formatDate date="${trainingFeedbackInstance?.TR_FEED_FEEDBACK_DATE}" /></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainingFeedbackInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainingFeedbackInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
