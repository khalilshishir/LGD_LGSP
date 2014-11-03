
<%@ page import="payroll.Payscale_Detail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payscale_Detail.label', default: 'Payscale_Detail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-payscale_Detail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-payscale_Detail" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>

                        <g:sortableColumn property="PAYSCALE_ID" title="${message(code: 'payscale_Detail.PAYSCALE_ID.label', default: 'Payscale ID')}" />
					
						<g:sortableColumn property="STAGE" title="${message(code: 'payscale_Detail.STAGE.label', default: 'Stage')}" />
					
						<g:sortableColumn property="BASIC" title="${message(code: 'payscale_Detail.BASIC.label', default: 'Basic')}" />
					
						<g:sortableColumn property="DA" title="${message(code: 'payscale_Detail.DA.label', default: 'DA')}" />
					
						<g:sortableColumn property="HOUSE_RENT" title="${message(code: 'payscale_Detail.HOUSE_RENT.label', default: 'House Rent')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${payscale_DetailInstanceList}" status="i" var="payscale_DetailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${payscale_DetailInstance.id}">${fieldValue(bean: payscale_DetailInstance, field: "PAYSCALE_ID")}</g:link></td>
					
						<td>${fieldValue(bean: payscale_DetailInstance, field: "STAGE")}</td>
					
						<td>${fieldValue(bean: payscale_DetailInstance, field: "BASIC")}</td>
					
						<td>${fieldValue(bean: payscale_DetailInstance, field: "DA")}</td>
					
						<td>${fieldValue(bean: payscale_DetailInstance, field: "HOUSE_RENT")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${payscale_DetailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
