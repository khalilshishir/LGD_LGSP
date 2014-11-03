
<%@ page import="grantmanagement.AllocatedAmount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'allocatedAmount.label', default: 'Allocated Amount')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-allocatedAmount" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div class="panel-body">
			<ol class="property-list allocatedAmount">
			
				<g:if test="${allocatedAmountInstance?.allocatedAmount}">
				<li class="fieldcontain">
					<span id="allocatedAmount-label" class="property-label"><g:message code="allocatedAmount.allocatedAmount.label" default="Allocated Amount : " /></span>
					
						<span class="property-value" aria-labelledby="allocatedAmount-label"><g:fieldValue bean="${allocatedAmountInstance}" field="allocatedAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${allocatedAmountInstance?.fiscalYear}">
				<li class="fieldcontain">
					<span id="fiscalYear-label" class="property-label"><g:message code="allocatedAmount.fiscalYear.label" default="Fiscal Year : " /></span>
					
						<span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${allocatedAmountInstance?.fiscalYear?.id}">${allocatedAmountInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons" style="margin-top: 10px">
                    <g:hiddenField name="id" value="${allocatedAmountInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${allocatedAmountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
            </div>
        </div>
    </body>
</html>
