
<%@ page import="training.OthersTraining" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'othersTraining.label', default: 'OthersTraining')}" />
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
		<div id="show-othersTraining" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list othersTraining">
			
				<g:if test="${othersTrainingInstance?.OTH_TR_ID}">
				<li class="fieldcontain">
					<span id="OTH_TR_ID-label" class="property-label"><g:message code="othersTraining.OTH_TR_ID.label" default="Others Training ID" /></span>
					
						<span class="property-value" aria-labelledby="OTH_TR_ID-label"><g:fieldValue bean="${othersTrainingInstance}" field="OTH_TR_ID"/></span>
					
				</li>
				</g:if>

				<g:if test="${othersTrainingInstance?.OTH_TR_NAME}">
				<li class="fieldcontain">
					<span id="OTH_TR_NAME-label" class="property-label"><g:message code="othersTraining.OTH_TR_NAME.label" default="Others Training Name" /></span>

						<span class="property-value" aria-labelledby="OTH_TR_NAME-label"><g:fieldValue bean="${othersTrainingInstance}" field="OTH_TR_NAME"/></span>

				</li>
				</g:if>

                <g:if test="${othersTrainingInstance?.OTH_TR_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="OTH_TR_NAME_BN-label" class="property-label"><g:message code="othersTraining.OTH_TR_NAME_BN.label" default="অন্যান্য প্রশিক্ষণ নাম" /></span>

                        <span class="property-value" aria-labelledby="OTH_TR_NAME_BN-label"><g:fieldValue bean="${othersTrainingInstance}" field="OTH_TR_NAME_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${othersTrainingInstance?.OTH_TR_PARTICI_NAME}">
				<li class="fieldcontain">
					<span id="OTH_TR_PARTICI_NAME-label" class="property-label"><g:message code="othersTraining.OTH_TR_PARTICI_NAME.label" default="Others Training Participant Name" /></span>
					
						<span class="property-value" aria-labelledby="OTH_TR_PARTICI_NAME-label"><g:fieldValue bean="${othersTrainingInstance}" field="OTH_TR_PARTICI_NAME"/></span>
					
				</li>
				</g:if>

                <g:if test="${othersTrainingInstance?.OTH_TR_PARTICI_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="OTH_TR_PARTICI_NAME_BN-label" class="property-label"><g:message code="othersTraining.OTH_TR_PARTICI_NAME_BN.label" default="অন্যান্য প্রশিক্ষণ অংশগ্রহণকারী নাম" /></span>

                        <span class="property-value" aria-labelledby="OTH_TR_PARTICI_NAME_BN-label"><g:fieldValue bean="${othersTrainingInstance}" field="OTH_TR_PARTICI_NAME_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${othersTrainingInstance?.OTH_TR_PARTICI_ATTEN}">
				<li class="fieldcontain">
					<span id="OTH_TR_PARTICI_ATTEN-label" class="property-label"><g:message code="othersTraining.OTH_TR_PARTICI_ATTEN.label" default="Others Training Participant Attendence" /></span>
					
						<span class="property-value" aria-labelledby="OTH_TR_PARTICI_ATTEN-label"><g:fieldValue bean="${othersTrainingInstance}" field="OTH_TR_PARTICI_ATTEN"/></span>
					
				</li>
				</g:if>

                <g:if test="${othersTrainingInstance?.OTH_TR_PARTICI_ATTEN_BN}">
                    <li class="fieldcontain">
                        <span id="OTH_TR_PARTICI_ATTEN_BN-label" class="property-label"><g:message code="othersTraining.OTH_TR_PARTICI_ATTEN_BN.label" default="অন্যান্য প্রশিক্ষণ অংশগ্রহণকারী উপস্থিতি" /></span>

                        <span class="property-value" aria-labelledby="OTH_TR_PARTICI_ATTEN_BN-label"><g:fieldValue bean="${othersTrainingInstance}" field="OTH_TR_PARTICI_ATTEN_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${othersTrainingInstance?.OTH_TR_START_DATE}">
				<li class="fieldcontain">
					<span id="OTH_TR_START_DATE-label" class="property-label"><g:message code="othersTraining.OTH_TR_START_DATE.label" default="Others Training Start Date" /></span>
					
						<span class="property-value" aria-labelledby="OTH_TR_START_DATE-label"><g:formatDate date="${othersTrainingInstance?.OTH_TR_START_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${othersTrainingInstance?.OTH_TR_END_DATE}">
				<li class="fieldcontain">
					<span id="OTH_TR_END_DATE-label" class="property-label"><g:message code="othersTraining.OTH_TR_END_DATE.label" default="Others Training End Date" /></span>
					
						<span class="property-value" aria-labelledby="OTH_TR_END_DATE-label"><g:formatDate date="${othersTrainingInstance?.OTH_TR_END_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${othersTrainingInstance?.LEVEL}">
				<li class="fieldcontain">
					<span id="LEVEL-label" class="property-label"><g:message code="othersTraining.LEVEL.label" default="Level Name" /></span>
					
						<span class="property-value" aria-labelledby="LEVEL-label"><g:fieldValue bean="${othersTrainingInstance}" field="LEVEL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${othersTrainingInstance?.TRAINEE_CATEGORY}">
				<li class="fieldcontain">
					<span id="TRAINEE_CATEGORY-label" class="property-label"><g:message code="othersTraining.TRAINEE_CATEGORY.label" default="Training Category Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_CATEGORY-label"><g:fieldValue bean="${othersTrainingInstance}" field="TRAINEE_CATEGORY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${othersTrainingInstance?.TRAINING_TYPE}">
				<li class="fieldcontain">
					<span id="TRAINING_TYPE-label" class="property-label"><g:message code="othersTraining.TRAINING_TYPE.label" default="Training Type Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINING_TYPE-label"><g:fieldValue bean="${othersTrainingInstance}" field="TRAINING_TYPE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${othersTrainingInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="othersTraining.UNION_PARISHAD.label" default="Union Parishad Name" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:fieldValue bean="${othersTrainingInstance}" field="UNION_PARISHAD"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${othersTrainingInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${othersTrainingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
