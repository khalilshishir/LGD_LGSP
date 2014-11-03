
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upDirectProcurementActualDetails[${i}].id' value='${upDirectProcActualDetails?.id}'/>
        <g:hiddenField name='upDirectProcurementActualDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upDirectProcurementActualDetails[${i}].new' value="${upDirectProcActualDetails?.id == null?'true':'false'}"/>
<td><g:textField size="15px" name='upDirectProcurementActualDetails[${i}].GOODS_ID' value='${upDirectProcActualDetails?.GOODS_ID}' class='detail-txt'/></td>
<td><g:textField size="15px" name='upDirectProcurementActualDetails[${i}].GOODS_NAME' value='${upDirectProcActualDetails?.GOODS_NAME}' class='detail-txt'/></td>
<td><g:textField size="15px" name='upDirectProcurementActualDetails[${i}].GOODS_DETAILS' value='${upDirectProcActualDetails?.GOODS_DETAILS}' class='detail-txt'/></td>
<td><g:textField size="15px" name='upDirectProcurementActualDetails[${i}].RATE' value='${upDirectProcActualDetails?.RATE}' class='detail-number'/></td>
<td><g:textField size="15px" name='upDirectProcurementActualDetails[${i}].AMOUNT' value='${upDirectProcActualDetails?.AMOUNT}' class='detail-txt'/></td>


    <td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img
            src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>

</tr>