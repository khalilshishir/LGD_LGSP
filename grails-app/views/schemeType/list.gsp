
<%@ page import="settings.SchemeType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schemeType.label', default: 'SchemeType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-schemeType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-schemeType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="NAME" title="${message(code: 'schemeType.NAME.label', default: 'NAME')}" />
					
						<g:sortableColumn property="CREATED_BY" title="${message(code: 'schemeType.CREATED_BY.label', default: 'CREATEDBY')}" />
					
						<g:sortableColumn property="CREATED_DATE" title="${message(code: 'schemeType.CREATED_DATE.label', default: 'CREATEDDATE')}" />
					
						<g:sortableColumn property="UPDATED_BY" title="${message(code: 'schemeType.UPDATED_BY.label', default: 'UPDATEDBY')}" />
					
						<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'schemeType.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${schemeTypeInstanceList}" status="i" var="schemeTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${schemeTypeInstance.id}">${fieldValue(bean: schemeTypeInstance, field: "NAME")}</g:link></td>
					
						<td>${fieldValue(bean: schemeTypeInstance, field: "CREATED_BY")}</td>
					
						<td><g:formatDate date="${schemeTypeInstance.CREATED_DATE}" /></td>
					
						<td>${fieldValue(bean: schemeTypeInstance, field: "UPDATED_BY")}</td>
					
						<td><g:formatDate date="${schemeTypeInstance.UPDATED_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${schemeTypeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
