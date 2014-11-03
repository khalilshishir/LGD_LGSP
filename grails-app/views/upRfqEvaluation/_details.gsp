<input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Details"/>

<div class="" style="border: solid 1px;border-radius: 5px">
<table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
    <tr><th>দরপত্র দাখিলকারির নাম ও ঠিকানা </th><th>উদ্বৃত্ত মূল্য</th><th>মূল্য ওয়ারি  অবস্থাঙ্ক্রম</th><th>নির্ধারিত স্পেসিফিকেশন এবং পরিমান</th><th>দাখিলক্রীত স্পেসিফিকেশন এবং পরিমান</th><th>মূল্যায়ন কমিটির মন্তব্য এবং সিদ্ধান্ত / সুপারিশ</th></tr>

    <g:each in="${upRfqEvaluationSheetDetails}" var="values" status="i">

        <tr>
            <g:hiddenField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].id' value='${values?.id}'/>
            <g:hiddenField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].deleted' value='false'/>
            <g:hiddenField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].new' value="${values?.id == null?'true':'false'}"/>
            <td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].VENDOR_NAME' value='${values?.VENDOR_NAME}' class="form-control"  readonly=""/></td>
            <td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].PRICE' value='${values?.PRICE}' class="form-control" readonly=""/></td>
            <td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].VENDOR_SCORE'  value='${values?.VENDOR_SCORE}' class='detail-txt form-control'/></td>
            <td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].INVITED_SPEC_AMOUNT'  value='${values?.INVITED_SPEC_AMOUNT}' class='detail-txt form-control'/></td>
            <td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].SUB_SPEC_AMOUNT'  value='${values?.SUB_SPEC_AMOUNT}' class='detail-txt form-control'/></td>
            <td><g:textField name='rfqOpeningSheetDetailsByProcurementMaster[${i}].SSC_COMMENTS'  value='${values?.SSC_COMMENTS}' class='detail-txt form-control'/></td>
        </tr>
    </g:each>
</table>
</div>