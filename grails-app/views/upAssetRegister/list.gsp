
<%@ page import="up_asset.UpAssetRegister" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upAssetRegister.label', default: 'UpAssetRegister')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-upAssetRegister" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="list-upAssetRegister" class="content scaffold-list" role="main">
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
					
						<th><g:message code="upAssetRegister.ASSET_TYPE.label" default="ASSETTYPE" /></th>
					
						<g:sortableColumn property="ASSET_NAME" title="${message(code: 'upAssetRegister.ASSET_NAME.label', default: 'ASSETNAME')}" />
					
						<g:sortableColumn property="PURCHASE_DATE" title="${message(code: 'upAssetRegister.PURCHASE_DATE.label', default: 'PURCHASEDATE')}" />
					
						<g:sortableColumn property="PURCHASE_AMOUNT" title="${message(code: 'upAssetRegister.PURCHASE_AMOUNT.label', default: 'PURCHASEAMOUNT')}" />
					
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'upAssetRegister.CREATED_BY.label', default: 'CREATEDBY')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="CREATED_DATE" title="${message(code: 'upAssetRegister.CREATED_DATE.label', default: 'CREATEDDATE')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upAssetRegisterInstanceList}" status="i" var="upAssetRegisterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${upAssetRegisterInstance.id}">${fieldValue(bean: upAssetRegisterInstance, field: "ASSET_TYPE")}</g:link></td>
					
						<td>${fieldValue(bean: upAssetRegisterInstance, field: "ASSET_NAME")}</td>
					
						<td><g:formatDate date="${upAssetRegisterInstance.PURCHASE_DATE}" /></td>
					
						<td>${fieldValue(bean: upAssetRegisterInstance, field: "PURCHASE_AMOUNT")}</td>
					
						%{--<td>${fieldValue(bean: upAssetRegisterInstance, field: "CREATED_BY")}</td>--}%
					%{----}%
						%{--<td><g:formatDate date="${upAssetRegisterInstance.CREATED_DATE}" /></td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${upAssetRegisterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
