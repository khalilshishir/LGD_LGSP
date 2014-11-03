
<%@ page import="procurement.pmu.Supplier" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-supplier" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-supplier" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list supplier">
			
				<g:if test="${supplierInstance?.SUPP_CODE}">
				<li class="fieldcontain">
					<span id="SUPP_CODE-label" class="property-label"><g:message code="supplier.SUPP_CODE.label" default="SUPPCODE" /></span>
					
						<span class="property-value" aria-labelledby="SUPP_CODE-label"><g:fieldValue bean="${supplierInstance}" field="SUPP_CODE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.SUPP_NAME}">
				<li class="fieldcontain">
					<span id="SUPP_NAME-label" class="property-label"><g:message code="supplier.SUPP_NAME.label" default="SUPPNAME" /></span>
					
						<span class="property-value" aria-labelledby="SUPP_NAME-label"><g:fieldValue bean="${supplierInstance}" field="SUPP_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.SUPP_ADDRESS}">
				<li class="fieldcontain">
					<span id="SUPP_ADDRESS-label" class="property-label"><g:message code="supplier.SUPP_ADDRESS.label" default="SUPPADDRESS" /></span>
					
						<span class="property-value" aria-labelledby="SUPP_ADDRESS-label"><g:fieldValue bean="${supplierInstance}" field="SUPP_ADDRESS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.FILE_UPLOAD}">
				<li class="fieldcontain">
					<span id="FILE_UPLOAD-label" class="property-label"><g:message code="supplier.FILE_UPLOAD.label" default="FILEUPLOAD" /></span>
					
						<span class="property-value" aria-labelledby="FILE_UPLOAD-label"><g:fieldValue bean="${supplierInstance}" field="FILE_UPLOAD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.CREATEDATE}">
				<li class="fieldcontain">
					<span id="CREATEDATE-label" class="property-label"><g:message code="supplier.CREATEDATE.label" default="CREATEDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATEDATE-label"><g:formatDate date="${supplierInstance?.CREATEDATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.ISACTIVE}">
				<li class="fieldcontain">
					<span id="ISACTIVE-label" class="property-label"><g:message code="supplier.ISACTIVE.label" default="ISACTIVE" /></span>
					
						<span class="property-value" aria-labelledby="ISACTIVE-label"><g:formatBoolean boolean="${supplierInstance?.ISACTIVE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.CREATEBY}">
				<li class="fieldcontain">
					<span id="CREATEBY-label" class="property-label"><g:message code="supplier.CREATEBY.label" default="CREATEBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATEBY-label"><g:fieldValue bean="${supplierInstance}" field="CREATEBY"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${supplierInstance?.id}" />
					<g:link class="edit" action="edit" id="${supplierInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
