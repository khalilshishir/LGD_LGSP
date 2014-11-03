
<%@ page import="training.TrainingParticipantInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingParticipantInformation.label', default: 'TrainingParticipantInformation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trainingParticipantInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trainingParticipantInformation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trainingParticipantInformation">
			
				<g:if test="${trainingParticipantInformationInstance?.TPI_ID}">
				<li class="fieldcontain">
					<span id="TPI_ID-label" class="property-label"><g:message code="trainingParticipantInformation.TPI_ID.label" default="TPIID" /></span>
					
						<span class="property-value" aria-labelledby="TPI_ID-label"><g:fieldValue bean="${trainingParticipantInformationInstance}" field="TPI_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TPI_NAME}">
				<li class="fieldcontain">
					<span id="TPI_NAME-label" class="property-label"><g:message code="trainingParticipantInformation.TPI_NAME.label" default="TPINAME" /></span>
					
						<span class="property-value" aria-labelledby="TPI_NAME-label"><g:fieldValue bean="${trainingParticipantInformationInstance}" field="TPI_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TRAINEE_INFORMATION}">
				<li class="fieldcontain">
					<span id="TRAINEE_INFORMATION-label" class="property-label"><g:message code="trainingParticipantInformation.TRAINEE_INFORMATION.label" default="TRAINEEINFORMATION" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_INFORMATION-label"><g:link controller="traineeInformation" action="show" id="${trainingParticipantInformationInstance?.TRAINEE_INFORMATION?.id}">${trainingParticipantInformationInstance?.TRAINEE_INFORMATION?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TPI_DURATION}">
				<li class="fieldcontain">
					<span id="TPI_DURATION-label" class="property-label"><g:message code="trainingParticipantInformation.TPI_DURATION.label" default="TPIDURATION" /></span>
					
						<span class="property-value" aria-labelledby="TPI_DURATION-label"><g:fieldValue bean="${trainingParticipantInformationInstance}" field="TPI_DURATION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TRAINING_INFORMATION}">
				<li class="fieldcontain">
					<span id="TRAINING_INFORMATION-label" class="property-label"><g:message code="trainingParticipantInformation.TRAINING_INFORMATION.label" default="TRAININGINFORMATION" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_INFORMATION-label"><g:link controller="trainingInformation" action="show" id="${trainingParticipantInformationInstance?.TRAINING_INFORMATION?.id}">${trainingParticipantInformationInstance?.TRAINING_INFORMATION?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TPI_TRAINING_DATE}">
				<li class="fieldcontain">
					<span id="TPI_TRAINING_DATE-label" class="property-label"><g:message code="trainingParticipantInformation.TPI_TRAINING_DATE.label" default="TPITRAININGDATE" /></span>
					
						<span class="property-value" aria-labelledby="TPI_TRAINING_DATE-label"><g:formatDate date="${trainingParticipantInformationInstance?.TPI_TRAINING_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TRAINEE_CATEGORY}">
				<li class="fieldcontain">
					<span id="TRAINEE_CATEGORY-label" class="property-label"><g:message code="trainingParticipantInformation.TRAINEE_CATEGORY.label" default="TRAINEECATEGORY" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_CATEGORY-label"><g:link controller="traineeCategory" action="show" id="${trainingParticipantInformationInstance?.TRAINEE_CATEGORY?.id}">${trainingParticipantInformationInstance?.TRAINEE_CATEGORY?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="trainingParticipantInformation.UNION_PARISHAD.label" default="UNIONPARISHAD" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:link controller="unionParishad" action="show" id="${trainingParticipantInformationInstance?.UNION_PARISHAD?.id}">${trainingParticipantInformationInstance?.UNION_PARISHAD?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TRAINING_BUDGET}">
				<li class="fieldcontain">
					<span id="TRAINING_BUDGET-label" class="property-label"><g:message code="trainingParticipantInformation.TRAINING_BUDGET.label" default="TRAININGBUDGET" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_BUDGET-label"><g:link controller="trainingBudget" action="show" id="${trainingParticipantInformationInstance?.TRAINING_BUDGET?.id}">${trainingParticipantInformationInstance?.TRAINING_BUDGET?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TPI_ATTENDENCE_TARGET}">
				<li class="fieldcontain">
					<span id="TPI_ATTENDENCE_TARGET-label" class="property-label"><g:message code="trainingParticipantInformation.TPI_ATTENDENCE_TARGET.label" default="TPIATTENDENCETARGET" /></span>
					
						<span class="property-value" aria-labelledby="TPI_ATTENDENCE_TARGET-label"><g:fieldValue bean="${trainingParticipantInformationInstance}" field="TPI_ATTENDENCE_TARGET"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TPI_NO_OF_BATCH}">
				<li class="fieldcontain">
					<span id="TPI_NO_OF_BATCH-label" class="property-label"><g:message code="trainingParticipantInformation.TPI_NO_OF_BATCH.label" default="TPINOOFBATCH" /></span>
					
						<span class="property-value" aria-labelledby="TPI_NO_OF_BATCH-label"><g:fieldValue bean="${trainingParticipantInformationInstance}" field="TPI_NO_OF_BATCH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TRAINING_STATUS}">
				<li class="fieldcontain">
					<span id="TRAINING_STATUS-label" class="property-label"><g:message code="trainingParticipantInformation.TRAINING_STATUS.label" default="TRAININGSTATUS" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_STATUS-label"><g:link controller="trainingStatus" action="show" id="${trainingParticipantInformationInstance?.TRAINING_STATUS?.id}">${trainingParticipantInformationInstance?.TRAINING_STATUS?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.TPI_ENTRY_DATE}">
				<li class="fieldcontain">
					<span id="TPI_ENTRY_DATE-label" class="property-label"><g:message code="trainingParticipantInformation.TPI_ENTRY_DATE.label" default="TPIENTRYDATE" /></span>
					
						<span class="property-value" aria-labelledby="TPI_ENTRY_DATE-label"><g:formatDate date="${trainingParticipantInformationInstance?.TPI_ENTRY_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.IS_ACTIVE}">
				<li class="fieldcontain">
					<span id="IS_ACTIVE-label" class="property-label"><g:message code="trainingParticipantInformation.IS_ACTIVE.label" default="ISACTIVE" /></span>
					
						<span class="property-value" aria-labelledby="IS_ACTIVE-label"><g:formatBoolean boolean="${trainingParticipantInformationInstance?.IS_ACTIVE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.CREATE_DATE}">
				<li class="fieldcontain">
					<span id="CREATE_DATE-label" class="property-label"><g:message code="trainingParticipantInformation.CREATE_DATE.label" default="CREATEDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATE_DATE-label"><g:formatDate date="${trainingParticipantInformationInstance?.CREATE_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.CREATE_BY}">
				<li class="fieldcontain">
					<span id="CREATE_BY-label" class="property-label"><g:message code="trainingParticipantInformation.CREATE_BY.label" default="CREATEBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATE_BY-label"><g:fieldValue bean="${trainingParticipantInformationInstance}" field="CREATE_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.UPDATED_BY}">
				<li class="fieldcontain">
					<span id="UPDATED_BY-label" class="property-label"><g:message code="trainingParticipantInformation.UPDATED_BY.label" default="UPDATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${trainingParticipantInformationInstance}" field="UPDATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingParticipantInformationInstance?.UPDATED_DATE}">
				<li class="fieldcontain">
					<span id="UPDATED_DATE-label" class="property-label"><g:message code="trainingParticipantInformation.UPDATED_DATE.label" default="UPDATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_DATE-label"><g:formatDate date="${trainingParticipantInformationInstance?.UPDATED_DATE}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainingParticipantInformationInstance?.id}" />
					<g:link class="edit" action="edit" id="${trainingParticipantInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
