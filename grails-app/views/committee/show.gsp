
<%@ page import="settings.Committee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'committee.label', default: 'Committee')}" />
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
		<div id="show-committee" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
			<ol class="property-list committee">
			
				<g:if test="${committeeInstance?.COMMITTEE_ID}">
				<li class="fieldcontain">
					<span id="COMMITTEE_ID-label" class="property-label"><g:message code="committee.COMMITTEE_ID.label" default="Committee ID : " /></span>
					
						<span class="property-value" aria-labelledby="COMMITTEE_ID-label"><g:fieldValue bean="${committeeInstance}" field="COMMITTEE_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.COMMITTEE_NAME}">
				<li class="fieldcontain">
					<span id="COMMITTEE_NAME-label" class="property-label"><g:message code="committee.COMMITTEE_NAME.label" default="Committee Name : " /></span>
					
						<span class="property-value" aria-labelledby="COMMITTEE_NAME-label"><g:fieldValue bean="${committeeInstance}" field="COMMITTEE_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.DIVISION}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="committee.division.label" default="Division : " /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:fieldValue bean="${committeeInstance}" field="DIVISION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.DISTRICT}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="committee.district.label" default="District : " /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${committeeInstance}" field="DISTRICT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.UPAZILA}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="committee.upazila.label" default="Upazila : " /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:fieldValue bean="${committeeInstance}" field="UPAZILA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="committee.unionParishad.label" default="Union Parishad : " /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:fieldValue bean="${committeeInstance}" field="UNION_PARISHAD.UP_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.WARD}">
				<li class="fieldcontain">
					<span id="ward-label" class="property-label"><g:message code="committee.ward.label" default="Ward : " /></span>
					
						<span class="property-value" aria-labelledby="ward-label"><g:fieldValue bean="${committeeInstance}" field="WARD.WARD_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.NO_OF_MEMBER}">
				<li class="fieldcontain">
					<span id="NO_OF_MEMBER-label" class="property-label"><g:message code="committee.NO_OF_MEMBER.label" default="No of Member : " /></span>
					
						<span class="property-value" aria-labelledby="NO_OF_MEMBER-label"><g:fieldValue bean="${committeeInstance}" field="NO_OF_MEMBER"/></span>
					
				</li>
				</g:if>

				<g:if test="${committeeInstance?.COMMITTEE_LEVEL}">
				<li class="fieldcontain">
					<span id="committeeLevel-label" class="property-label"><g:message code="committee.committeeLevel.label" default="Committee Level" /></span>
					
						<span class="property-value" aria-labelledby="committeeLevel-label"><g:fieldValue bean="${committeeInstance}" field="COMMITTEE_LEVEL"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${committeeInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${committeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                </div>
            </div>
        </div>
	</body>
</html>
