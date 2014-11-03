<%@ page import="payroll.Attendance_Process" %>



%{--<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'ATTN_MONTH', 'error')} ">
	<label for="ATTN_MONTH">
		<g:message code="attendance_Process.ATTN_MONTH.label" default="ATTNMONTH" />
		
	</label>
	<g:textField name="ATTN_MONTH" value="${attendance_ProcessInstance?.ATTN_MONTH}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'ATTN_YEAR', 'error')} ">
	<label for="ATTN_YEAR">
		<g:message code="attendance_Process.ATTN_YEAR.label" default="ATTNYEAR" />
		
	</label>
	<g:textField name="ATTN_YEAR" value="${attendance_ProcessInstance?.ATTN_YEAR}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'ATTENDANCE_MONTH', 'error')} ">
	<label for="ATTENDANCE_MONTH">
		<g:message code="attendance_Process.ATTENDANCE_MONTH.label" default="ATTENDANCEMONTH" />
		
	</label>
	<g:textField name="ATTENDANCE_MONTH" value="${attendance_ProcessInstance?.ATTENDANCE_MONTH}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'EMPLOYEE_ID', 'error')} ">
	<label for="EMPLOYEE_ID">
		<g:message code="attendance_Process.EMPLOYEE_ID.label" default="EMPLOYEEID" />
		
	</label>
	<g:textField name="EMPLOYEE_ID" value="${attendance_ProcessInstance?.EMPLOYEE_ID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'CARD_NO', 'error')} ">
	<label for="CARD_NO">
		<g:message code="attendance_Process.CARD_NO.label" default="CARDNO" />
		
	</label>
	<g:textField name="CARD_NO" value="${attendance_ProcessInstance?.CARD_NO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'EMPLOYEE_NAME', 'error')} ">
	<label for="EMPLOYEE_NAME">
		<g:message code="attendance_Process.EMPLOYEE_NAME.label" default="EMPLOYEENAME" />
		
	</label>
	<g:select id="EMPLOYEE_NAME" name="EMPLOYEE_NAME.id" from="${payroll.Employee.list()}" optionKey="id" value="${attendance_ProcessInstance?.EMPLOYEE_NAME?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'DEPARTMENT_ID', 'error')} ">
	<label for="DEPARTMENT_ID">
		<g:message code="attendance_Process.DEPARTMENT_ID.label" default="DEPARTMENTID" />
		
	</label>
	<g:select id="DEPARTMENT_ID" name="DEPARTMENT_ID.id" from="${payroll.Department.list()}" optionKey="id" value="${attendance_ProcessInstance?.DEPARTMENT_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'DEPARTMENT_NAME', 'error')} ">
	<label for="DEPARTMENT_NAME">
		<g:message code="attendance_Process.DEPARTMENT_NAME.label" default="DEPARTMENTNAME" />
		
	</label>
	<g:select id="DEPARTMENT_NAME" name="DEPARTMENT_NAME.id" from="${payroll.Department.list()}" optionKey="id" value="${attendance_ProcessInstance?.DEPARTMENT_NAME?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'DESIGNATION_ID', 'error')} ">
	<label for="DESIGNATION_ID">
		<g:message code="attendance_Process.DESIGNATION_ID.label" default="DESIGNATIONID" />
		
	</label>
	<g:select id="DESIGNATION_ID" name="DESIGNATION_ID.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${attendance_ProcessInstance?.DESIGNATION_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'DESIGNATION_NAME', 'error')} ">
	<label for="DESIGNATION_NAME">
		<g:message code="attendance_Process.DESIGNATION_NAME.label" default="DESIGNATIONNAME" />
		
	</label>
	<g:textField name="DESIGNATION_NAME" value="${attendance_ProcessInstance?.DESIGNATION_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'JOINING_DATE', 'error')} ">
	<label for="JOINING_DATE">
		<g:message code="attendance_Process.JOINING_DATE.label" default="JOININGDATE" />
		
	</label>
	<g:datePicker name="JOINING_DATE" precision="day"  value="${attendance_ProcessInstance?.JOINING_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'EARNED_LEAVE', 'error')} ">
	<label for="EARNED_LEAVE">
		<g:message code="attendance_Process.EARNED_LEAVE.label" default="EARNEDLEAVE" />
		
	</label>
	<g:field name="EARNED_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.EARNED_LEAVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'SICK_LEAVE', 'error')} ">
	<label for="SICK_LEAVE">
		<g:message code="attendance_Process.SICK_LEAVE.label" default="SICKLEAVE" />
		
	</label>
	<g:field name="SICK_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.SICK_LEAVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'MATERNITY_LEAVE', 'error')} ">
	<label for="MATERNITY_LEAVE">
		<g:message code="attendance_Process.MATERNITY_LEAVE.label" default="MATERNITYLEAVE" />
		
	</label>
	<g:field name="MATERNITY_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.MATERNITY_LEAVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'CASUAL_LEAVE', 'error')} ">
	<label for="CASUAL_LEAVE">
		<g:message code="attendance_Process.CASUAL_LEAVE.label" default="CASUALLEAVE" />
		
	</label>
	<g:field name="CASUAL_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.CASUAL_LEAVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'SACTIONAL_LEAVE', 'error')} ">
	<label for="SACTIONAL_LEAVE">
		<g:message code="attendance_Process.SACTIONAL_LEAVE.label" default="SACTIONALLEAVE" />
		
	</label>
	<g:field name="SACTIONAL_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.SACTIONAL_LEAVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'STUDY_LEAVE', 'error')} ">
	<label for="STUDY_LEAVE">
		<g:message code="attendance_Process.STUDY_LEAVE.label" default="STUDYLEAVE" />
		
	</label>
	<g:field name="STUDY_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.STUDY_LEAVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'LEAVE_WITHOUT_PAY', 'error')} ">
	<label for="LEAVE_WITHOUT_PAY">
		<g:message code="attendance_Process.LEAVE_WITHOUT_PAY.label" default="LEAVEWITHOUTPAY" />
		
	</label>
	<g:field name="LEAVE_WITHOUT_PAY" type="number" class="form-control" value="${attendance_ProcessInstance.LEAVE_WITHOUT_PAY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance_ProcessInstance, field: 'MONTHLY_HOLIDAY', 'error')} ">
	<label for="MONTHLY_HOLIDAY">
		<g:message code="attendance_Process.MONTHLY_HOLIDAY.label" default="MONTHLYHOLIDAY" />
		
	</label>
	<g:field name="MONTHLY_HOLIDAY" type="number" class="form-control" value="${attendance_ProcessInstance.MONTHLY_HOLIDAY}"/>
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="ATTN_MONTH"><g:message code="attendance_Process.ATTN_MONTH.label" default="Attendance Month" /></label>
            <g:textField class="form-control" name="ATTN_MONTH" value="${attendance_ProcessInstance?.ATTN_MONTH}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="ATTN_YEAR"><g:message code="attendance_Process.ATTN_YEAR.label" default="Attendance Year" /></label>
            <g:textField class="form-control" name="ATTN_YEAR" value="${attendance_ProcessInstance?.ATTN_YEAR}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="EMPLOYEE_ID"><g:message code="attendance_Process.EMPLOYEE_ID.label" default="Employee ID" /></label>
            <g:textField class="form-control" name="EMPLOYEE_ID" value="${attendance_ProcessInstance?.EMPLOYEE_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="CARD_NO"><g:message code="attendance_Process.CARD_NO.label" default="Card No" /></label>
            <g:textField class="form-control" name="CARD_NO" value="${attendance_ProcessInstance?.CARD_NO}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="EMPLOYEE_NAME"><g:message code="attendance_Process.EMPLOYEE_NAME.label" default="Employee Name" /></label>
            %{--<g:textField class="form-control" name="DEPARTMENT_ID" value="${employeeInstance?.DEPARTMENT_ID}"/>--}%
            <g:select id="EMPLOYEE_NAME" name="EMPLOYEE_NAME.id" from="${payroll.Employee.list()}" optionKey="id" value="${attendance_ProcessInstance?.EMPLOYEE_NAME?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="DEPARTMENT_ID"><g:message code="attendance_Process.DEPARTMENT_ID.label" default="Department ID" /></label>
            %{--<g:textField class="form-control" name="DEPARTMENT_ID" value="${employeeInstance?.DEPARTMENT_ID}"/>--}%
            <g:select id="DEPARTMENT_ID" name="DEPARTMENT_ID.id" from="${payroll.Department.list()}" optionKey="id" value="${attendance_ProcessInstance?.DEPARTMENT_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="DESIGNATION_ID"><g:message code="attendance_Process.DESIGNATION_ID.label" default="Designation ID" /></label>
            %{--<g:textField class="form-control" name="DEPARTMENT_ID" value="${employeeInstance?.DEPARTMENT_ID}"/>--}%
            <g:select id="DESIGNATION_ID" name="DESIGNATION_ID.id" from="${payroll.Designation.list()}" optionKey="id" value="${attendance_ProcessInstance?.DESIGNATION_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: attendance_ProcessInstance, field: 'JOINING_DATE', 'error')} ">
        <label for="JOINING_DATE">
            <g:message code="attendance_Process.JOINING_DATE.label" default="Joining Date" />

        </label>
        <g:datePicker class="form-control" name="JOINING_DATE" precision="day"  value="${attendance_ProcessInstance?.JOINING_DATE}" default="none" noSelection="['': '']" />
    </div>--}%

    <div class="col-xs-6 ${hasErrors(bean: attendance_ProcessInstance, field: 'JOINING_DATE', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Joining Date</label>
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:attendance_ProcessInstance?.JOINING_DATE)}" data-close="true" data-name="JOINING_DATE"></div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="EARNED_LEAVE"><g:message code="attendance_Process.EARNED_LEAVE.label" default="Earned Leave" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="EARNED_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.EARNED_LEAVE}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="SICK_LEAVE"><g:message code="attendance_Process.SICK_LEAVE.label" default="Sick Leave" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="SICK_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.SICK_LEAVE}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="MATERNITY_LEAVE"><g:message code="attendance_Process.MATERNITY_LEAVE.label" default="Maternity Leave" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="MATERNITY_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.MATERNITY_LEAVE}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="CASUAL_LEAVE"><g:message code="attendance_Process.CASUAL_LEAVE.label" default="Casual Leave" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="CASUAL_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.CASUAL_LEAVE}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="SACTIONAL_LEAVE"><g:message code="attendance_Process.SACTIONAL_LEAVE.label" default="Sactional Leave" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="SACTIONAL_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.SACTIONAL_LEAVE}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="STUDY_LEAVE"><g:message code="attendance_Process.STUDY_LEAVE.label" default="Study Leave" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="STUDY_LEAVE" type="number" class="form-control" value="${attendance_ProcessInstance.STUDY_LEAVE}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="LEAVE_WITHOUT_PAY"><g:message code="attendance_Process.LEAVE_WITHOUT_PAY.label" default="Leave Without Pay" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="LEAVE_WITHOUT_PAY" type="number" class="form-control" value="${attendance_ProcessInstance.LEAVE_WITHOUT_PAY}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="MONTHLY_HOLIDAY"><g:message code="attendance_Process.MONTHLY_HOLIDAY.label" default="Monthly Holiday" /></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="MONTHLY_HOLIDAY" type="number" class="form-control" value="${attendance_ProcessInstance.MONTHLY_HOLIDAY}"/>
        </div>
    </div>
</div>


