<%@ page import="procurement.up.rfqprocurement.UpRfqEvaluationSheetDetails; procurement.up.rfqprocurement.UpRFQProcWorkOrder" %>

%{--jquery form validation starts--}%
<script>
    $(document).ready(function() {
        $('#upRfqProcWorkOrderForm').bootstrapValidator({
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

<div class="col-xs-6">
    <div class="form-group">
        <label for="UP_PROC_MASTER"><g:message code="upRFQProcWorkOrder.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয়" /></label>
        <g:select id="UP_PROC_MASTER" name="UP_PROC_MASTER.id" from="${upProcMasterList}" optionKey="id" optionValue="SCHEME_INFO" noSelection="['':'Select One']" required="" value="${upRFQProcWorkOrderInstance?.UP_PROC_MASTER?.id}" class="form-control"/>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="RECEIVED_COMPANY"><g:message code="upRFQProcWorkOrder.RECEIVED_COMPANY.label" default="গ্রহনক্রীত কোম্পানি" /></label>
        %{--<g:textField class="form-control" name="RECEIVED_COMPANY" value="${upRFQProcWorkOrderInstance?.RECEIVED_COMPANY}"/>--}%
        <g:select id="RECEIVED_COMPANY" name="RECEIVED_COMPANY" from="${ UpRfqEvaluationSheetDetails.list()}" optionKey="VENDOR_NAME" optionValue="${VENDOR_NAME}" noSelection="['':'Select One']" required="" class="form-control"/>

    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
        <label for="COMPANY_ADDRESS"><g:message code="upRFQProcWorkOrder.COMPANY_ADDRESS.label" default="কোম্পানির ঠিকানা" /></label>
        <g:textField class="form-control" name="COMPANY_ADDRESS" value="${upRFQProcWorkOrderInstance?.COMPANY_ADDRESS}"/>
    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
        <label for="IS_SIGN_CONTRACT"><g:message code="upRFQProcWorkOrder.IS_SIGN_CONTRACT.label" default=" চুক্তি স্বাক্ষরিত  হয়েছে কি ?" /></label>
        <g:checkBox class="form-control" name="IS_SIGN_CONTRACT" value="${upRFQProcWorkOrderInstance?.IS_SIGN_CONTRACT}" />
    </div>
</div>




