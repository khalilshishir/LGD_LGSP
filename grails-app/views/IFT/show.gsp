
<%@ page import="procurement.up.otmprocurement.IFT" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'IFT.label', default: 'আই-এফ-টি')}" />
		<title><g:message code="default.show.label/" default="দেখান" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="আই-এফ-টি লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন আই-এফ-টি" args="[entityName]" /></g:link></a>
    </p>
    <div id="show-IFT" class="content scaffold-show" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label/" default="দেখান - আই-এফ-টি" args="[entityName]" /></h3>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="panel-body">
			<ol class="property-list IFT">

                <g:if test="${IFTInstance?.UP_PROC_MASTER}">
                    <li class="fieldcontain">
                        <span id="UP_PROC_MASTER-label" class="property-label"><g:message code="IFT.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয় : " /></span>

                        <span class="property-value" aria-labelledby="UP_PROC_MASTER-label"><g:fieldValue bean="${IFTInstance}" field="UP_PROC_MASTER.SCHEME_INFO.NAME"/></span>
                    </li>
                </g:if>
			
				<g:if test="${IFTInstance?.IFT_NUMBER}">
				<li class="fieldcontain">
					<span id="IFT_NUMBER-label" class="property-label"><g:message code="IFT.IFT_NUMBER.label" default="আই এফ টি নাম্বার : " /></span>
					
						<span class="property-value" aria-labelledby="IFT_NUMBER-label"><g:fieldValue bean="${IFTInstance}" field="IFT_NUMBER"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IFTInstance?.LAST_CONTACT_DATE}">
				<li class="fieldcontain">
					<span id="LAST_CONTACT_DATE-label" class="property-label"><g:message code="IFT.LAST_CONTACT_DATE.label" default="যোগাযোগের শেষ তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="LAST_CONTACT_DATE-label"><g:formatDate date="${IFTInstance?.LAST_CONTACT_DATE}" format="yyyy-MM-dd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IFTInstance?.SUB_LAST_DATE}">
				<li class="fieldcontain">
					<span id="SUB_LAST_DATE-label" class="property-label"><g:message code="IFT.SUB_LAST_DATE.label" default="দাখিলের শেষ তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="SUB_LAST_DATE-label"><g:formatDate date="${IFTInstance?.SUB_LAST_DATE}" format="yyyy-MM-dd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IFTInstance?.SUB_LAST_TIME}">
				<li class="fieldcontain">
					<span id="SUB_LAST_TIME-label" class="property-label"><g:message code="IFT.SUB_LAST_TIME.label" default="দাখিলের শেষ সময় : " /></span>
					
						<span class="property-value" aria-labelledby="SUB_LAST_TIME-label"><g:fieldValue bean="${IFTInstance}" field="SUB_LAST_TIME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IFTInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="IFT.CREATED_DATE.label" default="আই এফ টি  তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${IFTInstance?.CREATED_DATE}" format="yyyy-MM-dd"/></span>
					
				</li>
				</g:if>
			

			
			</ol>
                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${IFTInstance?.id}" />
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${IFTInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>