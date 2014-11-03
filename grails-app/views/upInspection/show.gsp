
<%@ page import="audit.UpInspection" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upInspection.label', default: 'UpInspection')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-upInspection" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-upInspection" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
			<g:if test="${flash.message}">

                <div class="panel panel-info">
           <div class="panel-heading">
               <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<div class="message" role="status">${flash.message}</div>
			</g:if>


            <div class="panel-body">


                <ol class="property-list upInspection">
			
				<g:if test="${upInspectionInstance?.UP_I_REP_NAME}">
				<li class="fieldcontain">
					<span id="UP_I_REP_NAME-label" class="property-label"><g:message code="upInspection.UP_I_REP_NAME.label" default="UPIREPNAME" /></span>
					
						<span class="property-value" aria-labelledby="UP_I_REP_NAME-label"><g:fieldValue bean="${upInspectionInstance}" field="UP_I_REP_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.UP_I_REP_NAME_BN}">
				<li class="fieldcontain">
					<span id="UP_I_REP_NAME_BN-label" class="property-label"><g:message code="upInspection.UP_I_REP_NAME_BN.label" default="UPIREPNAMEBN" /></span>
					
						<span class="property-value" aria-labelledby="UP_I_REP_NAME_BN-label"><g:fieldValue bean="${upInspectionInstance}" field="UP_I_REP_NAME_BN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.UP_I_REP_DES}">
				<li class="fieldcontain">
					<span id="UP_I_REP_DES-label" class="property-label"><g:message code="upInspection.UP_I_REP_DES.label" default="UPIREPDES" /></span>
					
						<span class="property-value" aria-labelledby="UP_I_REP_DES-label"><g:fieldValue bean="${upInspectionInstance}" field="UP_I_REP_DES"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.UP_I_REP_DES_BN}">
				<li class="fieldcontain">
					<span id="UP_I_REP_DES_BN-label" class="property-label"><g:message code="upInspection.UP_I_REP_DES_BN.label" default="UPIREPDESBN" /></span>
					
						<span class="property-value" aria-labelledby="UP_I_REP_DES_BN-label"><g:fieldValue bean="${upInspectionInstance}" field="UP_I_REP_DES_BN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.IFROM_DATE}">
				<li class="fieldcontain">
					<span id="IFROM_DATE-label" class="property-label"><g:message code="upInspection.IFROM_DATE.label" default="IFROMDATE" /></span>
					
						<span class="property-value" aria-labelledby="IFROM_DATE-label"><g:formatDate date="${upInspectionInstance?.IFROM_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.ITO_DATE}">
				<li class="fieldcontain">
					<span id="ITO_DATE-label" class="property-label"><g:message code="upInspection.ITO_DATE.label" default="ITODATE" /></span>
					
						<span class="property-value" aria-labelledby="ITO_DATE-label"><g:formatDate date="${upInspectionInstance?.ITO_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.CREATED_BY}">
				<li class="fieldcontain">
					<span id="CREATED_BY-label" class="property-label"><g:message code="upInspection.CREATED_BY.label" default="CREATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${upInspectionInstance}" field="CREATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="upInspection.CREATED_DATE.label" default="CREATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${upInspectionInstance?.CREATED_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.UPDATED_BY}">
				<li class="fieldcontain">
					<span id="UPDATED_BY-label" class="property-label"><g:message code="upInspection.UPDATED_BY.label" default="UPDATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${upInspectionInstance}" field="UPDATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.UPDATED_DATE}">
				<li class="fieldcontain">
					<span id="UPDATED_DATE-label" class="property-label"><g:message code="upInspection.UPDATED_DATE.label" default="UPDATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="UPDATED_DATE-label"><g:formatDate date="${upInspectionInstance?.UPDATED_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.IS_ACTIVE}">
				<li class="fieldcontain">
					<span id="IS_ACTIVE-label" class="property-label"><g:message code="upInspection.IS_ACTIVE.label" default="ISACTIVE" /></span>
					
						<span class="property-value" aria-labelledby="IS_ACTIVE-label"><g:formatBoolean boolean="${upInspectionInstance?.IS_ACTIVE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.UP_I_REP_EXPE}">
				<li class="fieldcontain">
					<span id="UP_I_REP_EXPE-label" class="property-label"><g:message code="upInspection.UP_I_REP_EXPE.label" default="UPIREPEXPE" /></span>
					
						<span class="property-value" aria-labelledby="UP_I_REP_EXPE-label"><g:fieldValue bean="${upInspectionInstance}" field="UP_I_REP_EXPE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upInspectionInstance?.auditPackage}">
				<li class="fieldcontain">
					<span id="auditPackage-label" class="property-label"><g:message code="upInspection.auditPackage.label" default="Audit Package" /></span>
					
						<span class="property-value" aria-labelledby="auditPackage-label"><g:link controller="auditPackage" action="show" id="${upInspectionInstance?.auditPackage?.id}">${upInspectionInstance?.auditPackage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${upInspectionInstance?.id}" />
					<g:link class="edit" action="edit" id="${upInspectionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
    </body>
</html>
