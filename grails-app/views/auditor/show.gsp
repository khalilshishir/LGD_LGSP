
<%@ page import="audit.Auditor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auditor.label', default: 'Auditor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-auditor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-auditor" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list auditor">
			
				<g:if test="${auditorInstance?.AUDITOR_ID}">
				<li class="fieldcontain">
					<span id="AUDITOR_ID-label" class="property-label"><g:message code="auditor.AUDITOR_ID.label" default="Auditor ID : " /></span>
					
						<span class="property-value" aria-labelledby="AUDITOR_ID-label"><g:fieldValue bean="${auditorInstance}" field="AUDITOR_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditorInstance?.AUDITOR_NAME}">
				<li class="fieldcontain">
					<span id="AUDITOR_NAME-label" class="property-label"><g:message code="auditor.AUDITOR_NAME.label" default="Auditor Name : " /></span>
					
						<span class="property-value" aria-labelledby="AUDITOR_NAME-label"><g:fieldValue bean="${auditorInstance}" field="AUDITOR_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditorInstance?.AUDITOR_DESIGNATION}">
				<li class="fieldcontain">
					<span id="AUDITOR_DESIGNATION-label" class="property-label"><g:message code="auditor.AUDITOR_DESIGNATION.label" default="Auditor Designation : " /></span>
					
						<span class="property-value" aria-labelledby="AUDITOR_DESIGNATION-label"><g:fieldValue bean="${auditorInstance}" field="AUDITOR_DESIGNATION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditorInstance?.AUDITOR_PRES_ADD}">
				<li class="fieldcontain">
					<span id="AUDITOR_PRES_ADD-label" class="property-label"><g:message code="auditor.AUDITOR_PRES_ADD.label" default="Auditor Present Address : " /></span>
					
						<span class="property-value" aria-labelledby="AUDITOR_PRES_ADD-label"><g:fieldValue bean="${auditorInstance}" field="AUDITOR_PRES_ADD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditorInstance?.AUDITOR_PER_ADD}">
				<li class="fieldcontain">
					<span id="AUDITOR_PER_ADD-label" class="property-label"><g:message code="auditor.AUDITOR_PER_ADD.label" default="Auditor Permanent Address : " /></span>
					
						<span class="property-value" aria-labelledby="AUDITOR_PER_ADD-label"><g:fieldValue bean="${auditorInstance}" field="AUDITOR_PER_ADD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditorInstance?.auditFirm}">
				<li class="fieldcontain">
					<span id="auditFirm-label" class="property-label"><g:message code="auditor.auditFirm.label" default="Audit Firm : " /></span>
					
						<span class="property-value" aria-labelledby="auditFirm-label">
                            <g:link controller="auditFirm" action="show" id="${auditorInstance?.auditFirm?.id}">
                                ${auditorInstance?.auditFirm?.AUDIT_FIRM_NAME.encodeAsHTML()}</g:link>
                        </span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${auditorInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${auditorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                </div>
		</div>
	</body>
</html>
