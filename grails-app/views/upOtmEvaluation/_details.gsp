<input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Details"/>
<div class="" style="border: solid 1px;border-radius: 5px">
<table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
    <tr>
        <th>দরপত্র দাখিলকারির নাম ও ঠিকানা </th><th>উদ্বৃত্ত মূল্য</th><th>দরদাতার যোগ্যতা</th>
        <th>প্রস্তাবিত কাজের/মালামালের বিবরন</th><th>অন্যান্য শর্তাবলি </th><th>উদ্ধৃত একক মূল্য</th>
        <th>উদ্ধৃত মূল্য</th><th>সার্বিক গ্রহণযোগ্যতা </th><th>উদ্ধৃত মূল্য অনুযায়ী অবস্থান</th>
    </tr>

<g:each in="${upOtmEvaluationSheetDetails}" var="values" status="i">

    <tr>
        <g:hiddenField name='otmOpeningSheetDetailsByProcurementMaster[${i}].id' value='${values?.id}'/>
        <g:hiddenField name='otmOpeningSheetDetailsByProcurementMaster[${i}].deleted' value='false'/>
        <g:hiddenField name='otmOpeningSheetDetailsByProcurementMaster[${i}].new' value="${values?.id == null?'true':'false'}"/>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].VENDOR_NAME' value='${values?.VENDOR_NAME}' class="form-control"  readonly=""/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].PRICE' value='${values?.PRICE}' class="form-control" readonly=""/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].INVITATOR_QUALIFICATIONS'  value='${values?.INVITATOR_QUALIFICATIONS}' class='detail-txt form-control'/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].GOODS_SPECIFICATIONS'  value='${values?.GOODS_SPECIFICATIONS}' class='detail-txt form-control'/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].OTHER_CONDITIONS'  value='${values?.OTHER_CONDITIONS}' class='detail-txt form-control'/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].QUOTED_UNIT_PRICE'  value='${values?.QUOTED_UNIT_PRICE}' class='detail-txt form-control'/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].QUOTED_PRICE'  value='${values?.QUOTED_PRICE}' class='detail-txt form-control'/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].OVERALL_ACCEPTANCE'  value='${values?.OVERALL_ACCEPTANCE}' class='detail-txt form-control'/></td>
        <td><g:textField size="9px" name='otmOpeningSheetDetailsByProcurementMaster[${i}].POSITION_BY_QUOTED_PRICE'  value='${values?.POSITION_BY_QUOTED_PRICE}' class='detail-txt form-control'/></td>
    </tr>
</g:each>
</table>
</div>