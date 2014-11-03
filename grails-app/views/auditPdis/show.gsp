
<%@ page import="audit.AuditPdis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auditPdis.label', default: 'Audit Package Distribution')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-auditPdis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="show-auditPdis" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list auditPdis">
			
				<g:if test="${auditPdisInstance?.AUDIT_PDIS_ID}">
				<li class="fieldcontain">
					<span id="AUDIT_PDIS_ID-label" class="property-label"><g:message code="auditPdis.AUDIT_PDIS_ID.label" default="Audit Package Distribution ID : " /></span>
					
						<span class="property-value" aria-labelledby="AUDIT_PDIS_ID-label"><g:fieldValue bean="${auditPdisInstance}" field="AUDIT_PDIS_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditPdisInstance?.AUDIT_PDIS_DATE}">
				<li class="fieldcontain">
					<span id="AUDIT_PDIS_DATE-label" class="property-label"><g:message code="auditPdis.AUDIT_PDIS_DATE.label" default="Audit Package Distribution Date : " /></span>
					
						<span class="property-value" aria-labelledby="AUDIT_PDIS_DATE-label"><g:formatDate date="${auditPdisInstance?.AUDIT_PDIS_DATE}" /></span>
					
				</li>
				</g:if>

			
				<g:if test="${auditPdisInstance?.auditPackage}">
				<li class="fieldcontain">
					<span id="auditPackage-label" class="property-label"><g:message code="auditPdis.auditPackage.label" default="Audit Package : " /></span>
					
						<span class="property-value" aria-labelledby="auditPackage-label"><g:link controller="auditPackage" action="show" id="${auditPdisInstance?.auditPackage?.id}">${auditPdisInstance?.auditPackage?.AUDIT_PACK_NAME.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

                <g:if test="${auditPdisInstance?.auditFirm}">
                    <li class="fieldcontain">
                        <span id="auditFirm-label" class="property-label"><g:message code="auditPdis.auditFirm.label" default="Audit Firm : " /></span>

                        <span class="property-value" aria-labelledby="auditFirm-label"><g:link controller="auditFirm" action="show" id="${auditPdisInstance?.auditFirm?.id}">${auditPdisInstance?.auditFirm?.AUDIT_FIRM_NAME.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>
			
				<g:if test="${auditPdisInstance?.auditor}">
				<li class="fieldcontain">
					<span id="auditor-label" class="property-label"><g:message code="auditPdis.auditor.label" default="Auditor : " /></span>
					
						<span class="property-value" aria-labelledby="auditor-label"><g:link controller="auditor" action="show" id="${auditPdisInstance?.auditor?.id}">${auditPdisInstance?.auditor?.AUDITOR_NAME.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditPdisInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="auditPdis.unionParishad.label" default="Union Parishad : " /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${auditPdisInstance?.unionParishad?.id}">${auditPdisInstance?.unionParishad?.UP_NAME.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${auditPdisInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${auditPdisInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
		</div>
	</body>
</html>
