
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
        <g:hiddenField name='labourAppoinmentInfoDetails[${i}].id' value='${labourAppoinmentInfoDetails?.id}'/>
        <g:hiddenField name='labourAppoinmentInfoDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='labourAppoinmentInfoDetails[${i}].new' value="${labourAppoinmentInfoDetails?.id == null?'true':'false'}"/>
<td><g:textField size="9px" name='labourAppoinmentInfoDetails[${i}].WORK_DETAILS' value='${labourAppoinmentInfoDetails?.WORK_DETAILS}' class='detail-txt form-control'/></td>
<td><g:textField size="9px" name='labourAppoinmentInfoDetails[${i}].WORK_RATE' value='${labourAppoinmentInfoDetails?.WORK_RATE}' class='detail-txt form-control'/></td>
<td><g:textField size="9px" name='labourAppoinmentInfoDetails[${i}].WORK_AMOUNT' value='${labourAppoinmentInfoDetails?.WORK_AMOUNT}' class='detail-txt form-control'/></td>
<td><g:textField size="9px" name='labourAppoinmentInfoDetails[${i}].LABOUR_AMOUNT' value='${labourAppoinmentInfoDetails?.LABOUR_AMOUNT}' class='detail-txt form-control'/></td>
<td><g:textField size="9px" name='labourAppoinmentInfoDetails[${i}].PER_WORK_DAY_RATE' value='${labourAppoinmentInfoDetails?.PER_WORK_DAY_RATE}' onblur="setTotalAmount(this.id)" class='detail-number form-control'/></td>
<td><g:textField size="9px" name='labourAppoinmentInfoDetails[${i}].WORK_DAY_TOTAL_AMOUNT' value='${labourAppoinmentInfoDetails?.WORK_DAY_TOTAL_AMOUNT}' readonly="" class='detail-number form-control'/></td>
<td><g:textField size="9px" name='labourAppoinmentInfoDetails[${i}].COMMENTS' value='${labourAppoinmentInfoDetails?.COMMENTS}' class='detail-txt form-control'/></td>


    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>

</tr>