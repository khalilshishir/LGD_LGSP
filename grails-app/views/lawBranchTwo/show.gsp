
<%@ page import="integration.LawBranchTwo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lawBranchTwo.label', default: 'LawBranchTwo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-lawBranchTwo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-lawBranchTwo" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
			<h3><g:message code="default.show.label" args="[entityName]" /></h3>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                    </div>
                <div class="panel-body">
			<ol class="property-list lawBranchTwo">
			
				<g:if test="${lawBranchTwoInstance?.documentNo}">
				<li class="fieldcontain">
					<span id="documentNo-label" class="property-label"><g:message code="lawBranchTwo.documentNo.label" default="নথি নং " /></span>
					
						<span class="property-value" aria-labelledby="documentNo-label"><g:fieldValue bean="${lawBranchTwoInstance}" field="documentNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lawBranchTwoInstance?.receiveDate}">
				<li class="fieldcontain">
					<span id="receiveDate-label" class="property-label"><g:message code="lawBranchTwo.receiveDate.label" default="প্পত্র  প্রাপ্তির  তারিখ" /></span>
					
						<span class="property-value" aria-labelledby="receiveDate-label"><g:formatDate format="MM/dd/yyyy" date="${lawBranchTwoInstance?.receiveDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${lawBranchTwoInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="lawBranchTwo.subject.label" default="মতামতের বিষয়" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${lawBranchTwoInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lawBranchTwoInstance?.departmentActivity}">
				<li class="fieldcontain">
					<span id="departmentActivity-label" class="property-label"><g:message code="lawBranchTwo.departmentActivity.label" default=" অত্র শাখৃা  গ্রৃহীত পদক্ষেপ " /></span>
					
						<span class="property-value" aria-labelledby="departmentActivity-label"><g:fieldValue bean="${lawBranchTwoInstance}" field="departmentActivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lawBranchTwoInstance?.endingDate}">
				<li class="fieldcontain">
					<span id="endingDate-label" class="property-label"><g:message code="lawBranchTwo.endingDate.label" default="নিস্পতির  তারিখ" /></span>
					
						<span class="property-value" aria-labelledby="endingDate-label"><g:formatDate format="MM/dd/yyyy" date="${lawBranchTwoInstance?.endingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${lawBranchTwoInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="lawBranchTwo.comments.label" default="মন্তব্য" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${lawBranchTwoInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${lawBranchTwoInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${lawBranchTwoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                    </div>
                </div>
		</div>
	</body>
</html>
