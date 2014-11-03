
<%@ page import="procurement.up.directprocurement.UpDirectProc" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upDirectProcActual.label', default: 'UP Direct Procurement Actual')}" />
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
		<div id="show-upDirectProcActual" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
			<ol class="property-list upDirectProcActual">
			
				<g:if test="${upDirectProcActualInstance?.UP_PROC_MASTER}">
				<li class="fieldcontain">
					<span id="UP_PROC_MASTER-label" class="property-label"><g:message code="upDirectProcActual.UP_PROC_MASTER.label" default="UP Procurement Master : " /></span>
					<span class="property-value" aria-labelledby="UP_PROC_MASTER-label"><g:fieldValue bean="${upDirectProcActualInstance}" field="UP_PROC_MASTER"/></span>
				</li>
				</g:if>
			

			
			</ol>
                    <g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${upDirectProcActualInstance?.id}" />
                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${upDirectProcActualInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>
	</body>
</html>
