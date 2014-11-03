<%@ page import="up_asset.Up_Asset_Regi_Master" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upasset">
		<g:set var="entityName" value="${message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#edit-up_Asset_Regi_Master" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="Home"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="Asset Register List" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Asset" args="[entityName]" /></g:link></a>

    </p>
		<div id="edit-up_Asset_Regi_Master" class="content scaffold-edit" role="main">
			%{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="Edit Asset Registe" args="[entityName]" /></h3>
                </div>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${up_Asset_Regi_MasterInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${up_Asset_Regi_MasterInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <div class="panel-body">
                <g:form method="post" >
                    %{--<g:hiddenField name="id" value="${up_Asset_Regi_MasterInstance?.id}" />--}%
                    %{--<g:hiddenField name="version" value="${up_Asset_Regi_MasterInstance?.version}" />--}%
                    <fieldset class="form">
                        <g:render template="form"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:actionSubmit class="save btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
                </div>
            </div>
		</div>
	</body>
</html>
