
<%@ page import="payroll.Payscale_Detail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payscale_Detail.label', default: 'Payscale_Detail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-payscale_Detail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-payscale_Detail" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list payscale_Detail">
			
				<g:if test="${payscale_DetailInstance?.PAYSCALE_ID}">
				<li class="fieldcontain">
					<span id="PAYSCALE_ID-label" class="property-label"><g:message code="payscale_Detail.PAYSCALE_ID.label" default="Payscal ID" /></span>
					
						<span class="property-value" aria-labelledby="PAYSCALE_ID-label"><g:fieldValue bean="${payscale_DetailInstance}" field="PAYSCALE_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.STAGE}">
				<li class="fieldcontain">
					<span id="STAGE-label" class="property-label"><g:message code="payscale_Detail.STAGE.label" default="Stage" /></span>
					
						<span class="property-value" aria-labelledby="STAGE-label"><g:fieldValue bean="${payscale_DetailInstance}" field="STAGE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.BASIC}">
				<li class="fieldcontain">
					<span id="BASIC-label" class="property-label"><g:message code="payscale_Detail.BASIC.label" default="Basic" /></span>
					
						<span class="property-value" aria-labelledby="BASIC-label"><g:fieldValue bean="${payscale_DetailInstance}" field="BASIC"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.DA}">
				<li class="fieldcontain">
					<span id="DA-label" class="property-label"><g:message code="payscale_Detail.DA.label" default="DA" /></span>
					
						<span class="property-value" aria-labelledby="DA-label"><g:fieldValue bean="${payscale_DetailInstance}" field="DA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.HOUSE_RENT}">
				<li class="fieldcontain">
					<span id="HOUSE_RENT-label" class="property-label"><g:message code="payscale_Detail.HOUSE_RENT.label" default="House Rent" /></span>
					
						<span class="property-value" aria-labelledby="HOUSE_RENT-label"><g:fieldValue bean="${payscale_DetailInstance}" field="HOUSE_RENT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.CONVEYANCE_ALLOW}">
				<li class="fieldcontain">
					<span id="CONVEYANCE_ALLOW-label" class="property-label"><g:message code="payscale_Detail.CONVEYANCE_ALLOW.label" default="Conveyance Allow" /></span>
					
						<span class="property-value" aria-labelledby="CONVEYANCE_ALLOW-label"><g:fieldValue bean="${payscale_DetailInstance}" field="CONVEYANCE_ALLOW"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.WASHING_ALLOW}">
				<li class="fieldcontain">
					<span id="WASHING_ALLOW-label" class="property-label"><g:message code="payscale_Detail.WASHING_ALLOW.label" default="Washing Allow" /></span>
					
						<span class="property-value" aria-labelledby="WASHING_ALLOW-label"><g:fieldValue bean="${payscale_DetailInstance}" field="WASHING_ALLOW"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.MEDICAL_ALLOW}">
				<li class="fieldcontain">
					<span id="MEDICAL_ALLOW-label" class="property-label"><g:message code="payscale_Detail.MEDICAL_ALLOW.label" default="Medical Allow" /></span>
					
						<span class="property-value" aria-labelledby="MEDICAL_ALLOW-label"><g:fieldValue bean="${payscale_DetailInstance}" field="MEDICAL_ALLOW"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.PF_CONTRIBUTION}">
				<li class="fieldcontain">
					<span id="PF_CONTRIBUTION-label" class="property-label"><g:message code="payscale_Detail.PF_CONTRIBUTION.label" default="PF Contribution" /></span>
					
						<span class="property-value" aria-labelledby="PF_CONTRIBUTION-label"><g:fieldValue bean="${payscale_DetailInstance}" field="PF_CONTRIBUTION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.FESTIVAL_BONUS}">
				<li class="fieldcontain">
					<span id="FESTIVAL_BONUS-label" class="property-label"><g:message code="payscale_Detail.FESTIVAL_BONUS.label" default="Festival Bonus" /></span>
					
						<span class="property-value" aria-labelledby="FESTIVAL_BONUS-label"><g:fieldValue bean="${payscale_DetailInstance}" field="FESTIVAL_BONUS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.ANNUAL_BONUS}">
				<li class="fieldcontain">
					<span id="ANNUAL_BONUS-label" class="property-label"><g:message code="payscale_Detail.ANNUAL_BONUS.label" default="Annual Bonus" /></span>
					
						<span class="property-value" aria-labelledby="ANNUAL_BONUS-label"><g:fieldValue bean="${payscale_DetailInstance}" field="ANNUAL_BONUS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscale_DetailInstance?.GRATUITY}">
				<li class="fieldcontain">
					<span id="GRATUITY-label" class="property-label"><g:message code="payscale_Detail.GRATUITY.label" default="Gratuity" /></span>
					
						<span class="property-value" aria-labelledby="GRATUITY-label"><g:fieldValue bean="${payscale_DetailInstance}" field="GRATUITY"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${payscale_DetailInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${payscale_DetailInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
