
<%@ page import="procurement.up.otmprocurement.UP_OTM_Tender_Schedule_Sample; procurement.up.otmprocurement.UP_OTM_Tender_Document" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'UP_OTM_Tender_Document.label', default: 'UP OTM Tender Document')}" />
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
    <div id="show-advanceAdjustment" class="content scaffold-show" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="panel-body">
			<ol class="property-list UP_OTM_Tender_Document">
			
				<g:if test="${UP_OTM_Tender_DocumentInstance?.UP_PROC_MASTER}">
				<li class="fieldcontain">
					<span id="UP_PROC_MASTER-label" class="property-label"><g:message code="UP_OTM_Tender_Document.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয় : " /></span>
					
						<span class="property-value" aria-labelledby="UP_PROC_MASTER-label"><g:fieldValue field="UP_PROC_MASTER" bean="${UP_OTM_Tender_DocumentInstance}"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_DocumentInstance?.TASK_COMP_LAST_DATE}">
				<li class="fieldcontain">
					<span id="TASK_COMP_LAST_DATE-label" class="property-label"><g:message code="UP_OTM_Tender_Document.TASK_COMP_LAST_DATE.label" default="কর্ম সম্পাদনের শেষ তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="TASK_COMP_LAST_DATE-label"><g:formatDate date="${UP_OTM_Tender_DocumentInstance?.TASK_COMP_LAST_DATE}" format="yyyy-MM-dd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_DocumentInstance?.NO_OF_ACTIVATION_DAY}">
				<li class="fieldcontain">
					<span id="NO_OF_ACTIVATION_DAY-label" class="property-label"><g:message code="UP_OTM_Tender_Document.NO_OF_ACTIVATION_DAY.label" default="সক্রিয়করণের দিন সংখ্যা : " /></span>
					
						<span class="property-value" aria-labelledby="NO_OF_ACTIVATION_DAY-label"><g:fieldValue bean="${UP_OTM_Tender_DocumentInstance}" field="NO_OF_ACTIVATION_DAY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_DocumentInstance?.TENDER_SUB_LAST_DATE}">
				<li class="fieldcontain">
					<span id="TENDER_SUB_LAST_DATE-label" class="property-label"><g:message code="UP_OTM_Tender_Document.TENDER_SUB_LAST_DATE.label" default="দরপত্র দাখিলের শেষ তারিখ :  " /></span>
					
						<span class="property-value" aria-labelledby="TENDER_SUB_LAST_DATE-label"><g:formatDate date="${UP_OTM_Tender_DocumentInstance?.TENDER_SUB_LAST_DATE}" format="yyyy-MM-dd" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_DocumentInstance?.TENDER_SUB_LAST_TIME}">
				<li class="fieldcontain">
					<span id="TENDER_SUB_LAST_TIME-label" class="property-label"><g:message code="UP_OTM_Tender_Document.TENDER_SUB_LAST_TIME.label" default="দরপত্র দাখিলের শেষ সময় : " /></span>
					
						<span class="property-value" aria-labelledby="TENDER_SUB_LAST_TIME-label"><g:fieldValue bean="${UP_OTM_Tender_DocumentInstance}" field="TENDER_SUB_LAST_TIME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UP_OTM_Tender_DocumentInstance?.TENDER_OPENING_DATE}">
				<li class="fieldcontain">
					<span id="TENDER_OPENING_DATE-label" class="property-label"><g:message code="UP_OTM_Tender_Document.TENDER_OPENING_DATE.label" default="দরপত্র খোলার তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="TENDER_OPENING_DATE-label"><g:formatDate date="${UP_OTM_Tender_DocumentInstance?.TENDER_OPENING_DATE}" format="yyyy-MM-dd" /></span>
					
				</li>
				</g:if>
			
			</ol>
                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${UP_OTM_Tender_DocumentInstance?.id}" />
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${UP_OTM_Tender_DocumentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
