
<%@ page import="planningbudget.Meeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meeting.label', default: 'Meeting')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-meeting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="show-meeting" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
			<h3><g:message code="default.show.label" args="[entityName]" /></h3>
                    </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <div class="panel-body">
			<ol class="property-list meeting">
			
				<g:if test="${meetingInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="meeting.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${meetingInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.meetingLevel}">
				<li class="fieldcontain">
					<span id="meetingLevel-label" class="property-label"><g:message code="meeting.meetingLevel.label" default="Meeting Level" /></span>
					
						<span class="property-value" aria-labelledby="meetingLevel-label"><g:link controller="meetingLevel" action="show" id="${meetingInstance?.meetingLevel?.id}">${meetingInstance?.meetingLevel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.meetingDate}">
				<li class="fieldcontain">
					<span id="meetingDate-label" class="property-label"><g:message code="meeting.meetingDate.label" default="Meeting Date" /></span>
					
						<span class="property-value" aria-labelledby="meetingDate-label"><g:formatDate format="dd/MM/yyyy" date="${meetingInstance?.meetingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.startTime}">
				<li class="fieldcontain">
					<span id="startTIme-label" class="property-label"><g:message code="meeting.startTIme.label" default="Start TI me" /></span>
					
						<span class="property-value" aria-labelledby="startTIme-label"><g:formatDate format="hh:mm a" type="time" date="${meetingInstance?.startTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.endTime}">
				<li class="fieldcontain">
					<span id="endTime-label" class="property-label"><g:message code="meeting.endTime.label" default="End Time" /></span>
					
						<span class="property-value" aria-labelledby="endTime-label"><g:formatDate format="hh:mm a" type="time" date="${meetingInstance?.endTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.numberOfAttendent}">
				<li class="fieldcontain">
					<span id="numberOfAttendent-label" class="property-label"><g:message code="meeting.numberOfAttendent.label" default="Number Of Attendent" /></span>
					
						<span class="property-value" aria-labelledby="numberOfAttendent-label"><g:fieldValue bean="${meetingInstance}" field="numberOfAttendent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.numberOfWomenAttendent}">
				<li class="fieldcontain">
					<span id="numberOfWomenAttendent-label" class="property-label"><g:message code="meeting.numberOfWomenAttendent.label" default="Number Of Women Attendent" /></span>
					
						<span class="property-value" aria-labelledby="numberOfWomenAttendent-label"><g:fieldValue bean="${meetingInstance}" field="numberOfWomenAttendent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.numberOfVoter}">
				<li class="fieldcontain">
					<span id="numberOfVoter-label" class="property-label"><g:message code="meeting.numberOfVoter.label" default="Number Of Voter" /></span>
					
						<span class="property-value" aria-labelledby="numberOfVoter-label"><g:fieldValue bean="${meetingInstance}" field="numberOfVoter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="meeting.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${meetingInstance?.district?.id}">${meetingInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="meeting.division.label" default="Division" /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${meetingInstance?.division?.id}">${meetingInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.minutes}">
				<li class="fieldcontain">
					<span id="minutes-label" class="property-label"><g:message code="meeting.minutes.label" default="Minutes" /></span>
					
						<span class="property-value" aria-labelledby="minutes-label"><g:fieldValue bean="${meetingInstance}" field="minutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.upazila}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="meeting.upazila.label" default="Upazila" /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show" id="${meetingInstance?.upazila?.id}">${meetingInstance?.upazila?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.ward}">
				<li class="fieldcontain">
					<span id="ward-label" class="property-label"><g:message code="meeting.ward.label" default="Ward" /></span>
					
						<span class="property-value" aria-labelledby="ward-label"><g:link controller="ward" action="show" id="${meetingInstance?.ward?.id}">${meetingInstance?.ward?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
                    </div>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${meetingInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${meetingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
            </div>
	</body>
</html>
