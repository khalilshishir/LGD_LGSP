
<%@ page import="training.TrainingStatus" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingStatus.label', default: 'TrainingStatus')}" />
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
		<div id="show-trainingStatus" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainingStatus">
			
				<g:if test="${trainingStatusInstance?.TR_STAT_ID}">
				<li class="fieldcontain">
					<span id="TR_STAT_ID-label" class="property-label"><g:message code="trainingStatus.TR_STAT_ID.label" default="Training Status ID" /></span>
					
						<span class="property-value" aria-labelledby="TR_STAT_ID-label"><g:fieldValue bean="${trainingStatusInstance}" field="TR_STAT_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingStatusInstance?.TRAINEE_INFO}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFO-label" class="property-label"><g:message code="trainingStatus.TRAINEE_INFO.label" default="Trainee Information Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_INFO-label"><g:fieldValue bean="${trainingStatusInstance}" field="TRAINEE_INFO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingStatusInstance?.TR_STAT_ATTENDENT}">
				<li class="fieldcontain">
					<span id="TR_STAT_ATTENDENT-label" class="property-label"><g:message code="trainingStatus.TR_STAT_ATTENDENT.label" default="Training Status Attendent" /></span>
					
						<span class="property-value" aria-labelledby="TR_STAT_ATTENDENT-label"><g:fieldValue bean="${trainingStatusInstance}" field="TR_STAT_ATTENDENT"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingStatusInstance?.TR_STAT_ATTENDENT_BN}">
                    <li class="fieldcontain">
                        <span id="TR_STAT_ATTENDENT_BN-label" class="property-label"><g:message code="trainingStatus.TR_STAT_ATTENDENT_BN.label" default="উপস্থিতির সংখ্যা" /></span>

                        <span class="property-value" aria-labelledby="TR_STAT_ATTENDENT_BN-label"><g:fieldValue bean="${trainingStatusInstance}" field="TR_STAT_ATTENDENT_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingStatusInstance?.TR_STAT_DATE_OF_TRAINING}">
				<li class="fieldcontain">
					<span id="TR_STAT_DATE_OF_TRAINING-label" class="property-label"><g:message code="trainingStatus.TR_STAT_DATE_OF_TRAINING.label" default="TS Date of Training" /></span>
					
						<span class="property-value" aria-labelledby="TR_STAT_DATE_OF_TRAINING-label"><g:formatDate date="${trainingStatusInstance?.TR_STAT_DATE_OF_TRAINING}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingStatusInstance?.TR_STAT_NO_OF_ABSENT}">
				<li class="fieldcontain">
					<span id="TR_STAT_NO_OF_ABSENT-label" class="property-label"><g:message code="trainingStatus.TR_STAT_NO_OF_ABSENT.label" default="Training Status No of Absent" /></span>
					
						<span class="property-value" aria-labelledby="TR_STAT_NO_OF_ABSENT-label"><g:fieldValue bean="${trainingStatusInstance}" field="TR_STAT_NO_OF_ABSENT"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingStatusInstance?.TR_STAT_NO_OF_ABSENT_BN}">
                    <li class="fieldcontain">
                        <span id="TR_STAT_NO_OF_ABSENT_BN-label" class="property-label"><g:message code="trainingStatus.TR_STAT_NO_OF_ABSENT_BN.label" default="অনুপস্থিতির সংখ্যা" /></span>

                        <span class="property-value" aria-labelledby="TR_STAT_NO_OF_ABSENT_BN-label"><g:fieldValue bean="${trainingStatusInstance}" field="TR_STAT_NO_OF_ABSENT_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${trainingStatusInstance?.TR_STAT_NO_OF_TRAINED}">
				<li class="fieldcontain">
					<span id="TR_STAT_NO_OF_TRAINED-label" class="property-label"><g:message code="trainingStatus.TR_STAT_NO_OF_TRAINED.label" default="Training Status No of Trained" /></span>
					
						<span class="property-value" aria-labelledby="TR_STAT_NO_OF_TRAINED-label"><g:fieldValue bean="${trainingStatusInstance}" field="TR_STAT_NO_OF_TRAINED"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainingStatusInstance?.TR_STAT_NO_OF_TRAINED_BN}">
                    <li class="fieldcontain">
                        <span id="TR_STAT_NO_OF_TRAINED_BN-label" class="property-label"><g:message code="trainingStatus.TR_STAT_NO_OF_TRAINED_BN.label" default="প্রশিক্ষনের সংখ্যা" /></span>

                        <span class="property-value" aria-labelledby="TR_STAT_NO_OF_TRAINED_BN-label"><g:fieldValue bean="${trainingStatusInstance}" field="TR_STAT_NO_OF_TRAINED_BN"/></span>

                    </li>
                </g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainingStatusInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainingStatusInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
