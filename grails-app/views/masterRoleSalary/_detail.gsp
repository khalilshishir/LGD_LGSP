
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='masterRoleSalaryDetails[${i}].id' value='${masterRoleSalaryDetails?.id}'/>
        <g:hiddenField name='masterRoleSalaryDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='masterRoleSalaryDetails[${i}].new' value="${masterRoleSalaryDetails?.id == null?'true':'false'}"/>
<td><g:textField size="20px" name='masterRoleSalaryDetails[${i}].LABOUR_NAME' value='${masterRoleSalaryDetails?.LABOUR_NAME}' class='detail-txt form-control'/></td>
<td><g:textField size="20px" name='masterRoleSalaryDetails[${i}].LABOUR_ADDRESS' value='${masterRoleSalaryDetails?.LABOUR_ADDRESS}' class='detail-txt form-control'/></td>
<td><g:textField size="20px" name='masterRoleSalaryDetails[${i}].SALARY' value='${masterRoleSalaryDetails?.SALARY}' class='detail-txt form-control'/></td>
<td><g:textField size="20px" name='masterRoleSalaryDetails[${i}].WORK_DAY' value='${masterRoleSalaryDetails?.WORK_DAY}' onblur="setTotalAmount(this.id)" class='detail-number form-control'/></td>
<td><g:textField size="20px" name='masterRoleSalaryDetails[${i}].TOTAL_AMOUNT' value='${masterRoleSalaryDetails?.TOTAL_AMOUNT}' class='detail-number form-control' readonly=""/></td>
<td><g:textField size="20px" name='masterRoleSalaryDetails[${i}].COMMENTS' value='${masterRoleSalaryDetails?.COMMENTS}' class='detail-txt form-control'/></td>


<td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>

</tr>