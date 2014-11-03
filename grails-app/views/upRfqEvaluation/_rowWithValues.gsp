<script type="text/javascript">
    var i = ${rowCount};
    %{--if(${listSize}){--}%
    %{--i = ${rfqOpeningSheetDetailsByProcurementMaster.size()--}%
    %{--}--}%
    %{--}--}%

    %{--function addChild() {--}%
      %{--var rowNo = ${rowCount} + 1;--}%
            %{--$('#myTable').append('<tr><td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${rowNo}].VENDOR_NAME' class='detail-txt'/></td><td>more data</td><td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${rowNo}].VENDOR_NAME' class='detail-txt'/></td><td>more data</td><td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${rowNo}].VENDOR_NAME' class='detail-txt'/></td><td>more data</td><td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${rowNo}].VENDOR_NAME' class='detail-txt'/></td><td>more data</td><td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${rowNo}].VENDOR_NAME' class='detail-txt'/></td><td>more data</td><td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${rowNo}].VENDOR_NAME' class='detail-txt'/></td><td>more data</td></tr>');--}%

        %{--rowNo ++--}%
        %{--alert(rowNo);--}%
        %{--}--}%


    }
</script>

<div class="" style="border: solid 1px;border-radius: 5px">
<table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
    <tr><th>দরপত্র দাখিলকারির নাম ও ঠিকানা </th><th>উদ্বৃত্ত মূল্য</th><th>মূল্য ওয়ারি  অবস্থাঙ্ক্রম</th><th>নির্ধারিত স্পেসিফিকেশন এবং পরিমান</th><th>দাখিলক্রীত স্পেসিফিকেশন এবং পরিমান</th><th>মূল্যায়ন কমিটির মন্তব্য এবং সিদ্ধান্ত / সুপারিশ</th></tr>

    <g:each in="${rfqOpeningSheetDetailsByProcurementMaster}"  var="values" status="i">

        <tr>
            <td><g:textField size="15px" name='rfqOpeningSheetDetailsByProcurementMaster[${i}].VENDOR_NAME' value='${values?.VENDOR_NAME}'  readonly="" class="form-control"/></td>
            <td><g:textField size="15px" name='rfqOpeningSheetDetailsByProcurementMaster[${i}].PRICE' value='${values?.PRICE}'  readonly="" class="form-control"/></td>
            <td><g:textField size="15px" name='rfqOpeningSheetDetailsByProcurementMaster[${i}].VENDOR_SCORE' readonly="" value='${i + 1}'  class="form-control"/></td>
            <td><g:textField size="15px" name='rfqOpeningSheetDetailsByProcurementMaster[${i}].INVITED_SPEC_AMOUNT' readonly="" value="${values?.GRANTED_AMOUNT}"  class="form-control"/></td>
            <td><g:textField size="15px" name='rfqOpeningSheetDetailsByProcurementMaster[${i}].SUB_SPEC_AMOUNT'  readonly="" value='${values?.PRICE}'  class="form-control"/></td>
            <td><g:textField size="15px" name='rfqOpeningSheetDetailsByProcurementMaster[${i}].SSC_COMMENTS'   class="form-control"/></td>
        </tr>
    </g:each>
</table>
</div>