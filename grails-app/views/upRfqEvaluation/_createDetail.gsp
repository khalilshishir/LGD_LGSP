
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upRfqEvaluationSheetDetails[${i}].id' value='${upRfqEvaluationSheetDetails?.id}'/>
        <g:hiddenField name='upRfqEvaluationSheetDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upRfqEvaluationSheetDetails[${i}].new' value="${upRfqEvaluationSheetDetails?.id == null?'true':'false'}"/>
<td><g:textField name='upRfqEvaluationSheetDetails[${i}].VENDOR_NAME' value='${rfqOpeningSheetDetailsByProcurementMaster?.VENDOR_NAME}' class='detail-txt'/></td>
<td><g:textField name='upRfqEvaluationSheetDetails[${i}].PRICE' value='${rfqOpeningSheetDetailsByProcurementMaster?.PRICE}' class='detail-txt'/></td>
<td><g:textField name='upRfqEvaluationSheetDetails[${i}].VENDOR_SCORE' value='${upRfqEvaluationSheetDetails?.VENDOR_SCORE}' class='detail-txt'/></td>
<td><g:textField name='upRfqEvaluationSheetDetails[${i}].INVITED_SPEC_AMOUNT' value='${upRfqEvaluationSheetDetails?.INVITED_SPEC_AMOUNT}' class='detail-txt'/></td>
<td><g:textField name='upRfqEvaluationSheetDetails[${i}].SUB_SPEC_AMOUNT' value='${upRfqEvaluationSheetDetails?.SUB_SPEC_AMOUNT}' class='detail-txt'/></td>
<td><g:textField name='upRfqEvaluationSheetDetails[${i}].SSC_COMMENTS' value='${upRfqEvaluationSheetDetails?.SSC_COMMENTS}' class='detail-txt'/></td>


    <td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>

</tr>