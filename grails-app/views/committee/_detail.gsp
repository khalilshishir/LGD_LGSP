
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <td><g:hiddenField name='committeeMember[${i}].id' value='${committeeMember?.id}'/>
        <g:hiddenField name='committeeMember[${i}].deleted' value='false'/>
        <g:hiddenField name='committeeMember[${i}].new' value="${committeeMember?.id == null?'true':'false'}"/>
<td><g:textField name='committeeMember[${i}].MEMBER_NAME' value='${committeeMember?.MEMBER_NAME}' class='detail-txt'/></td>
<td><g:select name='committeeMember[${i}].MEMBER_DESIGNATION' from="${settings.MemberDesignation.list()}" optionKey="id" optionValue="NAME" value='${committeeMember?.MEMBER_DESIGNATION?.id}' style="width: 100px;"/></td>
%{--<td><g:select  class="form-control"   name='upDirectProcurementDetails[${i}].GOODS_NAME' from="${SchemeInfo.list()}" optionKey="NAME"  optionValue="NAME" noSelection="['':'--']"/></td>--}%
%{--<td><g:textField name='committeeMember[${i}].MEMBER_DESIGNATION' value='${committeeMember?.MEMBER_DESIGNATION}' class='detail-txt' style="width: 80px;"/></td>--}%
<td><g:textField name='committeeMember[${i}].MEMBER_ADDRESS' value='${committeeMember?.MEMBER_ADDRESS}' class='detail-txt'/></td>
<td><g:textField name='committeeMember[${i}].MOBILE_NO' value='${committeeMember?.MOBILE_NO}' class='detail-txt' style="width: 120px;"/></td>
<td><g:textField name='committeeMember[${i}].EMAIL_ADDRESS' value='${committeeMember?.EMAIL_ADDRESS}' class='detail-number'/></td>
<td><g:textField name='committeeMember[${i}].NATIONAL_ID_CARD_NO' value='${committeeMember?.NATIONAL_ID_CARD_NO}' class='detail-number'/></td>


    <td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img
            src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>

</tr>