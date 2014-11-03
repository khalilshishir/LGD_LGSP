<%@ page import="fixedAsset.ASSET_BOOK" %>



%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_NAME', 'error')} ">--}%
	%{--<label for="ASSET_NAME">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_NAME.label" default="ASSETNAME" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="ASSET_NAME" value="${ASSET_BOOKInstance?.ASSET_NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_DESCRIPTION', 'error')} ">--}%
	%{--<label for="ASSET_DESCRIPTION">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_DESCRIPTION.label" default="ASSETDESCRIPTION" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="ASSET_DESCRIPTION" value="${ASSET_BOOKInstance?.ASSET_DESCRIPTION}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_LIFE_CYCLE', 'error')} ">--}%
	%{--<label for="ASSET_LIFE_CYCLE">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_LIFE_CYCLE.label" default="ASSETLIFECYCLE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="ASSET_LIFE_CYCLE" value="${ASSET_BOOKInstance?.ASSET_LIFE_CYCLE}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_NUMBER', 'error')} ">--}%
	%{--<label for="ASSET_NUMBER">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_NUMBER.label" default="ASSETNUMBER" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="ASSET_NUMBER" type="number" value="${ASSET_BOOKInstance.ASSET_NUMBER}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_RECEIVE_ID', 'error')} ">--}%
	%{--<label for="ASSET_RECEIVE_ID">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_RECEIVE_ID.label" default="ASSETRECEIVEID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="ASSET_RECEIVE_ID" type="number" value="${ASSET_BOOKInstance.ASSET_RECEIVE_ID}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_STATUS', 'error')} ">--}%
	%{--<label for="ASSET_STATUS">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_STATUS.label" default="ASSETSTATUS" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select id="ASSET_STATUS" name="ASSET_STATUS.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_STATUS?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
    %{--<g:select id="ASSET_STATUS" name="ASSET_STATUS.id"--}%
              %{--from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('ASSET_STATUS'))}"--}%
              %{--optionKey="id" value="${ASSET_BOOKInstance?.ASSET_STATUS?.id}" class="form-control"--}%
              %{--noSelection="['': '-Select-']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSURANCE_TYPE', 'error')} ">--}%
	%{--<label for="ASSURANCE_TYPE">--}%
		%{--<g:message code="ASSET_BOOK.ASSURANCE_TYPE.label" default="ASSURANCETYPE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="ASSURANCE_TYPE" value="${ASSET_BOOKInstance?.ASSURANCE_TYPE}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'BRAND_NAME', 'error')} ">--}%
	%{--<label for="BRAND_NAME">--}%
		%{--<g:message code="ASSET_BOOK.BRAND_NAME.label" default="BRANDNAME" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="BRAND_NAME" value="${ASSET_BOOKInstance?.BRAND_NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'COST_CENTER', 'error')} ">--}%
	%{--<label for="COST_CENTER">--}%
		%{--<g:message code="ASSET_BOOK.COST_CENTER.label" default="COSTCENTER" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="COST_CENTER" type="number" value="${ASSET_BOOKInstance.COST_CENTER}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'GRN_ID', 'error')} ">--}%
	%{--<label for="GRN_ID">--}%
		%{--<g:message code="ASSET_BOOK.GRN_ID.label" default="GRNID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="GRN_ID" type="number" value="${ASSET_BOOKInstance.GRN_ID}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ITEM_ID', 'error')} ">--}%
	%{--<label for="ITEM_ID">--}%
		%{--<g:message code="ASSET_BOOK.ITEM_ID.label" default="ITEMID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="ITEM_ID" type="number" value="${ASSET_BOOKInstance.ITEM_ID}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'SUPPLIER_ID', 'error')} ">--}%
	%{--<label for="SUPPLIER_ID">--}%
		%{--<g:message code="ASSET_BOOK.SUPPLIER_ID.label" default="SUPPLIERID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="SUPPLIER_ID" type="number" value="${ASSET_BOOKInstance.SUPPLIER_ID}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'LOCATION_ID', 'error')} ">--}%
	%{--<label for="LOCATION_ID">--}%
		%{--<g:message code="ASSET_BOOK.LOCATION_ID.label" default="LOCATIONID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select id="LOCATION_ID" name="LOCATION_ID.id" from="${fixedAsset.LOCATION.list()}" optionKey="id" value="${ASSET_BOOKInstance?.LOCATION_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'MODEL_NAME', 'error')} ">--}%
	%{--<label for="MODEL_NAME">--}%
		%{--<g:message code="ASSET_BOOK.MODEL_NAME.label" default="MODELNAME" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="MODEL_NAME" value="${ASSET_BOOKInstance?.MODEL_NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'OPENING_BALANCE', 'error')} ">--}%
	%{--<label for="OPENING_BALANCE">--}%
		%{--<g:message code="ASSET_BOOK.OPENING_BALANCE.label" default="OPENINGBALANCE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="OPENING_BALANCE" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'OPENING_BALANCE')}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ORGINAL_COST', 'error')} ">--}%
	%{--<label for="ORGINAL_COST">--}%
		%{--<g:message code="ASSET_BOOK.ORGINAL_COST.label" default="ORGINALCOST" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="ORGINAL_COST" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'ORGINAL_COST')}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'QTY', 'error')} ">--}%
	%{--<label for="QTY">--}%
		%{--<g:message code="ASSET_BOOK.QTY.label" default="QTY" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="QTY" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'QTY')}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'UOM_ID', 'error')} ">--}%
	%{--<label for="UOM_ID">--}%
		%{--<g:message code="ASSET_BOOK.UOM_ID.label" default="UOMID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select id="UOM_ID" name="UOM_ID.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${ASSET_BOOKInstance?.UOM_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
    %{--<g:select id="UOM_ID" name="UOM_ID.id"--}%
              %{--from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('UOM'))}"--}%
              %{--optionKey="id" value="${ASSET_BOOKInstance?.UOM_ID?.id}" class="form-control"--}%
              %{--noSelection="['': '-Select-']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'RECEIVE_DATE', 'error')} ">--}%
	%{--<label for="RECEIVE_DATE">--}%
		%{--<g:message code="ASSET_BOOK.RECEIVE_DATE.label" default="RECEIVEDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="RECEIVE_DATE" precision="day"  value="${ASSET_BOOKInstance?.RECEIVE_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_USER', 'error')} ">--}%
	%{--<label for="ASSET_USER">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_USER.label" default="ASSETUSER" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="ASSET_USER" type="number" value="${ASSET_BOOKInstance.ASSET_USER}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'WARRANTY_MONTH', 'error')} ">--}%
	%{--<label for="WARRANTY_MONTH">--}%
		%{--<g:message code="ASSET_BOOK.WARRANTY_MONTH.label" default="WARRANTYMONTH" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="WARRANTY_MONTH" type="number" value="${ASSET_BOOKInstance.WARRANTY_MONTH}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'WARRANTY_START_DATE', 'error')} ">--}%
	%{--<label for="WARRANTY_START_DATE">--}%
		%{--<g:message code="ASSET_BOOK.WARRANTY_START_DATE.label" default="WARRANTYSTARTDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="WARRANTY_START_DATE" precision="day"  value="${ASSET_BOOKInstance?.WARRANTY_START_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'WARRANTY_YEAR', 'error')} ">--}%
	%{--<label for="WARRANTY_YEAR">--}%
		%{--<g:message code="ASSET_BOOK.WARRANTY_YEAR.label" default="WARRANTYYEAR" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:field name="WARRANTY_YEAR" type="number" value="${ASSET_BOOKInstance.WARRANTY_YEAR}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'WARRANTY_PERIOD', 'error')} ">--}%
	%{--<label for="WARRANTY_PERIOD">--}%
		%{--<g:message code="ASSET_BOOK.WARRANTY_PERIOD.label" default="WARRANTYPERIOD" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="WARRANTY_PERIOD" precision="day"  value="${ASSET_BOOKInstance?.WARRANTY_PERIOD}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%



%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'VOUCHER_NO', 'error')} ">--}%
	%{--<label for="VOUCHER_NO">--}%
		%{--<g:message code="ASSET_BOOK.VOUCHER_NO.label" default="VOUCHERNO" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="VOUCHER_NO" value="${ASSET_BOOKInstance?.VOUCHER_NO}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_MAJOR_CATEGORY_ID', 'error')} ">--}%
	%{--<label for="ASSET_MAJOR_CATEGORY_ID">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_MAJOR_CATEGORY_ID.label" default="ASSETMAJORCATEGORYID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select id="ASSET_MAJOR_CATEGORY_ID" name="ASSET_MAJOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MAJOR_CATEGORY.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_MAJOR_CATEGORY_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ASSET_MINOR_CATEGORY_ID', 'error')} ">--}%
	%{--<label for="ASSET_MINOR_CATEGORY_ID">--}%
		%{--<g:message code="ASSET_BOOK.ASSET_MINOR_CATEGORY_ID.label" default="ASSETMINORCATEGORYID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select id="ASSET_MINOR_CATEGORY_ID" name="ASSET_MINOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MINOR_CATEGORY.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%


%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'IS_ACTIVE', 'error')} ">--}%
    %{--<label for="IS_ACTIVE">--}%
        %{--<g:message code="ASSET_BOOK.IS_ACTIVE.label" default="ISACTIVE" />--}%

    %{--</label>--}%
    %{--<g:checkBox name="IS_ACTIVE" value="${ASSET_BOOKInstance?.IS_ACTIVE}" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'CREATED_BY', 'error')} ">
	<label for="CREATED_BY">
		<g:message code="ASSET_BOOK.CREATED_BY.label" default="CREATEDBY" />
		
	</label>
	<g:field name="CREATED_BY" type="number" value="${ASSET_BOOKInstance.CREATED_BY}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="ASSET_BOOK.CREATED_DATE.label" default="CREATEDDATE" />
		
	</label>
    <g:datePicker name="CREATED_DATE" precision="day"  value="${ASSET_BOOKInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />

