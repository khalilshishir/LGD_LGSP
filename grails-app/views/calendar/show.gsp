
<%@ page import="payroll.Calendar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendar.label', default: 'Calendar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-calendar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-calendar" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list calendar">
			
				<g:if test="${calendarInstance?.HR_CALENDAR_ID}">
				<li class="fieldcontain">
					<span id="HR_CALENDAR_ID-label" class="property-label"><g:message code="calendar.HR_CALENDAR_ID.label" default="HRCALENDARID" /></span>
					
						<span class="property-value" aria-labelledby="HR_CALENDAR_ID-label"><g:fieldValue bean="${calendarInstance}" field="HR_CALENDAR_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendarInstance?.CALENDAR_YEAR}">
				<li class="fieldcontain">
					<span id="CALENDAR_YEAR-label" class="property-label"><g:message code="calendar.CALENDAR_YEAR.label" default="CALENDARYEAR" /></span>
					
						<span class="property-value" aria-labelledby="CALENDAR_YEAR-label"><g:fieldValue bean="${calendarInstance}" field="CALENDAR_YEAR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendarInstance?.START_MONTH}">
				<li class="fieldcontain">
					<span id="START_MONTH-label" class="property-label"><g:message code="calendar.START_MONTH.label" default="STARTMONTH" /></span>
					
						<span class="property-value" aria-labelledby="START_MONTH-label"><g:fieldValue bean="${calendarInstance}" field="START_MONTH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendarInstance?.END_MONTH}">
				<li class="fieldcontain">
					<span id="END_MONTH-label" class="property-label"><g:message code="calendar.END_MONTH.label" default="ENDMONTH" /></span>
					
						<span class="property-value" aria-labelledby="END_MONTH-label"><g:fieldValue bean="${calendarInstance}" field="END_MONTH"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${calendarInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${calendarInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
