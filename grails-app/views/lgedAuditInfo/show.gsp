
<%@ page import="integration.LgedAuditInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-lgedAuditInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="show-lgedAuditInfo" class="content scaffold-show" role="main">
        <div class="panel panel-info">
        <div class="panel-heading">
			<h3><g:message code="default.show.label" args="[entityName]" /></h3>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
        </div>
        <div class="panel-body">
			<ol class="property-list lgedAuditInfo">
			
				<g:if test="${lgedAuditInfoInstance?.moreThanOneYear}">
				<li class="fieldcontain">
					<span id="moreThanOneYear-label" class="property-label"><g:message code="lgedAuditInfo.moreThanOneYear.label" default="More Than One Year" /></span>
					
						<span class="property-value" aria-labelledby="moreThanOneYear-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="moreThanOneYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.lessThanOneYear}">
				<li class="fieldcontain">
					<span id="lessThanOneYear-label" class="property-label"><g:message code="lgedAuditInfo.lessThanOneYear.label" default="Less Than One Year" /></span>
					
						<span class="property-value" aria-labelledby="lessThanOneYear-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="lessThanOneYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalAmountOfAllComplain}">
				<li class="fieldcontain">
					<span id="totalAmountOfAllComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalAmountOfAllComplain.label" default="Total Amount Of All Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalAmountOfAllComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalAmountOfAllComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalNoOfAllComplain}">
				<li class="fieldcontain">
					<span id="totalNoOfAllComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalNoOfAllComplain.label" default="Total No Of All Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalNoOfAllComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalNoOfAllComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.generalAmountOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="generalAmountOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.generalAmountOfOutstandingComplain.label" default="General Amount Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="generalAmountOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="generalAmountOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.generalNoOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="generalNoOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.generalNoOfOutstandingComplain.label" default="General No Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="generalNoOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="generalNoOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.advanceNoOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="advanceNoOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.advanceNoOfOutstandingComplain.label" default="Advance No Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="advanceNoOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="advanceNoOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.advanceAmountOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="advanceAmountOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.advanceAmountOfOutstandingComplain.label" default="Advance Amount Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="advanceAmountOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="advanceAmountOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.reportedNoOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="reportedNoOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.reportedNoOfOutstandingComplain.label" default="Reported No Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="reportedNoOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="reportedNoOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.reportedAmountOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="reportedAmountOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.reportedAmountOfOutstandingComplain.label" default="Reported Amount Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="reportedAmountOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="reportedAmountOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalNoOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="totalNoOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalNoOfOutstandingComplain.label" default="Total No Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalNoOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalNoOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalAmountOfOutstandingComplain}">
				<li class="fieldcontain">
					<span id="totalAmountOfOutstandingComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalAmountOfOutstandingComplain.label" default="Total Amount Of Outstanding Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalAmountOfOutstandingComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalAmountOfOutstandingComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.generalNoOfPresentComplain}">
				<li class="fieldcontain">
					<span id="generalNoOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.generalNoOfPresentComplain.label" default="General No Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="generalNoOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="generalNoOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.generalAmountOfPresentComplain}">
				<li class="fieldcontain">
					<span id="generalAmountOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.generalAmountOfPresentComplain.label" default="General Amount Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="generalAmountOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="generalAmountOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.advanceNoOfPresentComplain}">
				<li class="fieldcontain">
					<span id="advanceNoOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.advanceNoOfPresentComplain.label" default="Advance No Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="advanceNoOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="advanceNoOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.advanceAmountOfPresentComplain}">
				<li class="fieldcontain">
					<span id="advanceAmountOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.advanceAmountOfPresentComplain.label" default="Advance Amount Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="advanceAmountOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="advanceAmountOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.reportedNoOfPresentComplain}">
				<li class="fieldcontain">
					<span id="reportedNoOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.reportedNoOfPresentComplain.label" default="Reported No Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="reportedNoOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="reportedNoOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.reportedAmountOfPresentComplain}">
				<li class="fieldcontain">
					<span id="reportedAmountOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.reportedAmountOfPresentComplain.label" default="Reported Amount Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="reportedAmountOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="reportedAmountOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalNoOfPresentComplain}">
				<li class="fieldcontain">
					<span id="totalNoOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalNoOfPresentComplain.label" default="Total No Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalNoOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalNoOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalAmountOfPresentComplain}">
				<li class="fieldcontain">
					<span id="totalAmountOfPresentComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalAmountOfPresentComplain.label" default="Total Amount Of Present Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalAmountOfPresentComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalAmountOfPresentComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.generalNoOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="generalNoOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.generalNoOfGeneralComplain.label" default="General No Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="generalNoOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="generalNoOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.generalAmountOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="generalAmountOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.generalAmountOfGeneralComplain.label" default="General Amount Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="generalAmountOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="generalAmountOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.advanceNoOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="advanceNoOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.advanceNoOfGeneralComplain.label" default="Advance No Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="advanceNoOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="advanceNoOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.advanceAmountOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="advanceAmountOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.advanceAmountOfGeneralComplain.label" default="Advance Amount Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="advanceAmountOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="advanceAmountOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.reportedNoOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="reportedNoOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.reportedNoOfGeneralComplain.label" default="Reported No Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="reportedNoOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="reportedNoOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.reportedAmountOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="reportedAmountOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.reportedAmountOfGeneralComplain.label" default="Reported Amount Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="reportedAmountOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="reportedAmountOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalNoOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="totalNoOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalNoOfGeneralComplain.label" default="Total No Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalNoOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalNoOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.totalAmountOfGeneralComplain}">
				<li class="fieldcontain">
					<span id="totalAmountOfGeneralComplain-label" class="property-label"><g:message code="lgedAuditInfo.totalAmountOfGeneralComplain.label" default="Total Amount Of General Complain" /></span>
					
						<span class="property-value" aria-labelledby="totalAmountOfGeneralComplain-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="totalAmountOfGeneralComplain"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="lgedAuditInfo.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.auditInfoName}">
				<li class="fieldcontain">
					<span id="auditInfoName-label" class="property-label"><g:message code="lgedAuditInfo.auditInfoName.label" default="Audit Info Name" /></span>
					
						<span class="property-value" aria-labelledby="auditInfoName-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="auditInfoName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.sectionNumber}">
				<li class="fieldcontain">
					<span id="sectionNumber-label" class="property-label"><g:message code="lgedAuditInfo.sectionNumber.label" default="Section Number" /></span>
					
						<span class="property-value" aria-labelledby="sectionNumber-label"><g:fieldValue bean="${lgedAuditInfoInstance}" field="sectionNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.complainDate}">
				<li class="fieldcontain">
					<span id="complainDate-label" class="property-label"><g:message code="lgedAuditInfo.complainDate.label" default="Complain Date" /></span>
					
						<span class="property-value" aria-labelledby="complainDate-label"><g:formatDate date="${lgedAuditInfoInstance?.complainDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.auditFirm}">
				<li class="fieldcontain">
					<span id="auditFirm-label" class="property-label"><g:message code="lgedAuditInfo.auditFirm.label" default="Audit Firm" /></span>
					
						<span class="property-value" aria-labelledby="auditFirm-label"><g:link controller="auditFirm" action="show" id="${lgedAuditInfoInstance?.auditFirm?.id}">${lgedAuditInfoInstance?.auditFirm?.AUDIT_FIRM_NAME.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${lgedAuditInfoInstance?.lgedOffice}">
				<li class="fieldcontain">
					<span id="lgedOffice-label" class="property-label"><g:message code="lgedAuditInfo.lgedOffice.label" default="Lged Office" /></span>
					
						<span class="property-value" aria-labelledby="lgedOffice-label"><g:link controller="lgedOffice" action="show" id="${lgedAuditInfoInstance?.lgedOffice?.id}">${lgedAuditInfoInstance?.lgedOffice?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${lgedAuditInfoInstance?.id}" />
					<g:link class="edit  btn btn-primary btn-sm" action="edit" id="${lgedAuditInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
        </div>
        </div>
	</body>
</html>
