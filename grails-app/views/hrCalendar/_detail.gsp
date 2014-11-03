<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>

    <td style="width: 100px;"><g:hiddenField name='hrCalendarMonths[${i}].id' value='${hrCalendarMonth?.id}'/>
    <g:hiddenField name='hrCalendarMonths[${i}].deleted' value='false'/>
    <g:hiddenField name='hrCalendarMonths[${i}].new' value="${hrCalendarMonth?.id == null?'true':'false'}"/>
    <g:textField name='hrCalendarMonths[${i}].calendarYear' value='${hrCalendarMonth?.calendarYear}' style="text-align: center;width: 100px;"/>
    </td>
    %{--<g:select name="hrCalendarMonths[${i}].hrCalendarIdHrCalendar" id="hrCalendarIdHrCalendar${i}"
    from="${hrms.HrCalendar.list()}" optionKey="id" optionValue="calendarYear" value="${hrCalendarMonth?.hrCalendarIdHrCalendar?.id}"/>--}%
    <td style="width: 120px;"><g:textField name='hrCalendarMonths[${i}].startDate' value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarMonth?.startDate)}" class="startDate" style="text-align: center;width: 120px;"/></td>
    <td style="width: 120px;"><g:textField name='hrCalendarMonths[${i}].endDate' value="${formatDate(format:'dd/MM/yyyy',date:hrCalendarMonth?.endDate)}" class="endDate" style="text-align: center;width: 120px;"/></td>
    <td style="width: 60px;"><g:textField name='hrCalendarMonths[${i}].periodName' value='${hrCalendarMonth?.periodName}' style="text-align: center;width: 100px;"/></td>

    <td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img
    src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>

    <td><g:hiddenField name='hrCalendarMonths[${i}].serialNo' value='${hrCalendarMonth?.serialNo}' style="text-align: center;"/></td>
</tr>