
<%@ page import="payroll.Payscale" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payscale.label', default: 'Payscale')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-payscale" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-payscale" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="PAYSCALE_ID" title="${message(code: 'payscale.PAYSCALE_ID.label', default: 'Payscale ID')}" />
					
						<g:sortableColumn property="GRADE_NO" title="${message(code: 'payscale.GRADE_NO.label', default: 'Grade No')}" />

                        <g:sortableColumn property="DESIGNATION_ID" title="${message(code: 'payscale.DESIGNATION_ID.label', default: 'Designation ID')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${payscaleInstanceList}" status="i" var="payscaleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${payscaleInstance.id}">${fieldValue(bean: payscaleInstance, field: "PAYSCALE_ID")}</g:link></td>
					
						<td>${fieldValue(bean: payscaleInstance, field: "GRADE_NO")}</td>
					
						<td>${fieldValue(bean: payscaleInstance, field: "DESIGNATION_ID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${payscaleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
