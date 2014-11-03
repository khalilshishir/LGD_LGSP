<%@ page import="procurement.up.otmprocurement.IFT" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'IFT.label', default: 'আই-এফ-টি')}" />
		<title><g:message code="default.create.label/" default="তৈরি করুন" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="আই-এফ-টি লিস্ট" args="[entityName]" /></g:link></a>
    </p>
    <div id="create-IFT" class="content scaffold-create" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.create.label/" default="আই-এফ-টি" args="[entityName]" /></h3>
                <g:if test="${flash.message}">
                    <div  class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${IFTInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${IFTInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>


            <div class="panel-body">

                <g:form action="save" >
                    <fieldset class="form" id="iftForm" name="iftForm">

                        <g:render template="form"/>

                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    <script>
                $('body').on('focus', ".timepicker-default", function () {
                    $(this).timepicker();
                });
    </script>
    </body>
</html>
