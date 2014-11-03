
<%@ page import="payroll.Designation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'designation.label', default: 'Designation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-designation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>

		<div id="show-designation" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>
        %{--</div>--}%
            <div class="panel-body">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list designation">
			
				<g:if test="${designationInstance?.DESIGNATION_ID}">
				<li class="fieldcontain">
					<span id="DESIGNATION_ID-label" class="property-label"><g:message code="designation.DESIGNATION_ID.label" default="DESIGNATIONID" /></span>
					
						<span class="property-value" aria-labelledby="DESIGNATION_ID-label"><g:fieldValue bean="${designationInstance}" field="DESIGNATION_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.DESIGNATION_NAME}">
				<li class="fieldcontain">
					<span id="DESIGNATION_NAME-label" class="property-label"><g:message code="designation.DESIGNATION_NAME.label" default="DESIGNATIONNAME" /></span>
					
						<span class="property-value" aria-labelledby="DESIGNATION_NAME-label"><g:fieldValue bean="${designationInstance}" field="DESIGNATION_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.IS_ACTIVE}">
				<li class="fieldcontain">
					<span id="IS_ACTIVE-label" class="property-label"><g:message code="designation.IS_ACTIVE.label" default="ISACTIVE" /></span>
					
						<span class="property-value" aria-labelledby="IS_ACTIVE-label"><g:formatBoolean boolean="${designationInstance?.IS_ACTIVE}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${designationInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${designationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                </div>
            </div>
		</div>
	</body>
</html>
