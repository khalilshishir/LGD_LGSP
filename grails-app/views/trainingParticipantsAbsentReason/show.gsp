
<%@ page import="training.TrainingParticipantsAbsentReason" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingParticipantsAbsentReason.label', default: 'TrainingParticipantsAbsentReason')}" />
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
		<div id="show-trainingParticipantsAbsentReason" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainingParticipantsAbsentReason">
			
				<g:if test="${trainingParticipantsAbsentReasonInstance?.TPAR_ID}">
				<li class="fieldcontain">
					<span id="TPAR_ID-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.TPAR_ID.label" default="TR Participants Absent Reason ID" /></span>
					
						<span class="property-value" aria-labelledby="TPAR_ID-label"><g:fieldValue bean="${trainingParticipantsAbsentReasonInstance}" field="TPAR_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantsAbsentReasonInstance?.TPAR_NAME}">
				<li class="fieldcontain">
					<span id="TPAR_NAME-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.TPAR_NAME.label" default="TR Participants Absent Reason Name" /></span>
					
						<span class="property-value" aria-labelledby="TPAR_NAME-label"><g:fieldValue bean="${trainingParticipantsAbsentReasonInstance}" field="TPAR_NAME"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingParticipantsAbsentReasonInstance?.TPAR_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="TPAR_NAME_BN-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.TPAR_NAME_BN.label" default="প্রশিক্ষণ অংশগ্রহণকারীরা অনুপস্থিত কারণ নাম" /></span>

                        <span class="property-value" aria-labelledby="TPAR_NAME_BN-label"><g:fieldValue bean="${trainingParticipantsAbsentReasonInstance}" field="TPAR_NAME_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingParticipantsAbsentReasonInstance?.TPAR_REASON}">
				<li class="fieldcontain">
					<span id="TPAR_REASON-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.TPAR_REASON.label" default="TR Participants Absent Reason" /></span>
					
						<span class="property-value" aria-labelledby="TPAR_REASON-label"><g:fieldValue bean="${trainingParticipantsAbsentReasonInstance}" field="TPAR_REASON"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingParticipantsAbsentReasonInstance?.TPAR_REASON_BN}">
                    <li class="fieldcontain">
                        <span id="TPAR_REASON_BN-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.TPAR_REASON_BN.label" default="প্রশিক্ষণ অংশগ্রহণকারীরা অনুপস্থিত কারণ" /></span>

                        <span class="property-value" aria-labelledby="TPAR_REASON_BN-label"><g:fieldValue bean="${trainingParticipantsAbsentReasonInstance}" field="TPAR_REASON_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingParticipantsAbsentReasonInstance?.TPAR_ABSENT_DATE}">
				<li class="fieldcontain">
					<span id="TPAR_ABSENT_DATE-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.TPAR_ABSENT_DATE.label" default="TR Participants Absent Reason Date" /></span>
					
						<span class="property-value" aria-labelledby="TPAR_ABSENT_DATE-label"><g:formatDate date="${trainingParticipantsAbsentReasonInstance?.TPAR_ABSENT_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantsAbsentReasonInstance?.TPI}">
				<li class="fieldcontain">
					<span id="TPI-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.TPI.label" default="Training Participant Information Name" /></span>
					
						<span class="property-value" aria-labelledby="TPI-label"><g:link controller="trainingParticipantInformation" action="show" id="${trainingParticipantsAbsentReasonInstance?.TPI?.id}">${trainingParticipantsAbsentReasonInstance?.TPI?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantsAbsentReasonInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="trainingParticipantsAbsentReason.UNION_PARISHAD.label" default="Union Parishad Name" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:link controller="unionParishad" action="show" id="${trainingParticipantsAbsentReasonInstance?.UNION_PARISHAD?.id}">${trainingParticipantsAbsentReasonInstance?.UNION_PARISHAD?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainingParticipantsAbsentReasonInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainingParticipantsAbsentReasonInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
