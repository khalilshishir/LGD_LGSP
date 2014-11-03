
<%@ page import="training.TraineeCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'traineeCategory.label', default: 'TraineeCategory')}" />
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
		<div id="show-traineeCategory" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list traineeCategory">
			
				<g:if test="${traineeCategoryInstance?.TRAINEE_CATEGORY_ID}">
				<li class="fieldcontain">
					<span id="TRAINEE_CATEGORY_ID-label" class="property-label"><g:message code="traineeCategory.TRAINEE_CATEGORY_ID.label" default="Trainee Category ID" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_CATEGORY_ID-label"><g:fieldValue bean="${traineeCategoryInstance}" field="TRAINEE_CATEGORY_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${traineeCategoryInstance?.TRAINEE_CATEGORY_NAME}">
				<li class="fieldcontain">
					<span id="TRAINEE_CATEGORY_NAME-label" class="property-label"><g:message code="traineeCategory.TRAINEE_CATEGORY_NAME.label" default="Trainee Category Name" /></span>
					
						<span class="property-value" aria-labelledby="TRAINEE_CATEGORY_NAME-label"><g:fieldValue bean="${traineeCategoryInstance}" field="TRAINEE_CATEGORY_NAME"/></span>
					
				</li>
				</g:if>

                <g:if test="${traineeCategoryInstance?.TRAINEE_CATEGORY_NAME_BN}">
                    <li class="fieldcontain">
                        <span id="TRAINEE_CATEGORY_NAME_BN-label" class="property-label"><g:message code="traineeCategory.TRAINEE_CATEGORY_NAME_BN.label" default="শিক্ষার্থী শ্রেণী বিভাগ" /></span>

                        <span class="property-value" aria-labelledby="TRAINEE_CATEGORY_NAME_BN-label"><g:fieldValue bean="${traineeCategoryInstance}" field="TRAINEE_CATEGORY_NAME_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${traineeCategoryInstance?.NO_OF_TRAINEE_QUANTITY}">
				<li class="fieldcontain">
					<span id="NO_OF_TRAINEE_QUANTITY-label" class="property-label"><g:message code="traineeCategory.NO_OF_TRAINEE_QUANTITY.label" default="No of Trainee Quantity" /></span>
					
						<span class="property-value" aria-labelledby="NO_OF_TRAINEE_QUANTITY-label"><g:fieldValue bean="${traineeCategoryInstance}" field="NO_OF_TRAINEE_QUANTITY"/></span>
					
				</li>
				</g:if>

                <g:if test="${traineeCategoryInstance?.NO_OF_TRAINEE_QUANTITY_BN}">
                    <li class="fieldcontain">
                        <span id="NO_OF_TRAINEE_QUANTITY_BN-label" class="property-label"><g:message code="traineeCategory.NO_OF_TRAINEE_QUANTITY_BN.label" default="শিক্ষার্থী সংখ্যা " /></span>

                        <span class="property-value" aria-labelledby="NO_OF_TRAINEE_QUANTITY_BN-label"><g:fieldValue bean="${traineeCategoryInstance}" field="NO_OF_TRAINEE_QUANTITY_BN"/></span>

                    </li>
                </g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${traineeCategoryInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${traineeCategoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
