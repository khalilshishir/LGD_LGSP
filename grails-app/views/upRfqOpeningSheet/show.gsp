
<%@ page import="procurement.up.rfqprocurement.UpRfqOpeningSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upRfqOpeningSheet.label', default: 'ইউপি আর-এফ-কিউ ওপেনিং শিট')}" />
		<title><g:message code="default.show.label/" default="দেখান" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="ইউপি আর-এফ-কিউ ওপেনিং শিট লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি আর-এফ-কিউ ওপেনিং শিট" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-upRfqOpeningSheet" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label/" default="দেখান - ইউপি আর-এফ-কিউ ওপেনিং শিট" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
			<ol class="property-list upRfqOpeningSheet">
			
				<g:if test="${upRfqOpeningSheetInstance?.UP_PROC_MASTER}">
				<li class="fieldcontain">
					<span id="UP_PROC_MASTER-label" class="property-label"><g:message code="upRfqOpeningSheet.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয় : " /></span>
					
                    <span class="property-value" aria-labelledby="UP_PROC_MASTER-label"><g:fieldValue bean="${upRfqOpeningSheetInstance}" field="UP_PROC_MASTER"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upRfqOpeningSheetInstance?.INVITATION_DATE}">
				<li class="fieldcontain">
					<span id="INVITATION_DATE-label" class="property-label"><g:message code="upRfqOpeningSheet.INVITATION_DATE.label" default="আহ্বান তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="INVITATION_DATE-label"><g:formatDate date="${upRfqOpeningSheetInstance?.INVITATION_DATE}" format="yyyy-MM-dd" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upRfqOpeningSheetInstance?.SUB_LAST_DATE}">
				<li class="fieldcontain">
					<span id="SUB_LAST_DATE-label" class="property-label"><g:message code="upRfqOpeningSheet.SUB_LAST_DATE.label" default="দাখিলের শেষ তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="SUB_LAST_DATE-label"><g:formatDate date="${upRfqOpeningSheetInstance?.SUB_LAST_DATE}" format="yyyy-MM-dd" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upRfqOpeningSheetInstance?.OPENING_DATE}">
				<li class="fieldcontain">
					<span id="OPENING_DATE-label" class="property-label"><g:message code="upRfqOpeningSheet.OPENING_DATE.label" default="খোলার তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="OPENING_DATE-label"><g:formatDate date="${upRfqOpeningSheetInstance?.OPENING_DATE}" format="yyyy-MM-dd" /></span>
					
				</li>
				</g:if>
			
			</ol>
                    <g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${upRfqOpeningSheetInstance?.id}" />
                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${upRfqOpeningSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত?')}');" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>
	</body>
</html>
