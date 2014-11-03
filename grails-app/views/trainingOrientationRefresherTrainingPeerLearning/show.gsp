
<%@ page import="training.TrainingOrientationRefresherTrainingPeerLearning" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingOrientationRefresherTrainingPeerLearning.label', default: 'TrainingOrientationRefresherTrainingPeerLearning')}" />
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
		<div id="show-trainingOrientationRefresherTrainingPeerLearning" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainingOrientationRefresherTrainingPeerLearning">
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.NAME_OF_TRAINING}">
				<li class="fieldcontain">
					<span id="NAME_OF_TRAINING-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.NAME_OF_TRAINING.label" default="Name of Training" /></span>
					
						<span class="property-value" aria-labelledby="NAME_OF_TRAINING-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="NAME_OF_TRAINING"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.NAME_OF_TRAINING_BN}">
                    <li class="fieldcontain">
                        <span id="NAME_OF_TRAINING_BN-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.NAME_OF_TRAINING_BN.label" default="প্রশিক্ষণ নাম" /></span>

                        <span class="property-value" aria-labelledby="NAME_OF_TRAINING_BN-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="NAME_OF_TRAINING_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.SUBJECT}">
				<li class="fieldcontain">
					<span id="SUBJECT-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.SUBJECT.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="SUBJECT-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="SUBJECT"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.SUBJECT_BN}">
                    <li class="fieldcontain">
                        <span id="SUBJECT_BN-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.SUBJECT_BN.label" default="বিষয়" /></span>

                        <span class="property-value" aria-labelledby="SUBJECT_BN-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="SUBJECT_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.PARTICIPANT}">
				<li class="fieldcontain">
					<span id="PARTICIPANT-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.PARTICIPANT.label" default="Participant" /></span>
					
						<span class="property-value" aria-labelledby="PARTICIPANT-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="PARTICIPANT"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.PARTICIPANT_BN}">
                    <li class="fieldcontain">
                        <span id="PARTICIPANT_BN-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.PARTICIPANT_BN.label" default="অংশগ্রহণকারী" /></span>

                        <span class="property-value" aria-labelledby="PARTICIPANT_BN-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="PARTICIPANT_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.DURATION}">
				<li class="fieldcontain">
					<span id="DURATION-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.DURATION.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="DURATION-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="DURATION"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.DURATION_BN}">
                    <li class="fieldcontain">
                        <span id="DURATION_BN-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.DURATION_BN.label" default="স্থিতিকাল" /></span>

                        <span class="property-value" aria-labelledby="DURATION_BN-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="DURATION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINERS}">
				<li class="fieldcontain">
					<span id="TRAINERS-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINERS.label" default="Trainers" /></span>
					
						<span class="property-value" aria-labelledby="TRAINERS-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="TRAINERS"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINERS_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINERS_BN-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINERS_BN.label" default="প্রশিক্ষক" /></span>

                        <span class="property-value" aria-labelledby="TRAINERS_BN-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="TRAINERS_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_EVALUATION}">
				<li class="fieldcontain">
					<span id="TRAINING_EVALUATION-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_EVALUATION.label" default="Training Evaluation" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_EVALUATION-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="TRAINING_EVALUATION"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_EVALUATION_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINING_EVALUATION_BN-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_EVALUATION_BN.label" default="প্রশিক্ষণ মূল্যায়ন" /></span>

                        <span class="property-value" aria-labelledby="TRAINING_EVALUATION_BN-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="TRAINING_EVALUATION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.QTD_BY_PARTICIPANTS}">
				<li class="fieldcontain">
					<span id="QTD_BY_PARTICIPANTS-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.QTD_BY_PARTICIPANTS.label" default="QTD By Participants" /></span>
					
						<span class="property-value" aria-labelledby="QTD_BY_PARTICIPANTS-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="QTD_BY_PARTICIPANTS"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.QTD_BY_PARTICIPANTS_BN}">
                    <li class="fieldcontain">
                        <span id="QTD_BY_PARTICIPANTS_BN-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.QTD_BY_PARTICIPANTS_BN.label" default="কোয়ালিটির প্রশিক্ষণ অংশগ্রহণকারীদের দ্বারা নির্ধারিত" /></span>

                        <span class="property-value" aria-labelledby="QTD_BY_PARTICIPANTS_BN-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="QTD_BY_PARTICIPANTS_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_START_DATE}">
				<li class="fieldcontain">
					<span id="TRAINING_START_DATE-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_START_DATE.label" default="Training Start Date" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_START_DATE-label"><g:formatDate date="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_START_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_END_DATE}">
				<li class="fieldcontain">
					<span id="TRAINING_END_DATE-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_END_DATE.label" default="Training End Date" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_END_DATE-label"><g:formatDate date="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_END_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingOrientationRefresherTrainingPeerLearningInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="trainingOrientationRefresherTrainingPeerLearning.UNION_PARISHAD.label" default="Union Parishad Name" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:fieldValue bean="${trainingOrientationRefresherTrainingPeerLearningInstance}" field="UNION_PARISHAD"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainingOrientationRefresherTrainingPeerLearningInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
