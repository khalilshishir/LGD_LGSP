
<%@ page import="monitoring.INSPECTION" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'INSPECTION.label', default: 'INSPECTION')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-INSPECTION" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-INSPECTION" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>--}%
        <script>
            $(document).ready(function(){
                $("#a").fadeOut(8000);
            });
        </script>
        <g:if test="${flash.message}">
            <div class="panel-body">
                <div id="a" class="alert alert-success" role="alert">
                    <div class="message" role="status">
                        <h3 class="panel-title">${flash.message}</h3>
                    </div>
                </div>
            </div>
        </g:if>
        <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">সাধারণ তথ্য</h3>
        </div>
        <div class="panel-body">
			%{--<ol class="property-list INSPECTION">
			
				<g:if test="${INSPECTIONInstance?.BANK_SOMONNOI}">
				<li class="fieldcontain">
					<span id="BANK_SOMONNOI-label" class="property-label"><g:message code="INSPECTION.BANK_SOMONNOI.label" default="BANKSOMONNOI" /></span>
					
						<span class="property-value" aria-labelledby="BANK_SOMONNOI-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BANK_SOMONNOI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BANK_SOMONNOI_NO}">
				<li class="fieldcontain">
					<span id="BANK_SOMONNOI_NO-label" class="property-label"><g:message code="INSPECTION.BANK_SOMONNOI_NO.label" default="BANKSOMONNOINO" /></span>
					
						<span class="property-value" aria-labelledby="BANK_SOMONNOI_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BANK_SOMONNOI_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BANK_SOMONNOI_YES}">
				<li class="fieldcontain">
					<span id="BANK_SOMONNOI_YES-label" class="property-label"><g:message code="INSPECTION.BANK_SOMONNOI_YES.label" default="BANKSOMONNOIYES" /></span>
					
						<span class="property-value" aria-labelledby="BANK_SOMONNOI_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BANK_SOMONNOI_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BGB_AMOUNT}">
				<li class="fieldcontain">
					<span id="BGB_AMOUNT-label" class="property-label"><g:message code="INSPECTION.BGB_AMOUNT.label" default="BGBAMOUNT" /></span>
					
						<span class="property-value" aria-labelledby="BGB_AMOUNT-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BGB_AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BGCC_JACHAI}">
				<li class="fieldcontain">
					<span id="BGCC_JACHAI-label" class="property-label"><g:message code="INSPECTION.BGCC_JACHAI.label" default="BGCCJACHAI" /></span>
					
						<span class="property-value" aria-labelledby="BGCC_JACHAI-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BGCC_JACHAI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BGCC_JACHAI_NO}">
				<li class="fieldcontain">
					<span id="BGCC_JACHAI_NO-label" class="property-label"><g:message code="INSPECTION.BGCC_JACHAI_NO.label" default="BGCCJACHAINO" /></span>
					
						<span class="property-value" aria-labelledby="BGCC_JACHAI_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BGCC_JACHAI_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BGCC_JACHAI_YES}">
				<li class="fieldcontain">
					<span id="BGCC_JACHAI_YES-label" class="property-label"><g:message code="INSPECTION.BGCC_JACHAI_YES.label" default="BGCCJACHAIYES" /></span>
					
						<span class="property-value" aria-labelledby="BGCC_JACHAI_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BGCC_JACHAI_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BGCC_SOVA}">
				<li class="fieldcontain">
					<span id="BGCC_SOVA-label" class="property-label"><g:message code="INSPECTION.BGCC_SOVA.label" default="BGCCSOVA" /></span>
					
						<span class="property-value" aria-labelledby="BGCC_SOVA-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BGCC_SOVA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BGCC_SOVA_NO}">
				<li class="fieldcontain">
					<span id="BGCC_SOVA_NO-label" class="property-label"><g:message code="INSPECTION.BGCC_SOVA_NO.label" default="BGCCSOVANO" /></span>
					
						<span class="property-value" aria-labelledby="BGCC_SOVA_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BGCC_SOVA_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BGCC_SOVA_YES}">
				<li class="fieldcontain">
					<span id="BGCC_SOVA_YES-label" class="property-label"><g:message code="INSPECTION.BGCC_SOVA_YES.label" default="BGCCSOVAYES" /></span>
					
						<span class="property-value" aria-labelledby="BGCC_SOVA_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BGCC_SOVA_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BIGOTO_SON_SKIM}">
				<li class="fieldcontain">
					<span id="BIGOTO_SON_SKIM-label" class="property-label"><g:message code="INSPECTION.BIGOTO_SON_SKIM.label" default="BIGOTOSONSKIM" /></span>
					
						<span class="property-value" aria-labelledby="BIGOTO_SON_SKIM-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BIGOTO_SON_SKIM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BIGOTO_SON_SKIM_NO}">
				<li class="fieldcontain">
					<span id="BIGOTO_SON_SKIM_NO-label" class="property-label"><g:message code="INSPECTION.BIGOTO_SON_SKIM_NO.label" default="BIGOTOSONSKIMNO" /></span>
					
						<span class="property-value" aria-labelledby="BIGOTO_SON_SKIM_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BIGOTO_SON_SKIM_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BIGOTO_SON_SKIM_YES}">
				<li class="fieldcontain">
					<span id="BIGOTO_SON_SKIM_YES-label" class="property-label"><g:message code="INSPECTION.BIGOTO_SON_SKIM_YES.label" default="BIGOTOSONSKIMYES" /></span>
					
						<span class="property-value" aria-labelledby="BIGOTO_SON_SKIM_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BIGOTO_SON_SKIM_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BILL_PRODAN}">
				<li class="fieldcontain">
					<span id="BILL_PRODAN-label" class="property-label"><g:message code="INSPECTION.BILL_PRODAN.label" default="BILLPRODAN" /></span>
					
						<span class="property-value" aria-labelledby="BILL_PRODAN-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BILL_PRODAN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BILL_PRODAN_NO}">
				<li class="fieldcontain">
					<span id="BILL_PRODAN_NO-label" class="property-label"><g:message code="INSPECTION.BILL_PRODAN_NO.label" default="BILLPRODANNO" /></span>
					
						<span class="property-value" aria-labelledby="BILL_PRODAN_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BILL_PRODAN_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BILL_PRODAN_YES}">
				<li class="fieldcontain">
					<span id="BILL_PRODAN_YES-label" class="property-label"><g:message code="INSPECTION.BILL_PRODAN_YES.label" default="BILLPRODANYES" /></span>
					
						<span class="property-value" aria-labelledby="BILL_PRODAN_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BILL_PRODAN_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BISAS_MONTOBBO}">
				<li class="fieldcontain">
					<span id="BISAS_MONTOBBO-label" class="property-label"><g:message code="INSPECTION.BISAS_MONTOBBO.label" default="BISASMONTOBBO" /></span>
					
						<span class="property-value" aria-labelledby="BISAS_MONTOBBO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BISAS_MONTOBBO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BRODSHEET_JOBAB}">
				<li class="fieldcontain">
					<span id="BRODSHEET_JOBAB-label" class="property-label"><g:message code="INSPECTION.BRODSHEET_JOBAB.label" default="BRODSHEETJOBAB" /></span>
					
						<span class="property-value" aria-labelledby="BRODSHEET_JOBAB-label"><g:fieldValue bean="${INSPECTIONInstance}" field="BRODSHEET_JOBAB"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BRODSHEET_JOBAB_NO}">
				<li class="fieldcontain">
					<span id="BRODSHEET_JOBAB_NO-label" class="property-label"><g:message code="INSPECTION.BRODSHEET_JOBAB_NO.label" default="BRODSHEETJOBABNO" /></span>
					
						<span class="property-value" aria-labelledby="BRODSHEET_JOBAB_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BRODSHEET_JOBAB_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.BRODSHEET_JOBAB_YES}">
				<li class="fieldcontain">
					<span id="BRODSHEET_JOBAB_YES-label" class="property-label"><g:message code="INSPECTION.BRODSHEET_JOBAB_YES.label" default="BRODSHEETJOBABYES" /></span>
					
						<span class="property-value" aria-labelledby="BRODSHEET_JOBAB_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.BRODSHEET_JOBAB_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.CASHBOOK_SONROKHON}">
				<li class="fieldcontain">
					<span id="CASHBOOK_SONROKHON-label" class="property-label"><g:message code="INSPECTION.CASHBOOK_SONROKHON.label" default="CASHBOOKSONROKHON" /></span>
					
						<span class="property-value" aria-labelledby="CASHBOOK_SONROKHON-label"><g:fieldValue bean="${INSPECTIONInstance}" field="CASHBOOK_SONROKHON"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.CASHBOOK_SONROKHON_NO}">
				<li class="fieldcontain">
					<span id="CASHBOOK_SONROKHON_NO-label" class="property-label"><g:message code="INSPECTION.CASHBOOK_SONROKHON_NO.label" default="CASHBOOKSONROKHONNO" /></span>
					
						<span class="property-value" aria-labelledby="CASHBOOK_SONROKHON_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.CASHBOOK_SONROKHON_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.CASHBOOK_SONROKHON_YES}">
				<li class="fieldcontain">
					<span id="CASHBOOK_SONROKHON_YES-label" class="property-label"><g:message code="INSPECTION.CASHBOOK_SONROKHON_YES.label" default="CASHBOOKSONROKHONYES" /></span>
					
						<span class="property-value" aria-labelledby="CASHBOOK_SONROKHON_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.CASHBOOK_SONROKHON_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.CHAIRMAN_NAME}">
				<li class="fieldcontain">
					<span id="CHAIRMAN_NAME-label" class="property-label"><g:message code="INSPECTION.CHAIRMAN_NAME.label" default="CHAIRMANNAME" /></span>
					
						<span class="property-value" aria-labelledby="CHAIRMAN_NAME-label"><g:fieldValue bean="${INSPECTIONInstance}" field="CHAIRMAN_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.DF_SKIM}">
				<li class="fieldcontain">
					<span id="DF_SKIM-label" class="property-label"><g:message code="INSPECTION.DF_SKIM.label" default="DFSKIM" /></span>
					
						<span class="property-value" aria-labelledby="DF_SKIM-label"><g:fieldValue bean="${INSPECTIONInstance}" field="DF_SKIM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.DF_SKIM_NO}">
				<li class="fieldcontain">
					<span id="DF_SKIM_NO-label" class="property-label"><g:message code="INSPECTION.DF_SKIM_NO.label" default="DFSKIMNO" /></span>
					
						<span class="property-value" aria-labelledby="DF_SKIM_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.DF_SKIM_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.DF_SKIM_YES}">
				<li class="fieldcontain">
					<span id="DF_SKIM_YES-label" class="property-label"><g:message code="INSPECTION.DF_SKIM_YES.label" default="DFSKIMYES" /></span>
					
						<span class="property-value" aria-labelledby="DF_SKIM_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.DF_SKIM_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.DISTRICT_ID}">
				<li class="fieldcontain">
					<span id="DISTRICT_ID-label" class="property-label"><g:message code="INSPECTION.DISTRICT_ID.label" default="DISTRICTID" /></span>
					
						<span class="property-value" aria-labelledby="DISTRICT_ID-label"><g:link controller="district" action="show" id="${INSPECTIONInstance?.DISTRICT_ID?.id}">${INSPECTIONInstance?.DISTRICT_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.DURNITI}">
				<li class="fieldcontain">
					<span id="DURNITI-label" class="property-label"><g:message code="INSPECTION.DURNITI.label" default="DURNITI" /></span>
					
						<span class="property-value" aria-labelledby="DURNITI-label"><g:fieldValue bean="${INSPECTIONInstance}" field="DURNITI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.DURNITI_NO}">
				<li class="fieldcontain">
					<span id="DURNITI_NO-label" class="property-label"><g:message code="INSPECTION.DURNITI_NO.label" default="DURNITINO" /></span>
					
						<span class="property-value" aria-labelledby="DURNITI_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.DURNITI_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.DURNITI_YES}">
				<li class="fieldcontain">
					<span id="DURNITI_YES-label" class="property-label"><g:message code="INSPECTION.DURNITI_YES.label" default="DURNITIYES" /></span>
					
						<span class="property-value" aria-labelledby="DURNITI_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.DURNITI_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.FISCAL_YEAR_DATE}">
				<li class="fieldcontain">
					<span id="FISCAL_YEAR_DATE-label" class="property-label"><g:message code="INSPECTION.FISCAL_YEAR_DATE.label" default="FISCALYEARDATE" /></span>
					
						<span class="property-value" aria-labelledby="FISCAL_YEAR_DATE-label"><g:fieldValue bean="${INSPECTIONInstance}" field="FISCAL_YEAR_DATE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.GRAM_ADALOT}">
				<li class="fieldcontain">
					<span id="GRAM_ADALOT-label" class="property-label"><g:message code="INSPECTION.GRAM_ADALOT.label" default="GRAMADALOT" /></span>
					
						<span class="property-value" aria-labelledby="GRAM_ADALOT-label"><g:fieldValue bean="${INSPECTIONInstance}" field="GRAM_ADALOT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.GRAM_ADALOT_NO}">
				<li class="fieldcontain">
					<span id="GRAM_ADALOT_NO-label" class="property-label"><g:message code="INSPECTION.GRAM_ADALOT_NO.label" default="GRAMADALOTNO" /></span>
					
						<span class="property-value" aria-labelledby="GRAM_ADALOT_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.GRAM_ADALOT_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.GRAM_ADALOT_YES}">
				<li class="fieldcontain">
					<span id="GRAM_ADALOT_YES-label" class="property-label"><g:message code="INSPECTION.GRAM_ADALOT_YES.label" default="GRAMADALOTYES" /></span>
					
						<span class="property-value" aria-labelledby="GRAM_ADALOT_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.GRAM_ADALOT_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.ID}">
				<li class="fieldcontain">
					<span id="ID-label" class="property-label"><g:message code="INSPECTION.ID.label" default="ID" /></span>
					
						<span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${INSPECTIONInstance}" field="ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.INSPECTION_DATE_NAME}">
				<li class="fieldcontain">
					<span id="INSPECTION_DATE_NAME-label" class="property-label"><g:message code="INSPECTION.INSPECTION_DATE_NAME.label" default="INSPECTIONDATENAME" /></span>
					
						<span class="property-value" aria-labelledby="INSPECTION_DATE_NAME-label"><g:fieldValue bean="${INSPECTIONInstance}" field="INSPECTION_DATE_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.JOGAJOG}">
				<li class="fieldcontain">
					<span id="JOGAJOG-label" class="property-label"><g:message code="INSPECTION.JOGAJOG.label" default="JOGAJOG" /></span>
					
						<span class="property-value" aria-labelledby="JOGAJOG-label"><g:fieldValue bean="${INSPECTIONInstance}" field="JOGAJOG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.KRISHI_BAZAR}">
				<li class="fieldcontain">
					<span id="KRISHI_BAZAR-label" class="property-label"><g:message code="INSPECTION.KRISHI_BAZAR.label" default="KRISHIBAZAR" /></span>
					
						<span class="property-value" aria-labelledby="KRISHI_BAZAR-label"><g:fieldValue bean="${INSPECTIONInstance}" field="KRISHI_BAZAR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.KROI_PROKRIA}">
				<li class="fieldcontain">
					<span id="KROI_PROKRIA-label" class="property-label"><g:message code="INSPECTION.KROI_PROKRIA.label" default="KROIPROKRIA" /></span>
					
						<span class="property-value" aria-labelledby="KROI_PROKRIA-label"><g:fieldValue bean="${INSPECTIONInstance}" field="KROI_PROKRIA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.KROI_PROKRIA_NO}">
				<li class="fieldcontain">
					<span id="KROI_PROKRIA_NO-label" class="property-label"><g:message code="INSPECTION.KROI_PROKRIA_NO.label" default="KROIPROKRIANO" /></span>
					
						<span class="property-value" aria-labelledby="KROI_PROKRIA_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.KROI_PROKRIA_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.KROI_PROKRIA_YES}">
				<li class="fieldcontain">
					<span id="KROI_PROKRIA_YES-label" class="property-label"><g:message code="INSPECTION.KROI_PROKRIA_YES.label" default="KROIPROKRIAYES" /></span>
					
						<span class="property-value" aria-labelledby="KROI_PROKRIA_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.KROI_PROKRIA_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.LGSP_PROKOLPO}">
				<li class="fieldcontain">
					<span id="LGSP_PROKOLPO-label" class="property-label"><g:message code="INSPECTION.LGSP_PROKOLPO.label" default="LGSPPROKOLPO" /></span>
					
						<span class="property-value" aria-labelledby="LGSP_PROKOLPO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="LGSP_PROKOLPO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.LGSP_PROKOLPO_NO}">
				<li class="fieldcontain">
					<span id="LGSP_PROKOLPO_NO-label" class="property-label"><g:message code="INSPECTION.LGSP_PROKOLPO_NO.label" default="LGSPPROKOLPONO" /></span>
					
						<span class="property-value" aria-labelledby="LGSP_PROKOLPO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.LGSP_PROKOLPO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.LGSP_PROKOLPO_YES}">
				<li class="fieldcontain">
					<span id="LGSP_PROKOLPO_YES-label" class="property-label"><g:message code="INSPECTION.LGSP_PROKOLPO_YES.label" default="LGSPPROKOLPOYES" /></span>
					
						<span class="property-value" aria-labelledby="LGSP_PROKOLPO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.LGSP_PROKOLPO_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MANOBSOMPOD_UNNOION}">
				<li class="fieldcontain">
					<span id="MANOBSOMPOD_UNNOION-label" class="property-label"><g:message code="INSPECTION.MANOBSOMPOD_UNNOION.label" default="MANOBSOMPODUNNOION" /></span>
					
						<span class="property-value" aria-labelledby="MANOBSOMPOD_UNNOION-label"><g:fieldValue bean="${INSPECTIONInstance}" field="MANOBSOMPOD_UNNOION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_ORTHO_NO}">
				<li class="fieldcontain">
					<span id="MOHILA_ORTHO_NO-label" class="property-label"><g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="MOHILAORTHONO" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_ORTHO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.MOHILA_ORTHO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_ORTHO_SKIM}">
				<li class="fieldcontain">
					<span id="MOHILA_ORTHO_SKIM-label" class="property-label"><g:message code="INSPECTION.MOHILA_ORTHO_SKIM.label" default="MOHILAORTHOSKIM" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_ORTHO_SKIM-label"><g:fieldValue bean="${INSPECTIONInstance}" field="MOHILA_ORTHO_SKIM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_ORTHO_YES}">
				<li class="fieldcontain">
					<span id="MOHILA_ORTHO_YES-label" class="property-label"><g:message code="INSPECTION.MOHILA_ORTHO_YES.label" default="MOHILAORTHOYES" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_ORTHO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.MOHILA_ORTHO_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO}">
				<li class="fieldcontain">
					<span id="MOHILA_SODOSSO_OBOHITO-label" class="property-label"><g:message code="INSPECTION.MOHILA_SODOSSO_OBOHITO.label" default="MOHILASODOSSOOBOHITO" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_SODOSSO_OBOHITO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="MOHILA_SODOSSO_OBOHITO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_NO}">
				<li class="fieldcontain">
					<span id="MOHILA_SODOSSO_OBOHITO_NO-label" class="property-label"><g:message code="INSPECTION.MOHILA_SODOSSO_OBOHITO_NO.label" default="MOHILASODOSSOOBOHITONO" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_SODOSSO_OBOHITO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_YES}">
				<li class="fieldcontain">
					<span id="MOHILA_SODOSSO_OBOHITO_YES-label" class="property-label"><g:message code="INSPECTION.MOHILA_SODOSSO_OBOHITO_YES.label" default="MOHILASODOSSOOBOHITOYES" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_SODOSSO_OBOHITO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_SOVAPOTI}">
				<li class="fieldcontain">
					<span id="MOHILA_SOVAPOTI-label" class="property-label"><g:message code="INSPECTION.MOHILA_SOVAPOTI.label" default="MOHILASOVAPOTI" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_SOVAPOTI-label"><g:fieldValue bean="${INSPECTIONInstance}" field="MOHILA_SOVAPOTI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_SOVAPOTI_NO}">
				<li class="fieldcontain">
					<span id="MOHILA_SOVAPOTI_NO-label" class="property-label"><g:message code="INSPECTION.MOHILA_SOVAPOTI_NO.label" default="MOHILASOVAPOTINO" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_SOVAPOTI_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.MOHILA_SOVAPOTI_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.MOHILA_SOVAPOTI_YES}">
				<li class="fieldcontain">
					<span id="MOHILA_SOVAPOTI_YES-label" class="property-label"><g:message code="INSPECTION.MOHILA_SOVAPOTI_YES.label" default="MOHILASOVAPOTIYES" /></span>
					
						<span class="property-value" aria-labelledby="MOHILA_SOVAPOTI_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.MOHILA_SOVAPOTI_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.NEGATIVE_SKIM}">
				<li class="fieldcontain">
					<span id="NEGATIVE_SKIM-label" class="property-label"><g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" /></span>
					
						<span class="property-value" aria-labelledby="NEGATIVE_SKIM-label"><g:fieldValue bean="${INSPECTIONInstance}" field="NEGATIVE_SKIM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.NEGATIVE_SKIM_NO}">
				<li class="fieldcontain">
					<span id="NEGATIVE_SKIM_NO-label" class="property-label"><g:message code="INSPECTION.NEGATIVE_SKIM_NO.label" default="NEGATIVESKIMNO" /></span>
					
						<span class="property-value" aria-labelledby="NEGATIVE_SKIM_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.NEGATIVE_SKIM_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.NEGATIVE_SKIM_YES}">
				<li class="fieldcontain">
					<span id="NEGATIVE_SKIM_YES-label" class="property-label"><g:message code="INSPECTION.NEGATIVE_SKIM_YES.label" default="NEGATIVESKIMYES" /></span>
					
						<span class="property-value" aria-labelledby="NEGATIVE_SKIM_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.NEGATIVE_SKIM_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.NOTHI_SONROKHITO}">
				<li class="fieldcontain">
					<span id="NOTHI_SONROKHITO-label" class="property-label"><g:message code="INSPECTION.NOTHI_SONROKHITO.label" default="NOTHISONROKHITO" /></span>
					
						<span class="property-value" aria-labelledby="NOTHI_SONROKHITO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="NOTHI_SONROKHITO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.NOTHI_SONROKHITO_NO}">
				<li class="fieldcontain">
					<span id="NOTHI_SONROKHITO_NO-label" class="property-label"><g:message code="INSPECTION.NOTHI_SONROKHITO_NO.label" default="NOTHISONROKHITONO" /></span>
					
						<span class="property-value" aria-labelledby="NOTHI_SONROKHITO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.NOTHI_SONROKHITO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.NOTHI_SONROKHITO_YES}">
				<li class="fieldcontain">
					<span id="NOTHI_SONROKHITO_YES-label" class="property-label"><g:message code="INSPECTION.NOTHI_SONROKHITO_YES.label" default="NOTHISONROKHITOYES" /></span>
					
						<span class="property-value" aria-labelledby="NOTHI_SONROKHITO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.NOTHI_SONROKHITO_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.ODIT_NOTICE}">
				<li class="fieldcontain">
					<span id="ODIT_NOTICE-label" class="property-label"><g:message code="INSPECTION.ODIT_NOTICE.label" default="ODITNOTICE" /></span>
					
						<span class="property-value" aria-labelledby="ODIT_NOTICE-label"><g:fieldValue bean="${INSPECTIONInstance}" field="ODIT_NOTICE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.ODIT_NOTICE_NO}">
				<li class="fieldcontain">
					<span id="ODIT_NOTICE_NO-label" class="property-label"><g:message code="INSPECTION.ODIT_NOTICE_NO.label" default="ODITNOTICENO" /></span>
					
						<span class="property-value" aria-labelledby="ODIT_NOTICE_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.ODIT_NOTICE_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.ODIT_NOTICE_YES}">
				<li class="fieldcontain">
					<span id="ODIT_NOTICE_YES-label" class="property-label"><g:message code="INSPECTION.ODIT_NOTICE_YES.label" default="ODITNOTICEYES" /></span>
					
						<span class="property-value" aria-labelledby="ODIT_NOTICE_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.ODIT_NOTICE_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.OPEN_TENDER}">
				<li class="fieldcontain">
					<span id="OPEN_TENDER-label" class="property-label"><g:message code="INSPECTION.OPEN_TENDER.label" default="OPENTENDER" /></span>
					
						<span class="property-value" aria-labelledby="OPEN_TENDER-label"><g:fieldValue bean="${INSPECTIONInstance}" field="OPEN_TENDER"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.OPEN_TENDER_NO}">
				<li class="fieldcontain">
					<span id="OPEN_TENDER_NO-label" class="property-label"><g:message code="INSPECTION.OPEN_TENDER_NO.label" default="OPENTENDERNO" /></span>
					
						<span class="property-value" aria-labelledby="OPEN_TENDER_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.OPEN_TENDER_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.OPEN_TENDER_YES}">
				<li class="fieldcontain">
					<span id="OPEN_TENDER_YES-label" class="property-label"><g:message code="INSPECTION.OPEN_TENDER_YES.label" default="OPENTENDERYES" /></span>
					
						<span class="property-value" aria-labelledby="OPEN_TENDER_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.OPEN_TENDER_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PANI_SORBORAHO}">
				<li class="fieldcontain">
					<span id="PANI_SORBORAHO-label" class="property-label"><g:message code="INSPECTION.PANI_SORBORAHO.label" default="PANISORBORAHO" /></span>
					
						<span class="property-value" aria-labelledby="PANI_SORBORAHO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="PANI_SORBORAHO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PGB_AMOUNT}">
				<li class="fieldcontain">
					<span id="PGB_AMOUNT-label" class="property-label"><g:message code="INSPECTION.PGB_AMOUNT.label" default="PGBAMOUNT" /></span>
					
						<span class="property-value" aria-labelledby="PGB_AMOUNT-label"><g:fieldValue bean="${INSPECTIONInstance}" field="PGB_AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PIC_SKIM}">
				<li class="fieldcontain">
					<span id="PIC_SKIM-label" class="property-label"><g:message code="INSPECTION.PIC_SKIM.label" default="PICSKIM" /></span>
					
						<span class="property-value" aria-labelledby="PIC_SKIM-label"><g:fieldValue bean="${INSPECTIONInstance}" field="PIC_SKIM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PIC_SKIM_NO}">
				<li class="fieldcontain">
					<span id="PIC_SKIM_NO-label" class="property-label"><g:message code="INSPECTION.PIC_SKIM_NO.label" default="PICSKIMNO" /></span>
					
						<span class="property-value" aria-labelledby="PIC_SKIM_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.PIC_SKIM_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PIC_SKIM_YES}">
				<li class="fieldcontain">
					<span id="PIC_SKIM_YES-label" class="property-label"><g:message code="INSPECTION.PIC_SKIM_YES.label" default="PICSKIMYES" /></span>
					
						<span class="property-value" aria-labelledby="PIC_SKIM_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.PIC_SKIM_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.POI_NISKASON}">
				<li class="fieldcontain">
					<span id="POI_NISKASON-label" class="property-label"><g:message code="INSPECTION.POI_NISKASON.label" default="POINISKASON" /></span>
					
						<span class="property-value" aria-labelledby="POI_NISKASON-label"><g:fieldValue bean="${INSPECTIONInstance}" field="POI_NISKASON"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PONCHOBARSHIK}">
				<li class="fieldcontain">
					<span id="PONCHOBARSHIK-label" class="property-label"><g:message code="INSPECTION.PONCHOBARSHIK.label" default="PONCHOBARSHIK" /></span>
					
						<span class="property-value" aria-labelledby="PONCHOBARSHIK-label"><g:fieldValue bean="${INSPECTIONInstance}" field="PONCHOBARSHIK"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PONCHOBARSHIK_NO}">
				<li class="fieldcontain">
					<span id="PONCHOBARSHIK_NO-label" class="property-label"><g:message code="INSPECTION.PONCHOBARSHIK_NO.label" default="PONCHOBARSHIKNO" /></span>
					
						<span class="property-value" aria-labelledby="PONCHOBARSHIK_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.PONCHOBARSHIK_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PONCHOBARSHIK_YES}">
				<li class="fieldcontain">
					<span id="PONCHOBARSHIK_YES-label" class="property-label"><g:message code="INSPECTION.PONCHOBARSHIK_YES.label" default="PONCHOBARSHIKYES" /></span>
					
						<span class="property-value" aria-labelledby="PONCHOBARSHIK_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.PONCHOBARSHIK_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.PRAKRITIK_SOMPOD}">
				<li class="fieldcontain">
					<span id="PRAKRITIK_SOMPOD-label" class="property-label"><g:message code="INSPECTION.PRAKRITIK_SOMPOD.label" default="PRAKRITIKSOMPOD" /></span>
					
						<span class="property-value" aria-labelledby="PRAKRITIK_SOMPOD-label"><g:fieldValue bean="${INSPECTIONInstance}" field="PRAKRITIK_SOMPOD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.RAJOSSO_BRIDHI}">
				<li class="fieldcontain">
					<span id="RAJOSSO_BRIDHI-label" class="property-label"><g:message code="INSPECTION.RAJOSSO_BRIDHI.label" default="RAJOSSOBRIDHI" /></span>
					
						<span class="property-value" aria-labelledby="RAJOSSO_BRIDHI-label"><g:fieldValue bean="${INSPECTIONInstance}" field="RAJOSSO_BRIDHI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.RAJOSSO_BRIDHI_NO}">
				<li class="fieldcontain">
					<span id="RAJOSSO_BRIDHI_NO-label" class="property-label"><g:message code="INSPECTION.RAJOSSO_BRIDHI_NO.label" default="RAJOSSOBRIDHINO" /></span>
					
						<span class="property-value" aria-labelledby="RAJOSSO_BRIDHI_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.RAJOSSO_BRIDHI_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.RAJOSSO_BRIDHI_YES}">
				<li class="fieldcontain">
					<span id="RAJOSSO_BRIDHI_YES-label" class="property-label"><g:message code="INSPECTION.RAJOSSO_BRIDHI_YES.label" default="RAJOSSOBRIDHIYES" /></span>
					
						<span class="property-value" aria-labelledby="RAJOSSO_BRIDHI_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.RAJOSSO_BRIDHI_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.RAJOSSO_NIRDHARON}">
				<li class="fieldcontain">
					<span id="RAJOSSO_NIRDHARON-label" class="property-label"><g:message code="INSPECTION.RAJOSSO_NIRDHARON.label" default="RAJOSSONIRDHARON" /></span>
					
						<span class="property-value" aria-labelledby="RAJOSSO_NIRDHARON-label"><g:fieldValue bean="${INSPECTIONInstance}" field="RAJOSSO_NIRDHARON"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_NO}">
				<li class="fieldcontain">
					<span id="RAJOSSO_NIRDHARON_NO-label" class="property-label"><g:message code="INSPECTION.RAJOSSO_NIRDHARON_NO.label" default="RAJOSSONIRDHARONNO" /></span>
					
						<span class="property-value" aria-labelledby="RAJOSSO_NIRDHARON_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_YES}">
				<li class="fieldcontain">
					<span id="RAJOSSO_NIRDHARON_YES-label" class="property-label"><g:message code="INSPECTION.RAJOSSO_NIRDHARON_YES.label" default="RAJOSSONIRDHARONYES" /></span>
					
						<span class="property-value" aria-labelledby="RAJOSSO_NIRDHARON_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SAMAJIK_SUROKHA}">
				<li class="fieldcontain">
					<span id="SAMAJIK_SUROKHA-label" class="property-label"><g:message code="INSPECTION.SAMAJIK_SUROKHA.label" default="SAMAJIKSUROKHA" /></span>
					
						<span class="property-value" aria-labelledby="SAMAJIK_SUROKHA-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SAMAJIK_SUROKHA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SAMAJIK_SUROKHA_NO}">
				<li class="fieldcontain">
					<span id="SAMAJIK_SUROKHA_NO-label" class="property-label"><g:message code="INSPECTION.SAMAJIK_SUROKHA_NO.label" default="SAMAJIKSUROKHANO" /></span>
					
						<span class="property-value" aria-labelledby="SAMAJIK_SUROKHA_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SAMAJIK_SUROKHA_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SAMAJIK_SUROKHA_YES}">
				<li class="fieldcontain">
					<span id="SAMAJIK_SUROKHA_YES-label" class="property-label"><g:message code="INSPECTION.SAMAJIK_SUROKHA_YES.label" default="SAMAJIKSUROKHAYES" /></span>
					
						<span class="property-value" aria-labelledby="SAMAJIK_SUROKHA_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SAMAJIK_SUROKHA_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SANNASHIK_PROTIBADON}">
				<li class="fieldcontain">
					<span id="SANNASHIK_PROTIBADON-label" class="property-label"><g:message code="INSPECTION.SANNASHIK_PROTIBADON.label" default="SANNASHIKPROTIBADON" /></span>
					
						<span class="property-value" aria-labelledby="SANNASHIK_PROTIBADON-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SANNASHIK_PROTIBADON"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_NO}">
				<li class="fieldcontain">
					<span id="SANNASHIK_PROTIBADON_NO-label" class="property-label"><g:message code="INSPECTION.SANNASHIK_PROTIBADON_NO.label" default="SANNASHIKPROTIBADONNO" /></span>
					
						<span class="property-value" aria-labelledby="SANNASHIK_PROTIBADON_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_YES}">
				<li class="fieldcontain">
					<span id="SANNASHIK_PROTIBADON_YES-label" class="property-label"><g:message code="INSPECTION.SANNASHIK_PROTIBADON_YES.label" default="SANNASHIKPROTIBADONYES" /></span>
					
						<span class="property-value" aria-labelledby="SANNASHIK_PROTIBADON_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SASTHO}">
				<li class="fieldcontain">
					<span id="SASTHO-label" class="property-label"><g:message code="INSPECTION.SASTHO.label" default="SASTHO" /></span>
					
						<span class="property-value" aria-labelledby="SASTHO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SASTHO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SIKHA}">
				<li class="fieldcontain">
					<span id="SIKHA-label" class="property-label"><g:message code="INSPECTION.SIKHA.label" default="SIKHA" /></span>
					
						<span class="property-value" aria-labelledby="SIKHA-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SIKHA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SKIM_BILL}">
				<li class="fieldcontain">
					<span id="SKIM_BILL-label" class="property-label"><g:message code="INSPECTION.SKIM_BILL.label" default="SKIMBILL" /></span>
					
						<span class="property-value" aria-labelledby="SKIM_BILL-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SKIM_BILL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SKIM_BILL_NO}">
				<li class="fieldcontain">
					<span id="SKIM_BILL_NO-label" class="property-label"><g:message code="INSPECTION.SKIM_BILL_NO.label" default="SKIMBILLNO" /></span>
					
						<span class="property-value" aria-labelledby="SKIM_BILL_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SKIM_BILL_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SKIM_BILL_YES}">
				<li class="fieldcontain">
					<span id="SKIM_BILL_YES-label" class="property-label"><g:message code="INSPECTION.SKIM_BILL_YES.label" default="SKIMBILLYES" /></span>
					
						<span class="property-value" aria-labelledby="SKIM_BILL_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SKIM_BILL_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SKIM_TALIKA}">
				<li class="fieldcontain">
					<span id="SKIM_TALIKA-label" class="property-label"><g:message code="INSPECTION.SKIM_TALIKA.label" default="SKIMTALIKA" /></span>
					
						<span class="property-value" aria-labelledby="SKIM_TALIKA-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SKIM_TALIKA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SOMPOTTI_PRONOION}">
				<li class="fieldcontain">
					<span id="SOMPOTTI_PRONOION-label" class="property-label"><g:message code="INSPECTION.SOMPOTTI_PRONOION.label" default="SOMPOTTIPRONOION" /></span>
					
						<span class="property-value" aria-labelledby="SOMPOTTI_PRONOION-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SOMPOTTI_PRONOION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SOMPOTTI_PRONOION_NO}">
				<li class="fieldcontain">
					<span id="SOMPOTTI_PRONOION_NO-label" class="property-label"><g:message code="INSPECTION.SOMPOTTI_PRONOION_NO.label" default="SOMPOTTIPRONOIONNO" /></span>
					
						<span class="property-value" aria-labelledby="SOMPOTTI_PRONOION_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SOMPOTTI_PRONOION_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SOMPOTTI_PRONOION_YES}">
				<li class="fieldcontain">
					<span id="SOMPOTTI_PRONOION_YES-label" class="property-label"><g:message code="INSPECTION.SOMPOTTI_PRONOION_YES.label" default="SOMPOTTIPRONOIONYES" /></span>
					
						<span class="property-value" aria-labelledby="SOMPOTTI_PRONOION_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SOMPOTTI_PRONOION_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO}">
				<li class="fieldcontain">
					<span id="SROMGHONO_SKIM_BATITO-label" class="property-label"><g:message code="INSPECTION.SROMGHONO_SKIM_BATITO.label" default="SROMGHONOSKIMBATITO" /></span>
					
						<span class="property-value" aria-labelledby="SROMGHONO_SKIM_BATITO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SROMGHONO_SKIM_BATITO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_NO}">
				<li class="fieldcontain">
					<span id="SROMGHONO_SKIM_BATITO_NO-label" class="property-label"><g:message code="INSPECTION.SROMGHONO_SKIM_BATITO_NO.label" default="SROMGHONOSKIMBATITONO" /></span>
					
						<span class="property-value" aria-labelledby="SROMGHONO_SKIM_BATITO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_YES}">
				<li class="fieldcontain">
					<span id="SROMGHONO_SKIM_BATITO_YES-label" class="property-label"><g:message code="INSPECTION.SROMGHONO_SKIM_BATITO_YES.label" default="SROMGHONOSKIMBATITOYES" /></span>
					
						<span class="property-value" aria-labelledby="SROMGHONO_SKIM_BATITO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SSC_SODOSHO}">
				<li class="fieldcontain">
					<span id="SSC_SODOSHO-label" class="property-label"><g:message code="INSPECTION.SSC_SODOSHO.label" default="SSCSODOSHO" /></span>
					
						<span class="property-value" aria-labelledby="SSC_SODOSHO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SSC_SODOSHO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SSC_SODOSHO_NO}">
				<li class="fieldcontain">
					<span id="SSC_SODOSHO_NO-label" class="property-label"><g:message code="INSPECTION.SSC_SODOSHO_NO.label" default="SSCSODOSHONO" /></span>
					
						<span class="property-value" aria-labelledby="SSC_SODOSHO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SSC_SODOSHO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SSC_SODOSHO_YES}">
				<li class="fieldcontain">
					<span id="SSC_SODOSHO_YES-label" class="property-label"><g:message code="INSPECTION.SSC_SODOSHO_YES.label" default="SSCSODOSHOYES" /></span>
					
						<span class="property-value" aria-labelledby="SSC_SODOSHO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.SSC_SODOSHO_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.SUPARISH}">
				<li class="fieldcontain">
					<span id="SUPARISH-label" class="property-label"><g:message code="INSPECTION.SUPARISH.label" default="SUPARISH" /></span>
					
						<span class="property-value" aria-labelledby="SUPARISH-label"><g:fieldValue bean="${INSPECTIONInstance}" field="SUPARISH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UDC_SOVA}">
				<li class="fieldcontain">
					<span id="UDC_SOVA-label" class="property-label"><g:message code="INSPECTION.UDC_SOVA.label" default="UDCSOVA" /></span>
					
						<span class="property-value" aria-labelledby="UDC_SOVA-label"><g:fieldValue bean="${INSPECTIONInstance}" field="UDC_SOVA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UDC_SOVA_NO}">
				<li class="fieldcontain">
					<span id="UDC_SOVA_NO-label" class="property-label"><g:message code="INSPECTION.UDC_SOVA_NO.label" default="UDCSOVANO" /></span>
					
						<span class="property-value" aria-labelledby="UDC_SOVA_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.UDC_SOVA_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UDC_SOVA_YES}">
				<li class="fieldcontain">
					<span id="UDC_SOVA_YES-label" class="property-label"><g:message code="INSPECTION.UDC_SOVA_YES.label" default="UDCSOVAYES" /></span>
					
						<span class="property-value" aria-labelledby="UDC_SOVA_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.UDC_SOVA_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UNION_PROKOLPO}">
				<li class="fieldcontain">
					<span id="UNION_PROKOLPO-label" class="property-label"><g:message code="INSPECTION.UNION_PROKOLPO.label" default="UNIONPROKOLPO" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PROKOLPO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="UNION_PROKOLPO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UNION_PROKOLPO_NO}">
				<li class="fieldcontain">
					<span id="UNION_PROKOLPO_NO-label" class="property-label"><g:message code="INSPECTION.UNION_PROKOLPO_NO.label" default="UNIONPROKOLPONO" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PROKOLPO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.UNION_PROKOLPO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UNION_PROKOLPO_YES}">
				<li class="fieldcontain">
					<span id="UNION_PROKOLPO_YES-label" class="property-label"><g:message code="INSPECTION.UNION_PROKOLPO_YES.label" default="UNIONPROKOLPOYES" /></span>
					
						<span class="property-value" aria-labelledby="UNION_PROKOLPO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.UNION_PROKOLPO_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UNNOION_BUDGET}">
				<li class="fieldcontain">
					<span id="UNNOION_BUDGET-label" class="property-label"><g:message code="INSPECTION.UNNOION_BUDGET.label" default="UNNOIONBUDGET" /></span>
					
						<span class="property-value" aria-labelledby="UNNOION_BUDGET-label"><g:fieldValue bean="${INSPECTIONInstance}" field="UNNOION_BUDGET"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UNNOION_BUDGET_NO}">
				<li class="fieldcontain">
					<span id="UNNOION_BUDGET_NO-label" class="property-label"><g:message code="INSPECTION.UNNOION_BUDGET_NO.label" default="UNNOIONBUDGETNO" /></span>
					
						<span class="property-value" aria-labelledby="UNNOION_BUDGET_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.UNNOION_BUDGET_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UNNOION_BUDGET_YES}">
				<li class="fieldcontain">
					<span id="UNNOION_BUDGET_YES-label" class="property-label"><g:message code="INSPECTION.UNNOION_BUDGET_YES.label" default="UNNOIONBUDGETYES" /></span>
					
						<span class="property-value" aria-labelledby="UNNOION_BUDGET_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.UNNOION_BUDGET_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UPAZILLA_ID}">
				<li class="fieldcontain">
					<span id="UPAZILLA_ID-label" class="property-label"><g:message code="INSPECTION.UPAZILLA_ID.label" default="UPAZILLAID" /></span>
					
						<span class="property-value" aria-labelledby="UPAZILLA_ID-label"><g:link controller="upazila" action="show" id="${INSPECTIONInstance?.UPAZILLA_ID?.id}">${INSPECTIONInstance?.UPAZILLA_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.UP_NAME_CODE}">
				<li class="fieldcontain">
					<span id="UP_NAME_CODE-label" class="property-label"><g:message code="INSPECTION.UP_NAME_CODE.label" default="UPNAMECODE" /></span>
					
						<span class="property-value" aria-labelledby="UP_NAME_CODE-label"><g:fieldValue bean="${INSPECTIONInstance}" field="UP_NAME_CODE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.VAT_TAX}">
				<li class="fieldcontain">
					<span id="VAT_TAX-label" class="property-label"><g:message code="INSPECTION.VAT_TAX.label" default="VATTAX" /></span>
					
						<span class="property-value" aria-labelledby="VAT_TAX-label"><g:fieldValue bean="${INSPECTIONInstance}" field="VAT_TAX"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.VAT_TAX_NO}">
				<li class="fieldcontain">
					<span id="VAT_TAX_NO-label" class="property-label"><g:message code="INSPECTION.VAT_TAX_NO.label" default="VATTAXNO" /></span>
					
						<span class="property-value" aria-labelledby="VAT_TAX_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.VAT_TAX_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.VAT_TAX_YES}">
				<li class="fieldcontain">
					<span id="VAT_TAX_YES-label" class="property-label"><g:message code="INSPECTION.VAT_TAX_YES.label" default="VATTAXYES" /></span>
					
						<span class="property-value" aria-labelledby="VAT_TAX_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.VAT_TAX_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.VOTER_OPOSTHITI}">
				<li class="fieldcontain">
					<span id="VOTER_OPOSTHITI-label" class="property-label"><g:message code="INSPECTION.VOTER_OPOSTHITI.label" default="VOTEROPOSTHITI" /></span>
					
						<span class="property-value" aria-labelledby="VOTER_OPOSTHITI-label"><g:fieldValue bean="${INSPECTIONInstance}" field="VOTER_OPOSTHITI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.VOTER_OPOSTHITI_NO}">
				<li class="fieldcontain">
					<span id="VOTER_OPOSTHITI_NO-label" class="property-label"><g:message code="INSPECTION.VOTER_OPOSTHITI_NO.label" default="VOTEROPOSTHITINO" /></span>
					
						<span class="property-value" aria-labelledby="VOTER_OPOSTHITI_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.VOTER_OPOSTHITI_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.VOTER_OPOSTHITI_YES}">
				<li class="fieldcontain">
					<span id="VOTER_OPOSTHITI_YES-label" class="property-label"><g:message code="INSPECTION.VOTER_OPOSTHITI_YES.label" default="VOTEROPOSTHITIYES" /></span>
					
						<span class="property-value" aria-labelledby="VOTER_OPOSTHITI_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.VOTER_OPOSTHITI_YES}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.WARD_PROKOLPO}">
				<li class="fieldcontain">
					<span id="WARD_PROKOLPO-label" class="property-label"><g:message code="INSPECTION.WARD_PROKOLPO.label" default="WARDPROKOLPO" /></span>
					
						<span class="property-value" aria-labelledby="WARD_PROKOLPO-label"><g:fieldValue bean="${INSPECTIONInstance}" field="WARD_PROKOLPO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.WARD_PROKOLPO_NO}">
				<li class="fieldcontain">
					<span id="WARD_PROKOLPO_NO-label" class="property-label"><g:message code="INSPECTION.WARD_PROKOLPO_NO.label" default="WARDPROKOLPONO" /></span>
					
						<span class="property-value" aria-labelledby="WARD_PROKOLPO_NO-label"><g:formatBoolean boolean="${INSPECTIONInstance?.WARD_PROKOLPO_NO}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${INSPECTIONInstance?.WARD_PROKOLPO_YES}">
				<li class="fieldcontain">
					<span id="WARD_PROKOLPO_YES-label" class="property-label"><g:message code="INSPECTION.WARD_PROKOLPO_YES.label" default="WARDPROKOLPOYES" /></span>
					
						<span class="property-value" aria-labelledby="WARD_PROKOLPO_YES-label"><g:formatBoolean boolean="${INSPECTIONInstance?.WARD_PROKOLPO_YES}" /></span>
					
				</li>
				</g:if>
			
			</ol>--}%
            <%@ page import="monitoring.INSPECTION" %>



        <div class="col-xs-6">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DISTRICT_ID', 'error')}">
                    <label for="DISTRICT_ID">
                        <g:message code="INSPECTION.DISTRICT_ID.label" default="জেলার নাম :" />
                        <span class="required-indicator"></span>
                    </label>
                    %{--<g:select id="DISTRICT_ID" name="DISTRICT_ID.id" from="${settings.District.list()}" optionKey="id" required="" value="${INSPECTIONInstance?.DISTRICT_ID?.id}" class="many-to-one form-control" noSelection="['null': '--জেলার নাম--']"/>--}%
                    ${INSPECTIONInstance?.DISTRICT_ID?.DIS_NAME}
                </div>
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UPAZILLA_ID', 'error')} ">
                    <label for="UPAZILLA_ID">
                        <g:message code="INSPECTION.UPAZILLA_ID.label" default="উপজেলার নাম :" />
                        <span class="required-indicator"></span>
                    </label>
                    %{--<g:select id="UPAZILLA_ID" name="UPAZILLA_ID.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${INSPECTIONInstance?.UPAZILLA_ID?.id}" class="many-to-one form-control" noSelection="['null': '--উপজেলার নাম--']"/>--}%
                    ${INSPECTIONInstance?.UPAZILLA_ID?.UPZ_NAME}
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UP_NAME_CODE', 'error')} ">
                    <label for="UP_NAME_CODE">
                        <g:message code="INSPECTION.UP_NAME_CODE.label" default="ইউপির নাম ও কোড :" />

                    </label>
                    %{--<g:textField class="form-control" name="UP_NAME_CODE" value="${INSPECTIONInstance?.UP_NAME_CODE}" placeholder="ইউপির নাম ও কোড "/>--}%
                    ${INSPECTIONInstance?.UP_NAME_CODE}
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CHAIRMAN_NAME', 'error')} ">
                    <label for="CHAIRMAN_NAME">
                        <g:message code="INSPECTION.CHAIRMAN_NAME.label" default="পরিদর্শনকালে উপস্থিত চেয়ারম্যান ও সদস্যবৃন্দের নাম :" />

                    </label>
                    %{--<g:textField class="form-control"  name="CHAIRMAN_NAME" value="${INSPECTIONInstance?.CHAIRMAN_NAME}" placeholder="পরিদর্শনকালে উপস্থিত চেয়ারম্যান ও সদস্যবৃন্দের নাম* "/>--}%
                    ${INSPECTIONInstance?.CHAIRMAN_NAME}
                </div>
            </div>
        </div>

        </div>
        </div>
        </div>

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">পরিদর্শনের বণনা</h3>
        </div>

        <div class="panel-body">

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'INSPECTION_DATE_NAME', 'error')} ">
                        <label for="INSPECTION_DATE_NAME">
                            <g:message code="INSPECTION.INSPECTION_DATE_NAME.label"
                                       default="পূর্ববর্তী পরিদশেনের তারিখ ও কর্মকতার নাম  :"/>

                        </label>
                        %{--<g:textField class="form-control" name="INSPECTION_DATE_NAME"
                                     value="${INSPECTIONInstance?.INSPECTION_DATE_NAME}"
                                     placeholder="পূর্ববর্তী পরিদশেনের তারিখ ও কর্মকতার নাম "/>--}%
                        ${INSPECTIONInstance?.INSPECTION_DATE_NAME}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'FISCAL_YEAR_DATE', 'error')} ">
                        <label for="FISCAL_YEAR_DATE">
                            <g:message code="INSPECTION.FISCAL_YEAR_DATE.label" default="অর্থ বছর ও পরিদশের তারিখ :"/>

                        </label>
                        %{--<g:textField name="FISCAL_YEAR_DATE" value="${INSPECTIONInstance?.FISCAL_YEAR_DATE}"
                                     class="form-control" placeholder="অর্থ বছর ও পরিদশের তারিখ"/>--}%
                        ${INSPECTIONInstance?.FISCAL_YEAR_DATE}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGB_AMOUNT', 'error')} ">
                        <label for="BGB_AMOUNT">
                            <g:message code="INSPECTION.BGB_AMOUNT.label" default="বিবিজি বরাদ্দের পরিমাণ  :" />
                            <span class="required-indicator"></span>
                        </label>
                        %{--<g:field name="BGB_AMOUNT" value="${fieldValue(bean: INSPECTIONInstance, field: 'BGB_AMOUNT')}" required="" class="form-control" placeholder="বিবিজি বরাদ্দের পরিমাণ "/>--}%
                        ${fieldValue(bean: INSPECTIONInstance, field: 'BGB_AMOUNT')}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PGB_AMOUNT', 'error')} required">
                        <label for="PGB_AMOUNT">
                            <g:message code="INSPECTION.PGB_AMOUNT.label" default="পিবিজি বরাদ্দের পরিমাণ :" />
                            <span class="required-indicator"></span>
                        </label>
                        %{--<g:field name="PGB_AMOUNT" value="${fieldValue(bean: INSPECTIONInstance, field: 'PGB_AMOUNT')}" required="" class="form-control" placeholder="পিবিজি বরাদ্দের পরিমাণ"/>--}%
                        ${fieldValue(bean: INSPECTIONInstance, field: 'PGB_AMOUNT')}
                    </div>
                </div>
            </div>


        </div>
    </div>

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">স্কীম সংখ্যা</h3>
        </div>

        <div class="panel-body">

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'JOGAJOG', 'error')} ">
                        <label for="JOGAJOG">
                            <g:message code="INSPECTION.JOGAJOG.label" default="যোগাযোগ :" />

                        </label>
                        %{--<g:textField name="JOGAJOG" value="${INSPECTIONInstance?.JOGAJOG}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.JOGAJOG}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SASTHO', 'error')} ">
                        <label for="SASTHO">
                            <g:message code="INSPECTION.SASTHO.label" default="স্বাস্হ্য :" />

                        </label>
                        %{--<g:textField name="SASTHO" value="${INSPECTIONInstance?.SASTHO}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.SASTHO}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PANI_SORBORAHO', 'error')} ">
                        <label for="PANI_SORBORAHO">
                            <g:message code="INSPECTION.PANI_SORBORAHO.label" default="পানি সরবরাহ :" />

                        </label>
                        %{--<g:textField name="PANI_SORBORAHO" value="${INSPECTIONInstance?.PANI_SORBORAHO}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.PANI_SORBORAHO}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SIKHA', 'error')} ">
                        <label for="SIKHA">
                            <g:message code="INSPECTION.SIKHA.label" default="শিক্ষা  :" />

                        </label>
                        %{--<g:textField name="SIKHA" value="${INSPECTIONInstance?.SIKHA}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.SIKHA}
                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PRAKRITIK_SOMPOD', 'error')} ">
                        <label for="PRAKRITIK_SOMPOD">
                            <g:message code="INSPECTION.PRAKRITIK_SOMPOD.label" default="প্রাকৃতিক সম্পদ ব্যবস্থপনা :" />

                        </label>
                        %{--<g:textField name="PRAKRITIK_SOMPOD" value="${INSPECTIONInstance?.PRAKRITIK_SOMPOD}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.PRAKRITIK_SOMPOD}
                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KRISHI_BAZAR', 'error')} ">
                        <label for="KRISHI_BAZAR">
                            <g:message code="INSPECTION.KRISHI_BAZAR.label" default="কৃষি এবং বাজার  :" />

                        </label>
                        %{--<g:textField name="KRISHI_BAZAR" value="${INSPECTIONInstance?.KRISHI_BAZAR}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.KRISHI_BAZAR}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'POI_NISKASON', 'error')} ">
                        <label for="POI_NISKASON">
                            <g:message code="INSPECTION.POI_NISKASON.label" default="পয়ঃনিস্কাশন এবং বর্জ্য ব্যবস্থাপনা :" />

                        </label>
                        %{--<g:textField name="POI_NISKASON" value="${INSPECTIONInstance?.POI_NISKASON}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.POI_NISKASON}
                    </div>
                </div>
            </div>


            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MANOBSOMPOD_UNNOION', 'error')} ">
                        <label for="MANOBSOMPOD_UNNOION">
                            <g:message code="INSPECTION.MANOBSOMPOD_UNNOION.label" default="মানব সম্পদ উন্নয়ন :" />

                        </label>
                        %{--<g:textField name="MANOBSOMPOD_UNNOION" value="${INSPECTIONInstance?.MANOBSOMPOD_UNNOION}" class="form-control"/>--}%
                        ${INSPECTIONInstance?.MANOBSOMPOD_UNNOION}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_TALIKA', 'error')} ">
                        <label for="SKIM_TALIKA">
                            <g:message code="INSPECTION.SKIM_TALIKA.label" default="বাস্তবায়িত ও বাস্তবায়নাধীন স্খিমের তালিকা  :" />

                        </label>
                        %{--<g:textField name="SKIM_TALIKA" value="${INSPECTIONInstance?.SKIM_TALIKA}" class="form-control" placehelder="বাস্তবায়িত ও বাস্তবায়নাধীন স্খিমের তালিকা "/>--}%
                        ${INSPECTIONInstance?.SKIM_TALIKA}
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BISAS_MONTOBBO', 'error')} ">
                        <label for="BISAS_MONTOBBO">
                            <g:message code="INSPECTION.BISAS_MONTOBBO.label" default="বাস্তবায়নের মান সম্পকিত বিবরণ ও বিশেষে মন্তব্য (যদি থাকে এবং প্রকল্পের নাম সহ) :" />

                        </label>
                        %{--<g:textField name="BISAS_MONTOBBO" value="${INSPECTIONInstance?.BISAS_MONTOBBO}" class="form-control" placeholder="বাস্তবায়নের মান সম্পকিত বিবরণ ও বিশেষে মন্তব্য (যদি থাকে এবং প্রকল্পের নাম সহ)"/>--}%
                        ${INSPECTIONInstance?.BISAS_MONTOBBO}
                    </div>
                </div>
            </div>

        </div>
    </div>




    <div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">ইউপি’র জবাবদিহিতা,স্বচ্ছতা ও জনগণের সম্পৃক্ততা সম্পর্কে মন্তব্য</h3>
    </div>

    <div class="panel-body">

    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.NEGATIVE_SKIM_NO.label" default="নেগেটিভ তালিকাভুক্ত কোন স্কিম গ্রহণ করা হয়েছে কি না" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NEGATIVE_SKIM_YES', 'error')} ">
                <label for="NEGATIVE_SKIM_YES">
                    <g:message code="INSPECTION.NEGATIVE_SKIM_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled=""  name="NEGATIVE_SKIM_YES" value="${INSPECTIONInstance?.NEGATIVE_SKIM_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NEGATIVE_SKIM_NO', 'error')} ">
                <label for="NEGATIVE_SKIM_NO">
                    <g:message code="INSPECTION.NEGATIVE_SKIM_NO.label" default="না" />

                </label>
                <g:checkBox disabled=""  name="NEGATIVE_SKIM_NO" value="${INSPECTIONInstance?.NEGATIVE_SKIM_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NEGATIVE_SKIM', 'error')} ">
                <label for="NEGATIVE_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="NEGATIVE_SKIM" value="${INSPECTIONInstance?.NEGATIVE_SKIM}" class="form-control" placeholder="নেগেটিভ তালিকাভুক্ত কোন স্কিম গ্রহণ করা হয়েছে কি না"/>--}%
                ${INSPECTIONInstance?.NEGATIVE_SKIM}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="৩০% অর্থ মহিলাদের দ্বারা অগ্রাধিকার প্রাপ্ত স্কিম বাস্তবায়নের জন্য ব্যয় করা হয়েছে কি না?হয়ে থাকলে কতটি?(নাম সহ)" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_ORTHO_YES', 'error')} ">
                <label for="MOHILA_ORTHO_YES">
                    <g:message code="INSPECTION.MOHILA_ORTHO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled=""  name="MOHILA_ORTHO_YES" value="${INSPECTIONInstance?.MOHILA_ORTHO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_ORTHO_NO', 'error')} ">
                <label for="MOHILA_ORTHO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled=""  name="MOHILA_ORTHO_NO" value="${INSPECTIONInstance?.MOHILA_ORTHO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_ORTHO_SKIM', 'error')} ">
                <label for="MOHILA_ORTHO_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="MOHILA_ORTHO_SKIM" value="${INSPECTIONInstance?.MOHILA_ORTHO_SKIM}" class="form-control" placeholder="৩০% অর্থ মহিলাদের দ্বারা অগ্রাধিকার প্রাপ্ত স্কিম বাস্তবায়নের জন্য ব্যয় করা হয়েছে কি না?হয়ে থাকলে কতটি?(নাম সহ)"/>--}%
                ${INSPECTIONInstance?.MOHILA_ORTHO_SKIM}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.VOTER_OPOSTHITI.label" default="ওয়ার্ড পর্যায়ে স্কিমের তালিকা প্রণয়নকালে ৫% ভোটারের উপস্থিতিতে ওয়ার্ড সভা অনুষ্ঠিত হয়েছে কি না? (একটি হাজিরা দেখতে হবে)" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VOTER_OPOSTHITI_YES', 'error')} ">
                <label for="VOTER_OPOSTHITI_YES">
                    <g:message code="INSPECTION.VOTER_OPOSTHITI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="VOTER_OPOSTHITI_YES" value="${INSPECTIONInstance?.VOTER_OPOSTHITI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VOTER_OPOSTHITI_NO', 'error')} ">
                <label for="VOTER_OPOSTHITI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="VOTER_OPOSTHITI_NO" value="${INSPECTIONInstance?.VOTER_OPOSTHITI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VOTER_OPOSTHITI', 'error')} ">
                <label for="VOTER_OPOSTHITI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="VOTER_OPOSTHITI" value="${INSPECTIONInstance?.VOTER_OPOSTHITI}" class="form-control" placeholder="ওয়ার্ড পর্যায়ে স্কিমের তালিকা প্রণয়নকালে ৫% ভোটারের উপস্থিতিতে ওয়ার্ড সভা অনুষ্ঠিত হয়েছে কি না? (একটি হাজিরা দেখতে হবে)"/>--}%
                ${INSPECTIONInstance?.VOTER_OPOSTHITI}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.MOHILA_SOVAPOTI.label" default="গঠিত ওয়ার্ড কমিটিসমূহের ৩টি কমিটিতে ইউপি মহিলা সদস্য সভাপতি আছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SOVAPOTI_YES', 'error')} ">
                <label for="MOHILA_SOVAPOTI_YES">
                    <g:message code="INSPECTION.MOHILA_SOVAPOTI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="MOHILA_SOVAPOTI_YES" value="${INSPECTIONInstance?.MOHILA_SOVAPOTI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SOVAPOTI_NO', 'error')} ">
                <label for="MOHILA_SOVAPOTI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="MOHILA_SOVAPOTI_NO" value="${INSPECTIONInstance?.MOHILA_SOVAPOTI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SOVAPOTI', 'error')} ">
                <label for="MOHILA_SOVAPOTI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="MOHILA_SOVAPOTI" value="${INSPECTIONInstance?.MOHILA_SOVAPOTI}" class="form-control" placeholder="গঠিত ওয়ার্ড কমিটিসমূহের ৩টি কমিটিতে ইউপি মহিলা সদস্য সভাপতি আছে কি না?"/>--}%
                ${INSPECTIONInstance?.MOHILA_SOVAPOTI}
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BGCC_JACHAI.label" default="স্কিমের তালিকা বিজিসিসি কর্তৃক যাচাইকৃত ও সুপাশিরকৃত কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_JACHAI_YES', 'error')} ">
                <label for="BGCC_JACHAI_YES">
                    <g:message code="INSPECTION.BGCC_JACHAI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="BGCC_JACHAI_YES" value="${INSPECTIONInstance?.BGCC_JACHAI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_JACHAI_NO', 'error')} ">
                <label for="BGCC_JACHAI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="BGCC_JACHAI_NO" value="${INSPECTIONInstance?.BGCC_JACHAI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_JACHAI', 'error')} ">
                <label for="BGCC_JACHAI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="BGCC_JACHAI" value="${INSPECTIONInstance?.BGCC_JACHAI}" class="form-control" placeholder="স্কিমের তালিকা বিজিসিসি কর্তৃক যাচাইকৃত ও সুপাশিরকৃত কি না?"/>--}%
                ${INSPECTIONInstance?.BGCC_JACHAI}
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.PONCHOBARSHIK.label" default="পঞ্চবার্ষিক পরিকল্পনা প্রণয়ন করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PONCHOBARSHIK_YES', 'error')} ">
                <label for="PONCHOBARSHIK_YES">
                    <g:message code="INSPECTION.PONCHOBARSHIK_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="PONCHOBARSHIK_YES" value="${INSPECTIONInstance?.PONCHOBARSHIK_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PONCHOBARSHIK_NO', 'error')} ">
                <label for="PONCHOBARSHIK_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="PONCHOBARSHIK_NO" value="${INSPECTIONInstance?.PONCHOBARSHIK_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PONCHOBARSHIK', 'error')} ">
                <label for="PONCHOBARSHIK">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="PONCHOBARSHIK" value="${INSPECTIONInstance?.PONCHOBARSHIK}" class="form-control" placeholder="পঞ্চবার্ষিক পরিকল্পনা প্রণয়ন করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.PONCHOBARSHIK}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.UNNOION_BUDGET.label" default="উন্মুক্ত বাজেট সভা অনুষ্ঠিত হয়ে থাকলে তারিখ ও উপস্থিতির সংখ্যা (হাজিরা খাতা দেখতে হবে)" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNNOION_BUDGET_YES', 'error')} ">
                <label for="UNNOION_BUDGET_YES">
                    <g:message code="INSPECTION.UNNOION_BUDGET_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="UNNOION_BUDGET_YES" value="${INSPECTIONInstance?.UNNOION_BUDGET_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNNOION_BUDGET_NO', 'error')} ">
                <label for="UNNOION_BUDGET_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="UNNOION_BUDGET_NO" value="${INSPECTIONInstance?.UNNOION_BUDGET_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNNOION_BUDGET', 'error')} ">
                <label for="UNNOION_BUDGET">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="UNNOION_BUDGET" value="${INSPECTIONInstance?.UNNOION_BUDGET}" class="form-control" placeholder="উন্মুক্ত বাজেট সভা অনুষ্ঠিত হয়ে থাকলে তারিখ ও উপস্থিতির সংখ্যা (হাজিরা খাতা দেখতে হবে)"/>--}%
                ${INSPECTIONInstance?.UNNOION_BUDGET}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.CASHBOOK_SONROKHON.label" default="ক্যাশবুক/রেজিষ্টার, লেজার নিয়মিত সংক্ষণ করা হয়েছে কিনা?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CASHBOOK_SONROKHON_YES', 'error')} ">
                <label for="CASHBOOK_SONROKHON_YES">
                    <g:message code="INSPECTION.CASHBOOK_SONROKHON_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="CASHBOOK_SONROKHON_YES" value="${INSPECTIONInstance?.CASHBOOK_SONROKHON_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CASHBOOK_SONROKHON_NO', 'error')} ">
                <label for="CASHBOOK_SONROKHON_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="CASHBOOK_SONROKHON_NO" value="${INSPECTIONInstance?.CASHBOOK_SONROKHON_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CASHBOOK_SONROKHON', 'error')} ">
                <label for="CASHBOOK_SONROKHON">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="CASHBOOK_SONROKHON" value="${INSPECTIONInstance?.CASHBOOK_SONROKHON}" class="form-control" placeholder="ক্যাশবুক/রেজিষ্টার, লেজার নিয়মিত সংক্ষণ করা হয়েছে কিনা?"/>--}%
                ${INSPECTIONInstance?.CASHBOOK_SONROKHON}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SOMPOTTI_PRONOION.label" default="সম্পত্তি রেজিষ্টার প্রণয়ন করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SOMPOTTI_PRONOION_YES', 'error')} ">
                <label for="SOMPOTTI_PRONOION_YES">
                    <g:message code="INSPECTION.SOMPOTTI_PRONOION_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="SOMPOTTI_PRONOION_YES" value="${INSPECTIONInstance?.SOMPOTTI_PRONOION_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SOMPOTTI_PRONOION_NO', 'error')} ">
                <label for="SOMPOTTI_PRONOION_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="SOMPOTTI_PRONOION_NO" value="${INSPECTIONInstance?.SOMPOTTI_PRONOION_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SOMPOTTI_PRONOION', 'error')} ">
                <label for="SOMPOTTI_PRONOION">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="SOMPOTTI_PRONOION" value="${INSPECTIONInstance?.SOMPOTTI_PRONOION}" class="form-control" placeholder="সম্পত্তি রেজিষ্টার প্রণয়ন করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.SOMPOTTI_PRONOION}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SAMAJIK_SUROKHA.label" default="পরিবেশ ও সামাজিক সুরক্ষার পরিপন্থী স্কিম গ্রহণ না করার নির্দেশনা প্রতিপালিত হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SAMAJIK_SUROKHA_YES', 'error')} ">
                <label for="SAMAJIK_SUROKHA_YES">
                    <g:message code="INSPECTION.SAMAJIK_SUROKHA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="SAMAJIK_SUROKHA_YES" value="${INSPECTIONInstance?.SAMAJIK_SUROKHA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SAMAJIK_SUROKHA_NO', 'error')} ">
                <label for="SAMAJIK_SUROKHA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="SAMAJIK_SUROKHA_NO" value="${INSPECTIONInstance?.SAMAJIK_SUROKHA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SAMAJIK_SUROKHA', 'error')} ">
                <label for="SAMAJIK_SUROKHA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="SAMAJIK_SUROKHA" value="${INSPECTIONInstance?.SAMAJIK_SUROKHA}" class="form-control" placeholder="পরিবেশ ও সামাজিক সুরক্ষার পরিপন্থী স্কিম গ্রহণ না করার নির্দেশনা প্রতিপালিত হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.SAMAJIK_SUROKHA}
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.ODIT_NOTICE.label" default="বার্ষিক অডিট প্রতিবেদন নোটিশ বোর্ডে টানানো রয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ODIT_NOTICE_YES', 'error')} ">
                <label for="ODIT_NOTICE_YES">
                    <g:message code="INSPECTION.ODIT_NOTICE_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="ODIT_NOTICE_YES" value="${INSPECTIONInstance?.ODIT_NOTICE_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ODIT_NOTICE_NO', 'error')} ">
                <label for="ODIT_NOTICE_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="ODIT_NOTICE_NO" value="${INSPECTIONInstance?.ODIT_NOTICE_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ODIT_NOTICE', 'error')} ">
                <label for="ODIT_NOTICE">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="ODIT_NOTICE" value="${INSPECTIONInstance?.ODIT_NOTICE}" class="form-control" placeholder="বার্ষিক অডিট প্রতিবেদন নোটিশ বোর্ডে টানানো রয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.ODIT_NOTICE}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.VAT_TAX.label" default="ভ্যাট, ট্যাক্স নিয়ম মাফিক কর্তন ও সরকারি কোষাগারে জমা করা হয়েছে কি না এলজিএসপির?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VAT_TAX_YES', 'error')} ">
                <label for="VAT_TAX_YES">
                    <g:message code="INSPECTION.VAT_TAX_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="VAT_TAX_YES" value="${INSPECTIONInstance?.VAT_TAX_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VAT_TAX_NO', 'error')} ">
                <label for="VAT_TAX_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="VAT_TAX_NO" value="${INSPECTIONInstance?.VAT_TAX_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VAT_TAX', 'error')} ">
                <label for="VAT_TAX">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="VAT_TAX" value="${INSPECTIONInstance?.VAT_TAX}" class="form-control" placeholder="ভ্যাট, ট্যাক্স নিয়ম মাফিক কর্তন ও সরকারি কোষাগারে জমা করা হয়েছে কি না এলজিএসপির?"/>--}%
                ${INSPECTIONInstance?.VAT_TAX}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.KROI_PROKRIA.label" default="ক্রয় প্রক্রিয়ার নিয়ম অনুসরণ করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KROI_PROKRIA_YES', 'error')} ">
                <label for="KROI_PROKRIA_YES">
                    <g:message code="INSPECTION.KROI_PROKRIA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="KROI_PROKRIA_YES" value="${INSPECTIONInstance?.KROI_PROKRIA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KROI_PROKRIA_NO', 'error')} ">
                <label for="KROI_PROKRIA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="KROI_PROKRIA_NO" value="${INSPECTIONInstance?.KROI_PROKRIA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KROI_PROKRIA', 'error')} ">
                <label for="KROI_PROKRIA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="KROI_PROKRIA" value="${INSPECTIONInstance?.KROI_PROKRIA}" class="form-control" placeholder="ক্রয় প্রক্রিয়ার নিয়ম অনুসরণ করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.KROI_PROKRIA}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.PIC_SKIM.label" default="পিআইসির মাধ্যমে স্কীম বাস্তবায়ন করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PIC_SKIM_YES', 'error')} ">
                <label for="PIC_SKIM_YES">
                    <g:message code="INSPECTION.PIC_SKIM_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="PIC_SKIM_YES" value="${INSPECTIONInstance?.PIC_SKIM_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PIC_SKIM_NO', 'error')} ">
                <label for="PIC_SKIM_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="PIC_SKIM_NO" value="${INSPECTIONInstance?.PIC_SKIM_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PIC_SKIM', 'error')} ">
                <label for="PIC_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="PIC_SKIM" value="${INSPECTIONInstance?.PIC_SKIM}" class="form-control" placeholder="পিআইসির মাধ্যমে স্কীম বাস্তবায়ন করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.PIC_SKIM}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.OPEN_TENDER.label" default="প্রয়োজনীয় ক্ষেত্রে আরএফকিউ/ওপেন টেন্ডার করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'OPEN_TENDER_YES', 'error')} ">
                <label for="OPEN_TENDER_YES">
                    <g:message code="INSPECTION.OPEN_TENDER_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="OPEN_TENDER_YES" value="${INSPECTIONInstance?.OPEN_TENDER_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'OPEN_TENDER_NO', 'error')} ">
                <label for="OPEN_TENDER_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="OPEN_TENDER_NO" value="${INSPECTIONInstance?.OPEN_TENDER_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'OPEN_TENDER', 'error')} ">
                <label for="OPEN_TENDER">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="OPEN_TENDER" value="${INSPECTIONInstance?.OPEN_TENDER}" class="form-control" placeholder="প্রয়োজনীয় ক্ষেত্রে আরএফকিউ/ওপেন টেন্ডার করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.OPEN_TENDER}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BRODSHEET_JOBAB.label" default="বিগত অর্থবছর/বছরসমূহে অডিট আপত্তির ব্রডশীট জবাব প্রেরণ করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BRODSHEET_JOBAB_YES', 'error')} ">
                <label for="BRODSHEET_JOBAB_YES">
                    <g:message code="INSPECTION.BRODSHEET_JOBAB_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="BRODSHEET_JOBAB_YES" value="${INSPECTIONInstance?.BRODSHEET_JOBAB_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BRODSHEET_JOBAB_NO', 'error')} ">
                <label for="BRODSHEET_JOBAB_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="BRODSHEET_JOBAB_NO" value="${INSPECTIONInstance?.BRODSHEET_JOBAB_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BRODSHEET_JOBAB', 'error')} ">
                <label for="BRODSHEET_JOBAB">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="BRODSHEET_JOBAB" value="${INSPECTIONInstance?.BRODSHEET_JOBAB}" class="form-control" placeholder="বিগত অর্থবছর/বছরসমূহে অডিট আপত্তির ব্রডশীট জবাব প্রেরণ করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.BRODSHEET_JOBAB}
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SANNASHIK_PROTIBADON.label" default="ষান্মাসিক প্রতিবেদন প্রেরণ করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SANNASHIK_PROTIBADON_YES', 'error')} ">
                <label for="SANNASHIK_PROTIBADON_YES">
                    <g:message code="INSPECTION.SANNASHIK_PROTIBADON_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="SANNASHIK_PROTIBADON_YES" value="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SANNASHIK_PROTIBADON_NO', 'error')} ">
                <label for="SANNASHIK_PROTIBADON_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="SANNASHIK_PROTIBADON_NO" value="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SANNASHIK_PROTIBADON', 'error')} ">
                <label for="SANNASHIK_PROTIBADON">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="SANNASHIK_PROTIBADON" value="${INSPECTIONInstance?.SANNASHIK_PROTIBADON}" class="form-control" placeholder="ষান্মাসিক প্রতিবেদন প্রেরণ করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.SANNASHIK_PROTIBADON}
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.NOTHI_SONROKHITO.label" default="বিগত ৫ বছরের হিসাব সংক্রান্ত নথি সংরক্ষীত হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NOTHI_SONROKHITO_YES', 'error')} ">
                <label for="NOTHI_SONROKHITO_YES">
                    <g:message code="INSPECTION.NOTHI_SONROKHITO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="NOTHI_SONROKHITO_YES" value="${INSPECTIONInstance?.NOTHI_SONROKHITO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NOTHI_SONROKHITO_NO', 'error')} ">
                <label for="NOTHI_SONROKHITO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="NOTHI_SONROKHITO_NO" value="${INSPECTIONInstance?.NOTHI_SONROKHITO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NOTHI_SONROKHITO', 'error')} ">
                <label for="NOTHI_SONROKHITO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="NOTHI_SONROKHITO" value="${INSPECTIONInstance?.NOTHI_SONROKHITO}" class="form-control" placeholder="বিগত ৫ বছরের হিসাব সংক্রান্ত নথি সংরক্ষীত হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.NOTHI_SONROKHITO}
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BANK_SOMONNOI.label" default="মাসিক ভিত্তিতে ব্যাংক হিসাব সমন্বয় করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BANK_SOMONNOI_YES', 'error')} ">
                <label for="BANK_SOMONNOI_YES">
                    <g:message code="INSPECTION.BANK_SOMONNOI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="BANK_SOMONNOI_YES" value="${INSPECTIONInstance?.BANK_SOMONNOI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BANK_SOMONNOI_NO', 'error')} ">
                <label for="BANK_SOMONNOI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="BANK_SOMONNOI_NO" value="${INSPECTIONInstance?.BANK_SOMONNOI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BANK_SOMONNOI', 'error')} ">
                <label for="BANK_SOMONNOI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="BANK_SOMONNOI" value="${INSPECTIONInstance?.BANK_SOMONNOI}" class="form-control" placeholder="মাসিক ভিত্তিতে ব্যাংক হিসাব সমন্বয় করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.BANK_SOMONNOI}
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.GRAM_ADALOT.label" default="গ্রাম আদালত কার্যকরকরণে ভূমিকা" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'GRAM_ADALOT_YES', 'error')} ">
                <label for="GRAM_ADALOT_YES">
                    <g:message code="INSPECTION.GRAM_ADALOT_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="GRAM_ADALOT_YES" value="${INSPECTIONInstance?.GRAM_ADALOT_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'GRAM_ADALOT_NO', 'error')} ">
                <label for="GRAM_ADALOT_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="GRAM_ADALOT_NO" value="${INSPECTIONInstance?.GRAM_ADALOT_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'GRAM_ADALOT', 'error')} ">
                <label for="GRAM_ADALOT">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="GRAM_ADALOT" value="${INSPECTIONInstance?.GRAM_ADALOT}" class="form-control" placeholder="গ্রাম আদালত কার্যকরকরণে ভূমিকা"/>--}%
                ${INSPECTIONInstance?.GRAM_ADALOT}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.RAJOSSO_NIRDHARON.label" default="স্থানীয় রাজস্ব নির্ধারণ করা হয়েছে কিনা?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_NIRDHARON_YES', 'error')} ">
                <label for="RAJOSSO_NIRDHARON_YES">
                    <g:message code="INSPECTION.RAJOSSO_NIRDHARON_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="RAJOSSO_NIRDHARON_YES" value="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_NIRDHARON_NO', 'error')} ">
                <label for="RAJOSSO_NIRDHARON_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="RAJOSSO_NIRDHARON_NO" value="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_NIRDHARON', 'error')} ">
                <label for="RAJOSSO_NIRDHARON">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="RAJOSSO_NIRDHARON" value="${INSPECTIONInstance?.RAJOSSO_NIRDHARON}" class="form-control" placeholder="স্থানীয় রাজস্ব নির্ধারণ করা হয়েছে কিনা?"/>--}%
                ${INSPECTIONInstance?.RAJOSSO_NIRDHARON}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.RAJOSSO_BRIDHI.label" default="স্থানীয় রাজস্বস্ বৃদ্ধি হয়ে থাকলে বৃদ্ধির পরিমান ও আদায়ের পরিমান। পূর্ববর্তী বছরের রাজস্বের পরিমান কত ছিল?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_BRIDHI_YES', 'error')} ">
                <label for="RAJOSSO_BRIDHI_YES">
                    <g:message code="INSPECTION.RAJOSSO_BRIDHI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="RAJOSSO_BRIDHI_YES" value="${INSPECTIONInstance?.RAJOSSO_BRIDHI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_BRIDHI_NO', 'error')} ">
                <label for="RAJOSSO_BRIDHI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="RAJOSSO_BRIDHI_NO" value="${INSPECTIONInstance?.RAJOSSO_BRIDHI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_BRIDHI', 'error')} ">
                <label for="RAJOSSO_BRIDHI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="RAJOSSO_BRIDHI" value="${INSPECTIONInstance?.RAJOSSO_BRIDHI}" class="form-control" placeholder="স্থানীয় রাজস্বস্ বৃদ্ধি হয়ে থাকলে বৃদ্ধির পরিমান ও আদায়ের পরিমান। পূর্ববর্তী বছরের রাজস্বের পরিমান কত ছিল?"/>--}%
                ${INSPECTIONInstance?.RAJOSSO_BRIDHI}
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.UDC_SOVA.label" default="ইউডিসিসি (ইউনিয়ন ডেভেলপমেন্ট কো-অর্ডিনেশন কমিটি) সভা নিয়মিত অনুষ্ঠিত হয় কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UDC_SOVA_YES', 'error')} ">
                <label for="UDC_SOVA_YES">
                    <g:message code="INSPECTION.UDC_SOVA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="UDC_SOVA_YES" value="${INSPECTIONInstance?.UDC_SOVA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UDC_SOVA_NO', 'error')} ">
                <label for="UDC_SOVA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="UDC_SOVA_NO" value="${INSPECTIONInstance?.UDC_SOVA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UDC_SOVA', 'error')} ">
                <label for="UDC_SOVA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="UDC_SOVA" value="${INSPECTIONInstance?.UDC_SOVA}" class="form-control" placeholder="ইউডিসিসি (ইউনিয়ন ডেভেলপমেন্ট কো-অর্ডিনেশন কমিটি) সভা নিয়মিত অনুষ্ঠিত হয় কি না?"/>--}%
                ${INSPECTIONInstance?.UDC_SOVA}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BGCC_SOVA.label" default="বিজিসিসি’র সভা সর্বশেষ কত তারিখে অনুষ্ঠিত হয়েছে?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_SOVA_YES', 'error')} ">
                <label for="BGCC_SOVA_YES">
                    <g:message code="INSPECTION.BGCC_SOVA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="BGCC_SOVA_YES" value="${INSPECTIONInstance?.BGCC_SOVA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_SOVA_NO', 'error')} ">
                <label for="BGCC_SOVA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="BGCC_SOVA_NO" value="${INSPECTIONInstance?.BGCC_SOVA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_SOVA', 'error')} ">
                <label for="BGCC_SOVA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="BGCC_SOVA" value="${INSPECTIONInstance?.BGCC_SOVA}" class="form-control" placeholder="বিজিসিসি’র সভা সর্বশেষ কত তারিখে অনুষ্ঠিত হয়েছে?"/>--}%
                ${INSPECTIONInstance?.BGCC_SOVA}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SSC_SODOSHO.label" default="এসএসসি’র সদস্যরা গৃহিত স্কীম বাস্তবায়ন সম্পর্কে অবহিত কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SSC_SODOSHO_YES', 'error')} ">
                <label for="SSC_SODOSHO_YES">
                    <g:message code="INSPECTION.SSC_SODOSHO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="SSC_SODOSHO_YES" value="${INSPECTIONInstance?.SSC_SODOSHO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SSC_SODOSHO_NO', 'error')} ">
                <label for="SSC_SODOSHO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="SSC_SODOSHO_NO" value="${INSPECTIONInstance?.SSC_SODOSHO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SSC_SODOSHO', 'error')} ">
                <label for="SSC_SODOSHO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="SSC_SODOSHO" value="${INSPECTIONInstance?.SSC_SODOSHO}" class="form-control" placeholder="এসএসসি’র সদস্যরা গৃহিত স্কীম বাস্তবায়ন সম্পর্কে অবহিত কি না?"/>--}%
                ${INSPECTIONInstance?.SSC_SODOSHO}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SKIM_BILL.label" default="বাস্তবায়িত স্কিমের বিল কিভাবে পরিশোধ করা হয়েছে?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_BILL_YES', 'error')} ">
                <label for="SKIM_BILL_YES">
                    <g:message code="INSPECTION.SKIM_BILL_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="SKIM_BILL_YES" value="${INSPECTIONInstance?.SKIM_BILL_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_BILL_NO', 'error')} ">
                <label for="SKIM_BILL_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="SKIM_BILL_NO" value="${INSPECTIONInstance?.SKIM_BILL_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_BILL', 'error')} ">
                <label for="SKIM_BILL">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="SKIM_BILL" value="${INSPECTIONInstance?.SKIM_BILL}" class="form-control" placeholder="বাস্তবায়িত স্কিমের বিল কিভাবে পরিশোধ করা হয়েছে?"/>--}%
                ${INSPECTIONInstance?.SKIM_BILL}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BILL_PRODAN.label" default="এসএসসি এবং ওয়ার্ড কমিটির সুপারিশের ভিত্তিতে বিল প্রদান করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BILL_PRODAN_YES', 'error')} ">
                <label for="BILL_PRODAN_YES">
                    <g:message code="INSPECTION.BILL_PRODAN_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="BILL_PRODAN_YES" value="${INSPECTIONInstance?.BILL_PRODAN_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BILL_PRODAN_NO', 'error')} ">
                <label for="BILL_PRODAN_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="BILL_PRODAN_NO" value="${INSPECTIONInstance?.BILL_PRODAN_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BILL_PRODAN', 'error')} ">
                <label for="BILL_PRODAN">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="BILL_PRODAN" value="${INSPECTIONInstance?.BILL_PRODAN}" class="form-control" placeholder="এসএসসি এবং ওয়ার্ড কমিটির সুপারিশের ভিত্তিতে বিল প্রদান করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.BILL_PRODAN}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.MOHILA_SODOSSO_OBOHITO.label" default="মহিলা সদস্যরা চেকে স্বাক্ষারের পূর্বে স্কিম বাস্তবায়ন সম্পর্কে অবহিত ছিলেন কি না ?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SODOSSO_OBOHITO_YES', 'error')} ">
                <label for="MOHILA_SODOSSO_OBOHITO_YES">
                    <g:message code="INSPECTION.MOHILA_SODOSSO_OBOHITO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="MOHILA_SODOSSO_OBOHITO_YES" value="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SODOSSO_OBOHITO_NO', 'error')} ">
                <label for="MOHILA_SODOSSO_OBOHITO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="MOHILA_SODOSSO_OBOHITO_NO" value="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SODOSSO_OBOHITO', 'error')} ">
                <label for="MOHILA_SODOSSO_OBOHITO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="MOHILA_SODOSSO_OBOHITO" value="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO}" class="form-control" placeholder="মহিলা সদস্যরা চেকে স্বাক্ষারের পূর্বে স্কিম বাস্তবায়ন সম্পর্কে অবহিত ছিলেন কি না ?"/>--}%
                ${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SROMGHONO_SKIM_BATITO.label" default="শ্রমঘন স্কীম ব্যতীত অন্যান্য স্কীমে অগ্রিম প্রদান করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SROMGHONO_SKIM_BATITO_YES', 'error')} ">
                <label for="SROMGHONO_SKIM_BATITO_YES">
                    <g:message code="INSPECTION.SROMGHONO_SKIM_BATITO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="SROMGHONO_SKIM_BATITO_YES" value="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SROMGHONO_SKIM_BATITO_NO', 'error')} ">
                <label for="SROMGHONO_SKIM_BATITO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="SROMGHONO_SKIM_BATITO_NO" value="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SROMGHONO_SKIM_BATITO', 'error')} ">
                <label for="SROMGHONO_SKIM_BATITO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="SROMGHONO_SKIM_BATITO" value="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO}" class="form-control" placeholder="শ্রমঘন স্কীম ব্যতীত অন্যান্য স্কীমে অগ্রিম প্রদান করা হয়েছে কি না?"/>--}%
                ${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO}
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BIGOTO_SON_SKIM.label" default="অডিটর কর্তৃক বিগত সনের অডিটকালে পরিদর্শিত স্খীমের নাম" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BIGOTO_SON_SKIM_YES', 'error')} ">
                <label for="BIGOTO_SON_SKIM_YES">
                    <g:message code="INSPECTION.BIGOTO_SON_SKIM_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="BIGOTO_SON_SKIM_YES" value="${INSPECTIONInstance?.BIGOTO_SON_SKIM_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BIGOTO_SON_SKIM_NO', 'error')} ">
                <label for="BIGOTO_SON_SKIM_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="BIGOTO_SON_SKIM_NO" value="${INSPECTIONInstance?.BIGOTO_SON_SKIM_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BIGOTO_SON_SKIM', 'error')} ">
                <label for="BIGOTO_SON_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="BIGOTO_SON_SKIM" value="${INSPECTIONInstance?.BIGOTO_SON_SKIM}" class="form-control" placeholder="অডিটর কর্তৃক বিগত সনের অডিটকালে পরিদর্শিত স্খীমের নাম"/>--}%
                ${INSPECTIONInstance?.BIGOTO_SON_SKIM}
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.DF_SKIM.label" default="ডি এফ কর্তৃক কতটি স্কিম পরিদর্শন করা হয়েছে ? বাস্তবায়নের মান সম্পর্কে সুনিদিষ্ট মন্তব্য " />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DF_SKIM_YES', 'error')} ">
                <label for="DF_SKIM_YES">
                    <g:message code="INSPECTION.DF_SKIM_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="DF_SKIM_YES" value="${INSPECTIONInstance?.DF_SKIM_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DF_SKIM_NO', 'error')} ">
                <label for="DF_SKIM_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="DF_SKIM_NO" value="${INSPECTIONInstance?.DF_SKIM_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DF_SKIM', 'error')} ">
                <label for="DF_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="DF_SKIM" value="${INSPECTIONInstance?.DF_SKIM}" class="form-control" placeholder="ডি এফ কর্তৃক কতটি স্কিম পরিদর্শন করা হয়েছে ? বাস্তবায়নের মান সম্পর্কে সুনিদিষ্ট মন্তব্য "/>--}%
                ${INSPECTIONInstance?.DF_SKIM}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.WARD_PROKOLPO.label" default="ওয়ার্ড প্রকল্প বাস্তবায়ন কমিটি কর্তৃক প্রকল্প পরিদর্শন করা হয় কি না? হয়ে থাকলে প্রতিবেদন ইউপিতে জমা হয় কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'WARD_PROKOLPO_YES', 'error')} ">
                <label for="WARD_PROKOLPO_YES">
                    <g:message code="INSPECTION.WARD_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="WARD_PROKOLPO_YES" value="${INSPECTIONInstance?.WARD_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'WARD_PROKOLPO_NO', 'error')} ">
                <label for="WARD_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="WARD_PROKOLPO_NO" value="${INSPECTIONInstance?.WARD_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'WARD_PROKOLPO', 'error')} ">
                <label for="WARD_PROKOLPO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="WARD_PROKOLPO" value="${INSPECTIONInstance?.WARD_PROKOLPO}" class="form-control" placeholder="ওয়ার্ড প্রকল্প বাস্তবায়ন কমিটি কর্তৃক প্রকল্প পরিদর্শন করা হয় কি না? হয়ে থাকলে প্রতিবেদন ইউপিতে জমা হয় কি না?"/>--}%
                ${INSPECTIONInstance?.WARD_PROKOLPO}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.LGSP_PROKOLPO.label" default="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_YES', 'error')} ">
                <label for="LGSP_PROKOLPO_YES">
                    <g:message code="INSPECTION.LGSP_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="LGSP_PROKOLPO_YES" value="${INSPECTIONInstance?.LGSP_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_NO', 'error')} ">
                <label for="LGSP_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="LGSP_PROKOLPO_NO" value="${INSPECTIONInstance?.LGSP_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO', 'error')} ">
                <label for="LGSP_PROKOLPO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="LGSP_PROKOLPO" value="${INSPECTIONInstance?.LGSP_PROKOLPO}" class="form-control" placeholder="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?"/>--}%
                ${INSPECTIONInstance?.LGSP_PROKOLPO}
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.LGSP_PROKOLPO.label" default="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_YES', 'error')} ">
                <label for="LGSP_PROKOLPO_YES">
                    <g:message code="INSPECTION.LGSP_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="LGSP_PROKOLPO_YES" value="${INSPECTIONInstance?.LGSP_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_NO', 'error')} ">
                <label for="LGSP_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="LGSP_PROKOLPO_NO" value="${INSPECTIONInstance?.LGSP_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO', 'error')} ">
                <label for="LGSP_PROKOLPO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="LGSP_PROKOLPO" value="${INSPECTIONInstance?.LGSP_PROKOLPO}" class="form-control" placeholder="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?"/>--}%
                ${INSPECTIONInstance?.LGSP_PROKOLPO}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.UNION_PROKOLPO.label" default="ইউনিয়ন পরিষদের সামনে প্রকল্প তালিকা টানানো হয়েছে কি-না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNION_PROKOLPO_YES', 'error')} ">
                <label for="UNION_PROKOLPO_YES">
                    <g:message code="INSPECTION.UNION_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="UNION_PROKOLPO_YES" value="${INSPECTIONInstance?.UNION_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNION_PROKOLPO_NO', 'error')} ">
                <label for="UNION_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="UNION_PROKOLPO_NO" value="${INSPECTIONInstance?.UNION_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNION_PROKOLPO', 'error')} ">
                <label for="UNION_PROKOLPO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="UNION_PROKOLPO" value="${INSPECTIONInstance?.UNION_PROKOLPO}" class="form-control" placeholder="ইউনিয়ন পরিষদের সামনে প্রকল্প তালিকা টানানো হয়েছে কি-না?"/>--}%
                ${INSPECTIONInstance?.UNION_PROKOLPO}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.DURNITI.label" default="কোন বিশেষ অনিয়ম ও দুর্নীতি উদঘাটিত হয়ে থাকলে তার বিস্তারিত বিবরণ (ডকুমেন্ট সহ)" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DURNITI_YES', 'error')} ">
                <label for="DURNITI_YES">
                    <g:message code="INSPECTION.DURNITI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox disabled="" name="DURNITI_YES" value="${INSPECTIONInstance?.DURNITI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DURNITI_NO', 'error')} ">
                <label for="DURNITI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox disabled="" name="DURNITI_NO" value="${INSPECTIONInstance?.DURNITI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DURNITI', 'error')} ">
                <label for="DURNITI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                %{--<g:textField name="DURNITI" value="${INSPECTIONInstance?.DURNITI}" class="form-control" placeholder="কোন বিশেষ অনিয়ম ও দুর্নীতি উদঘাটিত হয়ে থাকলে তার বিস্তারিত বিবরণ (ডকুমেন্ট সহ)"/>--}%
                ${INSPECTIONInstance?.DURNITI}
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SUPARISH', 'error')} ">
                <label for="SUPARISH">
                    <g:message code="INSPECTION.SUPARISH.label" default="এলজি এসপি-২ এর উদ্দেশ্য বাস্তবায়নে সুনির্দিষ্ট প্রতিবন্ধকতা ও সুপারিশ" />

                </label>
                %{--<g:textField name="SUPARISH" value="${INSPECTIONInstance?.SUPARISH}" class="form-control" placeholder="কোন বিশেষ অনিয়ম ও দুর্নীতি উদঘাটিত হয়ে থাকলে তার বিস্তারিত বিবরণ (ডকুমেন্ট সহ)"/>--}%
                ${INSPECTIONInstance?.SUPARISH}
            </div>
        </div>
    </div>
    </div>
    </div>































    %{--<div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ID', 'error')} required">
        <label for="ID">
            <g:message code="INSPECTION.ID.label" default="ID" />
            <span class="required-indicator">*</span>
        </label>
        <g:field name="ID" type="number" value="${INSPECTIONInstance.ID}" required=""/>
    </div>--}%



			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${INSPECTIONInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${INSPECTIONInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
