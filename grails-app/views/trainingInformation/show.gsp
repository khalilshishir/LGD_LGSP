
<%@ page import="training.TrainingInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingInformation.label', default: 'TrainingInformation')}" />
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
		<div id="show-trainingInformation" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainingInformation">
			
				<g:if test="${trainingInformationInstance?.TRAINING_INFO_ID}">
				<li class="fieldcontain">
					<span id="TRAINING_INFO_ID-label" class="property-label"><g:message code="trainingInformation.TRAINING_INFO_ID.label" default="Training Information ID" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_INFO_ID-label"><g:fieldValue bean="${trainingInformationInstance}" field="TRAINING_INFO_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingInformationInstance?.TRAINING_INFO_STATUS}">
				<li class="fieldcontain">
					<span id="TRAINING_INFO_STATUS-label" class="property-label"><g:message code="trainingInformation.TRAINING_INFO_STATUS.label" default="Training Information Status" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_INFO_STATUS-label"><g:fieldValue bean="${trainingInformationInstance}" field="TRAINING_INFO_STATUS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingInformationInstance?.TRAINING_TYPE}">
				<li class="fieldcontain">
					<span id="TRAINING_TYPE-label" class="property-label"><g:message code="trainingInformation.TRAINING_TYPE.label" default="Training Type Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_TYPE-label"><g:fieldValue bean="${trainingInformationInstance}" field="TRAINING_TYPE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingInformationInstance?.TR_INFO_TRAINING_DATE}">
				<li class="fieldcontain">
					<span id="TR_INFO_TRAINING_DATE-label" class="property-label"><g:message code="trainingInformation.TR_INFO_TRAINING_DATE.label" default="Training Info Training Date" /></span>
					
						<span class="property-value" aria-labelledby="TR_INFO_TRAINING_DATE-label"><g:formatDate date="${trainingInformationInstance?.TR_INFO_TRAINING_DATE}" /></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainingInformationInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainingInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
