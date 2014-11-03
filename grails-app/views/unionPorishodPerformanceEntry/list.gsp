
<%@ page import="grantmanagement.UnionPorishodPerformanceEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unionPorishodPerformanceEntry.label', default: 'Union Porishod Performance Entry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-unionPorishodPerformanceEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

		<div id="list-unionPorishodPerformanceEntry" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<table>--}%
				%{--<thead>--}%
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
					
						<g:sortableColumn property="organiztionType" title="${message(code: 'unionPorishodPerformanceEntry.organiztionType.label', default: 'Organiztion Type')}" />
					
						<th><g:message code="unionPorishodPerformanceEntry.performanceHead.label" default="Performance Head" /></th>
					
						<th><g:message code="unionPorishodPerformanceEntry.performanceIndicator.label" default="Performance Indicator" /></th>
					
						<th><g:message code="unionPorishodPerformanceEntry.markDstribution.label" default="Mark Dstribution" /></th>
					
						<th><g:message code="unionPorishodPerformanceEntry.division.label" default="Division" /></th>
					
						<th><g:message code="unionPorishodPerformanceEntry.district.label" default="District" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unionPorishodPerformanceEntryInstanceList}" status="i" var="unionPorishodPerformanceEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unionPorishodPerformanceEntryInstance.id}">${fieldValue(bean: unionPorishodPerformanceEntryInstance, field: "organiztionType")}</g:link></td>
					
						<td>${fieldValue(bean: unionPorishodPerformanceEntryInstance, field: "performanceHead")}</td>
					
						<td>${fieldValue(bean: unionPorishodPerformanceEntryInstance, field: "performanceIndicator")}</td>
					
						<td>${fieldValue(bean: unionPorishodPerformanceEntryInstance, field: "markDstribution")}</td>
					
						<td>${fieldValue(bean: unionPorishodPerformanceEntryInstance, field: "division")}</td>
					
						<td>${fieldValue(bean: unionPorishodPerformanceEntryInstance, field: "district")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unionPorishodPerformanceEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
