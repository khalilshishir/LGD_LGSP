<%@ page import="fixedAsset.ASSET_DISPOSAL" %>


<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'COMITY_ID', 'error')} ">
            <label for="COMITY_ID">
                <g:message code="ASSET_DISPOSAL.COMITY_ID.label" default="committee Name"/>

            </label>
            %{--<g:select id="COMITY_ID" name="COMITY_ID.id" from="${fixedAsset.COMITY.list()}" optionKey="id"
                      value="${ASSET_DISPOSALInstance?.COMITY_ID?.id}" class="many-to-one form-control"
                      noSelection="['': '--Select--']"/>--}%
            <g:select required="" id="COMITY_ID" name="COMITY_ID.id" from="${fixedAsset.COMITY.executeQuery("from COMITY where IS_ACTIVE=1")}" optionKey="id"
                      value="${ASSET_DISPOSALInstance?.COMITY_ID?.id}" class="many-to-one form-control"
                      noSelection="['': '--Select--']"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">

        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'NAME', 'error')} ">
            <label for="NAME">
                <g:message code="ASSET_DISPOSAL.NAME.label" default="Name"/>

            </label>
            <g:textField required="" class="form-control" name="NAME" value="${ASSET_DISPOSALInstance?.NAME}"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'ASSET_BOOK_ID', 'error')} ">
            <label for="ASSET_BOOK_ID">
                <g:message code="ASSET_DISPOSAL.ASSET_BOOK_ID.label" default="Asset Name"/>

            </label>
            %{--<g:select id="ASSET_BOOK_ID" name="ASSET_BOOK_ID.id" from="${fixedAsset.ASSET_BOOK.list()}" optionKey="id"
                      value="${ASSET_DISPOSALInstance?.ASSET_BOOK_ID?.id}" class="many-to-one form-control"
                      noSelection="['': '--Select--']"/>--}%
            <g:select required="" id="ASSET_BOOK_ID" name="ASSET_BOOK_ID.id" from="${fixedAsset.ASSET_BOOK.executeQuery("from ASSET_BOOK where IS_ACTIVE=1")}" optionKey="id"
                      value="${ASSET_DISPOSALInstance?.ASSET_BOOK_ID?.id}" class="many-to-one form-control"
                      noSelection="['': '--Select--']"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">

        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'SUBMISSION_DATE', 'error')} ">
            <label for="SUBMISSION_DATE">
                <g:message code="ASSET_DISPOSAL.SUBMISSION_DATE.label" default="Submission Date"/>

            </label>
            %{--<g:datePicker name="SUBMISSION_DATE" precision="day"  value="${ASSET_DISPOSALInstance?.SUBMISSION_DATE}" default="none" noSelection="['': '']" />--}%
            <div class="bfh-datepicker"
                 data-date="${formatDate(format: 'MM/dd/yyyy', date: ASSET_DISPOSALInstance?.SUBMISSION_DATE)}"
                 data-close="true" data-name="SUBMISSION_DATE"></div>

        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">

        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'ACCOUNT_HEAD', 'error')} ">
            <label for="ACCOUNT_HEAD">
                <g:message code="ASSET_DISPOSAL.ACCOUNT_HEAD.label" default="Account Head"/>

            </label>
            <g:field required="" class="form-control" name="ACCOUNT_HEAD" type="number"
                     value="${ASSET_DISPOSALInstance.ACCOUNT_HEAD}"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'REASON', 'error')} ">
            <label for="AMOUNT">
                <g:message code="ASSET_DISPOSAL.REASON.label" default="Reason"/>

            </label>
            <g:select required="" required="" id="REASON" name="REASON.id"
                      from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('DISPOSAL_REASON'))}"
                      optionKey="id" value="${ASSET_DISPOSALInstance?.REASON?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'AMOUNT', 'error')} ">
            <label for="AMOUNT">
                <g:message code="ASSET_DISPOSAL.AMOUNT.label" default="Amount"/>

            </label>
            <g:field required="" class="form-control" name="AMOUNT"
                     value="${fieldValue(bean: ASSET_DISPOSALInstance, field: 'AMOUNT')}"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'AUCTION_AMOUNT', 'error')} ">
            <label for="AUCTION_AMOUNT">
                <g:message code="ASSET_DISPOSAL.AUCTION_AMOUNT.label" default="Auction Amount"/>

            </label>
            <g:field required="" class="form-control" name="AUCTION_AMOUNT"
                     value="${fieldValue(bean: ASSET_DISPOSALInstance, field: 'AUCTION_AMOUNT')}"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'DESCRIPTION', 'error')} ">
            <label for="DESCRIPTION">
                <g:message code="ASSET_DISPOSAL.DESCRIPTION.label" default="Description"/>

            </label>
            <g:textField required="" class="form-control" name="DESCRIPTION" value="${ASSET_DISPOSALInstance?.DESCRIPTION}"/>
        </div>
    </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'CREATED_BY', 'error')} ">
	<label for="CREATED_BY">
		<g:message code="ASSET_DISPOSAL.CREATED_BY.label" default="CREATEDBY" />
		
	</label>
	<g:field name="CREATED_BY" type="number" value="${ASSET_DISPOSALInstance.CREATED_BY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="ASSET_DISPOSAL.CREATED_DATE.label" default="CREATEDDATE" />
		
	</label>
	<g:datePicker name="CREATED_DATE" precision="day"  value="${ASSET_DISPOSALInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />
</div>--}%
<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'REMARKS', 'error')} ">
            <label for="REMARKS">
                <g:message code="ASSET_DISPOSAL.REMARKS.label" default="Remarks"/>

            </label>
            <g:textField required="" class="form-control" name="REMARKS" value="${ASSET_DISPOSALInstance?.REMARKS}"/>
        </div>
    </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="ASSET_DISPOSAL.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${ASSET_DISPOSALInstance.ID}" required=""/>
</div>--}%

