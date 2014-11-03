<div class="col-xs-6">
    <div class="form-group">
        <label for="INVITATION_DATE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="আহ্বান তারিখ"/></label>
        <g:textField id="INVITATION_DATE" name="INVITATION_DATE" readonly=""  value="${otmIFQAndOpeningSheetDetailsByProcurementMaster?.INVITATION_DATE[0]}" class="form-control" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="OPENING_DATE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="খোলার তারিখ"/></label>
        <g:textField id="OPENING_DATE" name="OPENING_DATE" readonly=""  value="${otmIFQAndOpeningSheetDetailsByProcurementMaster?.OPENING_DATE[0]}" class="form-control" />
    </div>
</div>