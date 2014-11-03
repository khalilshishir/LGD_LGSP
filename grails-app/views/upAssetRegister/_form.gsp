<%@ page import="up_asset.UpAssetRegister" %>
 <div class="row">
     <div class="col-xs-6" style="padding-left: 10px">
         <div class="form-group">
             <label for="ASSET_TYPE">
                 <g:message code="upAssetRegister.ASSET_TYPE.label" default="ASSETTYPE" />
             </label>
             <g:select class="form-control" id="ASSET_TYPE" name="ASSET_TYPE.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${upAssetRegisterInstance?.ASSET_TYPE?.id}" class="form-control" noSelection="['null': 'Select']"/>
         </div>
     </div>

     <div class="col-xs-6">
         <div class="form-group">
             <label for="ASSET_NAME">
                 <g:message code="upAssetRegister.ASSET_NAME.label" default="ASSETNAME" />
             </label>
             <g:textField class="form-control" name="ASSET_NAME" value="${upAssetRegisterInstance?.ASSET_NAME}"/>
         </div>
     </div>
 </div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
    <div class="form-group">
        <label for="PURCHASE_DATE">
            <g:message code="upAssetRegister.PURCHASE_DATE.label" default="PURCHASEDATE" />
        </label>
        %{--<g:datePicker  name="PURCHASE_DATE" precision="day"  value="${upAssetRegisterInstance?.PURCHASE_DATE}" default="none" noSelection="['': '']" />--}%
        <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:upAssetRegisterInstance?.PURCHASE_DATE)}" data-close="true" data-name="PURCHASE_DATE"></div>
    </div>
    </div>
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="PURCHASE_AMOUNT">
                <g:message code="upAssetRegister.PURCHASE_AMOUNT.label" default="PURCHASEAMOUNT" />
            </label>
            <g:field class="form-control" name="PURCHASE_AMOUNT" value="${fieldValue(bean: upAssetRegisterInstance, field: 'PURCHASE_AMOUNT')}"/>
        </div>
    </div>
</div>


%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'ASSET_TYPE', 'error')} ">--}%
	%{--<label for="ASSET_TYPE">--}%
		%{--<g:message code="upAssetRegister.ASSET_TYPE.label" default="ASSETTYPE" />--}%
	%{--</label>--}%
	%{--<g:select id="ASSET_TYPE" name="ASSET_TYPE.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${upAssetRegisterInstance?.ASSET_TYPE?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'ASSET_NAME', 'error')} ">--}%
	%{--<label for="ASSET_NAME">--}%
		%{--<g:message code="upAssetRegister.ASSET_NAME.label" default="ASSETNAME" />--}%
	%{--</label>--}%
	%{--<g:textField name="ASSET_NAME" value="${upAssetRegisterInstance?.ASSET_NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'PURCHASE_DATE', 'error')} ">--}%
	%{--<label for="PURCHASE_DATE">--}%
		%{--<g:message code="upAssetRegister.PURCHASE_DATE.label" default="PURCHASEDATE" />--}%
	%{--</label>--}%
	%{--<g:datePicker name="PURCHASE_DATE" precision="day"  value="${upAssetRegisterInstance?.PURCHASE_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'PURCHASE_AMOUNT', 'error')} ">--}%
	%{--<label for="PURCHASE_AMOUNT">--}%
		%{--<g:message code="upAssetRegister.PURCHASE_AMOUNT.label" default="PURCHASEAMOUNT" />--}%
	%{--</label>--}%
	%{--<g:field name="PURCHASE_AMOUNT" value="${fieldValue(bean: upAssetRegisterInstance, field: 'PURCHASE_AMOUNT')}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'CREATED_BY', 'error')} required">--}%
	%{--<label for="CREATED_BY">--}%
		%{--<g:message code="upAssetRegister.CREATED_BY.label" default="CREATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="CREATED_BY" type="number" value="${upAssetRegisterInstance.CREATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'CREATED_DATE', 'error')} ">--}%
	%{--<label for="CREATED_DATE">--}%
		%{--<g:message code="upAssetRegister.CREATED_DATE.label" default="CREATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="CREATED_DATE" precision="day"  value="${upAssetRegisterInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'UPDATED_BY', 'error')} required">--}%
	%{--<label for="UPDATED_BY">--}%
		%{--<g:message code="upAssetRegister.UPDATED_BY.label" default="UPDATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="UPDATED_BY" type="number" value="${upAssetRegisterInstance.UPDATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: upAssetRegisterInstance, field: 'UPDATED_DATE', 'error')} ">--}%
	%{--<label for="UPDATED_DATE">--}%
		%{--<g:message code="upAssetRegister.UPDATED_DATE.label" default="UPDATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="UPDATED_DATE" precision="day"  value="${upAssetRegisterInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

