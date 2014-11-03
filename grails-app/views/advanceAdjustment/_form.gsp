<%@ page import="lookUp.AllLookup; lookUp.Lookup; procurement.up.Up_Proc_Master; settings.SchemeInfo; procurement.up.communityprocurement.AdvanceAdjustment" %>

%{--jquery form validation starts--}%
<script>
    $(document).ready(function() {
        $('#advanceAdjustmentForm').bootstrapValidator({
            // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                UP_PROCUREMENT_MASTER: {
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

<div class="col-xs-4">
    <div class="form-group">
        <label for="upProcMaster"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয়" /></label>
        <g:select id="upProcMaster"
                  name="upProcMaster.id"
                  from="${upProcMasterList}"
                  optionKey="id"
                  optionValue="SCHEME_INFO"
                  noSelection="['':'Select One']"
                  required=""
                  value="${advanceAdjustmentInstance?.upProcMaster?.id}"
                  class="form-control"
                  onchange="loadValue(this.value)"
        />
    </div>
</div>
<div id="changingDiv">

    <div class="col-xs-4">
        <div class="form-group">
            <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="চুক্তি মূল্য" /></label>
            %{--<g:select id="UP_PROCUREMENT_MASTER" name="UP_PROCUREMENT_MASTER.id" from="${SchemeInfo.list()}" optionKey="id" optionValue="GRANTED_AMOUNT" required="" value="${advanceAdjustmentInstance?.UP_PROCUREMENT_MASTER?.id}" class="form-control " readonly=""/>--}%
            <g:textField class="form-control" id="GRANTED_AMOUNT" name="GRANTED_AMOUNT" required="" readonly="" value="${grantedAmount}" />
        </div>
    </div>

    <div class="col-xs-3">
        <div class="form-group">
            <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="পূর্বে কত টাকা অগ্রিম নিয়েছে" /></label>
            %{--<g:select id="UP_PROCUREMENT_MASTER" name="UP_PROCUREMENT_MASTER.id" from="${SchemeInfo.list()}" optionKey="id" optionValue="GRANTED_AMOUNT" required="" value="${advanceAdjustmentInstance?.UP_PROCUREMENT_MASTER?.id}" class="form-control " readonly=""/>--}%
            <g:textField id="location" name="location"  class="form-control" readonly="" value="${previousAdvanceAdjustment}"/>
        </div>
    </div>
    <div class="col-xs-1">
        <div class="form-group">
            <label><br/></label>
            %{--<span style="font-size: 20px;color: #808080"  class='glyphicon glyphicon-search' onclick="alert('ok');"></span>--}%
            <div class="btn-group">
                <a class="showPreviousAdvanceAdjustment btn btn-warning" id="showPreviousAdvanceAdjustment" referenceId="${fieldValue(bean: advanceAdjustmentInstance, field: "upProcMaster")}"
                   title="Show Previous Advance Adjustment" onclick="showModal();">Show <i class="glyphicon glyphicon-search"></i></a>
            </div>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="মজুরি দেয়ার জন্য হাতে আছে" /></label>
            <g:textField id="location" name="location"  class="form-control" readonly="" value="${previousAdvanceAdjustment}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="UP_PROCUREMENT_MASTER"><g:message code="advanceAdjustment.UP_PROCUREMENT_MASTER.label" default="বর্তমানে কত টাকা নিতে পারবে" /></label>
            <g:textField id="location" name="location"  class="form-control" readonly="" value="${payableAmount}"/>

        </div>
    </div>

</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="ADJUSTMENT_AMOUNT"><g:message code="advanceAdjustment.ADJUSTMENT_AMOUNT.label" default="সমন্বয় মূল্য" /></label>
        <g:field type="text" class="form-control" name="ADJUSTMENT_AMOUNT" value="${fieldValue(bean: advanceAdjustmentInstance, field: 'ADJUSTMENT_AMOUNT')}" required=""/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="BANK_NAME"><g:message code="advanceAdjustment.ADJUSTMENT_AMOUNT.label" default="ব্যাংকের নাম" /></label>
        <g:field type="text" class="form-control" name="BANK_NAME" value="${fieldValue(bean: advanceAdjustmentInstance, field: 'BANK_NAME')}" required=""/>
    </div>
</div>

%{--Check No--}%
<div class="col-xs-6">
    <div class="form-group">
        <label for="ADJUSTMENT_AMOUNT"><g:message code="advanceAdjustment.ADJUSTMENT_AMOUNT.label" default="চেক নাম্বার" /></label>
        <g:textField class="form-control" name="CHECK_NO" value="${advanceAdjustmentInstance?.CHECK_NO}" required=""/>
    </div>
</div>

%{--<div class="col-xs-6">--}%
    %{--<div class="form-group">--}%
        %{--<label for="PAYMENT_DATE"><g:message code="advanceAdjustment.PAYMENT_DATE.label" default="Payment Date" /></label>--}%
        %{--<div class="bfh-datepicker"   data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.PAYMENT_DATE)}" data-close="true" data-name="PAYMENT_DATE" id="PAYMENT_DATE"></div>--}%
    %{--</div>--}%
%{--</div>--}%

<div class="col-xs-6 ${hasErrors(bean: advanceAdjustmentInstance, field: 'PAYMENT_DATE', 'error')} ">

    <div class="form-group">
        <label for="PAYMENT_DATE">প্রদানের তারিখ</label>
        <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:advanceAdjustmentInstance?.PAYMENT_DATE)}" data-close="true" data-name="PAYMENT_DATE"></div>
    </div>
</div>






