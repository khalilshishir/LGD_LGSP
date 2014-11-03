
<%@ page import="audit.AuditPdis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auditPdis.label', default: 'AuditPdis')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-auditPdis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-auditPdis" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="AUDIT_PDIS_ID" title="${message(code: 'auditPdis.AUDIT_PDIS_ID.label', default: 'Audit Package Distribution ID')}" />
					
						<g:sortableColumn property="AUDIT_PDIS_DATE" title="${message(code: 'auditPdis.AUDIT_PDIS_DATE.label', default: 'Audit Package Distribution Date')}" />
					
						<g:sortableColumn property="AUDIT_FIRM_NAME" title="${message(code: 'auditPdis.auditFirm.label', default: 'Audit Firm Name')}" />
					
						<g:sortableColumn property="AUDIT_PACK_NAME" title="${message(code: 'auditPdis.auditPackage.label', default: 'Audit Package Name')}" />
					
						<g:sortableColumn property="AUDITOR_NAME" title="${message(code: 'auditPdis.auditor.label', default: 'Auditor Name')}" />
					
						<g:sortableColumn property="UP_NAME" title="${message(code: 'auditPdis.unionParishad.label', default: 'UnionParishad Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${auditPdisInstanceList}" status="i" var="auditPdisInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${auditPdisInstance.id}">${fieldValue(bean: auditPdisInstance, field: "AUDIT_PDIS_ID")}</g:link></td>
					
						<td><g:formatDate date="${auditPdisInstance.AUDIT_PDIS_DATE}" /></td>
					
						<td>${fieldValue(bean: auditPdisInstance, field: "auditFirm.AUDIT_FIRM_NAME")}</td>
						<td>${fieldValue(bean: auditPdisInstance, field: "auditPackage.AUDIT_PACK_NAME")}</td>
						<td>${fieldValue(bean: auditPdisInstance, field: "auditor.AUDITOR_NAME")}</td>
						<td>${fieldValue(bean: auditPdisInstance, field: "unionParishad.UP_NAME")}</td>




					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${auditPdisInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
