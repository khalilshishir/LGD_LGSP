
<%@ page import="planningbudget.SchemeName" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schemeName.label', default: 'Scheme Name')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-schemeName" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
        <div id="list-schemeName" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed" >
                <thead>
                <tr>

                    <g:sortableColumn property="schemeName" title="${message(code: 'schemeName.schemeName.label', default: 'Scheme Name')}" />
						<th><g:message code="schemeName.unionParishad.label" default="Union Parishad" /></th>
					
						<th><g:message code="schemeName.ward.label" default="Ward" /></th>
					
						<th><g:message code="schemeName.fiscalYear.label" default="Fiscal Year" /></th>
					

					
						%{--<g:sortableColumn property="isApproved" title="${message(code: 'schemeName.isApproved.label', default: 'Is Approved')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${schemeNameInstanceList}" status="i" var="schemeNameInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${schemeNameInstance.id}">${fieldValue(bean: schemeNameInstance, field: "schemeName")}</g:link></td>
						<td>${fieldValue(bean: schemeNameInstance, field: "unionParishad.UP_NAME")}</td>
					
						<td>${fieldValue(bean: schemeNameInstance, field: "ward.WARD_NO")}</td>
					
						<td>${fieldValue(bean: schemeNameInstance, field: "fiscalYear")}</td>
					
						%{--<td>${fieldValue(bean: schemeNameInstance, field: "schemeName")}</td>--}%




						%{--<td><g:formatBoolean boolean="${schemeNameInstance.isApproved}" /></td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${schemeNameInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
