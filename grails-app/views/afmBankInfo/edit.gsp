<%@ page import="accounts.AfmBankInfo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'afmBankInfo.label', default: 'Bank Information')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-afmBankInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>

				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

     %{--New Design Start--}%

    <div id="edit-afmBankInfo" class="content scaffold-edit myDiv" role="main">
        <div class="inner-wrapper">

            <div class="page-title-block">
                <div align="center" class="myHeader site-title" style="width: 100%">
                    <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
                </div>
                <div class="clear"></div>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${afmBankInfoInstance}">
                <div align="center">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${afmBankInfoInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                    error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>
            <g:form method="post">
                <g:hiddenField name="id" value="${afmBankInfoInstance?.id}"/>
                <g:hiddenField name="version" value="${afmBankInfoInstance?.version}"/>
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset style="margin-top: 22%;" class="buttons myFieldSet">
                    <g:actionSubmit class="save" action="update"
                                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                    <g:actionSubmit class="delete" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate=""
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>
    %{--New Design End--}%
	</body>
</html>
