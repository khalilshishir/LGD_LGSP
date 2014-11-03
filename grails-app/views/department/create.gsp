<%@ page import="payroll.Department" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#create-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="create-department" class="content scaffold-create" role="main">
			%{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h3>
                </div>

                        <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${departmentInstance}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${departmentInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                            </g:eachError>
                        </ul>
                        </g:hasErrors>
                    <div class="panel-body">

                        <g:form action="save" >
                            <fieldset class="form">

                                <g:render template="form"/>

                            </fieldset>
                            <fieldset class="buttons">
                                <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                                %{--<button class="btn btn-primary btn-sm" type="submit">Submit</button>--}%
                                %{--<button class="btn btn-warning btn-sm" type="submit">Cancel</button>--}%
                            </fieldset>
                        </g:form>
                    </div>
		   </div>
     </div>

	</body>
</html>
