
<%@ page import="grantmanagement.PerformanceIndicator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'performanceIndicator.label', default: 'Performance Indicator')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-performanceIndicator" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="indicatorName" title="${message(code: 'performanceIndicator.indicatorName.label', default: 'Indicator Name')}" />
					
						<th><g:message code="performanceIndicator.performanceHead.label" default="Performance Head" /></th>
					
						<g:sortableColumn property="mark" title="${message(code: 'performanceIndicator.mark.label', default: 'Mark')}" />
					
						<g:sortableColumn property="performanceMeasure" title="${message(code: 'performanceIndicator.performanceMeasure.label', default: 'Performance Measure')}" />
					
						<g:sortableColumn property="meansOfVerification" title="${message(code: 'performanceIndicator.meansOfVerification.label', default: 'Means Of Verification')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${performanceIndicatorInstanceList}" status="i" var="performanceIndicatorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${performanceIndicatorInstance.id}">${fieldValue(bean: performanceIndicatorInstance, field: "indicatorName")}</g:link></td>

                        <td><g:link action="show" id="${performanceIndicatorInstance.performanceHead.id}" controller="performanceHead"> ${fieldValue(bean: performanceIndicatorInstance, field: "performanceHead")}</g:link></td>
						%{--<td>${fieldValue(bean: performanceIndicatorInstance, field: "performanceHead")}</td>--}%

						<td>${fieldValue(bean: performanceIndicatorInstance, field: "mark")}</td>
					
						<td>${fieldValue(bean: performanceIndicatorInstance, field: "performanceMeasure")}</td>
					
						<td>${fieldValue(bean: performanceIndicatorInstance, field: "meansOfVerification")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${performanceIndicatorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
