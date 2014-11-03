<%@ page import="hrms.HrCalendar" %>

<script type="text/javascript">
    $(document).ready(function () {
        $("#startMonth").datepicker({ dateFormat:'dd/mm/yy'});
        $("#endMonth").datepicker({ dateFormat:'dd/mm/yy'});
    });
</script>


<div id="wrapper" style="width: 908px;">
    <h3>Calendar Information</h3>
    <table class="promint_block">
        <tr>
            <td style="width: 180px;">Calendar Year:</td>
            <td>
                <g:textField id="calendarYear" name="calendarYear" value="${hrCalendarInstance?.calendarYear}"
                             class="calendarYearName myReadOnlyField" readonly="readonly" style="text-align: center; width: 100px;"/>
            </td>
        </tr>

        <tr>
            <td style="width: 180px;">Starting Month:</td>
            <td>
                <g:textField id="startMonth" name="startMonth"
                             value="${formatDate(format: 'dd/MM/yyyy', date: hrCalendarInstance?.startMonth)}"
                             style="text-align: center; width: 100px;" class="startMonth myReadOnlyField" readonly="readonly"/>
            </td>
        </tr>

        <tr>
            <td style="width: 180px;">Ending Month:</td>
            <td>
                <g:textField id="endMonth" name="endMonth"
                             value="${formatDate(format: 'dd/MM/yyyy', date: hrCalendarInstance?.endMonth)}"
                             style="text-align: center; width: 100px;" class="endMonth myReadOnlyField" readonly="readonly"/>
            </td>
        </tr>
    </table>
</div>

<div id="wrapper" style="width: 908px;">
    <div class="detail-list ${hasErrors(bean: hrCalendarInstance, field: 'hrCalendarMonths', 'error')}">
        <ul class="one-to-many">

            <g:render template="processCalenderDetails"/>

        </ul>
    </div>
</div>


