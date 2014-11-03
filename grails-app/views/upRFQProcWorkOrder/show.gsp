
<%@ page import="procurement.up.rfqprocurement.UpRFQProcWorkOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upRFQProcWorkOrder.label', default: 'ইউপি আর-এফ-কিউ প্রকিউরমেন্ট ওয়ার্ক অর্ডার')}" />
		<title><g:message code="default.show.label/" default="দেখান" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="ইউপি আর-এফ-কিউ প্রকিউরমেন্ট ওয়ার্ক অর্ডার লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি আর-এফ-কিউ প্রকিউরমেন্ট ওয়ার্ক অর্ডার" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-upRFQProcWorkOrder" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label/" default="দেখান - ইউপি আর-এফ-কিউ প্রকিউরমেন্ট ওয়ার্ক অর্ডার" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
                <ol class="property-list upRFQProcWorkOrder">
			

			

			

			

			
				<g:if test="${upRFQProcWorkOrderInstance?.RECEIVED_COMPANY}">
				<li class="fieldcontain">
					<span id="RECEIVED_COMPANY-label" class="property-label"><g:message code="upRFQProcWorkOrder.RECEIVED_COMPANY.label" default="গ্রহনক্রীত কোম্পানি : " /></span>
					
						<span class="property-value" aria-labelledby="RECEIVED_COMPANY-label"><g:fieldValue bean="${upRFQProcWorkOrderInstance}" field="RECEIVED_COMPANY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${upRFQProcWorkOrderInstance?.COMPANY_ADDRESS}">
				<li class="fieldcontain">
					<span id="COMPANY_ADDRESS-label" class="property-label"><g:message code="upRFQProcWorkOrder.COMPANY_ADDRESS.label" default="কোম্পানির ঠিকানা : " /></span>
					
						<span class="property-value" aria-labelledby="COMPANY_ADDRESS-label"><g:fieldValue bean="${upRFQProcWorkOrderInstance}" field="COMPANY_ADDRESS"/></span>
					
				</li>
				</g:if>
			

				<g:if test="${upRFQProcWorkOrderInstance?.IS_SIGN_CONTRACT}">
				<li class="fieldcontain">
					<span id="IS_SIGN_CONTRACT-label" class="property-label"><g:message code="upRFQProcWorkOrder.IS_SIGN_CONTRACT.label" default="স্বাক্ষরিত চুক্তি কি ? :  " /></span>
					
						<span class="property-value" aria-labelledby="IS_SIGN_CONTRACT-label"><g:formatBoolean boolean="${upRFQProcWorkOrderInstance?.IS_SIGN_CONTRACT}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upRFQProcWorkOrderInstance?.UP_PROC_MASTER}">
				<li class="fieldcontain">
					<span id="UP_PROC_MASTER-label" class="property-label"><g:message code="upRFQProcWorkOrder.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয় : " /></span>
					
						<span class="property-value" aria-labelledby="UP_PROC_MASTER-label"><g:fieldValue field="UP_PROC_MASTER" bean="${upRFQProcWorkOrderInstance}"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
                    <g:hiddenField name="id" value="${upRFQProcWorkOrderInstance?.id}" />

                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${upRFQProcWorkOrderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
                </fieldset>
			</g:form>
		</div>
            </div>
	</body>
</html>
