
<%@ page import="fixedAsset.ASSET_BOOK" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_BOOK.label', default: 'ASSET_BOOK')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-ASSET_BOOK" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="Home"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="Asset Book List" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Asset Book" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-ASSET_BOOK" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="Show Asset Book" args="[entityName]" /></h3>
            </div>
			%{--<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>--}%
        <script>
            $(document).ready(function(){
                $("#a").fadeOut(8000);
            });
        </script>
        <g:if test="${flash.message}">
            <div class="panel-body">
                <div id="a" class="alert alert-success" role="alert">
                    <div class="message" role="status">
                        <h3 class="panel-title">${flash.message}</h3>
                    </div>
                </div>
            </div>
        </g:if>
            <div class="panel-body">
			%{--<ol class="property-list ASSET_BOOK">--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_NAME}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_NAME-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_NAME.label" default="Asset name :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_NAME-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ASSET_NAME"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_DESCRIPTION}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_DESCRIPTION-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_DESCRIPTION.label" default="Asset description no :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_DESCRIPTION-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ASSET_DESCRIPTION"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_LIFE_CYCLE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_LIFE_CYCLE-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_LIFE_CYCLE.label" default="Asset life cycle :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_LIFE_CYCLE-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ASSET_LIFE_CYCLE"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_NUMBER}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_NUMBER-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_NUMBER.label" default="Asset number :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_NUMBER-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ASSET_NUMBER"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_RECEIVE_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_RECEIVE_ID-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_RECEIVE_ID.label" default="Asset receive id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_RECEIVE_ID-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ASSET_RECEIVE_ID"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_STATUS}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_STATUS-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_STATUS.label" default="Asset status :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_STATUS-label"><g:link controller="allLookup" action="show" id="${ASSET_BOOKInstance?.ASSET_STATUS?.id}">${ASSET_BOOKInstance?.ASSET_STATUS?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSURANCE_TYPE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSURANCE_TYPE-label" class="property-label"><g:message code="ASSET_BOOK.ASSURANCE_TYPE.label" default="Assurance type :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSURANCE_TYPE-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ASSURANCE_TYPE"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.BRAND_NAME}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="BRAND_NAME-label" class="property-label"><g:message code="ASSET_BOOK.BRAND_NAME.label" default="Brand name :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="BRAND_NAME-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="BRAND_NAME"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.COST_CENTER}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="COST_CENTER-label" class="property-label"><g:message code="ASSET_BOOK.COST_CENTER.label" default="Cost center :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="COST_CENTER-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="COST_CENTER"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.GRN_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="GRN_ID-label" class="property-label"><g:message code="ASSET_BOOK.GRN_ID.label" default="GRN id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="GRN_ID-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="GRN_ID"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ITEM_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ITEM_ID-label" class="property-label"><g:message code="ASSET_BOOK.ITEM_ID.label" default="Item id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ITEM_ID-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ITEM_ID"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.SUPPLIER_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="SUPPLIER_ID-label" class="property-label"><g:message code="ASSET_BOOK.SUPPLIER_ID.label" default="Supplier id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="SUPPLIER_ID-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="SUPPLIER_ID"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.LOCATION_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="LOCATION_ID-label" class="property-label"><g:message code="ASSET_BOOK.LOCATION_ID.label" default="Location id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="LOCATION_ID-label"><g:link controller="LOCATION" action="show" id="${ASSET_BOOKInstance?.LOCATION_ID?.id}">${ASSET_BOOKInstance?.LOCATION_ID?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.MODEL_NAME}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="MODEL_NAME-label" class="property-label"><g:message code="ASSET_BOOK.MODEL_NAME.label" default="Model name :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="MODEL_NAME-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="MODEL_NAME"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.OPENING_BALANCE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="OPENING_BALANCE-label" class="property-label"><g:message code="ASSET_BOOK.OPENING_BALANCE.label" default="Opening balance :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="OPENING_BALANCE-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="OPENING_BALANCE"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ORGINAL_COST}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ORGINAL_COST-label" class="property-label"><g:message code="ASSET_BOOK.ORGINAL_COST.label" default="Orginal cost :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ORGINAL_COST-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ORGINAL_COST"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.QTY}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="QTY-label" class="property-label"><g:message code="ASSET_BOOK.QTY.label" default="QTY :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="QTY-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="QTY"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.UOM_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="UOM_ID-label" class="property-label"><g:message code="ASSET_BOOK.UOM_ID.label" default="UMO id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="UOM_ID-label"><g:link controller="allLookup" action="show" id="${ASSET_BOOKInstance?.UOM_ID?.id}">${ASSET_BOOKInstance?.UOM_ID?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.RECEIVE_DATE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="RECEIVE_DATE-label" class="property-label"><g:message code="ASSET_BOOK.RECEIVE_DATE.label" default="Receive date :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="RECEIVE_DATE-label"><g:formatDate date="${ASSET_BOOKInstance?.RECEIVE_DATE}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_USER}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_USER-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_USER.label" default="Asset user :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_USER-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ASSET_USER"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.WARRANTY_MONTH}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="WARRANTY_MONTH-label" class="property-label"><g:message code="ASSET_BOOK.WARRANTY_MONTH.label" default="Warranty month :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="WARRANTY_MONTH-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="WARRANTY_MONTH"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.WARRANTY_START_DATE}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="WARRANTY_START_DATE-label" class="property-label"><g:message code="ASSET_BOOK.WARRANTY_START_DATE.label" default="Warranty start date :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="WARRANTY_START_DATE-label"><g:formatDate date="${ASSET_BOOKInstance?.WARRANTY_START_DATE}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.WARRANTY_YEAR}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="WARRANTY_YEAR-label" class="property-label"><g:message code="ASSET_BOOK.WARRANTY_YEAR.label" default="Warranty year :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="WARRANTY_YEAR-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="WARRANTY_YEAR"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.WARRANTY_PERIOD}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="WARRANTY_PERIOD-label" class="property-label"><g:message code="ASSET_BOOK.WARRANTY_PERIOD.label" default="Warranty period :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="WARRANTY_PERIOD-label"><g:formatDate date="${ASSET_BOOKInstance?.WARRANTY_PERIOD}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%

			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.VOUCHER_NO}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="VOUCHER_NO-label" class="property-label"><g:message code="ASSET_BOOK.VOUCHER_NO.label" default="Voucher no :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="VOUCHER_NO-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="VOUCHER_NO"/></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_MAJOR_CATEGORY_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_MAJOR_CATEGORY_ID-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_MAJOR_CATEGORY_ID.label" default="Asset major category id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_MAJOR_CATEGORY_ID-label"><g:link controller="ASSET_MAJOR_CATEGORY" action="show" id="${ASSET_BOOKInstance?.ASSET_MAJOR_CATEGORY_ID?.id}">${ASSET_BOOKInstance?.ASSET_MAJOR_CATEGORY_ID?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="ASSET_MINOR_CATEGORY_ID-label" class="property-label"><g:message code="ASSET_BOOK.ASSET_MINOR_CATEGORY_ID.label" default="Asset minor category id :" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="ASSET_MINOR_CATEGORY_ID-label"><g:link controller="ASSET_MINOR_CATEGORY" action="show" id="${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.id}">${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%

            %{--<g:if test="${ASSET_BOOKInstance?.IS_ACTIVE}">--}%
                %{--<li class="fieldcontain">--}%
                    %{--<span id="IS_ACTIVE-label" class="property-label"><g:message code="ASSET_BOOK.IS_ACTIVE.label" default="Is active :" /></span>--}%

                    %{--<span class="property-value" aria-labelledby="IS_ACTIVE-label"><g:formatBoolean boolean="${ASSET_BOOKInstance?.IS_ACTIVE}" /></span>--}%

                %{--</li>--}%
            %{--</g:if>--}%

			
				%{--<g:if test="${ASSET_BOOKInstance?.CREATED_BY}">
				<li class="fieldcontain">
					<span id="CREATED_BY-label" class="property-label"><g:message code="ASSET_BOOK.CREATED_BY.label" default="CREATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="CREATED_BY"/></span>
					
				</li>
				</g:if>--}%
			
				%{--<g:if test="${ASSET_BOOKInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="ASSET_BOOK.CREATED_DATE.label" default="CREATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="CREATED_DATE"/></span>
					
				</li>
				</g:if>--}%
			
				%{--<g:if test="${ASSET_BOOKInstance?.ID}">
				<li class="fieldcontain">
					<span id="ID-label" class="property-label"><g:message code="ASSET_BOOK.ID.label" default="ID" /></span>
					
						<span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${ASSET_BOOKInstance}" field="ID"/></span>
					
				</li>
				</g:if>--}%
			
			%{--</ol>--}%

            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="ASSET_NAME">
                            <g:message code="ASSET_BOOK.ASSET_NAME.label" default="Name" />

                        </label>
                        %{--<g:textField class="form-control" name="ASSET_NAME" value="${ASSET_BOOKInstance?.ASSET_NAME}"/>--}%
                        ${ASSET_BOOKInstance?.ASSET_NAME}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="ASSET_DESCRIPTION">
                            <g:message code="ASSET_BOOK.ASSET_DESCRIPTION.label" default="Description" />

                        </label>
                        %{--<g:textField class="form-control" name="ASSET_DESCRIPTION" value="${ASSET_BOOKInstance?.ASSET_DESCRIPTION}"/>--}%
                        ${ASSET_BOOKInstance?.ASSET_DESCRIPTION}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="ASSET_LIFE_CYCLE">
                            <g:message code="ASSET_BOOK.ASSET_LIFE_CYCLE.label" default="Life Cycle :" />

                        </label>
                        %{--<g:textField class="form-control" name="ASSET_LIFE_CYCLE" value="${ASSET_BOOKInstance?.ASSET_LIFE_CYCLE}"/>--}%
                        ${ASSET_BOOKInstance?.ASSET_LIFE_CYCLE}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="ASSET_NUMBER">
                            <g:message code="ASSET_BOOK.ASSET_NUMBER.label" default="Number" />

                        </label>
                        %{--<g:field class="form-control" name="ASSET_NUMBER" type="number" value="${ASSET_BOOKInstance.ASSET_NUMBER}"/>--}%
                        ${ASSET_BOOKInstance.ASSET_NUMBER}
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="ASSET_RECEIVE_ID">
                            <g:message code="ASSET_BOOK.ASSET_RECEIVE_ID.label" default="Receive Id" />

                        </label>
                        %{--<g:field class="form-control" name="ASSET_RECEIVE_ID" type="number" value="${ASSET_BOOKInstance.ASSET_RECEIVE_ID}"/>--}%
                        ${ASSET_BOOKInstance.ASSET_RECEIVE_ID}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="ASSET_STATUS">
                            <g:message code="ASSET_BOOK.ASSET_STATUS.label" default="Status" />

                        </label>
                        %{--<g:select id="ASSET_STATUS" name="ASSET_STATUS.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_STATUS?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
                        %{--<g:select id="ASSET_STATUS" name="ASSET_STATUS.id"--}%
                                  %{--from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('ASSET_STATUS'))}"--}%
                                  %{--optionKey="id" value="${ASSET_BOOKInstance?.ASSET_STATUS?.id}" class="form-control"--}%
                                  %{--noSelection="['': '-Select-']"/>--}%
                        %{--${ASSET_BOOKInstance?.ASSET_STATUS?.Name}--}%
                        ${ASSET_BOOKInstance?.ASSET_STATUS?.encodeAsHTML()}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="ASSURANCE_TYPE">
                            <g:message code="ASSET_BOOK.ASSURANCE_TYPE.label" default="Assurance Type" />

                        </label>
                        %{--<g:textField class="form-control" name="ASSURANCE_TYPE" value="${ASSET_BOOKInstance?.ASSURANCE_TYPE}"/>--}%
                        ${ASSET_BOOKInstance?.ASSURANCE_TYPE}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="BRAND_NAME">
                            <g:message code="ASSET_BOOK.BRAND_NAME.label" default="Brand Name" />

                        </label>
                        %{--<g:textField class="form-control" name="BRAND_NAME" value="${ASSET_BOOKInstance?.BRAND_NAME}"/>--}%
                        ${ASSET_BOOKInstance?.BRAND_NAME}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="COST_CENTER">
                            <g:message code="ASSET_BOOK.COST_CENTER.label" default="Cost Center" />

                        </label>
                        %{--<g:field class="form-control" name="COST_CENTER" type="number" value="${ASSET_BOOKInstance.COST_CENTER}"/>--}%
                        ${ASSET_BOOKInstance.COST_CENTER}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="GRN_ID">
                            <g:message code="ASSET_BOOK.GRN_ID.label" default="GRN " />

                        </label>
                        %{--<g:field class="form-control" name="GRN_ID" type="number" value="${ASSET_BOOKInstance.GRN_ID}"/>--}%
                        ${ASSET_BOOKInstance.GRN_ID}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="ITEM_ID">
                            <g:message code="ASSET_BOOK.ITEM_ID.label" default="Item " />

                        </label>
                        %{--<g:field class="form-control" name="ITEM_ID" type="number" value="${ASSET_BOOKInstance.ITEM_ID}"/>--}%
                        ${ASSET_BOOKInstance.ITEM_ID}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="SUPPLIER_ID">
                            <g:message code="ASSET_BOOK.SUPPLIER_ID.label" default="Supplier" />

                        </label>
                        %{--<g:field class="form-control" name="SUPPLIER_ID" type="number" value="${ASSET_BOOKInstance.SUPPLIER_ID}"/>--}%
                        ${ASSET_BOOKInstance.SUPPLIER_ID}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="LOCATION_ID">
                            <g:message code="ASSET_BOOK.LOCATION_ID.label" default="Location" />

                        </label>
                        %{--<g:select id="LOCATION_ID" name="LOCATION_ID.id" from="${fixedAsset.LOCATION.list()}" optionKey="id" value="${ASSET_BOOKInstance?.LOCATION_ID?.id}" class="form-control" noSelection="['null': '']"/>--}%
                        ${ASSET_BOOKInstance?.LOCATION_ID?.encodeAsHTML()}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="MODEL_NAME">
                            <g:message code="ASSET_BOOK.MODEL_NAME.label" default="Model Name" />

                        </label>
                        %{--<g:textField class="form-control" name="MODEL_NAME" value="${ASSET_BOOKInstance?.MODEL_NAME}"/>--}%
                        ${ASSET_BOOKInstance?.MODEL_NAME}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="OPENING_BALANCE">
                            <g:message code="ASSET_BOOK.OPENING_BALANCE.label" default="Opening Balance" />

                        </label>
                        %{--<g:field class="form-control" name="OPENING_BALANCE" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'OPENING_BALANCE')}"/>--}%
                        ${fieldValue(bean: ASSET_BOOKInstance, field: 'OPENING_BALANCE')}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="ORGINAL_COST">
                            <g:message code="ASSET_BOOK.ORGINAL_COST.label" default="Orginal Cost" />

                        </label>
                        %{--<g:field class="form-control" name="ORGINAL_COST" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'ORGINAL_COST')}"/>--}%
                        ${fieldValue(bean: ASSET_BOOKInstance, field: 'ORGINAL_COST')}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="QTY">
                            <g:message code="ASSET_BOOK.QTY.label" default="QTY" />

                        </label>
                        %{--<g:field class="form-control" name="QTY" value="${fieldValue(bean: ASSET_BOOKInstance, field: 'QTY')}"/>--}%
                        ${fieldValue(bean: ASSET_BOOKInstance, field: 'QTY')}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="UOM_ID">
                            <g:message code="ASSET_BOOK.UOM_ID.label" default="UOM" />

                        </label>
                        %{--<g:select id="UOM_ID" name="UOM_ID.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${ASSET_BOOKInstance?.UOM_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
                        %{--<g:select id="UOM_ID" name="UOM_ID.id"--}%
                                  %{--from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('UOM'))}"--}%
                                  %{--optionKey="id" value="${ASSET_BOOKInstance?.UOM_ID?.id}" class="form-control"--}%
                                  %{--noSelection="['': '-Select-']"/>--}%
                        ${ASSET_BOOKInstance?.UOM_ID?.encodeAsHTML()}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="RECEIVE_DATE">
                            <g:message code="ASSET_BOOK.RECEIVE_DATE.label" default="Receive Date" />

                        </label>
                        %{--<div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.RECEIVE_DATE)}" data-close="true" data-name="RECEIVE_DATE"></div>--}%
                        ${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.RECEIVE_DATE)}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="ASSET_USER">
                            <g:message code="ASSET_BOOK.ASSET_USER.label" default="Asset User" />

                        </label>
                        %{--<g:field class="form-control" name="ASSET_USER" type="number" value="${ASSET_BOOKInstance.ASSET_USER}"/>--}%
                        ${ASSET_BOOKInstance.ASSET_USER}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="WARRANTY_MONTH">
                            <g:message code="ASSET_BOOK.WARRANTY_MONTH.label" default="Warranty Month" />

                        </label>
                        %{--<g:field class="form-control" name="WARRANTY_MONTH" type="number" value="${ASSET_BOOKInstance.WARRANTY_MONTH}"/>--}%
                        ${ASSET_BOOKInstance.WARRANTY_MONTH}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="WARRANTY_START_DATE">
                            <g:message code="ASSET_BOOK.WARRANTY_START_DATE.label" default="Warranty Start Date" />

                        </label>
                        %{--<div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.WARRANTY_START_DATE)}" data-close="true" data-name="WARRANTY_START_DATE"></div>--}%
                        ${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.WARRANTY_START_DATE)}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="WARRANTY_YEAR">
                            <g:message code="ASSET_BOOK.WARRANTY_YEAR.label" default="Warranty Year" />

                        </label>
                        %{--<g:field class="form-control" name="WARRANTY_YEAR" type="number" value="${ASSET_BOOKInstance.WARRANTY_YEAR}"/>--}%
                        ${ASSET_BOOKInstance.WARRANTY_YEAR}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="WARRANTY_PERIOD">
                            <g:message code="ASSET_BOOK.WARRANTY_PERIOD.label" default="Warranty Period" />

                        </label>
                        %{--<div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.WARRANTY_PERIOD)}" data-close="true" data-name="WARRANTY_PERIOD"></div>--}%
                        ${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.WARRANTY_PERIOD)}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="VOUCHER_NO">
                            <g:message code="ASSET_BOOK.VOUCHER_NO.label" default="Voucher No" />

                        </label>
                        %{--<g:textField class="form-control" name="VOUCHER_NO" value="${ASSET_BOOKInstance?.VOUCHER_NO}"/>--}%
                        ${ASSET_BOOKInstance?.VOUCHER_NO}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="ASSET_MAJOR_CATEGORY_ID">
                            <g:message code="ASSET_BOOK.ASSET_MAJOR_CATEGORY_ID.label" default="Major Asset Category " />

                        </label>
                        %{--<g:select id="ASSET_MAJOR_CATEGORY_ID" name="ASSET_MAJOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MAJOR_CATEGORY.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_MAJOR_CATEGORY_ID?.id}" class="form-control" noSelection="['null': '']"/>--}%
                        ${ASSET_BOOKInstance?.ASSET_MAJOR_CATEGORY_ID?.encodeAsHTML()}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-6" style="padding-left: 10px">
                    <div class="form-group">
                        <label for="ASSET_MINOR_CATEGORY_ID">
                            <g:message code="ASSET_BOOK.ASSET_MINOR_CATEGORY_ID.label" default="Minor Asset Category" />

                        </label>
                        %{--<g:select id="ASSET_MINOR_CATEGORY_ID" name="ASSET_MINOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MINOR_CATEGORY.list()}" optionKey="id" value="${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.id}" class="form-control" noSelection="['null': '']"/>--}%
                        ${ASSET_BOOKInstance?.ASSET_MINOR_CATEGORY_ID?.encodeAsHTML()}
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="IS_ACTIVE">
                            <g:message code="ASSET_BOOK.IS_ACTIVE.label" default="Active" />

                        </label>
                        ${ASSET_BOOKInstance?.IS_ACTIVE}
                        %{--<g:checkBox name="IS_ACTIVE" value="${ASSET_BOOKInstance?.IS_ACTIVE}" />--}%
                    </div>
                </div>
            </div>
            </div>
                <div class="panel-body">
                    <g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${ASSET_BOOKInstance?.id}" />
                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${ASSET_BOOKInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </div>
             </div>
		</div>
	</body>
</html>
