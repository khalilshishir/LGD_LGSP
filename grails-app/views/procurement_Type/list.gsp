
<%@ page import="procurement.up.Procurement_Type" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'procurement_Type.label', default: 'Procurement Type')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	%{--	<a href="#list-procurement_Type" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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

    <div id="list-procurement_Type" class="content scaffold-list" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>
        </div>

        %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="NAME" title="${message(code: 'procurement_Type.NAME.label', default: 'NAME')}" />
					
						<g:sortableColumn property="CREATED_BY" title="${message(code: 'procurement_Type.CREATED_BY.label', default: 'CREATEDBY')}" />
					
						<g:sortableColumn property="CREATED_DATE" title="${message(code: 'procurement_Type.CREATED_DATE.label', default: 'CREATEDDATE')}" />
					
						<g:sortableColumn property="UPDATED_BY" title="${message(code: 'procurement_Type.UPDATED_BY.label', default: 'UPDATEDBY')}" />
					
						<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'procurement_Type.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${procurement_TypeInstanceList}" status="i" var="procurement_TypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${procurement_TypeInstance.id}">${fieldValue(bean: procurement_TypeInstance, field: "NAME")}</g:link></td>
					
						<td>${fieldValue(bean: procurement_TypeInstance, field: "CREATED_BY")}</td>
					
						<td><g:formatDate date="${procurement_TypeInstance.CREATED_DATE}" /></td>
					
						<td>${fieldValue(bean: procurement_TypeInstance, field: "UPDATED_BY")}</td>
					
						<td><g:formatDate date="${procurement_TypeInstance.UPDATED_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>
</html>
