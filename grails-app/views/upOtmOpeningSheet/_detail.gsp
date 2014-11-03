
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upOtmOpeningSheetDetails[${i}].id' value='${upOtmOpeningSheetDetails?.id}'/>
        <g:hiddenField name='upOtmOpeningSheetDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upOtmOpeningSheetDetails[${i}].new' value="${upOtmOpeningSheetDetails?.id == null?'true':'false'}"/>
<td><g:textField name='upOtmOpeningSheetDetails[${i}].VENDOR_NAME' value='${upOtmOpeningSheetDetails?.VENDOR_NAME}' class='detail-txt form-control'/></td>
<td><g:textField name='upOtmOpeningSheetDetails[${i}].PRICE' value='${upOtmOpeningSheetDetails?.PRICE}' class='detail-txt form-control'/></td>
<td><g:textField name='upOtmOpeningSheetDetails[${i}].COMMENTS' value='${upOtmOpeningSheetDetails?.COMMENTS}' class='detail-txt form-control'/></td>


    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>

</tr>