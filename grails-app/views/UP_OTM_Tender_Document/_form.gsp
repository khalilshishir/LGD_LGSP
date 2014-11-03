<%@ page import="procurement.up.otmprocurement.UP_OTM_Tender_Document" %>

%{--jquery form validation starts--}%
<script>
    $(document).ready(function() {
        $('#upOtmTenderDocumentForm').bootstrapValidator({
            // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            }
//            ,
//            fields: {
//                UP_PROC_MASTER: {
//                    message: 'The Procurement Name is not valid',
//                    validators: {
//                        notEmpty: {
//                            message: 'Procurement is required and cannot be empty'
//                        }
//                    }
//                }
//            }
        });
    });
</script>
%{--jquery form validation ends--}%

<div class="col-xs-6">
    <div class="form-group">
        <label for="UP_PROC_MASTER"><g:message code="UP_OTM_Tender_Document.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয়" /></label>
        <g:select id="UP_PROC_MASTER" name="UP_PROC_MASTER.id" from="${upProcMasterList}" optionKey="id" required="" noSelection="['':'Select One']" value="${UP_OTM_Tender_DocumentInstance?.UP_PROC_MASTER?.id}" class="form-control"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="TASK_COMP_LAST_DATE"><g:message code="UP_OTM_Tender_Document.TASK_COMP_LAST_DATE.label" default="কর্ম সম্পাদনের শেষ তারিখ" /></label>
        <div class="bfh-datepicker"  id="TASK_COMP_LAST_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:UP_OTM_Tender_DocumentInstance?.TASK_COMP_LAST_DATE)}" data-close="true" data-name="TASK_COMP_LAST_DATE"></div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="NO_OF_ACTIVATION_DAY"><g:message code="UP_OTM_Tender_Document.NO_OF_ACTIVATION_DAY.label" default="সক্রিয়করণের দিন সংখ্যা" /></label>
        <g:textField name="NO_OF_ACTIVATION_DAY" class="form-control" value="${UP_OTM_Tender_DocumentInstance.NO_OF_ACTIVATION_DAY}" required="" />
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="TENDER_SUB_LAST_DATE"><g:message code="UP_OTM_Tender_Document.TENDER_SUB_LAST_DATE.label" default="দরপত্র দাখিলের শেষ তারিখ" /></label>
        <div class="bfh-datepicker"   id="TENDER_SUB_LAST_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:UP_OTM_Tender_DocumentInstance?.TENDER_SUB_LAST_DATE)}" data-close="true" data-name="TENDER_SUB_LAST_DATE"></div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="TENDER_SUB_LAST_TIME"><g:message code="UP_OTM_Tender_Document.TENDER_SUB_LAST_TIME.label" default="দরপত্র দাখিলের শেষ সময়" /></label>
        <g:textField name="TENDER_SUB_LAST_TIME" value="${UP_OTM_Tender_DocumentInstance?.TENDER_SUB_LAST_TIME}" class="form-control" required=""/>
        %{--<div class="bfh-datepicker"   id="TENDER_SUB_LAST_TIME" data-date="${formatDate(format:'MM/dd/yyyy',date:UP_OTM_Tender_DocumentInstance?.TENDER_SUB_LAST_DATE)}" data-close="true" data-name="TENDER_SUB_LAST_DATE"></div>--}%
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="TENDER_OPENING_DATE"><g:message code="UP_OTM_Tender_Document.TENDER_OPENING_DATE.label" default="দরপত্র খোলার তারিখ" /></label>
        <div class="bfh-datepicker"   id="TENDER_OPENING_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:UP_OTM_Tender_DocumentInstance?.TENDER_OPENING_DATE)}" data-close="true" data-name="TENDER_OPENING_DATE"></div>
    </div>
</div>
