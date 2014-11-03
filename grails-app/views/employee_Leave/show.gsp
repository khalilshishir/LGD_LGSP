
<%@ page import="payroll.Employee_Leave" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee_Leave.label', default: 'Employee_Leave')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-employee_Leave" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-employee_Leave" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
            %{--</div>--}%
            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			%{--<ol class="property-list employee_Leave">
			
				<g:if test="${employee_LeaveInstance?.EMPLOYEE_ID}">
				<li class="fieldcontain">
					<span id="EMPLOYEE_ID-label" class="property-label"><g:message code="employee_Leave.EMPLOYEE_ID.label" default="EMPLOYEEID" /></span>
					
						<span class="property-value" aria-labelledby="EMPLOYEE_ID-label"><g:link controller="employee" action="show" id="${employee_LeaveInstance?.EMPLOYEE_ID?.id}">${employee_LeaveInstance?.EMPLOYEE_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.CARD_NO}">
				<li class="fieldcontain">
					<span id="CARD_NO-label" class="property-label"><g:message code="employee_Leave.CARD_NO.label" default="CARDNO" /></span>
					
						<span class="property-value" aria-labelledby="CARD_NO-label"><g:fieldValue bean="${employee_LeaveInstance}" field="CARD_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.APPLICATION_DATE}">
				<li class="fieldcontain">
					<span id="APPLICATION_DATE-label" class="property-label"><g:message code="employee_Leave.APPLICATION_DATE.label" default="APPLICATIONDATE" /></span>
					
						<span class="property-value" aria-labelledby="APPLICATION_DATE-label"><g:formatDate date="${employee_LeaveInstance?.APPLICATION_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.LEAVE_TYPE_ID}">
				<li class="fieldcontain">
					<span id="LEAVE_TYPE_ID-label" class="property-label"><g:message code="employee_Leave.LEAVE_TYPE_ID.label" default="LEAVETYPEID" /></span>
					
						<span class="property-value" aria-labelledby="LEAVE_TYPE_ID-label"><g:link controller="allLookup" action="show" id="${employee_LeaveInstance?.LEAVE_TYPE_ID?.id}">${employee_LeaveInstance?.LEAVE_TYPE_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.START_DATE}">
				<li class="fieldcontain">
					<span id="START_DATE-label" class="property-label"><g:message code="employee_Leave.START_DATE.label" default="STARTDATE" /></span>
					
						<span class="property-value" aria-labelledby="START_DATE-label"><g:formatDate date="${employee_LeaveInstance?.START_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.END_DATE}">
				<li class="fieldcontain">
					<span id="END_DATE-label" class="property-label"><g:message code="employee_Leave.END_DATE.label" default="ENDDATE" /></span>
					
						<span class="property-value" aria-labelledby="END_DATE-label"><g:formatDate date="${employee_LeaveInstance?.END_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.TOTAL_DAYS}">
				<li class="fieldcontain">
					<span id="TOTAL_DAYS-label" class="property-label"><g:message code="employee_Leave.TOTAL_DAYS.label" default="TOTALDAYS" /></span>
					
						<span class="property-value" aria-labelledby="TOTAL_DAYS-label"><g:fieldValue bean="${employee_LeaveInstance}" field="TOTAL_DAYS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.LEAVE_REASON}">
				<li class="fieldcontain">
					<span id="LEAVE_REASON-label" class="property-label"><g:message code="employee_Leave.LEAVE_REASON.label" default="LEAVEREASON" /></span>
					
						<span class="property-value" aria-labelledby="LEAVE_REASON-label"><g:fieldValue bean="${employee_LeaveInstance}" field="LEAVE_REASON"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.REMARKS}">
				<li class="fieldcontain">
					<span id="REMARKS-label" class="property-label"><g:message code="employee_Leave.REMARKS.label" default="REMARKS" /></span>
					
						<span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue bean="${employee_LeaveInstance}" field="REMARKS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.LEAVE_BALANCE}">
				<li class="fieldcontain">
					<span id="LEAVE_BALANCE-label" class="property-label"><g:message code="employee_Leave.LEAVE_BALANCE.label" default="LEAVEBALANCE" /></span>
					
						<span class="property-value" aria-labelledby="LEAVE_BALANCE-label"><g:fieldValue bean="${employee_LeaveInstance}" field="LEAVE_BALANCE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.LEAVE_WITH_PAY_DAYS}">
				<li class="fieldcontain">
					<span id="LEAVE_WITH_PAY_DAYS-label" class="property-label"><g:message code="employee_Leave.LEAVE_WITH_PAY_DAYS.label" default="LEAVEWITHPAYDAYS" /></span>
					
						<span class="property-value" aria-labelledby="LEAVE_WITH_PAY_DAYS-label"><g:fieldValue bean="${employee_LeaveInstance}" field="LEAVE_WITH_PAY_DAYS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employee_LeaveInstance?.LEAVE_WITHOUT_PAY_DAYS}">
				<li class="fieldcontain">
					<span id="LEAVE_WITHOUT_PAY_DAYS-label" class="property-label"><g:message code="employee_Leave.LEAVE_WITHOUT_PAY_DAYS.label" default="LEAVEWITHOUTPAYDAYS" /></span>
					
						<span class="property-value" aria-labelledby="LEAVE_WITHOUT_PAY_DAYS-label"><g:fieldValue bean="${employee_LeaveInstance}" field="LEAVE_WITHOUT_PAY_DAYS"/></span>
					
				</li>
				</g:if>
			
			</ol>--}%

            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px;">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'EMPLOYEE_ID', 'error')} ">
                            <label for="EMPLOYEE_ID">
                                <g:message code="employee_Leave.EMPLOYEE_ID.label" default="Employee Name"/>

                            </label>
                            ${employee_LeaveInstance?.EMPLOYEE_ID?.EMPLOYEE_NAME}
                        </div>
                    </div>
                </div><!--end-->
                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'CARD_NO', 'error')} ">
                            <label for="CARD_NO">
                                <g:message code="employee_Leave.CARD_NO.label" default="Card No"/>

                            </label>
                            ${employee_LeaveInstance?.CARD_NO}
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                %{--<div class="col-xs-6" style="padding-left: 10px;">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'Application Name', 'error')} ">
                            <label for="APPLICATION_DATE">
                                <g:message code="employee_Leave.APPLICATION_DATE.label" default="APPLICATIONDATE"/>

                            </label>
                            <g:datePicker name="APPLICATION_DATE" precision="day"
                                          value="${employee_LeaveInstance?.APPLICATION_DATE}" default="none"
                                          noSelection="['': '']"/>
                        </div>
                    </div>
                </div>--}%
                <div style="padding-left: 10px;" class="col-xs-6 ${hasErrors(bean: employee_LeaveInstance, field: 'APPLICATION_DATE', 'error')} ">

                    <div class="form-group">
                        <label for="adjustmentAmount">Application Date</label>
                        ${formatDate(format:'MM/dd/yyyy',date:employee_LeaveInstance?.APPLICATION_DATE)}
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'Leave Type', 'error')} ">
                            <label for="LEAVE_TYPE_ID">
                                <g:message code="employee_Leave.LEAVE_TYPE_ID.label" default="Leave Type"/>

                            </label>
                            ${employee_LeaveInstance?.LEAVE_TYPE_ID?.lookup_name}
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                %{--<div class="col-xs-6" style="padding-left: 10px;">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'START_DATE', 'error')} ">
                            <label for="START_DATE">
                                <g:message code="employee_Leave.START_DATE.label" default="Start Date"/>

                            </label>
                            <g:datePicker name="START_DATE" precision="day" value="${employee_LeaveInstance?.START_DATE}"
                                          default="none" noSelection="['': '']"/>
                        </div>
                    </div>
                </div>--}%
                <div style="padding-left: 10px;" class="col-xs-6 ${hasErrors(bean: employee_LeaveInstance, field: 'START_DATE', 'error')} ">

                    <div class="form-group">
                        <label for="adjustmentAmount">Start Date</label>
                        ${formatDate(format:'MM/dd/yyyy',date:employee_LeaveInstance?.START_DATE)}
                    </div>
                </div>


                %{--<div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'END_DATE', 'error')} ">
                            <label for="END_DATE">
                                <g:message code="employee_Leave.END_DATE.label" default="ENDDATE"/>

                            </label>
                            <g:datePicker name="END_DATE" precision="day" value="${employee_LeaveInstance?.END_DATE}" default="none"
                                          noSelection="['': '']"/>
                        </div>

                    </div>
                </div>--}%
                <div class="col-xs-6 ${hasErrors(bean: employee_LeaveInstance, field: 'END_DATE', 'error')} ">

                    <div class="form-group">
                        <label for="adjustmentAmount">End Date</label>
                        ${formatDate(format:'MM/dd/yyyy',date:employee_LeaveInstance?.END_DATE)}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px;">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'TOTAL_DAYS', 'error')} ">
                            <label for="TOTAL_DAYS">
                                <g:message code="employee_Leave.TOTAL_DAYS.label" default="Total Days"/>

                            </label>
                            ${employee_LeaveInstance.TOTAL_DAYS}
                        </div>
                    </div>
                </div><!--end-->
                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'LEAVE_REASON', 'error')} ">
                            <label for="LEAVE_REASON">
                                <g:message code="employee_Leave.LEAVE_REASON.label" default="Leave Reason"/>

                            </label>
                            ${employee_LeaveInstance?.LEAVE_REASON}
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px;">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'REMARKS', 'error')} ">
                            <label for="REMARKS">
                                <g:message code="employee_Leave.REMARKS.label" default="Remarks"/>

                            </label>
                            ${employee_LeaveInstance?.REMARKS}
                        </div>
                    </div>
                </div><!--end-->
                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'LEAVE_BALANCE', 'error')} ">
                            <label for="LEAVE_BALANCE">
                                <g:message code="employee_Leave.LEAVE_BALANCE.label" default="Leave Balance"/>

                            </label>
                            ${employee_LeaveInstance.LEAVE_BALANCE}
                        </div>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px;">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'LEAVE_WITH_PAY_DAYS', 'error')} ">
                            <label for="LEAVE_WITH_PAY_DAYS">
                                <g:message code="employee_Leave.LEAVE_WITH_PAY_DAYS.label" default="Leave With Pay Days"/>

                            </label>
                            ${employee_LeaveInstance.LEAVE_WITH_PAY_DAYS}
                        </div>
                    </div>
                </div><!--end-->
                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'LEAVE_WITHOUT_PAY_DAYS', 'error')} ">
                            <label for="LEAVE_WITHOUT_PAY_DAYS">
                                <g:message code="employee_Leave.LEAVE_WITHOUT_PAY_DAYS.label" default="Leave Without Pay Days"/>

                            </label>
                            ${employee_LeaveInstance.LEAVE_WITHOUT_PAY_DAYS}
                        </div>

                    </div>
                </div>
            </div>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employee_LeaveInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${employee_LeaveInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                </div>
        </div>
		</div>
	</body>
</html>
