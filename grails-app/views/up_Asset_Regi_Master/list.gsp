
<%@ page import="up_asset.Up_Asset_Regi_Master" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upasset">
		<g:set var="entityName" value="${message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-up_Asset_Regi_Master" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code=" home"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Asset" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-up_Asset_Regi_Master" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="Asset Register list" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<th><g:message code="up_Asset_Regi_Master.UP_ASSET_REGISTER.label" default="Asset Register Id" /></th>
                        %{--<g:sortableColumn property="UP_ASSET_REGISTER" title="${message(code: 'up_Asset_Regi_Master.UP_ASSET_REGISTER.label', default: 'Asset Type')}" />--}%
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'up_Asset_Regi_Master.CREATED_BY.label', default: 'CREATEDBY')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="CREATED_DATE" title="${message(code: 'up_Asset_Regi_Master.CREATED_DATE.label', default: 'CREATEDDATE')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="UPDATED_BY" title="${message(code: 'up_Asset_Regi_Master.UPDATED_BY.label', default: 'UPDATEDBY')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'up_Asset_Regi_Master.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />--}%
						%{--<g:message code="up_Asset_Regi_Master.UP_ASSET_REGISTER.label" default="Asset Type"  />--}%
						%{--<g:message code="up_Asset_Regi_Master.UP_ASSET_REGISTER.label" default="Asset Name"  />--}%

					</tr>
				</thead>
				<tbody>
				<g:each in="${up_Asset_Regi_MasterInstanceList}" status="i" var="up_Asset_Regi_MasterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${up_Asset_Regi_MasterInstance.id}">${fieldValue(bean: up_Asset_Regi_MasterInstance, field: "UP_ASSET_REGISTER")}</g:link></td>
                      %{--<td><g:link action="show" id="${up_Asset_Regi_MasterInstance.id}">${fieldValue(bean: up_Asset_Regi_MasterInstance, field: "ASSET_TYPE")}</g:link></td>--}%
						%{--<td>${fieldValue(bean: up_Asset_Regi_MasterInstance, field: "CREATED_BY")}</td>--}%
						%{--<td>${fieldValue(bean: upAssetRegister, field: "ASSET_TYPE")}</td>--}%
						%{--<td>${fieldValue(bean: up_Asset_Regi_MasterInstance, field: "ASSET_NAME")}</td>--}%
					%{----}%
						%{--<td><g:formatDate date="${up_Asset_Regi_MasterInstance.CREATED_DATE}" /></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: up_Asset_Regi_MasterInstance, field: "UPDATED_BY")}</td>--}%
					%{----}%
						%{--<td><g:formatDate date="${up_Asset_Regi_MasterInstance.UPDATED_DATE}" /></td>--}%

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${up_Asset_Regi_MasterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
