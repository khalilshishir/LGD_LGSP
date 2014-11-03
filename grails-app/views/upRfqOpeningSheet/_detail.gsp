
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upRfqOpeningSheetDetails[${i}].id' value='${upRfqOpeningSheetDetails?.id}'/>
        <g:hiddenField name='upRfqOpeningSheetDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upRfqOpeningSheetDetails[${i}].new' value="${upRfqOpeningSheetDetails?.id == null?'true':'false'}"/>
<td><g:textField size="25px" name='upRfqOpeningSheetDetails[${i}].VENDOR_NAME' value='${upRfqOpeningSheetDetails?.VENDOR_NAME}' class='detail-txt form-control'/></td>
<td><g:textField size="25px" name='upRfqOpeningSheetDetails[${i}].PRICE' value='${upRfqOpeningSheetDetails?.PRICE}' class='detail-txt form-control'/></td>
<td><g:textField size="25px" name='upRfqOpeningSheetDetails[${i}].COMMENTS' value='${upRfqOpeningSheetDetails?.COMMENTS}' class='detail-txt form-control'/></td>


    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>

</tr>