</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_BOOKInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="ASSET_BOOK.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${ASSET_BOOKInstance.ID}" required=""/>
</div>--}%


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="ASSET_NAME">
                    <g:message code="ASSET_BOOK.ASSET_NAME.label" default="Name" />

                </label>
                <g:textField required="" class="form-control" name="ASSET_NAME" value="${ASSET_BOOKInstance?.ASSET_NAME}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="ASSET_DESCRIPTION">
                    <g:message code="ASSET_BOOK.ASSET_DESCRIPTION.label" default="Description " />

                </label>
                <g:textField class="form-control" name="ASSET_DESCRIPTION" value="${ASSET_BOOKInstance?.ASSET_DESCRIPTION}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="ASSET_LIFE_CYCLE">
                    <g:message code="ASSET_BOOK.ASSET_LIFE_CYCLE.label" default="Life Cycle" />

                </label>
                <g:textField required="" class="form-control" name="ASSET_LIFE_CYCLE" value="${ASSET_BOOKInstance?.ASSET_LIFE_CYCLE}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="ASSET_NUMBER">
                    <g:message code="ASSET_BOOK.ASSET_NUMBER.label" default="Number" />

                </label>
                <g:field required="" class="form-control" name="ASSET_NUMBER"  value="${ASSET_BOOKInstance.ASSET_NUMBER}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="ASSET_RECEIVE_ID">
                    <g:message code="ASSET_BOOK.ASSET_RECEIVE_ID.label" default="Receive Id" />

                </label>
                <g:field class="form-control" name="ASSET_RECEIVE_ID"  value="${ASSET_BOOKInstance.ASSET_RECEIVE_ID}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="ASSET_STATUS">
                    <g:message code="ASSET_BOOK.ASSET_STATUS.label" default="Status" />

                </label>
                %{--<g:select id="ASSET_STATUS" name="ASSET_STATUS.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_STATUS?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
                <g:select required="" id="ASSET_STATUS" name="ASSET_STATUS.id"
                          from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('ASSET_STATUS'))}"
                          optionKey="id" value="${ASSET_BOOKInstance?.ASSET_STATUS?.id}" class="form-control"
                          noSelection="['': '-Select-']"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="ASSURANCE_TYPE">
                    <g:message code="ASSET_BOOK.ASSURANCE_TYPE.label" default="Assurance Type" />

                </label>
                <g:textField required="" class="form-control" name="ASSURANCE_TYPE" value="${ASSET_BOOKInstance?.ASSURANCE_TYPE}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="BRAND_NAME">
                    <g:message code="ASSET_BOOK.BRAND_NAME.label" default="Brand Name" />

                </label>
                <g:textField class="form-control" name="BRAND_NAME" value="${ASSET_BOOKInstance?.BRAND_NAME}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="COST_CENTER">
                    <g:message code="ASSET_BOOK.COST_CENTER.label" default="Cost Center" />

                </label>
                <g:field class="form-control" name="COST_CENTER"  value="${ASSET_BOOKInstance.COST_CENTER}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="GRN_ID">
                    <g:message code="ASSET_BOOK.GRN_ID.label" default="GRN " />

                </label>
                <g:field class="form-control" name="GRN_ID"  value="${ASSET_BOOKInstance.GRN_ID}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="ITEM_ID">
                    <g:message code="ASSET_BOOK.ITEM_ID.label" default="Item " />

                </label>
                <g:field required="" class="form-control" name="ITEM_ID"  value="${ASSET_BOOKInstance.ITEM_ID}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="SUPPLIER_ID">
                    <g:message code="ASSET_BOOK.SUPPLIER_ID.label" default="Supplier" />

                </label>
                <g:field class="form-control" name="SUPPLIER_ID"  value="${ASSET_BOOKInstance.SUPPLIER_ID}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="LOCATION_ID">
                    <g:message code="ASSET_BOOK.LOCATION_ID.label" default="Location" />

                </label>
                <g:select required="" id="LOCATION_ID" name="LOCATION_ID.id" from="${fixedAsset.LOCATION.list()}" optionKey="id" value="${ASSET_BOOKInstance?.LOCATION_ID?.id}" class="form-control" noSelection="['': '--Select--']"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="MODEL_NAME">
                    <g:message code="ASSET_BOOK.MODEL_NAME.label" default="Model Name" />

                </label>
                <g:textField class="form-control" name="MODEL_NAME" value="${ASSET_BOOKInstance?.MODEL_NAME}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="OPENING_BALANCE">
                    <g:message code="ASSET_BOOK.OPENING_BALANCE.label" default="Opening Balance" />

                </label>
                <g:field class="form-control" name="OPENING_BALANCE" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'OPENING_BALANCE')}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="ORGINAL_COST">
                    <g:message code="ASSET_BOOK.ORGINAL_COST.label" default="Orginal Cost" />

                </label>
                <g:field class="form-control" name="ORGINAL_COST" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'ORGINAL_COST')}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="QTY">
                    <g:message code="ASSET_BOOK.QTY.label" default="QTY" />

                </label>
                <g:field required="" class="form-control" name="QTY" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'QTY')}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="UOM_ID">
                    <g:message code="ASSET_BOOK.UOM_ID.label" default="UOM" />

                </label>
                %{--<g:select id="UOM_ID" name="UOM_ID.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${ASSET_BOOKInstance?.UOM_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
                <g:select required="" id="UOM_ID" name="UOM_ID.id"
                          from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('UOM'))}"
                          optionKey="id" value="${ASSET_BOOKInstance?.UOM_ID?.id}" class="form-control"
                          noSelection="['': '-Select-']"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="RECEIVE_DATE">
                    <g:message code="ASSET_BOOK.RECEIVE_DATE.label" default="Receive Date" />

                </label>
                <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.RECEIVE_DATE)}" data-close="true" data-name="RECEIVE_DATE"></div>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="ASSET_USER">
                    <g:message code="ASSET_BOOK.ASSET_USER.label" default="Asset User" />

                </label>
                <g:field class="form-control" name="ASSET_USER"  value="${ASSET_BOOKInstance.ASSET_USER}"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="WARRANTY_MONTH">
                    <g:message code="ASSET_BOOK.WARRANTY_MONTH.label" default="Warranty Month" />

                </label>
                <g:field class="form-control" name="WARRANTY_MONTH"  value="${ASSET_BOOKInstance.WARRANTY_MONTH}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="WARRANTY_START_DATE">
                    <g:message code="ASSET_BOOK.WARRANTY_START_DATE.label" default="Warranty Start Date" />

                </label>
                <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.WARRANTY_START_DATE)}" data-close="true" data-name="WARRANTY_START_DATE"></div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="WARRANTY_YEAR">
                    <g:message code="ASSET_BOOK.WARRANTY_YEAR.label" default="Warranty Year" />

                </label>
                <g:field class="form-control" name="WARRANTY_YEAR"  value="${ASSET_BOOKInstance.WARRANTY_YEAR}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="WARRANTY_PERIOD">
                    <g:message code="ASSET_BOOK.WARRANTY_PERIOD.label" default="Warranty Period" />

                </label>
                <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.WARRANTY_PERIOD)}" data-close="true" data-name="WARRANTY_PERIOD"></div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="VOUCHER_NO">
                    <g:message code="ASSET_BOOK.VOUCHER_NO.label" default="Voucher No" />

                </label>
                <g:textField class="form-control" name="VOUCHER_NO" value="${ASSET_BOOKInstance?.VOUCHER_NO}"/>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="ASSET_MAJOR_CATEGORY_ID">
                    <g:message code="ASSET_BOOK.ASSET_MAJOR_CATEGORY_ID.label" default="Major Asset Category Name" />

                </label>
                <g:select id="ASSET_MAJOR_CATEGORY_ID" name="ASSET_MAJOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MAJOR_CATEGORY.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_MAJOR_CATEGORY_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="ASSET_MINOR_CATEGORY_ID">
                    <g:message code="ASSET_BOOK.ASSET_MINOR_CATEGORY_ID.label" default="Minor Asset Category Name" />

                </label>
