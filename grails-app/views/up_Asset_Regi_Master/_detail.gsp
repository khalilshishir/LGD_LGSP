%{--<%@ page import="settings.SchemeInfo" %>--}%
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script type="text/javascript">
    $(function() {
        $( "#datepicker" ).datepicker();
    });
</script>


<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='upAssetRegiDetails[${i}].id' value='${upAssetRegiDetails?.id}'/>
        <g:hiddenField name='upAssetRegiDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='upAssetRegiDetails[${i}].new' value="${upAssetRegiDetails?.id == null?'true':'false'}"/>

    %{--<g:select optionValue="ASSET_TYPE" id="UP_ASSET_REGISTER" name="UP_ASSET_REGISTER.id" from="${UpAssetRegister.list()}" optionKey="id" value="${up_Asset_Regi_MasterInstance?.UP_ASSET_REGISTER?.id}" class="form-control" noSelection="['null': 'Select']"/>--}%
%{--<td><g:select id="UP_ASSET_REGISTER" class="form-control "   name="upAssetRegiDetails[${i}].UP_ASSET_REGISTER"  from="${up_asset.UpAssetRegister.list()}" optionKey="id" value="${upAssetRegiDetails?.UP_ASSET_REGISTER?.id}"  optionValue="ASSET_NAME"--}%
              %{--noSelection="['':'Select']"/></td>--}%

 %{--//   demo--}%
 %{--<g:select name="instituteWiseCoursePermissions[${i}].sectorIdSector" from="${com.Sector.list()}" noSelection="['': '--Select--']" --}%
           %{--optionKey="id" optionValue="name" value="${instituteWiseCoursePermission?.sectorIdSector?.id}" class="span-7" />--}%

    %{--<g:select id="UP"  class="form-control"  name="UP.id" from="${settings.UnionParishad.list()}" optionKey="id" value="${fixedAssetInstance?.UP?.id}"  noSelection="['null': '']" required=""/>--}%
<td><g:select id="ASSET_NAME" name='ASSET_NAME.id' from="${up_asset.UpAssetRegister.list()}" noSelection= "['': '--Select--']" optionKey="id" optionValue="ASSET_NAME" value="${upAssetRegiDetails?.ASSET_NAME?.id}" class="form-control" /></td>
 %{--<td><g:select name='budgetMasterDetails[${i}].BUDGET_ITEM_ID' from="${training.BudgetItem.list()}" optionKey="id" optionValue="BUDGET_ITEM_NAME" value='${budgetMasterDetails?.BUDGET_ITEM?.id}' style="width: 100px;"/></td>--}%



          %{--<td><g:select id="UP_ASSET_REGISTER" class="form-control "   name="UP_ASSET_REGISTER.id"  from="${up_asset.UpAssetRegister.list()}" optionKey="id" value="${upAssetRegiDetails?.UP_ASSET_REGISTER?.id}"  optionValue="ASSET_NAME" noSelection="['':'Select']"/></td>--}%
<td><g:textField  name='upAssetRegiDetails[${i}].QUANTITY' value='${upAssetRegiDetails?.QUANTITY}' class='detail-txt form-control'/></td>

<td><g:textField  name='upAssetRegiDetails[${i}].UNITS' value='${upAssetRegiDetails?.UNITS}' class='detail-txt form-control'/></td>
<td><g:textField  name='upAssetRegiDetails[${i}].SOURCE_OF_FUND' value='${upAssetRegiDetails?.SOURCE_OF_FUND}' class='detail-txt form-control'/></td>
%{--<td><g:datePicker size="13px" name='upAssetRegiDetails[${i}].LAST_MAINTENANCE_DATE' value='${upAssetRegiDetails?.LAST_MAINTENANCE_DATE}'  /></td>--}%
%{--<td><div class="bfn-datepicker" data-date="${formatDate(format: 'MM/dd/yyyy',date: upAssetRegiDetails?.LAST_MAINTENANCE_DATE)}" data-close="true" data-name="LAST_MAINTENANCE_DATE" ></div></td>--}%
    <td><g:textField  size="13px"  name="upAssetRegiDetails[${i}].LAST_MAINTENANCE_DATE" value="${formatDate(format:'dd/MM/yyyy',date:upAssetRegiDetails?.LAST_MAINTENANCE_DATE)}"  class='datepicker form-control'/></td>
 %{--<td><div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:upAssetRegiDetails?.LAST_MAINTENANCE_DATE)}" data-close="true" data-name="LAST_MAINTENANCE_DATE" ></div></td>--}%
%{--<td><g:field type="date"   name="upAssetRegiDetails[${i}].LAST_MAINTENANCE_DATE" value='${upAssetRegiDetails?.LAST_MAINTENANCE_DATE}'  default="none"/> </td>--}%
<td><g:textField  name='upAssetRegiDetails[${i}].EXPENSES_AMOUNT' value='${upAssetRegiDetails?.EXPENSES_AMOUNT}'  class='detail-txt form-control'/></td>
<td><g:textField  name='upAssetRegiDetails[${i}].MAINTENANCE_EXPENSES_FUND_SRC' value='${upAssetRegiDetails?.MAINTENANCE_EXPENSES_FUND_SRC}' class='detail-txt form-control' /></td>
%{--<td><g:field   type="date" name="upAssetRegiDetails[${i}].NEXT_MAINTENANCE_DATE"   value='${upAssetRegiDetails?.NEXT_MAINTENANCE_DATE}' default="none" id="datepicker" /></td>--}%
%{--<td><div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:upAssetRegiDetails?.NEXT_MAINTENANCE_DATE)}" data-close="true" data-name="NEXT_MAINTENANCE_DATE" ></div></td>--}%
 %{--<td><g:textField name="upAssetRegiDetails[${i}].NEXT_MAINTENANCE_DATE" class="datepicker"  /></td>--}%
    <td><g:textField  size="13px"  name="upAssetRegiDetails[${i}].NEXT_MAINTENANCE_DATE" value="${formatDate(format:'dd/MM/yyyy',date:upAssetRegiDetails?.NEXT_MAINTENANCE_DATE)}"  class='datepicker form-control'/></td>

%{--<td><g:textField size="13px" name='upAssetRegiDetails[${i}].NEXT_MAINTENANCE_DATE' value='${upAssetRegiDetails?.NEXT_MAINTENANCE_DATE}' class='detail-txt form-control' /></td>--}%
<td><g:textField  name='upAssetRegiDetails[${i}].COMMENTS' value='${upAssetRegiDetails?.COMMENTS}' class='detail-txt form-control' /></td>

    %{--<td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>--}%
    <td><span style="font-size: 20px;color: #ff0000"  class='glyphicon glyphicon-trash delButton' id='delButton${i}' name='results[${i}].delButton'/></td>
</tr>



%{--<g:select id="UP"  class="form-control" optionValue="UP_NAME" name="UP.id" from="${settings.UnionParishad.list()}" optionKey="id" value="${fixedAssetInstance?.UP?.id}"  noSelection="['null': 'Select']" required=""/>--}%