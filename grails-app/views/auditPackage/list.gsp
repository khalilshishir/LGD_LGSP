
<%@ page import="audit.AuditPackage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auditPackage.label', default: 'AuditPackage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-auditPackage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="list-auditPackage" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="AUDIT_PACK_ID" title="${message(code: 'auditPackage.AUDIT_PACK_ID.label', default: 'Audit Package ID')}" />
					
						<g:sortableColumn property="AUDIT_PACK_NAME" title="${message(code: 'auditPackage.AUDIT_PACK_NAME.label', default: 'Audit Package Name')}" />
					
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'auditPackage.CREATED_BY.label', default: 'CREATEDBY')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="CREATED_DATE" title="${message(code: 'auditPackage.CREATED_DATE.label', default: 'CREATEDDATE')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="UPDATED_BY" title="${message(code: 'auditPackage.UPDATED_BY.label', default: 'UPDATEDBY')}" />--}%
					%{----}%

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${auditPackageInstanceList}" status="i" var="auditPackageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${auditPackageInstance.id}">${fieldValue(bean: auditPackageInstance, field: "AUDIT_PACK_ID")}</g:link></td>
					
						<td>${fieldValue(bean: auditPackageInstance, field: "AUDIT_PACK_NAME")}</td>
					
						%{--<td>${fieldValue(bean: auditPackageInstance, field: "CREATED_BY")}</td>--}%
					%{----}%
						%{--<td><g:formatDate date="${auditPackageInstance.CREATED_DATE}" /></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: auditPackageInstance, field: "UPDATED_BY")}</td>--}%
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${auditPackageInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
