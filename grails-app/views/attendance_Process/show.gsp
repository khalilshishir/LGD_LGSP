
<%@ page import="payroll.Attendance_Process" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance_Process.label', default: 'Attendance_Process')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-attendance_Process" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-attendance_Process" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list attendance_Process">
			
				<g:if test="${attendance_ProcessInstance?.ATTN_MONTH}">
				<li class="fieldcontain">
					<span id="ATTN_MONTH-label" class="property-label"><g:message code="attendance_Process.ATTN_MONTH.label" default="Attendance Month" /></span>
					
						<span class="property-value" aria-labelledby="ATTN_MONTH-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="ATTN_MONTH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.ATTN_YEAR}">
				<li class="fieldcontain">
					<span id="ATTN_YEAR-label" class="property-label"><g:message code="attendance_Process.ATTN_YEAR.label" default="Attendance Year" /></span>
					
						<span class="property-value" aria-labelledby="ATTN_YEAR-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="ATTN_YEAR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.EMPLOYEE_ID}">
				<li class="fieldcontain">
					<span id="EMPLOYEE_ID-label" class="property-label"><g:message code="attendance_Process.EMPLOYEE_ID.label" default="Employee ID" /></span>
					
						<span class="property-value" aria-labelledby="EMPLOYEE_ID-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="EMPLOYEE_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.CARD_NO}">
				<li class="fieldcontain">
					<span id="CARD_NO-label" class="property-label"><g:message code="attendance_Process.CARD_NO.label" default="Card No" /></span>
					
						<span class="property-value" aria-labelledby="CARD_NO-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="CARD_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.EMPLOYEE_NAME}">
				<li class="fieldcontain">
					<span id="EMPLOYEE_NAME-label" class="property-label"><g:message code="attendance_Process.EMPLOYEE_NAME.label" default="Employee Name" /></span>
					
						<span class="property-value" aria-labelledby="EMPLOYEE_NAME-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="EMPLOYEE_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.DEPARTMENT_ID}">
				<li class="fieldcontain">
					<span id="DEPARTMENT_ID-label" class="property-label"><g:message code="attendance_Process.DEPARTMENT_ID.label" default="Department ID" /></span>
					
						<span class="property-value" aria-labelledby="DEPARTMENT_ID-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="DEPARTMENT_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.DESIGNATION_ID}">
				<li class="fieldcontain">
					<span id="DESIGNATION_ID-label" class="property-label"><g:message code="attendance_Process.DESIGNATION_ID.label" default="Designation ID" /></span>
					
						<span class="property-value" aria-labelledby="DESIGNATION_ID-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="DESIGNATION_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.JOINING_DATE}">
				<li class="fieldcontain">
					<span id="JOINING_DATE-label" class="property-label"><g:message code="attendance_Process.JOINING_DATE.label" default="Joining Date" /></span>
					
						<span class="property-value" aria-labelledby="JOINING_DATE-label"><g:formatDate date="${attendance_ProcessInstance?.JOINING_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.EARNED_LEAVE}">
				<li class="fieldcontain">
					<span id="EARNED_LEAVE-label" class="property-label"><g:message code="attendance_Process.EARNED_LEAVE.label" default="Earned Leave" /></span>
					
						<span class="property-value" aria-labelledby="EARNED_LEAVE-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="EARNED_LEAVE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.SICK_LEAVE}">
				<li class="fieldcontain">
					<span id="SICK_LEAVE-label" class="property-label"><g:message code="attendance_Process.SICK_LEAVE.label" default="Sick Leave" /></span>
					
						<span class="property-value" aria-labelledby="SICK_LEAVE-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="SICK_LEAVE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.MATERNITY_LEAVE}">
				<li class="fieldcontain">
					<span id="MATERNITY_LEAVE-label" class="property-label"><g:message code="attendance_Process.MATERNITY_LEAVE.label" default="Maternity Leave" /></span>
					
						<span class="property-value" aria-labelledby="MATERNITY_LEAVE-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="MATERNITY_LEAVE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.CASUAL_LEAVE}">
				<li class="fieldcontain">
					<span id="CASUAL_LEAVE-label" class="property-label"><g:message code="attendance_Process.CASUAL_LEAVE.label" default="Casual Leave" /></span>
					
						<span class="property-value" aria-labelledby="CASUAL_LEAVE-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="CASUAL_LEAVE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.SACTIONAL_LEAVE}">
				<li class="fieldcontain">
					<span id="SACTIONAL_LEAVE-label" class="property-label"><g:message code="attendance_Process.SACTIONAL_LEAVE.label" default="Sactional Leave" /></span>
					
						<span class="property-value" aria-labelledby="SACTIONAL_LEAVE-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="SACTIONAL_LEAVE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.STUDY_LEAVE}">
				<li class="fieldcontain">
					<span id="STUDY_LEAVE-label" class="property-label"><g:message code="attendance_Process.STUDY_LEAVE.label" default="Study Leave" /></span>
					
						<span class="property-value" aria-labelledby="STUDY_LEAVE-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="STUDY_LEAVE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.LEAVE_WITHOUT_PAY}">
				<li class="fieldcontain">
					<span id="LEAVE_WITHOUT_PAY-label" class="property-label"><g:message code="attendance_Process.LEAVE_WITHOUT_PAY.label" default="Leave Without Pay" /></span>
					
						<span class="property-value" aria-labelledby="LEAVE_WITHOUT_PAY-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="LEAVE_WITHOUT_PAY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance_ProcessInstance?.MONTHLY_HOLIDAY}">
				<li class="fieldcontain">
					<span id="MONTHLY_HOLIDAY-label" class="property-label"><g:message code="attendance_Process.MONTHLY_HOLIDAY.label" default="Monthly Holiday" /></span>
					
						<span class="property-value" aria-labelledby="MONTHLY_HOLIDAY-label"><g:fieldValue bean="${attendance_ProcessInstance}" field="MONTHLY_HOLIDAY"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${attendance_ProcessInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${attendance_ProcessInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
