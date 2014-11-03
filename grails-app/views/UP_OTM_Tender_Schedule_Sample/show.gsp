
<%@ page import="procurement.up.otmprocurement.UP_OTM_Tender_Schedule_Sample" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল')}" />
		<title><g:message code="default.show.label/" default="দেখান" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল" args="[entityName]" /></g:link></a>
    </p>
    <div id="show-upOtmEvaluation" class="content scaffold-show" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label/" default="দেখান - ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল" args="[entityName]" /></h3>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="panel-body">
			<ol class="property-list UP_OTM_Tender_Schedule_Sample">
			
                <g:if test="${UP_OTM_Tender_Schedule_SampleInstance?.UP_PROC_MASTER}">
                    <li class="fieldcontain">
                        <span id="UP_PROC_MASTER-label" class="property-label"><g:message code="upOtmEvaluation.UP_PROC_MASTER.label" default="কাজের বর্ণনা ও অবস্থান : " /></span>
                        <span class="property-value" aria-labelledby="UP_PROC_MASTER-label"><g:fieldValue bean="${UP_OTM_Tender_Schedule_SampleInstance}" field="UP_PROC_MASTER.SCHEME_INFO.NAME"/></span>
                    </li>
                </g:if>
			
				<g:if test="${UP_OTM_Tender_Schedule_SampleInstance?.UNIT}">
				<li class="fieldcontain">
					<span id="UNIT-label" class="property-label"><g:message code="UP_OTM_Tender_Schedule_Sample.UNIT.label" default="কাজের একক : " /></span>
					
						<span class="property-value" aria-labelledby="UNIT-label"><g:fieldValue bean="${UP_OTM_Tender_Schedule_SampleInstance}" field="UNIT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_Schedule_SampleInstance?.AMOUNT}">
				<li class="fieldcontain">
					<span id="AMOUNT-label" class="property-label"><g:message code="UP_OTM_Tender_Schedule_Sample.AMOUNT.label" default="কাজের পরিমাণ : " /></span>
					
						<span class="property-value" aria-labelledby="AMOUNT-label"><g:fieldValue bean="${UP_OTM_Tender_Schedule_SampleInstance}" field="AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_Schedule_SampleInstance?.RATE}">
				<li class="fieldcontain">
					<span id="RATE-label" class="property-label"><g:message code="UP_OTM_Tender_Schedule_Sample.RATE.label" default="একক মূল্য (টাকা) : " /></span>
					
						<span class="property-value" aria-labelledby="RATE-label"><g:fieldValue bean="${UP_OTM_Tender_Schedule_SampleInstance}" field="RATE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_Schedule_SampleInstance?.TOTAL_AMOUNT}">
				<li class="fieldcontain">
					<span id="TOTAL_AMOUNT-label" class="property-label"><g:message code="UP_OTM_Tender_Schedule_Sample.TOTAL_AMOUNT.label" default="মোট মূল্য (টাকা) : " /></span>
					
						<span class="property-value" aria-labelledby="TOTAL_AMOUNT-label"><g:fieldValue bean="${UP_OTM_Tender_Schedule_SampleInstance}" field="TOTAL_AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_Schedule_SampleInstance?.FINISH_DATE}">
				<li class="fieldcontain">
					<span id="FINISH_DATE-label" class="property-label"><g:message code="UP_OTM_Tender_Schedule_Sample.FINISH_DATE.label" default="বাস্তবায়নের নির্ধারিত সময়সীমা : " /></span>
					
						<span class="property-value" aria-labelledby="FINISH_DATE-label"><g:formatDate date="${UP_OTM_Tender_Schedule_SampleInstance?.FINISH_DATE}" format="yyyy-MM-dd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_Schedule_SampleInstance?.TIMELINE_OF_RATE}">
				<li class="fieldcontain">
					<span id="TIMELINE_OF_RATE-label" class="property-label"><g:message code="UP_OTM_Tender_Schedule_Sample.TIMELINE_OF_RATE.label" default="দড় বহাল থাকার প্রস্তাবিত সময়সীমা : " /></span>
					
						<span class="property-value" aria-labelledby="TIMELINE_OF_RATE-label"><g:formatDate date="${UP_OTM_Tender_Schedule_SampleInstance?.TIMELINE_OF_RATE}" format="yyyy-MM-dd"/></span>
					
				</li>
				</g:if>
			
				</ol>
                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${UP_OTM_Tender_Schedule_SampleInstance?.id}" />
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${UP_OTM_Tender_Schedule_SampleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
