<%@ page import="procurement.up.Up_Proc_Master; procurement.up.otmprocurement.UpOtmOpeningSheet" %>

%{--jquery form validation starts--}%
<script>
    $(document).ready(function() {
        $('#upOtmOpeningSheetForm').bootstrapValidator({
            // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                UP_PROC_MASTER: {
                    message: 'The Procurement Name is not valid',
                    validators: {
                        notEmpty: {
                            message: 'Procurement is required and cannot be empty'
                        }
                    }
                }
            }
        });
    });
</script>
%{--jquery form validation ends--}%

<script>
    function setValueOnProcurementChange(procurementMasterId) {
        <g:remoteFunction action="setValueForDetails"  params="'procurementMasterId='+procurementMasterId" update="changedValue"/>
    }
</script>



<div class="col-xs-6">
    <div class="form-group">
        <label for="UP_PROC_MASTER"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয়" /></label>
        <g:select id="UP_PROC_MASTER" name="UP_PROC_MASTER.id" from="${upProcMasterList}" optionKey="id" optionValue="SCHEME_INFO" required="" noSelection="['':'Select One']" value="${upOtmOpeningSheetInstance?.UP_PROC_MASTER?.id}" onchange="setValueOnProcurementChange(this.value)" class="form-control"/>
    </div>
</div>

<div id="changedValue">
<div class="col-xs-6">
    <div class="form-group">
        <label for="PROCUREMENT_TYPE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="ক্রয় পদ্ধতি"/></label>
        <g:textField id="PROCUREMENT_TYPE" name="PROCUREMENT_TYPE.id" readonly="" class="form-control" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="PROCUREMENT_TYPE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="আই-এফ-টি তারিখ"/></label>
        <g:textField id="PROCUREMENT_TYPE" name="PROCUREMENT_TYPE.id" readonly=""  class="form-control" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="PROCUREMENT_TYPE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="আই-এফ-টি নাম্বার"/></label>
        <g:textField id="PROCUREMENT_TYPE" name="PROCUREMENT_TYPE.id" readonly="" class="form-control" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="PROCUREMENT_TYPE"><g:message code="upOtmOpeningSheet.UP_PROC_MASTER.label" default="দাখিলের শেষ তারিখ"/></label>
        <g:textField id="PROCUREMENT_TYPE" name="PROCUREMENT_TYPE.id" readonly=""  class="form-control" />
    </div>
</div>
</div>

%{--<div class="col-xs-6">--}%
    %{--<div class="form-group">--}%
        %{--<label for="SUB_LAST_DATE"><g:message code="upOtmOpeningSheet.SUB_LAST_DATE.label" default="Submission Last Date" /></label>--}%
        %{--<div class="bfh-datepicker"   id="SUB_LAST_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:upOtmOpeningSheetInstance?.SUB_LAST_DATE)}" data-close="true" data-name="SUB_LAST_DATE"></div>--}%
    %{--</div>--}%
%{--</div>--}%

<div class="col-xs-6">
    <div class="form-group">
        <label for="OPENING_DATE"><g:message code="upOtmOpeningSheet.OPENING_DATE.label" default="খোলার তারিখ" /></label>
        %{--<g:datePicker name="OPENING_DATE" precision="day"  value="${upRfqOpeningSheetInstance?.OPENING_DATE}" class="form-control" />--}%
        <div class="bfh-datepicker"  id="OPENING_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:upOtmOpeningSheetInstance?.OPENING_DATE)}" data-close="true" data-name="OPENING_DATE"></div>
    </div>
</div>

<div class="col-xs-12 detail-list ${hasErrors(bean: upOtmOpeningSheetInstance, field: 'upOtmOpeningSheetDetails', 'error')} ">
    <div class="form-group">
        <ul class="one-to-many">
            <fieldset>
                <li><g:render template="details"/></li>
            </fieldset>
        </ul>
    </div>
</div>






