
<%@ page import="training.TraineeInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'traineeInformation.label', default: 'TraineeInformation')}" />
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
		<div id="show-traineeInformation" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list traineeInformation">
			
				<g:if test="${traineeInformationInstance?.TRAINEE_INFO_ID}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO_ID-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_ID.label" default="Trainee Information ID" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_INFO_ID-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_ID"/></span>
					
				</li>
				</g:if>

				<g:if test="${traineeInformationInstance?.TRAINEE_INFO_NAME}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO_NAME-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_NAME.label" default="Trainee Information Name" /></span>

						<span class="property-value" aria-labelledby="TRAINEE_INFO_NAME-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_NAME"/></span>

				</li>
				</g:if>

                <g:if test="${traineeInformationInstance?.TRAINEE_INFO_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINEE_INFO_NAME_BN-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_NAME_BN.label" default="Trainee Information Name BN" /></span>

                        <span class="property-value" aria-labelledby="TRAINEE_INFO_NAME_BN-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_NAME_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${traineeInformationInstance?.TRAINEE_CATEGORY}">
				<li class="fieldcontain">
					<span id="TRAINEE_CATEGORY-label" class="property-label"><g:message code="traineeInformation.TRAINEE_CATEGORY.label" default="Trainee Category Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_CATEGORY-label"><g:link controller="trainee_Category" action="show" id="${traineeInformationInstance?.TRAINEE_CATEGORY?.id}">${traineeInformationInstance?.TRAINEE_CATEGORY?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${traineeInformationInstance?.TR_INFO_QUALIFICATION}">
				<li class="fieldcontain">
					<span id="TR_INFO_QUALIFICATION-label" class="property-label"><g:message code="traineeInformation.TR_INFO_QUALIFICATION.label" default="Trainee Info Qualification" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_QUALIFICATION-label"><g:fieldValue bean="${traineeInformationInstance}" field="TR_INFO_QUALIFICATION"/></span>
					
				</li>
				</g:if>

                <g:if test="${traineeInformationInstance?.TR_INFO_QUALIFICATION_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_QUALIFICATION_BN-label" class="property-label"><g:message code="traineeInformation.TR_INFO_QUALIFICATION_BN.label" default="Trainee Info Qualification BN" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_QUALIFICATION_BN-label"><g:fieldValue bean="${traineeInformationInstance}" field="TR_INFO_QUALIFICATION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${traineeInformationInstance?.TRAINEE_INFO_AGE}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO_AGE-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_AGE.label" default="Trainee Information Age" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_INFO_AGE-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_AGE"/></span>
					
				</li>
				</g:if>

                <g:if test="${traineeInformationInstance?.TRAINEE_INFO_AGE_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINEE_INFO_AGE_BN-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_AGE_BN.label" default="Trainee Information Age BN" /></span>

                        <span class="property-value" aria-labelledby="TRAINEE_INFO_AGE_BN-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_AGE_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${traineeInformationInstance?.TRAINEE_INFO_GENDER}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO_GENDER-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_GENDER.label" default="Trainee Information Gender" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_INFO_GENDER-label"><g:link controller="allLookup" action="show" id="${traineeInformationInstance?.TRAINEE_INFO_GENDER?.id}">${traineeInformationInstance?.TRAINEE_INFO_GENDER?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${traineeInformationInstance?.TR_INFO_AREA_SPECIFICATION}">
				<li class="fieldcontain">
					<span id="TR_INFO_AREA_SPECIFICATION-label" class="property-label"><g:message code="traineeInformation.TR_INFO_AREA_SPECIFICATION.label" default="Trainee Info Area Specification" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_AREA_SPECIFICATION-label"><g:fieldValue bean="${traineeInformationInstance}" field="TR_INFO_AREA_SPECIFICATION"/></span>
					
				</li>
				</g:if>

                <g:if test="${traineeInformationInstance?.TR_INFO_AREA_SPECIFICATION_BN}">
                    <li class="fieldcontain">
                        <span id="TR_INFO_AREA_SPECIFICATION_BN-label" class="property-label"><g:message code="traineeInformation.TR_INFO_AREA_SPECIFICATION_BN.label" default="Trainee Info Area Specification BN" /></span>

                        <span class="property-value" aria-labelledby="TR_INFO_AREA_SPECIFICATION_BN-label"><g:fieldValue bean="${traineeInformationInstance}" field="TR_INFO_AREA_SPECIFICATION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${traineeInformationInstance?.TRAINEE_INFO_PRE_ADDRESS}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO_PRE_ADDRESS-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_PRE_ADDRESS.label" default="Trainee Info Present Address" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_INFO_PRE_ADDRESS-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_PRE_ADDRESS"/></span>
					
				</li>
				</g:if>

                <g:if test="${traineeInformationInstance?.TRAINEE_INFO_PRE_ADDRESS_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINEE_INFO_PRE_ADDRESS_BN-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_PRE_ADDRESS_BN.label" default="Trainee Info Present Address BN" /></span>

                        <span class="property-value" aria-labelledby="TRAINEE_INFO_PRE_ADDRESS_BN-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_PRE_ADDRESS_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${traineeInformationInstance?.TRAINEE_INFO_MOBILE}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO_MOBILE-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_MOBILE.label" default="Trainee Information Mobile" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_INFO_MOBILE-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_MOBILE"/></span>
					
				</li>
				</g:if>

                <g:if test="${traineeInformationInstance?.TRAINEE_INFO_MOBILE_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINEE_INFO_MOBILE_BN-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_MOBILE_BN.label" default="Trainee Information Mobile BN" /></span>

                        <span class="property-value" aria-labelledby="TRAINEE_INFO_MOBILE_BN-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_MOBILE_BN"/></span>

                    </li>
                </g:if>

				<g:if test="${traineeInformationInstance?.TRAINEE_INFO_EMAIL}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO_EMAIL-label" class="property-label"><g:message code="traineeInformation.TRAINEE_INFO_EMAIL.label" default="Trainee Information Email" /></span>

						<span class="property-value" aria-labelledby="TRAINEE_INFO_EMAIL-label"><g:fieldValue bean="${traineeInformationInstance}" field="TRAINEE_INFO_EMAIL"/></span>

				</li>
				</g:if>
			
				<g:if test="${traineeInformationInstance?.LEVEL}">
				<li class="fieldcontain">
					<span id="LEVEL-label" class="property-label"><g:message code="traineeInformation.LEVEL.label" default="Level Name" /></span>
					
						<span class="property-value" aria-labelledby="LEVEL-label"><g:link controller="level" action="show" id="${traineeInformationInstance?.LEVEL?.id}">${traineeInformationInstance?.LEVEL?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${traineeInformationInstance?.DEPARTMENT}">
				<li class="fieldcontain">
					<span id="DEPARTMENT-label" class="property-label"><g:message code="traineeInformation.DEPARTMENT.label" default="Department Name" /></span>
					
						<span class="property-value" aria-labelledby="DEPARTMENT-label"><g:link controller="department" action="show" id="${traineeInformationInstance?.DEPARTMENT?.id}">${traineeInformationInstance?.DEPARTMENT?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${traineeInformationInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${traineeInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
