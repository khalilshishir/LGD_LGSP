<%@ page import="settings.SchemeInfo" %>

<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upDirectProcurementDetails[${i}].id' value='${upDirectProcurementDetails?.id}'/>
        <g:hiddenField name='upDirectProcurementDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upDirectProcurementDetails[${i}].new' value="${upDirectProcurementDetails?.id == null?'true':'false'}"/>

<td><g:textField size="13px" name='upDirectProcurementDetails[${i}].GOODS_ID' value='${upDirectProcurementDetails?.GOODS_ID}' class='detail-txt form-control'/></td>
    %{--<td><g:select  class="form-control"   name='upDirectProcurementDetails[${i}].GOODS_NAME' from="${SchemeInfo.list()}" optionKey="NAME"  optionValue="NAME" noSelection="['':'--']"/></td>--}%
<td><g:textField size="13px" name='upDirectProcurementDetails[${i}].GOODS_NAME' value='${upDirectProcurementDetails?.GOODS_NAME}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upDirectProcurementDetails[${i}].GOODS_DETAILS' value='${upDirectProcurementDetails?.GOODS_DETAILS}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upDirectProcurementDetails[${i}].RATE' value='${upDirectProcurementDetails?.RATE}' class='detail-number form-control'/></td>
<td><g:textField size="13px" name='upDirectProcurementDetails[${i}].AMOUNT' value='${upDirectProcurementDetails?.AMOUNT}' onblur="setTotalAmount(this.id)" class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upDirectProcurementDetails[${i}].TOTAL_PRICE' value='${upDirectProcurementDetails?.TOTAL_PRICE}' class='detail-txt form-control' readonly=""/></td>

    %{--<td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>--}%
    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>
</tr>