<g:if test="${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.id}">

                <g:select id="ASSET_MINOR_CATEGORY_ID" name="ASSET_MINOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MINOR_CATEGORY.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
</g:if>
                <g:else>
                    <g:select id="ASSET_MINOR_CATEGORY_ID" name="ASSET_MINOR_CATEGORY_ID.id" from="" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>

                </g:else>
            </div>
        </div>


        <div class="col-xs-6">
            <div class="form-group">
                <label for="IS_ACTIVE">
                    <g:message code="ASSET_BOOK.IS_ACTIVE.label" default="Active" />

                </label>
                <g:checkBox name="IS_ACTIVE" value="${ASSET_BOOKInstance?.IS_ACTIVE}" />
            </div>
        </div>
    </div>

<script type="text/javascript">
    $("#ASSET_MAJOR_CATEGORY_ID").change(function(){
        /*var division_id = $(this).val();*/
        var mejor_id = 0;
        if ($(this).val() != '') {
            mejor_id = $(this).val();
        } else
            mejor_id = 0;
        var base = "<%=request.getContextPath()%>";
        $.ajax({
            url: base + "/ASSET_BOOK/ajaxMinorCategoryDropDownList",
            type: "POST",
            data: "id=" + mejor_id,
            //dataType: "json",
            beforeSend: function () {
            },
            success: function (response) {
                $("#ASSET_MINOR_CATEGORY_ID").html(response);
            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            },
            complete: function () {
            }
        });
    })
</script>