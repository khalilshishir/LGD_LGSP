<%@ page import="settings.SchemeInfo" %>

<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upCommuniProcurementDetails[${i}].id' value='${upCommuniProcurementDetails?.id}'/>
        <g:hiddenField name='upCommuniProcurementDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upCommuniProcurementDetails[${i}].new' value="${upCommuniProcurementDetails?.id == null?'true':'false'}"/>

<td><g:textField size="13px" name='upCommuniProcurementDetails[${i}].GOODS_ID' value='${upCommuniProcurementDetails?.GOODS_ID}' class='detail-txt form-control'/></td>
    %{--<td><g:select  class="form-control"   name='upDirectProcDetails[${i}].GOODS_NAME' from="${SchemeInfo.list()}" optionKey="NAME"  optionValue="NAME" noSelection="['':'--']"/></td>--}%
<td><g:textField size="13px" name='upCommuniProcurementDetails[${i}].GOODS_NAME' value='${upCommuniProcurementDetails?.GOODS_NAME}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upCommuniProcurementDetails[${i}].GOODS_DETAILS' value='${upCommuniProcurementDetails?.GOODS_DETAILS}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upCommuniProcurementDetails[${i}].RATE' value='${upCommuniProcurementDetails?.RATE}' class='detail-number form-control'/></td>
<td><g:textField size="13px" name='upCommuniProcurementDetails[${i}].AMOUNT' value='${upCommuniProcurementDetails?.AMOUNT}' onblur="setTotalAmount(this.id)" class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upCommuniProcurementDetails[${i}].TOTAL_PRICE' value='${upCommuniProcurementDetails?.TOTAL_PRICE}' class='detail-txt form-control' readonly=""/></td>

    %{--<td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>--}%
    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>
</tr>