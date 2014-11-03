
<%@ page import="procurement.up.communityprocurement.AdvanceAdjustment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'advanceAdjustment.label', default: 'এডভান্স এডজাস্টমেন্ট ')}" />
		<title><g:message code="default.show.label/" default="দেখান" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="এডভান্স এডজাস্টমেন্ট  লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন এডভান্স এডজাস্টমেন্ট " args="[entityName]" /></g:link></a>
    </p>
		<div id="show-advanceAdjustment" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label/" default="দেখান - এডভান্স এডজাস্টমেন্ট " args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
			<ol class="property-list advanceAdjustment">
			
				<g:if test="${advanceAdjustmentInstance?.upProcMaster}">
				<li class="fieldcontain">
					<span id="UP_PROCUREMENT_MASTER-label" class="property-label"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয় : " /></span>
					
						<span class="property-value" aria-labelledby="UP_PROCUREMENT_MASTER-label"><g:fieldValue field="upProcMaster.SCHEME_INFO" bean="${advanceAdjustmentInstance}"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advanceAdjustmentInstance?.ADJUSTMENT_AMOUNT}">
				<li class="fieldcontain">
					<span id="ADJUSTMENT_AMOUNT-label" class="property-label"><g:message code="advanceAdjustment.ADJUSTMENT_AMOUNT.label" default="সমন্বয় মূল্য : " /></span>
					
						<span class="property-value" aria-labelledby="ADJUSTMENT_AMOUNT-label"><g:fieldValue bean="${advanceAdjustmentInstance}" field="ADJUSTMENT_AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advanceAdjustmentInstance?.PAYMENT_DATE}">
				<li class="fieldcontain">
					<span id="PAYMENT_DATE-label" class="property-label"><g:message code="advanceAdjustment.PAYMENT_DATE.label" default="প্রদানের তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="PAYMENT_DATE-label"><g:formatDate date="${advanceAdjustmentInstance?.PAYMENT_DATE}" format="yyyy-MM-dd"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${advanceAdjustmentInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${advanceAdjustmentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
				</fieldset>
			</g:form>
		</div>
                </div>
            </div>
	</body>
</html>
