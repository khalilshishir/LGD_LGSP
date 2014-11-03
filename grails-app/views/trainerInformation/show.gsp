
<%@ page import="training.TrainerInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainerInformation.label', default: 'TrainerInformation')}" />
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
		<div id="show-trainerInformation" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainerInformation">
			
				<g:if test="${trainerInformationInstance?.TR_INFO_ID}">
				<li class="fieldcontain">
					<span id="TR_INFO_ID-label" class="property-label"><g:message code="trainerInformation.TR_INFO_ID.label" default="Trainer Information ID" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_ID-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainerInformationInstance?.TR_INFO_NAME}">
				<li class="fieldcontain">
					<span id="TR_INFO_NAME-label" class="property-label"><g:message code="trainerInformation.TR_INFO_NAME.label" default="Trainer Information Name" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_NAME-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_NAME"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerInformationInstance?.TR_INFO_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_NAME_BN-label" class="property-label"><g:message code="trainerInformation.TR_INFO_NAME_BN.label" default="শিক্ষক সম্পর্কিত তথ্যের নাম" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_NAME_BN-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_NAME_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerInformationInstance?.TRAINER_CATEGORY}">
				<li class="fieldcontain">
					<span id="TRAINER_CATEGORY-label" class="property-label"><g:message code="trainerInformation.TRAINER_CATEGORY.label" default="Trainer Category Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINER_CATEGORY-label"><g:fieldValue bean="${trainerInformationInstance}" field="TRAINER_CATEGORY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainerInformationInstance?.TR_INFO_QUALIFICATION}">
				<li class="fieldcontain">
					<span id="TR_INFO_QUALIFICATION-label" class="property-label"><g:message code="trainerInformation.TR_INFO_QUALIFICATION.label" default="Trainer Information Qualification" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_QUALIFICATION-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_QUALIFICATION"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerInformationInstance?.TR_INFO_QUALIFICATION_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_QUALIFICATION_BN-label" class="property-label"><g:message code="trainerInformation.TR_INFO_QUALIFICATION_BN.label" default="শিক্ষা গত যোগ্যতা" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_QUALIFICATION_BN-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_QUALIFICATION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerInformationInstance?.TR_INFO_ADDRESS}">
				<li class="fieldcontain">
					<span id="TR_INFO_ADDRESS-label" class="property-label"><g:message code="trainerInformation.TR_INFO_ADDRESS.label" default="Trainer Information Address" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_ADDRESS-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_ADDRESS"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerInformationInstance?.TR_INFO_ADDRESS_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_ADDRESS_BN-label" class="property-label"><g:message code="trainerInformation.TR_INFO_ADDRESS_BN.label" default="ঠিকানা" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_ADDRESS_BN-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_ADDRESS_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerInformationInstance?.TR_INFO_PHONE}">
				<li class="fieldcontain">
					<span id="TR_INFO_PHONE-label" class="property-label"><g:message code="trainerInformation.TR_INFO_PHONE.label" default="Trainer Information Phone" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_PHONE-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_PHONE"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerInformationInstance?.TR_INFO_PHONE_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_PHONE_BN-label" class="property-label"><g:message code="trainerInformation.TR_INFO_PHONE_BN.label" default="ফোন" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_PHONE_BN-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_PHONE_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerInformationInstance?.TR_INFO_MOBILE}">
				<li class="fieldcontain">
					<span id="TR_INFO_MOBILE-label" class="property-label"><g:message code="trainerInformation.TR_INFO_MOBILE.label" default="Trainer Information Mobile" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_MOBILE-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_MOBILE"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerInformationInstance?.TR_INFO_MOBILE_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_MOBILE_BN-label" class="property-label"><g:message code="trainerInformation.TR_INFO_MOBILE_BN.label" default="মোবাইল" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_MOBILE_BN-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_MOBILE_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerInformationInstance?.TR_INFO_AGE}">
				<li class="fieldcontain">
					<span id="TR_INFO_AGE-label" class="property-label"><g:message code="trainerInformation.TR_INFO_AGE.label" default="Trainer Information Age" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_AGE-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_AGE"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerInformationInstance?.TR_INFO_AGE_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_AGE_BN-label" class="property-label"><g:message code="trainerInformation.TR_INFO_AGE_BN.label" default="বয়স" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_AGE_BN-label"><g:fieldValue bean="${trainerInformationInstance}" field="TR_INFO_AGE_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainerInformationInstance?.TRAINER_INFO_GENDER}">
				<li class="fieldcontain">
					<span id="TRAINER_INFO_GENDER-label" class="property-label"><g:message code="trainerInformation.TRAINER_INFO_GENDER.label" default="Trainer Information Gender" /></span>
					
						<span class="property-value" aria-labelledby="TRAINER_INFO_GENDER-label"><g:fieldValue bean="${trainerInformationInstance}" field="TRAINER_INFO_GENDER"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainerInformationInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainerInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
