<%--
  Created by IntelliJ IDEA.
  User: mahye
  Date: 9/17/14
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='comityDtl[${i}].id' value='${comityDtl?.id}'/>
    <g:hiddenField name='comityDtl[${i}].deleted' value='false'/>
    <g:hiddenField name='comityDtl[${i}].new' value="${comityDtl?.id == null ? 'true' : 'false'}"/>
            <td style="padding-right: 10px;">
                <g:select class="std form-control" id='comityDtl[${i}].STAKEHOLDER_ID'
                          name='comityDtl[${i}].STAKEHOLDER_ID'
                          from="${fixedAsset.STAKEHOLDER.executeQuery("from STAKEHOLDER")}" optionKey="id"
                          value="${comityDtl?.STAKEHOLDER_ID?.id}" noSelection="['': '--Select StakeHolder--']"/>
            </td>
            <td style="padding-right: 10px;">
                <g:textField class="form-control" id='comityDtl[${i}].REMARKS' name='comityDtl[${i}].REMARKS'
                             value="${comityDtl?.REMARKS}"/>
            </td>
    <td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img
            src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span>
    </td>

</tr>
