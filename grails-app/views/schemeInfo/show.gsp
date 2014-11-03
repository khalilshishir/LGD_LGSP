
<%@ page import="settings.SchemeInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schemeInfo.label', default: 'Scheme Info')}" />
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
    
		<div id="show-schemeInfo" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list schemeInfo">
			
				<g:if test="${schemeInfoInstance?.SCHEME_ID}">
				<li class="fieldcontain">
					<span id="SCHEME_ID-label" class="property-label"><g:message code="schemeInfo.SCHEME_ID.label" default="Scheme ID : " /></span>
					
						<span class="property-value" aria-labelledby="SCHEME_ID-label"><g:fieldValue bean="${schemeInfoInstance}" field="SCHEME_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.NAME}">
				<li class="fieldcontain">
					<span id="NAME-label" class="property-label"><g:message code="schemeInfo.NAME.label" default="Name : " /></span>
					
						<span class="property-value" aria-labelledby="NAME-label"><g:fieldValue bean="${schemeInfoInstance}" field="NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.SCHEME_LOCATION}">
				<li class="fieldcontain">
					<span id="SCHEME_LOCATION-label" class="property-label"><g:message code="schemeInfo.SCHEME_LOCATION.label" default="Scheme Location : " /></span>
					
						<span class="property-value" aria-labelledby="SCHEME_LOCATION-label"><g:fieldValue bean="${schemeInfoInstance}" field="SCHEME_LOCATION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="schemeInfo.UNION_PARISHAD.label" default="Union Parishad : " /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:fieldValue bean="${schemeInfoInstance}" field="UNION_PARISHAD.UP_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.SCHEME_TYPE}">
				<li class="fieldcontain">
					<span id="SCHEME_TYPE-label" class="property-label"><g:message code="schemeInfo.SCHEME_TYPE.label" default="Scheme Type : " /></span>
					
						<span class="property-value" aria-labelledby="SCHEME_TYPE-label"><g:fieldValue bean="${schemeInfoInstance}" field="SCHEME_TYPE.NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.GRANTED_AMOUNT}">
				<li class="fieldcontain">
					<span id="GRANTED_AMOUNT-label" class="property-label"><g:message code="schemeInfo.GRANTED_AMOUNT.label" default="Granted Amount : " /></span>
					
						<span class="property-value" aria-labelledby="GRANTED_AMOUNT-label"><g:fieldValue bean="${schemeInfoInstance}" field="GRANTED_AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.RECEIVED_AMOUNT}">
				<li class="fieldcontain">
					<span id="RECEIVED_AMOUNT-label" class="property-label"><g:message code="schemeInfo.RECEIVED_AMOUNT.label" default="Received Amount : " /></span>
					
						<span class="property-value" aria-labelledby="RECEIVED_AMOUNT-label"><g:fieldValue bean="${schemeInfoInstance}" field="RECEIVED_AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.WORK_DESCRIPTION}">
				<li class="fieldcontain">
					<span id="WORK_DESCRIPTION-label" class="property-label"><g:message code="schemeInfo.WORK_DESCRIPTION.label" default="Work Description : " /></span>
					
						<span class="property-value" aria-labelledby="WORK_DESCRIPTION-label"><g:fieldValue bean="${schemeInfoInstance}" field="WORK_DESCRIPTION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.SCHEME_START_DATE}">
				<li class="fieldcontain">
					<span id="SCHEME_START_DATE-label" class="property-label"><g:message code="schemeInfo.SCHEME_START_DATE.label" default="Scheme Start Date : " /></span>
					
						<span class="property-value" aria-labelledby="SCHEME_START_DATE-label"><g:formatDate date="${schemeInfoInstance?.SCHEME_START_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.SCHEME_END_DATE}">
				<li class="fieldcontain">
					<span id="SCHEME_END_DATE-label" class="property-label"><g:message code="schemeInfo.SCHEME_END_DATE.label" default="Scheme End Date : " /></span>
					
						<span class="property-value" aria-labelledby="SCHEME_END_DATE-label"><g:formatDate date="${schemeInfoInstance?.SCHEME_END_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.IMPLEMENTATION_SYSTEM}">
				<li class="fieldcontain">
					<span id="IMPLEMENTATION_SYSTEM-label" class="property-label"><g:message code="schemeInfo.IMPLEMENTATION_SYSTEM.label" default="Implementation System : " /></span>
					
						<span class="property-value" aria-labelledby="IMPLEMENTATION_SYSTEM-label"><g:fieldValue bean="${schemeInfoInstance}" field="IMPLEMENTATION_SYSTEM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.RESPONSIBLE_PERSON}">
				<li class="fieldcontain">
					<span id="RESPONSIBLE_PERSON-label" class="property-label"><g:message code="schemeInfo.RESPONSIBLE_PERSON.label" default="Responsible Person : " /></span>
					
						<span class="property-value" aria-labelledby="RESPONSIBLE_PERSON-label"><g:fieldValue bean="${schemeInfoInstance}" field="RESPONSIBLE_PERSON"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInfoInstance?.IS_SELECTED_BY_WOMEN}">
				<li class="fieldcontain">
					<span id="IS_SELECTED_BY_WOMEN-label" class="property-label"><g:message code="schemeInfo.IS_SELECTED_BY_WOMEN.label" default="Is Selected By Women : " /></span>
					
						<span class="property-value" aria-labelledby="IS_SELECTED_BY_WOMEN-label"><g:formatBoolean boolean="${schemeInfoInstance?.IS_SELECTED_BY_WOMEN}" /></span>
					
				</li>
				</g:if>

                <g:if test="${schemeInfoInstance?.IS_LABOUR_APPOINTED}">
                    <li class="fieldcontain">
                        <span id="IS_LABOUR_APPOINTED-label" class="property-label"><g:message code="schemeInfo.IS_LABOUR_APPOINTED.label" default="Is Labour Appointed : " /></span>

                        <span class="property-value" aria-labelledby="IS_LABOUR_APPOINTED-label"><g:formatBoolean boolean="${schemeInfoInstance?.IS_LABOUR_APPOINTED}" /></span>

                    </li>
                </g:if>
			
				<g:if test="${schemeInfoInstance?.IMPLEMENTATION_STATUS}">
				<li class="fieldcontain">
					<span id="IMPLEMENTATION_STATUS-label" class="property-label"><g:message code="schemeInfo.IMPLEMENTATION_STATUS.label" default="Implementation Status : " /></span>
					
						<span class="property-value" aria-labelledby="IMPLEMENTATION_STATUS-label"><g:formatBoolean boolean="${schemeInfoInstance?.IMPLEMENTATION_STATUS}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${schemeInfoInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${schemeInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
        </div>
        </div>
    </div>
	</body>
</html>
