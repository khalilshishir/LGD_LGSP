
<%@ page import="payroll.Calendar_Month" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendar_Month.label', default: 'Calendar_Month')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-calendar_Month" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-calendar_Month" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list calendar_Month">
			
				<g:if test="${calendar_MonthInstance?.HR_CALENDAR_MONTH_ID}">
				<li class="fieldcontain">
					<span id="HR_CALENDAR_MONTH_ID-label" class="property-label"><g:message code="calendar_Month.HR_CALENDAR_MONTH_ID.label" default="HR Calendar Month ID" /></span>
					
						<span class="property-value" aria-labelledby="HR_CALENDAR_MONTH_ID-label"><g:fieldValue bean="${calendar_MonthInstance}" field="HR_CALENDAR_MONTH_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.START_DATE}">
				<li class="fieldcontain">
					<span id="START_DATE-label" class="property-label"><g:message code="calendar_Month.START_DATE.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="START_DATE-label"><g:formatDate date="${calendar_MonthInstance?.START_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.END_DATE}">
				<li class="fieldcontain">
					<span id="END_DATE-label" class="property-label"><g:message code="calendar_Month.END_DATE.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="END_DATE-label"><g:formatDate date="${calendar_MonthInstance?.END_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.PERIOD_NAME}">
				<li class="fieldcontain">
					<span id="PERIOD_NAME-label" class="property-label"><g:message code="calendar_Month.PERIOD_NAME.label" default="Period Name" /></span>
					
						<span class="property-value" aria-labelledby="PERIOD_NAME-label"><g:fieldValue bean="${calendar_MonthInstance}" field="PERIOD_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.HR_CALENDAR_ID}">
				<li class="fieldcontain">
					<span id="HR_CALENDAR_ID-label" class="property-label"><g:message code="calendar_Month.HR_CALENDAR_ID.label" default="HR Calendar ID" /></span>
					
						<span class="property-value" aria-labelledby="HR_CALENDAR_ID-label"><g:fieldValue bean="${calendar_MonthInstance}" field="HR_CALENDAR_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.CALENDAR_YEAR}">
				<li class="fieldcontain">
					<span id="CALENDAR_YEAR-label" class="property-label"><g:message code="calendar_Month.CALENDAR_YEAR.label" default="Calendar Year" /></span>
					
						<span class="property-value" aria-labelledby="CALENDAR_YEAR-label"><g:fieldValue bean="${calendar_MonthInstance}" field="CALENDAR_YEAR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.SERIAL_NO}">
				<li class="fieldcontain">
					<span id="SERIAL_NO-label" class="property-label"><g:message code="calendar_Month.SERIAL_NO.label" default="Serial No" /></span>

						<span class="property-value" aria-labelledby="SERIAL_NO-label"><g:fieldValue bean="${calendar_MonthInstance}" field="SERIAL_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.IS_SALARY_PROCESS}">
				<li class="fieldcontain">
					<span id="IS_SALARY_PROCESS-label" class="property-label"><g:message code="calendar_Month.IS_SALARY_PROCESS.label" default="IS Salary Process" /></span>
					
						<span class="property-value" aria-labelledby="IS_SALARY_PROCESS-label"><g:fieldValue bean="${calendar_MonthInstance}" field="IS_SALARY_PROCESS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.IS_INCREMENT_PROCESS}">
				<li class="fieldcontain">
					<span id="IS_INCREMENT_PROCESS-label" class="property-label"><g:message code="calendar_Month.IS_INCREMENT_PROCESS.label" default="IS Increment Process" /></span>
					
						<span class="property-value" aria-labelledby="IS_INCREMENT_PROCESS-label"><g:fieldValue bean="${calendar_MonthInstance}" field="IS_INCREMENT_PROCESS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendar_MonthInstance?.IS_BONUS_PROCES}">
				<li class="fieldcontain">
					<span id="IS_BONUS_PROCES-label" class="property-label"><g:message code="calendar_Month.IS_BONUS_PROCES.label" default="IS Bonus Process" /></span>
					
						<span class="property-value" aria-labelledby="IS_BONUS_PROCES-label"><g:fieldValue bean="${calendar_MonthInstance}" field="IS_BONUS_PROCES"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${calendar_MonthInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${calendar_MonthInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
