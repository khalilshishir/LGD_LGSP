<%@ page import="hrms.HrLookup" %>
<g:if test="${hrLookup?.lookupValue == null }">
</g:if>
<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <td>
        <g:hiddenField name='hrlookups[${i}].id' value='${hrLookup?.id}'/>
        <g:hiddenField name='hrlookups[${i}].deleted' value='false'/>
        <g:hiddenField name='hrlookups[${i}].new' value="${hrLookup?.id == null?'true':'false'}"/>
        <g:textField name='hrlookups[${i}].lookupValue' value='${hrLookup?.lookupValue}' style='width: 99%;height: 100%;' class='form-control'/>
    </td>
    %{--<td><g:checkBox name='hrlookups[${i}].isActive' value='${hrLookup?.isActive}'/></td>--}%
    <td><g:select name='hrlookups[${i}].isActive' id='${i}isActive' from="${['No','Yes']}" keys='${[false,true]}' value='${hrLookup?.isActive}' style='width: 99%;' class='form-control'/></td>

    <td><span class='delButton' id='delButton${i}' name='hrlookups[${i}].delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

</tr>