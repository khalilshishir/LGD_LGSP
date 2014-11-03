<%@ page import="hrms.HrCalendarMonth" %>

<script type="text/javascript">
    var childCount = ${hrCalendarInstance?.hrCalendarMonths?.size()} + 0;

    $(document).ready(function () {
        $("#startDate").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#endDate").datepicker({ dateFormat: 'dd/mm/yy'});
    });

</script>

<div id="wrapper">
    <h3>Calendar Information</h3>
    <table class="promint_block">
        <tr>
            <td style="width: 180px;">Calendar Year:</td>
            <td>
                <g:select id="hrCalendarIdHrCalendar" name="hrCalendarIdHrCalendar.id" from="${hrms.HrCalendar.list()}" optionKey="id" value="${hrCalendarMonthInstance?.hrCalendarIdHrCalendar?.id}" class="many-to-one" noSelection="['null': '']"/>
            </td>
        </tr>

        <tr>
            <td style="width: 180px;">Starting Date:</td>
            <td>
                <g:textField id="startDate" name="startDate" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarMonthInstance?.startDate != null?hrCalendarMonthInstance?.startDate:null)}" style="text-align: center;"/>
            </td>
        </tr>

        <tr>
            <td style="width: 180px;">Ending Date:</td>
            <td>
                <g:textField id="endDate" name="endDate" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarMonthInstance?.endDate != null?hrCalendarMonthInstance?.endDate:null)}" style="text-align: center;"/>
            </td>
        </tr>

        <tr>
        <td style="width: 180px;">Period Name:</td>
        <td>
            <g:textField id="periodName" name="periodName" value="${hrCalendarMonthInstance?.periodName}" style="text-align: center;"/>
        </td>
       </tr>

        %{--<tr>
            <td style="width: 180px;text-align: right">Name of Designation:</td>
            <td>
                <g:select id="desingationIdHrDesignation" name="desingationIdHrDesignation.id" from="${hrms.HrDesignation.list()}" optionKey="id" required="" value="${hrPayscaleInstance?.desingationIdHrDesignation?.id}" class="many-to-one" noSelection="['null':'-Select One-']"/>
            </td>
        </tr>--}%
    </table>
</div>

<div id="wrapper">
<div class="detail-list ${hasErrors(bean: hrCalendarMonthInstance, field: 'hrHolidayCalendars', 'error')} ">
    <ul class="one-to-many">
        %{--<fieldset>--}%
        %{--<li>--}%
        <g:render template="details"/>
        %{--</li>--}%
        %{--</fieldset>--}%
    </ul>
</div>
</div>
%{--<div class="fieldcontain ${hasErrors(bean: hrCalendarMonthInstance, field: 'hrCalendarIdHrCalendar', 'error')} ">
	<label for="hrCalendarIdHrCalendar">
		<g:message code="hrCalendarMonth.hrCalendarIdHrCalendar.label" default="Calendar Year:" />
		
	</label>
	<g:select id="hrCalendarIdHrCalendar" name="hrCalendarIdHrCalendar.id" from="${hrms.HrCalendar.list()}" optionKey="id" value="${hrCalendarMonthInstance?.hrCalendarIdHrCalendar?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrCalendarMonthInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="hrCalendarMonth.startDate.label" default="Start Date:" />
		
	</label>
	--}%%{--<g:datePicker name="startDate" precision="day"  value="${hrCalendarMonthInstance?.startDate}" default="none" noSelection="['': '']" />--}%%{--
    <g:textField id="startDate" name="startDate" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarMonthInstance?.startDate != null?hrCalendarMonthInstance?.startDate:null)}" style="text-align: center;"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrCalendarMonthInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="hrCalendarMonth.endDate.label" default="End Date:" />
		
	</label>
	--}%%{--<g:datePicker name="endDate" precision="day"  value="${hrCalendarMonthInstance?.endDate}" default="none" noSelection="['': '']" />--}%%{--
    <g:textField id="endDate" name="endDate" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarMonthInstance?.endDate != null?hrCalendarMonthInstance?.endDate:null)}" style="text-align: center;"/>
</div>--}%

%{--
<div class="fieldcontain ${hasErrors(bean: hrCalendarMonthInstance, field: 'periodName', 'error')} ">
	<label for="periodName">
		<g:message code="hrCalendarMonth.periodName.label" default="Period Name:" />
		
	</label>
	<g:textField name="periodName" value="${hrCalendarMonthInstance?.periodName}"/>
</div>
--}%




