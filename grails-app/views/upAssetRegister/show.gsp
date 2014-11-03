
<%@ page import="up_asset.UpAssetRegister" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upAssetRegister.label', default: 'UpAssetRegister')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-upAssetRegister" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-upAssetRegister" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list upAssetRegister">
			
				<g:if test="${upAssetRegisterInstance?.ASSET_TYPE}">
				<li class="fieldcontain">
					<span id="ASSET_TYPE-label" class="property-label"><g:message code="upAssetRegister.ASSET_TYPE.label" default="ASSETTYPE" /></span>
					
						<span class="property-value" aria-labelledby="ASSET_TYPE-label"><g:link controller="allLookup" action="show" id="${upAssetRegisterInstance?.ASSET_TYPE?.id}">${upAssetRegisterInstance?.ASSET_TYPE?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${upAssetRegisterInstance?.ASSET_NAME}">
				<li class="fieldcontain">
					<span id="ASSET_NAME-label" class="property-label"><g:message code="upAssetRegister.ASSET_NAME.label" default="ASSETNAME" /></span>
					
						<span class="property-value" aria-labelledby="ASSET_NAME-label"><g:fieldValue bean="${upAssetRegisterInstance}" field="ASSET_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upAssetRegisterInstance?.PURCHASE_DATE}">
				<li class="fieldcontain">
					<span id="PURCHASE_DATE-label" class="property-label"><g:message code="upAssetRegister.PURCHASE_DATE.label" default="PURCHASEDATE" /></span>
					
						<span class="property-value" aria-labelledby="PURCHASE_DATE-label"><g:formatDate date="${upAssetRegisterInstance?.PURCHASE_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upAssetRegisterInstance?.PURCHASE_AMOUNT}">
				<li class="fieldcontain">
					<span id="PURCHASE_AMOUNT-label" class="property-label"><g:message code="upAssetRegister.PURCHASE_AMOUNT.label" default="PURCHASEAMOUNT" /></span>
					
						<span class="property-value" aria-labelledby="PURCHASE_AMOUNT-label"><g:fieldValue bean="${upAssetRegisterInstance}" field="PURCHASE_AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upAssetRegisterInstance?.CREATED_BY}">
				<li class="fieldcontain">
					<span id="CREATED_BY-label" class="property-label"><g:message code="upAssetRegister.CREATED_BY.label" default="CREATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${upAssetRegisterInstance}" field="CREATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upAssetRegisterInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="upAssetRegister.CREATED_DATE.label" default="CREATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${upAssetRegisterInstance?.CREATED_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upAssetRegisterInstance?.UPDATED_BY}">
				<li class="fieldcontain">
					<span id="UPDATED_BY-label" class="property-label"><g:message code="upAssetRegister.UPDATED_BY.label" default="UPDATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${upAssetRegisterInstance}" field="UPDATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upAssetRegisterInstance?.UPDATED_DATE}">
				<li class="fieldcontain">
					<span id="UPDATED_DATE-label" class="property-label"><g:message code="upAssetRegister.UPDATED_DATE.label" default="UPDATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_DATE-label"><g:formatDate date="${upAssetRegisterInstance?.UPDATED_DATE}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${upAssetRegisterInstance?.id}" />
					<g:link class="edit" action="edit" id="${upAssetRegisterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
