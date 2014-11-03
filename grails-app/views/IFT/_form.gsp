<%@ page import="procurement.up.otmprocurement.IFT" %>

%{--jquery form validation starts--}%
<script>
    $(document).ready(function() {
        $('#iftForm').bootstrapValidator({
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

<div class="col-xs-3">
    <div class="form-group">
        <label for="UP_PROC_MASTER"><g:message code="IFT.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয়" /></label>
        <g:select id="UP_PROC_MASTER" name="UP_PROC_MASTER.id" from="${upProcMasterList}" optionKey="id" optionValue="SCHEME_INFO" noSelection="['':'Select One']" required="" value="${IFTInstance?.UP_PROC_MASTER?.id}" class="form-control"/>
    </div>
</div>

<div class="col-xs-3">
    <div class="form-group">
        <label for="IFT_NUMBER"><g:message code="IFT.IFT_NUMBER.label" default="আই এফ টি নাম্বার" /></label>
        <g:textField name="IFT_NUMBER" value="${IFTInstance?.IFT_NUMBER}" class="form-control"/>
    </div>
</div>

<div class="col-xs-3">
    <div class="form-group">
        <label for="LAST_CONTACT_DATE"><g:message code="IFT.LAST_CONTACT_DATE.label" default="যোগাযোগের শেষ তারিখ" /></label>
        <div class="bfh-datepicker"   id="LAST_CONTACT_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:IFTInstance?.LAST_CONTACT_DATE)}" data-close="true" data-name="LAST_CONTACT_DATE"></div>
    </div>
</div>

<div class="col-xs-3">
    <div class="form-group">
        <label for="SUB_LAST_DATE"><g:message code="IFT.SUB_LAST_DATE.label" default="দাখিলের শেষ তারিখ" /></label>
        <div class="bfh-datepicker"   id="SUB_LAST_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:IFTInstance?.SUB_LAST_DATE)}" data-close="true" data-name="SUB_LAST_DATE"></div>
    </div>
</div>

<div class="col-xs-3">
    <div class="form-group">
        <label for="SUB_LAST_TIME"><g:message code="IFT.SUB_LAST_TIME.label" default="দাখিলের শেষ সময়" /></label>
        <g:textField name="SUB_LAST_TIME" value="${IFTInstance?.SUB_LAST_TIME}" class="form-control timepicker-default"/>

    </div>
</div>

<div class="col-xs-3">
    <div class="form-group">
        <label for="CREATED_DATE"><g:message code="IFT.CREATED_DATE.label" default="আই এফ টি তারিখ" /></label>
        <div class="bfh-datepicker"   id="CREATED_DATE" data-date="${formatDate(format:'MM/dd/yyyy',date:IFTInstance?.CREATED_DATE)}" data-close="true" data-name="CREATED_DATE"></div>
    </div>
</div>

