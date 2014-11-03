
<div class="col-xs-6">
    <div class="form-group">
        <label for="PROCUREMENT_TYPE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="ক্রয় পদ্ধতি"/></label>
        <g:textField id="PROCUREMENT_TYPE" name="PROCUREMENT_TYPE.id" readonly="" value="${otmIFQDetailsByProcurementMaster?.PROCUREMENT_TYPE[0]}" class="form-control" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="IFT_DATE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="আই-এফ-টি তারিখ"/></label>
        <g:textField id="IFT_DATE" name="IFT_DATE" readonly=""  value="${otmIFQDetailsByProcurementMaster?.IFT_DATE[0]}" class="form-control" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="IFT_NUMBER"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="আই-এফ-টি নাম্বার"/></label>
        <g:textField id="IFT_NUMBER" name="IFT_NUMBER" readonly=""  value="${otmIFQDetailsByProcurementMaster?.IFT_NUMBER[0]}" class="form-control" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="SUB_LAST_DATE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="দাখিলের শেষ তারিখ"/></label>
        <g:textField id="SUB_LAST_DATE" name="SUB_LAST_DATE" readonly=""  value="${otmIFQDetailsByProcurementMaster?.SUB_LAST_DATE[0]}" class="form-control" />
    </div>
</div>