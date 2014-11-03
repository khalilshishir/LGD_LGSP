
<%@ page import="training.Level" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'level.label', default: 'Level')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-level" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="LEVEL_ID" title="${message(code: 'level.LEVEL_ID.label', default: 'Level ID')}" />
					
						<g:sortableColumn property="LEVEL_NAME" title="${message(code: 'level.LEVEL_NAME.label', default: 'Level Name')}" />

                        <g:sortableColumn property="LEVEL_NAME_BN" title="${message(code: 'level.LEVEL_NAME_BN.label', default: 'লেভেল নাম')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${levelInstanceList}" status="i" var="levelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${levelInstance.id}">${fieldValue(bean: levelInstance, field: "LEVEL_ID")}</g:link></td>
					
						<td>${fieldValue(bean: levelInstance, field: "LEVEL_NAME")}</td>

                        <td>${fieldValue(bean: levelInstance, field: "LEVEL_NAME_BN")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${levelInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
