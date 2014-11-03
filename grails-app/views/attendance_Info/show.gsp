
<%@ page import="payroll.Attendance_Info" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance_Info.label', default: 'Attendance_Info')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-attendance_Info" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-attendance_Info" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list attendance_Info">
			
				<g:if test="${attendance_InfoInstance?.FILE_NAME}">
				<li class="fieldcontain">
					<span id="FILE_NAME-label" class="property-label"><g:message code="attendance_Info.FILE_NAME.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="FILE_NAME-label"><g:fieldValue bean="${attendance_InfoInstance}" field="FILE_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.ROW_DATA}">
				<li class="fieldcontain">
					<span id="ROW_DATA-label" class="property-label"><g:message code="attendance_Info.ROW_DATA.label" default="Row Data" /></span>
					
						<span class="property-value" aria-labelledby="ROW_DATA-label"><g:fieldValue bean="${attendance_InfoInstance}" field="ROW_DATA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.TERMINAL_ID}">
				<li class="fieldcontain">
					<span id="TERMINAL_ID-label" class="property-label"><g:message code="attendance_Info.TERMINAL_ID.label" default="Terminal ID" /></span>
					
						<span class="property-value" aria-labelledby="TERMINAL_ID-label"><g:fieldValue bean="${attendance_InfoInstance}" field="TERMINAL_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.DAY}">
				<li class="fieldcontain">
					<span id="DAY-label" class="property-label"><g:message code="attendance_Info.DAY.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="DAY-label"><g:fieldValue bean="${attendance_InfoInstance}" field="DAY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.MONTH}">
				<li class="fieldcontain">
					<span id="MONTH-label" class="property-label"><g:message code="attendance_Info.MONTH.label" default="Month" /></span>
					
						<span class="property-value" aria-labelledby="MONTH-label"><g:fieldValue bean="${attendance_InfoInstance}" field="MONTH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.HOUR}">
				<li class="fieldcontain">
					<span id="HOUR-label" class="property-label"><g:message code="attendance_Info.HOUR.label" default="Hour" /></span>
					
						<span class="property-value" aria-labelledby="HOUR-label"><g:fieldValue bean="${attendance_InfoInstance}" field="HOUR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.MINUTE}">
				<li class="fieldcontain">
					<span id="MINUTE-label" class="property-label"><g:message code="attendance_Info.MINUTE.label" default="Minute" /></span>
					
						<span class="property-value" aria-labelledby="MINUTE-label"><g:fieldValue bean="${attendance_InfoInstance}" field="MINUTE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.SECOND}">
				<li class="fieldcontain">
					<span id="SECOND-label" class="property-label"><g:message code="attendance_Info.SECOND.label" default="Second" /></span>
					
						<span class="property-value" aria-labelledby="SECOND-label"><g:fieldValue bean="${attendance_InfoInstance}" field="SECOND"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.CARD_NO}">
				<li class="fieldcontain">
					<span id="CARD_NO-label" class="property-label"><g:message code="attendance_Info.CARD_NO.label" default="Card No" /></span>
					
						<span class="property-value" aria-labelledby="CARD_NO-label"><g:fieldValue bean="${attendance_InfoInstance}" field="CARD_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_InfoInstance?.YEAR}">
				<li class="fieldcontain">
					<span id="YEAR-label" class="property-label"><g:message code="attendance_Info.YEAR.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="YEAR-label"><g:fieldValue bean="${attendance_InfoInstance}" field="YEAR"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${attendance_InfoInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${attendance_InfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
