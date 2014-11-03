
<%@ page import="settings.District" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'district.label', default: 'District')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	%{--	<a href="#list-district" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-district" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="DIS_ID" title="${message(code: 'district.DIS_ID.label', default: 'District ID')}" />
					
						<g:sortableColumn property="DIS_NAME" title="${message(code: 'district.DIS_NAME.label', default: 'District Name')}" />
					
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'district.CREATED_BY.label', default: 'CREATEDBY')}" />--}%
					
						%{--<g:sortableColumn property="CREATED_DATE" title="${message(code: 'district.CREATED_DATE.label', default: 'CREATEDDATE')}" />--}%
					
						%{--<g:sortableColumn property="UPDATED_BY" title="${message(code: 'district.UPDATED_BY.label', default: 'UPDATEDBY')}" />--}%
					

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${districtInstanceList}" status="i" var="districtInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${districtInstance.id}">${fieldValue(bean: districtInstance, field: "DIS_ID")}</g:link></td>
					
						<td>${fieldValue(bean: districtInstance, field: "DIS_NAME")}</td>
					
						%{--<td>${fieldValue(bean: districtInstance, field: "CREATED_BY")}</td>--}%
					
						%{--<td><g:formatDate date="${districtInstance.CREATED_DATE}" /></td>--}%
					
						%{--<td>${fieldValue(bean: districtInstance, field: "UPDATED_BY")}</td>--}%
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${districtInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
