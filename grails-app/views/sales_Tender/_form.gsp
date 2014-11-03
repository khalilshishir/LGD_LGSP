<%@ page import="procurement.pmu.Sales_Tender" %>



<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'SALES_TENDER_CODE', 'error')} ">
    <label for="SALES_TENDER_CODE">
        <g:message code="sales_Tender.SALES_TENDER_CODE.label" default="SALESTENDERCODE"/>

    </label>
    <g:textField name="SALES_TENDER_CODE" maxlength="100" value="${sales_TenderInstance?.SALES_TENDER_CODE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'TENDER_NAME', 'error')} ">
    <label for="TENDER_NAME">
        <g:message code="sales_Tender.TENDER_NAME.label" default="TENDERNAME"/>

    </label>
    <g:textField name="TENDER_NAME" maxlength="100" value="${sales_TenderInstance?.TENDER_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'PROCURE_NAME', 'error')} ">
    <label for="PROCURE_NAME">
        <g:message code="sales_Tender.PROCURE_NAME.label" default="PROCURENAME"/>

    </label>
    <g:textField name="PROCURE_NAME" maxlength="100" value="${sales_TenderInstance?.PROCURE_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'FILE_UPLOAD', 'error')} ">
    <label for="FILE_UPLOAD">
        <g:message code="sales_Tender.FILE_UPLOAD.label" default="FILEUPLOAD"/>

    </label>
    <g:textField name="FILE_UPLOAD" maxlength="100" value="${sales_TenderInstance?.FILE_UPLOAD}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'PUBLISHED_DATE', 'error')} ">
    <label for="PUBLISHED_DATE">
        <g:message code="sales_Tender.PUBLISHED_DATE.label" default="PUBLISHEDDATE"/>

    </label>
    <g:textField name="PUBLISHED_DATE" value="${sales_TenderInstance?.PUBLISHED_DATE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'REMARKS', 'error')} ">
    <label for="REMARKS">
        <g:message code="sales_Tender.REMARKS.label" default="REMARKS"/>

    </label>
    <g:textField name="REMARKS" maxlength="100" value="${sales_TenderInstance?.REMARKS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'CREATEDATE', 'error')} ">
    <label for="CREATEDATE">
        <g:message code="sales_Tender.CREATEDATE.label" default="CREATEDATE"/>

    </label>
    <g:datePicker name="CREATEDATE" precision="day" value="${sales_TenderInstance?.CREATEDATE}" default="none"
                  noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'ISACTIVE', 'error')} ">
    <label for="ISACTIVE">
        <g:message code="sales_Tender.ISACTIVE.label" default="ISACTIVE"/>

    </label>
    <g:checkBox name="ISACTIVE" value="${sales_TenderInstance?.ISACTIVE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_TenderInstance, field: 'CREATEBY', 'error')} ">
    <label for="CREATEBY">
        <g:message code="sales_Tender.CREATEBY.label" default="CREATEBY"/>

    </label>
    <g:textField name="CREATEBY" maxlength="100" value="${sales_TenderInstance?.CREATEBY}"/>
</div>

