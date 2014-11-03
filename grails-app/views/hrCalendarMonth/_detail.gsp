<%@ page import="hrms.HrLookup; hrms.HrLookupType" %>

<script type="text/javascript">

   function getDays()
    {
       $('.sDate').live('change',function() {
         var startingDate= $(this).closest("tr").find(".sDate").attr("id");
         var startDate = $("#"+startingDate).val().split("/");
         var dateFrom = new Date(startDate[2],(startDate[1]-1),startDate[0]);

         var endingDate= $(this).closest("tr").find(".eDate").attr("id");
         var endDate = $("#"+endingDate).val().split("/");
         var dateTo = new Date(endDate[2],(endDate[1]-1),endDate[0]);

         var totalDaysId = $(this).closest("tr").find(".totalDays").attr("id");
         var oneDay = 1000*60*60*24;

         $("#"+totalDaysId).val(
         Math.ceil((dateTo.getTime() - dateFrom.getTime())/(oneDay))+1
         );

       });

         $('.eDate').live('change',function() {
         var startingDate= $(this).closest("tr").find(".sDate").attr("id");
         var startDate = $("#"+startingDate).val().split("/");
         var dateFrom = new Date(startDate[2],(startDate[1]-1),startDate[0]);

         var endingDate= $(this).closest("tr").find(".eDate").attr("id");
         var endDate = $("#"+endingDate).val().split("/");
         var dateTo = new Date(endDate[2],(endDate[1]-1),endDate[0]);

         var totalDaysId = $(this).closest("tr").find(".totalDays").attr("id");
         var oneDay = 1000*60*60*24;

         $("#"+totalDaysId).val(
         Math.ceil((dateTo.getTime() - dateFrom.getTime())/(oneDay))+1
         );

         });
    }

</script>


<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>

    <td><g:hiddenField name='hrHolidayCalendars[${i}].id' value='${hrHolidayCalendar?.id}'/>
    <g:hiddenField name='hrHolidayCalendars[${i}].deleted' value='false'/>
    <g:hiddenField name='hrHolidayCalendars[${i}].new' value="${hrHolidayCalendar?.id == null?'true':'false'}"/>
   %{-- <g:textField name='hrHolidayCalendars[${i}].calendarYear' value='${hrHolidayCalendar?.calendarYear}' style="text-align: center;"/>
    </td>

    <td>--}%
    <g:select name="hrHolidayCalendars[${i}].holidayTypeIdHrLookup" id="holidayTypeIdHrLookup${i}"
    from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('HOLIDAY TYPE'))}" optionKey="id" optionValue="lookupValue" value="${hrHolidayCalendar?.holidayTypeIdHrLookup?.id}"/>
    </td>

    <td>
        <g:select name="hrHolidayCalendars[${i}].holidayTypeDescIdHrLookup" id="holidayTypeDescIdHrLookup${i}"
                  from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('HOLIDAY DESCRIPTION'))}" optionKey="id" optionValue="lookupValue" value="${hrHolidayCalendar?.holidayTypeDescIdHrLookup?.id}"/>
    </td>

    <td><g:textField id='startDate${i}' name='hrHolidayCalendars[${i}].startDate' value="${formatDate(format:'dd/MM/yyyy',date:hrHolidayCalendar?.startDate)}" class="sDate" style="text-align: center;" onchange="getDays();"/></td>
    <td><g:textField id='endDate${i}' name='hrHolidayCalendars[${i}].endDate' value="${formatDate(format:'dd/MM/yyyy',date:hrHolidayCalendar?.endDate)}" class="eDate" style="text-align: center;" onchange="getDays();"/></td>
    <td><g:textField id='totalDays${i}' name='hrHolidayCalendars[${i}].totalDays' value='${hrHolidayCalendar?.totalDays}' class="totalDays" style="text-align: center;width: 60px;"/></td>


    <td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img
    src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>

</tr>