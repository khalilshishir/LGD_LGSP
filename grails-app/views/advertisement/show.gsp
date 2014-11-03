
<%@ page import="procurement.pmu.Advertisement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advertisement.label', default: 'Advertisement')}" />
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

    <div id="show-designation" class="content scaffold-show" role="main">
        %{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>
            %{--</div>--}%

            <div class="panel-body">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>


			<ol class="property-list advertisement">
			
				<g:if test="${advertisementInstance?.add_code}">
				<li class="fieldcontain">
					<span id="add_code-label" class="property-label"><g:message code="advertisement.add_code.label" default="Addcode" /></span>
					
						<span class="property-value" aria-labelledby="add_code-label"><g:fieldValue bean="${advertisementInstance}" field="add_code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisementInstance?.add_name}">
				<li class="fieldcontain">
					<span id="add_name-label" class="property-label"><g:message code="advertisement.add_name.label" default="Addname" /></span>
					
						<span class="property-value" aria-labelledby="add_name-label"><g:fieldValue bean="${advertisementInstance}" field="add_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisementInstance?.createdate}">
				<li class="fieldcontain">
					<span id="createdate-label" class="property-label"><g:message code="advertisement.createdate.label" default="Createdate" /></span>
					
						<span class="property-value" aria-labelledby="createdate-label"><g:formatDate date="${advertisementInstance?.createdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisementInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="advertisement.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${advertisementInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisementInstance?.createby}">
				<li class="fieldcontain">
					<span id="createby-label" class="property-label"><g:message code="advertisement.createby.label" default="Createby" /></span>
					
						<span class="property-value" aria-labelledby="createby-label"><g:fieldValue bean="${advertisementInstance}" field="createby"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${advertisementInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${advertisementInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

                </fieldset>
			</g:form>
            </div>
            </div>
        </div>
	</body>
</html>
