
<%@ page import="settings.CommitteeLevel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'committeeLevel.label', default: 'CommitteeLevel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-committeeLevel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

		<div id="list-committeeLevel" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="NAME" title="${message(code: 'committeeLevel.NAME.label', default: 'Name')}" />
					
						<g:sortableColumn property="CREATED_BY" title="${message(code: 'committeeLevel.CREATED_BY.label', default: 'Created By')}" />
					
						<g:sortableColumn property="CREATED_DATE" title="${message(code: 'committeeLevel.CREATED_DATE.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="UPDATED_BY" title="${message(code: 'committeeLevel.UPDATED_BY.label', default: 'Updated By')}" />
					
						%{--<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'committeeLevel.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${committeeLevelInstanceList}" status="i" var="committeeLevelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${committeeLevelInstance.id}">${fieldValue(bean: committeeLevelInstance, field: "NAME")}</g:link></td>
					
						<td>${fieldValue(bean: committeeLevelInstance, field: "CREATED_BY")}</td>
					
						<td><g:formatDate date="${committeeLevelInstance.CREATED_DATE}" /></td>
					
						<td>${fieldValue(bean: committeeLevelInstance, field: "UPDATED_BY")}</td>
					
						%{--<td><g:formatDate date="${committeeLevelInstance.UPDATED_DATE}" /></td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${committeeLevelInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
