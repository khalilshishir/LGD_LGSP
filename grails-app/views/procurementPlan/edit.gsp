<%@ page import="procurement.pmu.ProcurementPlan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'procurementPlan.label', default: 'ProcurementPlan')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>


    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>

    </p>

    <div id="edit-designation" class="content scaffold-edit" role="main">
        %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h3>
            </div>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${procurementPlanInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${procurementPlanInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>


            %{--<a href="#edit-procurementPlan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    %{----}%
		%{--<div id="edit-procurementPlan" class="content scaffold-edit" role="main">--}%
			%{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<g:hasErrors bean="${procurementPlanInstance}">--}%
			%{--<ul class="errors" role="alert">--}%
				%{--<g:eachError bean="${procurementPlanInstance}" var="error">--}%
				%{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
				%{--</g:eachError>--}%
			%{--</ul>--}%
                %{----}%
			%{--</g:hasErrors>--}%
            %{----}%
            %{----}%

			<g:form method="post" >
				<g:hiddenField name="id" value="${procurementPlanInstance?.id}" />
				<g:hiddenField name="version" value="${procurementPlanInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <g:actionSubmit class="delete btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

                </fieldset>
			</g:form>
		</div>
        </div>

	</body>
</html>
