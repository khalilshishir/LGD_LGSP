
<%@ page import="audit.Auditor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auditor.label', default: 'Auditor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-auditor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="list-auditor" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="AUDITOR_ID" title="${message(code: 'auditor.AUDITOR_ID.label', default: 'Auditor ID')}" />
					
						<g:sortableColumn property="AUDITOR_NAME" title="${message(code: 'auditor.AUDITOR_NAME.label', default: 'Auditor Name')}" />
					
						<g:sortableColumn property="AUDITOR_DESIGNATION" title="${message(code: 'auditor.AUDITOR_DESIGNATION.label', default: 'Auditor Designation')}" />
					
						<g:sortableColumn property="AUDITOR_PRES_ADD" title="${message(code: 'auditor.AUDITOR_PRES_ADD.label', default: 'Auditor Present Address')}" />
					
						<g:sortableColumn property="AUDITOR_PER_ADD" title="${message(code: 'auditor.AUDITOR_PER_ADD.label', default: 'Auditor Permanent Address')}" />
					
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'auditor.CREATED_BY.label', default: 'CREATEDBY')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${auditorInstanceList}" status="i" var="auditorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${auditorInstance.id}">${fieldValue(bean: auditorInstance, field: "AUDITOR_ID")}</g:link></td>
					
						<td>${fieldValue(bean: auditorInstance, field: "AUDITOR_NAME")}</td>
					
						<td>${fieldValue(bean: auditorInstance, field: "AUDITOR_DESIGNATION")}</td>
					
						<td>${fieldValue(bean: auditorInstance, field: "AUDITOR_PRES_ADD")}</td>
					
						<td>${fieldValue(bean: auditorInstance, field: "AUDITOR_PER_ADD")}</td>
					
						%{--<td>${fieldValue(bean: auditorInstance, field: "CREATED_BY")}</td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${auditorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
