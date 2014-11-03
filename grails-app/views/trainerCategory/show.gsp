
<%@ page import="training.TrainerCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainerCategory.label', default: 'TrainerCategory')}" />
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
		<div id="show-trainerCategory" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list trainerCategory">
			
				<g:if test="${trainerCategoryInstance?.TRAINER_CATEGORY_ID}">
				<li class="fieldcontain">
					<span id="TRAINER_CATEGORY_ID-label" class="property-label"><g:message code="trainerCategory.TRAINER_CATEGORY_ID.label" default="Trainer Category ID" /></span>
					
						<span class="property-value" aria-labelledby="TRAINER_CATEGORY_ID-label"><g:fieldValue bean="${trainerCategoryInstance}" field="TRAINER_CATEGORY_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainerCategoryInstance?.TRAINER_CATEGORY_NAME}">
				<li class="fieldcontain">
					<span id="TRAINER_CATEGORY_NAME-label" class="property-label"><g:message code="trainerCategory.TRAINER_CATEGORY_NAME.label" default="Trainer Category Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINER_CATEGORY_NAME-label"><g:fieldValue bean="${trainerCategoryInstance}" field="TRAINER_CATEGORY_NAME"/></span>
					
				</li>
				</g:if>

                <g:if test="${trainerCategoryInstance?.TRAINER_CATEGORY_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINER_CATEGORY_NAME_BN-label" class="property-label"><g:message code="trainerCategory.TRAINER_CATEGORY_NAME_BN.label" default="টেইনার ক্যাটাগড়ি নাম" /></span>

                        <span class="property-value" aria-labelledby="TRAINER_CATEGORY_NAME_BN-label"><g:fieldValue bean="${trainerCategoryInstance}" field="TRAINER_CATEGORY_NAME_BN"/></span>

                    </li>
                </g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trainerCategoryInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${trainerCategoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
