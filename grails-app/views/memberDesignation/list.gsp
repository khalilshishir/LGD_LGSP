
<%@ page import="settings.MemberDesignation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memberDesignation.label', default: 'MemberDesignation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-memberDesignation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-memberDesignation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="NAME" title="${message(code: 'memberDesignation.NAME.label', default: 'NAME')}" />
					
						<g:sortableColumn property="CREATED_BY" title="${message(code: 'memberDesignation.CREATED_BY.label', default: 'CREATEDBY')}" />
					
						<g:sortableColumn property="CREATED_DATE" title="${message(code: 'memberDesignation.CREATED_DATE.label', default: 'CREATEDDATE')}" />
					
						<g:sortableColumn property="UPDATED_BY" title="${message(code: 'memberDesignation.UPDATED_BY.label', default: 'UPDATEDBY')}" />
					
						<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'memberDesignation.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memberDesignationInstanceList}" status="i" var="memberDesignationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memberDesignationInstance.id}">${fieldValue(bean: memberDesignationInstance, field: "NAME")}</g:link></td>
					
						<td>${fieldValue(bean: memberDesignationInstance, field: "CREATED_BY")}</td>
					
						<td><g:formatDate date="${memberDesignationInstance.CREATED_DATE}" /></td>
					
						<td>${fieldValue(bean: memberDesignationInstance, field: "UPDATED_BY")}</td>
					
						<td><g:formatDate date="${memberDesignationInstance.UPDATED_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberDesignationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
