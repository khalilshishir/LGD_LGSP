<%@ page import="settings.SchemeInfo" %>

<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upDirectProcDetails[${i}].id' value='${upDirectProcDetails?.id}'/>
        <g:hiddenField name='upDirectProcDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upDirectProcDetails[${i}].new' value="${upDirectProcDetails?.id == null?'true':'false'}"/>

<td><g:textField size="13px" name='upDirectProcDetails[${i}].GOODS_ID' value='${upDirectProcDetails?.GOODS_ID}' class='detail-txt form-control'/></td>
    %{--<td><g:select  class="form-control"   name='upDirectProcDetails[${i}].GOODS_NAME' from="${SchemeInfo.list()}" optionKey="NAME"  optionValue="NAME" noSelection="['':'--']"/></td>--}%
<td><g:textField size="13px" name='upDirectProcDetails[${i}].GOODS_NAME' value='${upDirectProcDetails?.GOODS_NAME}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upDirectProcDetails[${i}].GOODS_DETAILS' value='${upDirectProcDetails?.GOODS_DETAILS}' class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upDirectProcDetails[${i}].RATE' value='${upDirectProcDetails?.RATE}' class='detail-number form-control'/></td>
<td><g:textField size="13px" name='upDirectProcDetails[${i}].AMOUNT' value='${upDirectProcDetails?.AMOUNT}' onblur="setTotalAmount(this.id)" class='detail-txt form-control'/></td>
<td><g:textField size="13px" name='upDirectProcDetails[${i}].TOTAL_PRICE' value='${upDirectProcDetails?.TOTAL_PRICE}' class='detail-txt form-control' readonly=""/></td>

    %{--<td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>--}%
    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>
</tr>