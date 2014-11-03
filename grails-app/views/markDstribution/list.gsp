
<%@ page import="grantmanagement.MarkDstribution" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'markDstribution.label', default: 'Mark Dstribution')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-markDstribution" class="content scaffold-list" role="main">
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
					    <th>&nbsp;</th>
						<th><g:message code="markDstribution.performanceHead.label" default="Performance Head" /></th>
					
						<th><g:message code="markDstribution.performanceIndicator.label" default="Performance Indicator" /></th>
					
						<g:sortableColumn property="rules" title="${message(code: 'markDstribution.rules.label', default: 'Rules')}" />
					
						<g:sortableColumn property="mark" title="${message(code: 'markDstribution.mark.label', default: 'Mark')}" />
					
						<g:sortableColumn property="slNo" title="${message(code: 'markDstribution.slNo.label', default: 'Sl No')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${markDstributionInstanceList}" status="i" var="markDstributionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${markDstributionInstance.id}">Select</g:link></td>

                        <td><g:link action="show" controller="performanceHead" id="${markDstributionInstance?.performanceHead}">${fieldValue(bean: markDstributionInstance, field: "performanceHead")}</g:link></td>
					
						<td><g:link action = "show" id="${markDstributionInstance.performanceIndicator.id}" controller="performanceIndicator"> ${fieldValue(bean: markDstributionInstance, field: "performanceIndicator")} </g:link>    </td>
					
						<td>${fieldValue(bean: markDstributionInstance, field: "rules")}</td>
					
						<td>${fieldValue(bean: markDstributionInstance, field: "mark")}</td>
					
						<td>${fieldValue(bean: markDstributionInstance, field: "slNo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${markDstributionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
