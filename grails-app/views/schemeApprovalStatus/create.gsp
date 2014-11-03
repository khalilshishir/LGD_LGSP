<%@ page import="planningbudget.SchemeApprovalStatus" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schemeApprovalStatus.label', default: 'Scheme Approval Status')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="create-schemeApprovalStatus" class="content scaffold-create" role="main">
			%{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">

                    <h3><g:message code="default.create.label" args="[entityName]" /></h3>

            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${schemeApprovalStatusInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${schemeApprovalStatusInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                </div>


            <div class="panel-body">
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
                <fieldset class="buttons" style="margin-top: 10px">
                    <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>

            </g:form>
            </div>
        </div>
        </div>
    </body>
</html>

