
<%@ page import="integration.CaseInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'caseInformation.label', default: 'CaseInformation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-caseInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="show-caseInformation" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
			<h3>আইন অনুবিভাগ( আইন শাখা -১) </h3>


			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                </div>
                <div class="panel-body">
			<ol class="property-list caseInformation">
			
				<g:if test="${caseInformationInstance?.caseNo}">
				<li class="fieldcontain">
					<span id="caseNo-label" class="property-label"><g:message code="caseInformation.caseNo.label" default="মামলার নং." /></span>
					
						<span class="property-value" aria-labelledby="caseNo-label"><g:fieldValue bean="${caseInformationInstance}" field="caseNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.caseDate}">
				<li class="fieldcontain">
					<span id="caseDate-label" class="property-label"><g:message code="caseInformation.caseDate.label" default="মামলার তারিখ" /></span>
					
						<span class="property-value" aria-labelledby="caseDate-label"><g:formatDate format="MM/dd/yyyy" bean="${caseInformationInstance}" field="caseDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.receiveDate}">
				<li class="fieldcontain">
					<span id="receiveDate-label" class="property-label"><g:message code="caseInformation.receiveDate.label" default="আরজি প্রাপ্তির তারিখ" /></span>
					
						<span class="property-value" aria-labelledby="receiveDate-label"><g:formatDate format="MM/dd/yyyy" date="${caseInformationInstance?.receiveDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.documentNo}">
				<li class="fieldcontain">
					<span id="documentNo-label" class="property-label"><g:message code="caseInformation.documentNo.label" default=" নথি নং " /></span>
					
						<span class="property-value" aria-labelledby="documentNo-label"><g:fieldValue bean="${caseInformationInstance}" field="documentNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.caseSubject}">
				<li class="fieldcontain">
					<span id="caseSubject-label" class="property-label"><g:message code="caseInformation.caseSubject.label" default="মামলার বিষয়" /></span>
					
						<span class="property-value" aria-labelledby="caseSubject-label"><g:fieldValue bean="${caseInformationInstance}" field="caseSubject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.courtType}">
				<li class="fieldcontain">
					<span id="courtType-label" class="property-label"><g:message code="caseInformation.courtType.label" default="আদালতের ধরণ" /></span>
					
						<span class="property-value" aria-labelledby="courtType-label"><g:link controller="courtType" action="show" id="${caseInformationInstance?.courtType?.id}">${caseInformationInstance?.courtType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.partyName}">
				<li class="fieldcontain">
					<span id="partyName-label" class="property-label"><g:message code="caseInformation.partyName.label" default="পক্ষসমূহ" /></span>
					
						<span class="property-value" aria-labelledby="partyName-label"><g:fieldValue bean="${caseInformationInstance}" field="partyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.lawActivity}">
				<li class="fieldcontain">
					<span id="lawActivity-label" class="property-label"><g:message code="caseInformation.lawActivity.label" default="আইন শাখৃহে গ্রৃহীত কর্মকাণ্ড" /></span>
					
						<span class="property-value" aria-labelledby="lawActivity-label"><g:fieldValue bean="${caseInformationInstance}" field="lawActivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.departmentActivity}">
				<li class="fieldcontain">
					<span id="departmentActivity-label" class="property-label"><g:message code="caseInformation.departmentActivity.label" default="সংশ্লিষ্ট দপ্তর / সংস্থা গ্রৃহীত পদক্ষেপ" /></span>
					
						<span class="property-value" aria-labelledby="departmentActivity-label"><g:fieldValue bean="${caseInformationInstance}" field="departmentActivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.administrativeActivity}">
				<li class="fieldcontain">
					<span id="administrativeActivity-label" class="property-label"><g:message code="caseInformation.administrativeActivity.label" default=" অত্র বিভাগীয় সংশ্লিষ্ট প্রশাসনিক শাখার পদক্ষেপ" /></span>
					
						<span class="property-value" aria-labelledby="administrativeActivity-label"><g:fieldValue bean="${caseInformationInstance}" field="administrativeActivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.answerDate}">
				<li class="fieldcontain">
					<span id="answerDate-label" class="property-label"><g:message code="caseInformation.answerDate.label" default="সলিসিটর উইং এ জবাব প্রেরণের তারিখ" /></span>
					
						<span class="property-value" aria-labelledby="answerDate-label"><g:formatDate format="MM/dd/yyyy" date="${caseInformationInstance?.answerDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.hearingDate}">
				<li class="fieldcontain">
					<span id="hearingDate-label" class="property-label"><g:message code="caseInformation.hearingDate.label" default=" মামলার পরবর্তী শুনানির তারিখ" /></span>
					
						<span class="property-value" aria-labelledby="hearingDate-label"><g:formatDate format="MM/dd/yyyy" date="${caseInformationInstance?.hearingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.lastSituation}">
				<li class="fieldcontain">
					<span id="lastSituation-label" class="property-label"><g:message code="caseInformation.lastSituation.label" default="মামলার সর্বশেষ অবস্থা" /></span>
					
						<span class="property-value" aria-labelledby="lastSituation-label"><g:fieldValue bean="${caseInformationInstance}" field="lastSituation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseInformationInstance?.comments}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="caseInformation.comment.label" default="মন্তব্য" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${caseInformationInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${caseInformationInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm " action="edit" id="${caseInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
                </div>
            </div>
	</body>
</html>
