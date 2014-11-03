<%@ page import="hrms.HrCalendar" %>

<script type="text/javascript">
    $(document).ready(function () {
        $("#startMonth").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#endMonth").datepicker({ dateFormat: 'dd/mm/yy'});
    });
</script>



<div id="wrapper" style="width: 550px;">
    <h3>Calendar Information</h3>
    <table class="promint_block">
        <tr>
            <td style="width: 180px;">Calendar Year:</td>
            <td>
                <g:textField id="calendarYear" name="calendarYear"  value="${hrCalendarInstance?.calendarYear}" class="calendarYearName" style="text-align: center;"/>
            </td>
        </tr>

        <tr>
            <td style="width: 180px;">Starting Month:</td>
            <td>
                <g:textField id="startMonth" name="startMonth" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarInstance?.startMonth)}" style="text-align: center;" class="startMonth"/>
            </td>
        </tr>

        <tr>
            <td style="width: 180px;">Ending Month:</td>
            <td>
                <g:textField id="endMonth" name="endMonth" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarInstance?.endMonth)}" style="text-align: center;" class="endMonth"/>
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

<div id="wrapper" style="width: 550px;">
<div class="detail-list ${hasErrors(bean: hrCalendarInstance, field: 'hrCalendarMonths', 'error')}">
    <ul class="one-to-many">
        %{--<fieldset>--}%
        %{--<li>--}%
        <g:render template="details"/>
        %{--</li>--}%
        %{--</fieldset>--}%
    </ul>
</div>
</div>


%{--<div class="fieldcontain ${hasErrors(bean: hrCalendarInstance, field: 'calendarYear', 'error')} ">
	<label for="calendarYear">
		<g:message code="hrCalendar.calendarYear.label" default="Calendar Year" />
		
	</label>
	<g:textField id="calendarYear" name="calendarYear"  value="${hrCalendarInstance?.calendarYear}" class="calendarYearName" style="text-align: center;"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrCalendarInstance, field: 'startMonth', 'error')} ">
	<label for="startMonth">
		<g:message code="hrCalendar.startMonth.label" default="Start Month:" />
		
	</label>
	--}%%{--<g:datePicker name="startMonth" precision="day"  value="${hrCalendarInstance?.startMonth}" default="none" noSelection="['': '']" />--}%%{--
    <g:textField id="startMonth" name="startMonth" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarInstance?.startMonth)}" style="text-align: center;" class="startMonth"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrCalendarInstance, field: 'endMonth', 'error')} ">
	<label for="endMonth">
		<g:message code="hrCalendar.endMonth.label" default="End Month:" />
		
	</label>
	--}%%{--<g:datePicker name="endMonth" precision="day"  value="${hrCalendarInstance?.endMonth}" default="none" noSelection="['': '']" />--}%%{--
    <g:textField id="endMonth" name="endMonth" value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarInstance?.endMonth)}" style="text-align: center;" class="endMonth"/>
</div>--}%

