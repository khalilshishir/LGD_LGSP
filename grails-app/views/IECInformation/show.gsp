
<%@ page import="training.IECInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'IECInformation.label', default: 'IECInformation')}" />
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
		<div id="show-IECInformation" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list IECInformation">
			
				<g:if test="${IECInformationInstance?.IECI_ID}">
				<li class="fieldcontain">
					<span id="IECI_ID-label" class="property-label"><g:message code="IECInformation.IECI_ID.label" default="IEC Information ID" /></span>
					
						<span class="property-value" aria-labelledby="IECI_ID-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IECInformationInstance?.IECI_NATURE_OF_IEC_ACTIVI}">
				<li class="fieldcontain">
					<span id="IECI_NATURE_OF_IEC_ACTIVI-label" class="property-label"><g:message code="IECInformation.IECI_NATURE_OF_IEC_ACTIVI.label" default="IECI Nature of IEC Activities" /></span>
					
						<span class="property-value" aria-labelledby="IECI_NATURE_OF_IEC_ACTIVI-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_NATURE_OF_IEC_ACTIVI"/></span>
					
				</li>
				</g:if>

                <g:if test="${IECInformationInstance?.IECI_NATURE_OF_IEC_ACTIVI_BN}">
                    <li class="fieldcontain">
                        <span id="IECI_NATURE_OF_IEC_ACTIVI_BN-label" class="property-label"><g:message code="IECInformation.IECI_NATURE_OF_IEC_ACTIVI_BN.label" default="আইইসি ক্রিয়াকলাপ IECI প্রকৃতি" /></span>

                        <span class="property-value" aria-labelledby="IECI_NATURE_OF_IEC_ACTIVI_BN-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_NATURE_OF_IEC_ACTIVI_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${IECInformationInstance?.IECI_PURPOSE}">
				<li class="fieldcontain">
					<span id="IECI_PURPOSE-label" class="property-label"><g:message code="IECInformation.IECI_PURPOSE.label" default="IEC Information Purpose" /></span>
					
						<span class="property-value" aria-labelledby="IECI_PURPOSE-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_PURPOSE"/></span>
					
				</li>
				</g:if>

                <g:if test="${IECInformationInstance?.IECI_PURPOSE_BN}">
                    <li class="fieldcontain">
                        <span id="IECI_PURPOSE_BN-label" class="property-label"><g:message code="IECInformation.IECI_PURPOSE_BN.label" default="আইইসি তথ্য উদ্দেশ্য" /></span>

                        <span class="property-value" aria-labelledby="IECI_PURPOSE_BN-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_PURPOSE_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${IECInformationInstance?.IECI_EXP_AUD_BENE_FICIARIES}">
				<li class="fieldcontain">
					<span id="IECI_EXP_AUD_BENE_FICIARIES-label" class="property-label"><g:message code="IECInformation.IECI_EXP_AUD_BENE_FICIARIES.label" default="IECI Exp Aud Bene Ficiaries" /></span>
					
						<span class="property-value" aria-labelledby="IECI_EXP_AUD_BENE_FICIARIES-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_EXP_AUD_BENE_FICIARIES"/></span>
					
				</li>
				</g:if>

                <g:if test="${IECInformationInstance?.IECI_EXP_AUD_BENE_FICIAR_BN}">
                    <li class="fieldcontain">
                        <span id="IECI_EXP_AUD_BENE_FICIAR_BN-label" class="property-label"><g:message code="IECInformation.IECI_EXP_AUD_BENE_FICIAR_BN.label" default="IECI প্রত্যাশিত দর্শকের অপশন Ficiaries" /></span>

                        <span class="property-value" aria-labelledby="IECI_EXP_AUD_BENE_FICIAR_BN-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_EXP_AUD_BENE_FICIAR_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${IECInformationInstance?.IECI_SERVICE_PROVIDERS}">
				<li class="fieldcontain">
					<span id="IECI_SERVICE_PROVIDERS-label" class="property-label"><g:message code="IECInformation.IECI_SERVICE_PROVIDERS.label" default="IEC Info Service Providers" /></span>
					
						<span class="property-value" aria-labelledby="IECI_SERVICE_PROVIDERS-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_SERVICE_PROVIDERS"/></span>
					
				</li>
				</g:if>

                <g:if test="${IECInformationInstance?.IECI_SERVICE_PROVIDERS_BN}">
                    <li class="fieldcontain">
                        <span id="IECI_SERVICE_PROVIDERS_BN-label" class="property-label"><g:message code="IECInformation.IECI_SERVICE_PROVIDERS_BN.label" default="আইইসি তথ্য সার্ভিস প্রোভাইডার" /></span>

                        <span class="property-value" aria-labelledby="IECI_SERVICE_PROVIDERS_BN-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_SERVICE_PROVIDERS_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${IECInformationInstance?.IECI_AUDIENCE_REACTION}">
				<li class="fieldcontain">
					<span id="IECI_AUDIENCE_REACTION-label" class="property-label"><g:message code="IECInformation.IECI_AUDIENCE_REACTION.label" default="IEC Info Audiance Reaction" /></span>
					
						<span class="property-value" aria-labelledby="IECI_AUDIENCE_REACTION-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_AUDIENCE_REACTION"/></span>
					
				</li>
				</g:if>

                <g:if test="${IECInformationInstance?.IECI_AUDIENCE_REACTION_BN}">
                    <li class="fieldcontain">
                        <span id="IECI_AUDIENCE_REACTION_BN-label" class="property-label"><g:message code="IECInformation.IECI_AUDIENCE_REACTION_BN.label" default="আইইসি তথ্য দর্শকের প্রতিক্রিয়া" /></span>

                        <span class="property-value" aria-labelledby="IECI_AUDIENCE_REACTION_BN-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_AUDIENCE_REACTION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${IECInformationInstance?.IECI_RESULT}">
				<li class="fieldcontain">
					<span id="IECI_RESULT-label" class="property-label"><g:message code="IECInformation.IECI_RESULT.label" default="IEC Information Result" /></span>
					
						<span class="property-value" aria-labelledby="IECI_RESULT-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_RESULT"/></span>
					
				</li>
				</g:if>

                <g:if test="${IECInformationInstance?.IECI_RESULT_BN}">
                    <li class="fieldcontain">
                        <span id="IECI_RESULT_BN-label" class="property-label"><g:message code="IECInformation.IECI_RESULT_BN.label" default="আইইসি তথ্য ফলাফল" /></span>

                        <span class="property-value" aria-labelledby="IECI_RESULT_BN-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_RESULT_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${IECInformationInstance?.IECI_RELATED_COST}">
				<li class="fieldcontain">
					<span id="IECI_RELATED_COST-label" class="property-label"><g:message code="IECInformation.IECI_RELATED_COST.label" default="IEC Info Related Cost" /></span>
					
						<span class="property-value" aria-labelledby="IECI_RELATED_COST-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_RELATED_COST"/></span>
					
				</li>
				</g:if>

                <g:if test="${IECInformationInstance?.IECI_RELATED_COST_BN}">
                    <li class="fieldcontain">
                        <span id="IECI_RELATED_COST_BN-label" class="property-label"><g:message code="IECInformation.IECI_RELATED_COST_BN.label" default="আইইসি তথ্য সম্পর্কিত খরচ" /></span>

                        <span class="property-value" aria-labelledby="IECI_RELATED_COST_BN-label"><g:fieldValue bean="${IECInformationInstance}" field="IECI_RELATED_COST_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${IECInformationInstance?.UNION_PARISHAD}">
				<li class="fieldcontain">
					<span id="UNION_PARISHAD-label" class="property-label"><g:message code="IECInformation.UNION_PARISHAD.label" default="Union Parishad Name" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PARISHAD-label"><g:fieldValue bean="${IECInformationInstance}" field="UNION_PARISHAD"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${IECInformationInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${IECInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
