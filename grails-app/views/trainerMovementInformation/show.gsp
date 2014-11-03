
<%@ page import="training.TrainerMovementInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainerMovementInformation.label', default: 'TrainerMovementInformation')}" />
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
		<div id="show-trainerMovementInformation" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainerMovementInformation">
			
				<g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_ID}">
				<li class="fieldcontain">
					<span id="TR_MOV_INFO_ID-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_ID.label" default="Trainer Movement Info ID" /></span>
					
						<span class="property-value" aria-labelledby="TR_MOV_INFO_ID-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="TR_MOV_INFO_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_NAME}">
				<li class="fieldcontain">
					<span id="TR_MOV_INFO_NAME-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_NAME.label" default="Trainer Movement Info Name" /></span>
					
						<span class="property-value" aria-labelledby="TR_MOV_INFO_NAME-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="TR_MOV_INFO_NAME"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="TR_MOV_INFO_NAME_BN-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_NAME_BN.label" default="শিক্ষক আন্দোলন তথ্য নাম" /></span>

                        <span class="property-value" aria-labelledby="TR_MOV_INFO_NAME_BN-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="TR_MOV_INFO_NAME_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_PRE_LOCATION}">
				<li class="fieldcontain">
					<span id="TR_MOV_INFO_PRE_LOCATION-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_PRE_LOCATION.label" default="TR Move Info Present Location" /></span>
					
						<span class="property-value" aria-labelledby="TR_MOV_INFO_PRE_LOCATION-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="TR_MOV_INFO_PRE_LOCATION"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_PRE_LOCATION_BN}">
                    <li class="fieldcontain">
                        <span id="TR_MOV_INFO_PRE_LOCATION_BN-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_PRE_LOCATION_BN.label" default="শিক্ষক আন্দোলন তথ্য বর্তমান অবস্থান" /></span>

                        <span class="property-value" aria-labelledby="TR_MOV_INFO_PRE_LOCATION_BN-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="TR_MOV_INFO_PRE_LOCATION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_NEW_LOCATION}">
				<li class="fieldcontain">
					<span id="TR_MOV_INFO_NEW_LOCATION-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_NEW_LOCATION.label" default="TR Move Info New Location" /></span>
					
						<span class="property-value" aria-labelledby="TR_MOV_INFO_NEW_LOCATION-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="TR_MOV_INFO_NEW_LOCATION"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_NEW_LOCATION_BN}">
                    <li class="fieldcontain">
                        <span id="TR_MOV_INFO_NEW_LOCATION_BN-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_NEW_LOCATION_BN.label" default="শিক্ষক আন্দোলন তথ্য নতুন অবস্থান" /></span>

                        <span class="property-value" aria-labelledby="TR_MOV_INFO_NEW_LOCATION_BN-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="TR_MOV_INFO_NEW_LOCATION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerMovementInformationInstance?.TR_MOV_INFO_MOVEMENT_DATE}">
				<li class="fieldcontain">
					<span id="TR_MOV_INFO_MOVEMENT_DATE-label" class="property-label"><g:message code="trainerMovementInformation.TR_MOV_INFO_MOVEMENT_DATE.label" default="TR Move Info Movement Date" /></span>
					
						<span class="property-value" aria-labelledby="TR_MOV_INFO_MOVEMENT_DATE-label"><g:formatDate date="${trainerMovementInformationInstance?.TR_MOV_INFO_MOVEMENT_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainerMovementInformationInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="trainerMovementInformation.UNION_PARISHAD.label" default="Union Parishar Name" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:fieldValue bean="${trainerMovementInformationInstance}" field="UNION_PARISHAD"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainerMovementInformationInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainerMovementInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
