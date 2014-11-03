
<%@ page import="integration.LgedOffice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LGEDOffic.label', default: 'LGEDOffic')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LGEDOffic" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LGEDOffic" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="lgedOfficName" title="${message(code: 'LGEDOffic.lgedOfficName.label', default: 'Lged Offic Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LGEDOfficInstanceList}" status="i" var="LGEDOfficInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LGEDOfficInstance.id}">${fieldValue(bean: LGEDOfficInstance, field: "lgedOfficName")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LGEDOfficInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
