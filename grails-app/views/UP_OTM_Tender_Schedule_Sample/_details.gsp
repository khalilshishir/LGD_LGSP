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

<div class="col-xs-12">
    <div class="form-group">
        <label for="UP_PROC_MASTER"><g:message code="UP_OTM_Tender_Schedule_Sample.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয়" /></label>
        <g:select id="UP_PROC_MASTER" name="UP_PROC_MASTER.id" from="${upProcMasterList}" optionKey="id" optionValue="SCHEME_INFO" required="" noSelection="['':'Select One']" value="${UP_OTM_Tender_Schedule_SampleInstance?.UP_PROC_MASTER?.id}" class="form-control"/>
    </div>
</div>

<div class="col-xs-12">
    <input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Details"/>

    <div class="" style="border: solid 1px;border-radius: 5px">
    <table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
        <tr>
            <th>কাজের বর্ণনা ও অবস্থান</th><th>কাজের একক</th><th>কাজের পরিমাণ</th><th>একক মূল্য (টাকা)</th>
            <th>বাস্তবায়নের নির্ধারিত সময়সীমা</th><th>দড় বহাল থাকার প্রস্তাবিত সময়সীমা</th>
        </tr>

        <g:each in="${UP_OTM_Tender_Schedule_SampleInstance}" var="values" status="i">

            <tr>
                <g:hiddenField name='otmTenderScheduleDetailsByProcurementMaster[${i}].id' value='${values?.id}'/>
                <g:hiddenField name='otmTenderScheduleDetailsByProcurementMaster[${i}].deleted' value='false'/>
                <g:hiddenField name='otmTenderScheduleDetailsByProcurementMaster[${i}].new' value="${values?.id == null?'true':'false'}"/>
                <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].DETAILS' value='${UP_OTM_Tender_Schedule_SampleInstance?.UP_PROC_MASTER?.DETAILS}' class="form-control"  readonly=""/></td>
                <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].UNIT' value='${UP_OTM_Tender_Schedule_SampleInstance?.UNIT}'  class='detail-txt form-control'/></td>
                <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].AMOUNT' value='${UP_OTM_Tender_Schedule_SampleInstance?.AMOUNT}'  class='detail-txt form-control'/></td>
                <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].RATE' value='${UP_OTM_Tender_Schedule_SampleInstance?.RATE}'  class='detail-txt form-control'/></td>
                <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].FINISH_DATE' class="form-control"/></td>
                <td><g:textField size="11px" name='otmTenderScheduleDetailsByProcurementMaster[${i}].TIMELINE_OF_RATE' class="form-control"/></td>
            </tr>
        </g:each>
    </table>
    </div>
</div>


