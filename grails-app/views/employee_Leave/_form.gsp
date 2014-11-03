<%@ page import="lookUp.AllLookup; payroll.Employee_Leave" %>


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px;">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'EMPLOYEE_ID', 'error')} ">
                <label for="EMPLOYEE_ID">
                    <g:message code="employee_Leave.EMPLOYEE_ID.label" default="Employee Name"/>

                </label>
                <g:select id="EMPLOYEE_ID" name="EMPLOYEE_ID.id" from="${payroll.Employee.list()}" optionKey="id"
                          value="${employee_LeaveInstance?.EMPLOYEE_ID?.id}" class="form-control many-to-one"
                          noSelection="['': '--Select--']"/>
            </div>
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">

            <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'CARD_NO', 'error')} ">
                <label for="CARD_NO">
                    <g:message code="employee_Leave.CARD_NO.label" default="Card No"/>

                </label>
                <g:textField class="form-control" name="CARD_NO" value="${employee_LeaveInstance?.CARD_NO}"/>
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
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:employee_LeaveInstance?.APPLICATION_DATE)}" data-close="true" data-name="APPLICATION_DATE"></div>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">

            <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'Leave Type', 'error')} ">
                <label for="LEAVE_TYPE_ID">
                    <g:message code="employee_Leave.LEAVE_TYPE_ID.label" default="Leave Type"/>

                </label>
                <g:select id="LEAVE_TYPE_ID" name="LEAVE_TYPE_ID.id"
                          from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('LEAVE_TYPE'))}"
                          optionKey="id" value="${employee_LeaveInstance?.LEAVE_TYPE_ID?.id}"
                          class="form-control many-to-one" noSelection="['': '--Select--']"/>
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
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:employee_LeaveInstance?.START_DATE)}" data-close="true" data-name="START_DATE"></div>
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
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:employee_LeaveInstance?.END_DATE)}" data-close="true" data-name="END_DATE"></div>
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
                <g:field name="TOTAL_DAYS" type="number" class="form-control" class="form-control" value="${employee_LeaveInstance.TOTAL_DAYS}"/>
            </div>
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">

            <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'LEAVE_REASON', 'error')} ">
                <label for="LEAVE_REASON">
                    <g:message code="employee_Leave.LEAVE_REASON.label" default="Leave Reason"/>

                </label>
                <g:textArea class="form-control" name="LEAVE_REASON" cols="40" rows="5" maxlength="400"
                            value="${employee_LeaveInstance?.LEAVE_REASON}"/>
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
                <g:textArea class="form-control" name="REMARKS" cols="40" rows="5" maxlength="400"
                            value="${employee_LeaveInstance?.REMARKS}"/>
            </div>
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">

            <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'LEAVE_BALANCE', 'error')} ">
                <label for="LEAVE_BALANCE">
                    <g:message code="employee_Leave.LEAVE_BALANCE.label" default="Leave Balance"/>

                </label>
                <g:field name="LEAVE_BALANCE" type="number" class="form-control" class="form-control" value="${employee_LeaveInstance.LEAVE_BALANCE}"/>
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
                <g:field name="LEAVE_WITH_PAY_DAYS" type="number" class="form-control" class="form-control"
                         value="${employee_LeaveInstance.LEAVE_WITH_PAY_DAYS}"/>
            </div>
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: employee_LeaveInstance, field: 'LEAVE_WITHOUT_PAY_DAYS', 'error')} ">
                <label for="LEAVE_WITHOUT_PAY_DAYS">
                    <g:message code="employee_Leave.LEAVE_WITHOUT_PAY_DAYS.label" default="Leave Without Pay Days"/>

                </label>
                <g:field name="LEAVE_WITHOUT_PAY_DAYS" type="number" class="form-control" class="form-control"
                         value="${employee_LeaveInstance.LEAVE_WITHOUT_PAY_DAYS}"/>
            </div>

        </div>
    </div>
</div>

%{--<div class="row">
    <div class="col-xs-6" style="padding-left: 10px;">
        <div class="form-group">
            <label for="EMPLOYEE_ID">
                <g:message code="employee_Leave.EMPLOYEE_ID.label" default="EMPLOYEEID" />

            </label>
            <g:select id="EMPLOYEE_ID" name="EMPLOYEE_ID.id" from="${payroll.Employee.list()}" optionKey="id" value="${employee_LeaveInstance?.EMPLOYEE_ID?.id}" class="many-to-one form-control" noSelection="['': ' --Select--']"/>

        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="upCommunityProcurement">Employee Leave Id</label>
            <input type="text" name="TRI_qualification" class="form-control" placeholder="Enter Attendance Info">

        </div>
    </div>
</div>--}%
