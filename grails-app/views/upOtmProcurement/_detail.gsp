<%@ page import="settings.SchemeInfo" %>

<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upOtmProcurementDetails[${i}].id' value='${upOtmProcurementDetails?.id}'/>
        <g:hiddenField name='upOtmProcurementDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upOtmProcurementDetails[${i}].new' value="${upOtmProcurementDetails?.id == null?'true':'false'}"/>

<td><g:textField size="13px" name='upOtmProcurementDetails[${i}].GOODS_ID' value='${upOtmProcurementDetails?.GOODS_ID}' class='detail-txt form-control'/></td>
    %{--<td><g:select  class="form-control"   name='upDirectProcDetails[${i}].GOODS_NAME' from="${SchemeInfo.list()}" optionKey="NAME"  optionValue="NAME" noSelection="['':'--']"/></td>--}%
<td><g:textField size="13px" name='upOtmProcurementDetails[${i}].GOODS_NAME' value='${upOtmProcurementDetails?.GOODS_NAME}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upOtmProcurementDetails[${i}].GOODS_DETAILS' value='${upOtmProcurementDetails?.GOODS_DETAILS}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upOtmProcurementDetails[${i}].RATE' value='${upOtmProcurementDetails?.RATE}' class='detail-number form-control'/></td>
<td><g:textField size="13px" name='upOtmProcurementDetails[${i}].AMOUNT' value='${upOtmProcurementDetails?.AMOUNT}' onblur="setTotalAmount(this.id)" class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upOtmProcurementDetails[${i}].TOTAL_PRICE' value='${upOtmProcurementDetails?.TOTAL_PRICE}' class='detail-txt form-control' readonly=""/></td>

    %{--<td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>--}%
    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>
</tr>