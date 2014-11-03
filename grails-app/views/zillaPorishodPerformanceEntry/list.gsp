
<%@ page import="grantmanagement.ZillaPorishodPerformanceEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-zillaPorishodPerformanceEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-zillaPorishodPerformanceEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="organiztionType" title="${message(code: 'zillaPorishodPerformanceEntry.organiztionType.label', default: 'Organiztion Type')}" />
					
						<th><g:message code="zillaPorishodPerformanceEntry.performanceHead.label" default="Performance Head" /></th>
					
						<th><g:message code="zillaPorishodPerformanceEntry.performanceIndicator.label" default="Performance Indicator" /></th>
					
						<th><g:message code="zillaPorishodPerformanceEntry.markDstribution.label" default="Mark Dstribution" /></th>
					
						<th><g:message code="zillaPorishodPerformanceEntry.division.label" default="Division" /></th>
					
						<th><g:message code="zillaPorishodPerformanceEntry.district.label" default="District" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${zillaPorishodPerformanceEntryInstanceList}" status="i" var="zillaPorishodPerformanceEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${zillaPorishodPerformanceEntryInstance.id}">${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "organiztionType")}</g:link></td>
					
						<td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "performanceHead")}</td>
					
						<td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "performanceIndicator")}</td>
					
						<td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "markDstribution")}</td>
					
						<td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "division")}</td>
					
						<td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "district")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${zillaPorishodPerformanceEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
