<%@ page import="procurement.up.otmprocurement.UP_OTM_Tender_Schedule_Sample" %>

%{--jquery form validation starts--}%
<script>
    $(document).ready(function() {
        $('#upOtmTenderScheduleSampleForm').bootstrapValidator({
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

<script type="text/javascript">
    function loadDetailsOnProcurementChange(procurementMasterId){
        <g:remoteFunction action="setValueForDetails"  params="'procurementMasterId='+procurementMasterId" update="createDetailTable"/>
    }
</script>

<div class="col-xs-12">
    <div class="form-group">
        <label for="UP_PROC_MASTER"><g:message code="UP_OTM_Tender_Schedule_Sample.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয়" /></label>
        <g:select id="UP_PROC_MASTER" name="UP_PROC_MASTER.id" from="${upProcMasterList}" optionKey="id" optionValue="SCHEME_INFO" required="" noSelection="['':'Select One']" value="${UP_OTM_Tender_Schedule_SampleInstance?.UP_PROC_MASTER?.id}" onchange="loadDetailsOnProcurementChange(this.value)" class="form-control"/>
    </div>
</div>

<div class="col-xs-12"  id="createDetailTable">
</div>


