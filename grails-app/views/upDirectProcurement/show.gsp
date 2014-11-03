
<%@ page import="procurement.up.directprocurement.UpDirectProcurement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 15px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 15px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 15px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 15px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-upDirectProcurement" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
			<ol class="property-list upDirectProcurement">
			
				<g:if test="${upDirectProcurementInstance?.schemeInfo}">
				<li class="fieldcontain">
					<span id="schemeInfo-label" class="property-label"><g:message code="upDirectProcurement.schemeInfo.label" default="scheme Info" /></span>
					
						<span class="property-value" aria-labelledby="schemeInfo-label"><g:link controller="schemeInfo" action="show" id="${upDirectProcurementInstance?.schemeInfo?.id}">${upDirectProcurementInstance?.schemeInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${upDirectProcurementInstance?.upDirectProcDetails}">
				<li class="fieldcontain">
					<span id="upDirectProcDetails-label" class="property-label"><g:message code="upDirectProcurement.upDirectProcDetails.label" default="Up Direct Proc Details" /></span>
					
						<g:each in="${upDirectProcurementInstance.upDirectProcDetails}" var="u">
						<span class="property-value" aria-labelledby="upDirectProcDetails-label"><g:link controller="upDirectProcDetails" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>


            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${upDirectProcurementInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${upDirectProcurementInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
</div>
                </div>
		</div>
	</body>
</html>
