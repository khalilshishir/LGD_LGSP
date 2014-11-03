
<input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Details"/>

<div class="" style="border: solid 1px;border-radius: 5px">
<table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
    <tr>
        <th>কাজের বর্ণনা ও অবস্থান</th><th>কাজের একক</th><th>কাজের পরিমাণ</th><th>একক মূল্য (টাকা)</th>
        <th>বাস্তবায়নের নির্ধারিত সময়সীমা</th><th>দড় বহাল থাকার প্রস্তাবিত সময়সীমা</th>
    </tr>

    <g:each in="${workDetailsByProcurementMaster}" var="values" status="i">

        <tr>
            <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].DETAILS' value='${values?.DETAILS}' class="form-control"  readonly=""/></td>
            <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].UNIT'  class='detail-txt form-control'/></td>
            <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].AMOUNT'  class='detail-txt form-control'/></td>
            <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].RATE'  class='detail-txt form-control'/></td>
            <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].FINISH_DATE'  class='detail-txt form-control'/></td>
            <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].TIMELINE_OF_RATE'  class='detail-txt form-control'/></td>
            %{--<td><div class="bfh-datepicker" name='otmTenderScheduleDetailsByProcurementMaster[${i}].TIMELINE_OF_RATE' data-date="${formatDate(format:'MM/dd/yyyy',date:new Date())}" data-close="true"></div></td>--}%
        </tr>
    </g:each>
</table>
</div>