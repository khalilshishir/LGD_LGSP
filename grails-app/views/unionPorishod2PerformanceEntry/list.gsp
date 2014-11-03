
<%@ page import="grantmanagement.UnionPorishod2PerformanceEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unionPorishod2PerformanceEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unionPorishod2PerformanceEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="organiztionType" title="${message(code: 'unionPorishod2PerformanceEntry.organiztionType.label', default: 'Organiztion Type')}" />
					
						<th><g:message code="unionPorishod2PerformanceEntry.performanceHead.label" default="Performance Head" /></th>
					
						<th><g:message code="unionPorishod2PerformanceEntry.performanceIndicator.label" default="Performance Indicator" /></th>
					
						<th><g:message code="unionPorishod2PerformanceEntry.markDstribution.label" default="Mark Dstribution" /></th>
					
						<th><g:message code="unionPorishod2PerformanceEntry.division.label" default="Division" /></th>
					
						<th><g:message code="unionPorishod2PerformanceEntry.district.label" default="District" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unionPorishod2PerformanceEntryInstanceList}" status="i" var="unionPorishod2PerformanceEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unionPorishod2PerformanceEntryInstance.id}">${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "organiztionType")}</g:link></td>
					
						<td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "performanceHead")}</td>
					
						<td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "performanceIndicator")}</td>
					
						<td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "markDstribution")}</td>
					
						<td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "division")}</td>
					
						<td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "district")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unionPorishod2PerformanceEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
