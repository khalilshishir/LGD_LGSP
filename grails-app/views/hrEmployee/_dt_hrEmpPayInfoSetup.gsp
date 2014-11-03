<%@ page import="hrms.HrEmployeePayStructure;hrms.HrEmployee" %>

<script type="text/javascript">

    function getSlabNo() {

        var gradeIdNo =  $("#payScaleId").val();

        $.ajax({
            type:"POST",
            url:'${request.contextPath}/HrEmployeePayStructure/getSlabNo',
            dataType:'JSON',
            data: 'payScaleId='+gradeIdNo,
            success:function(data) {
                var json = eval("(" + data.message + ")");
                var ddl = $("#stage");
                ddl.empty();
                ddl.append("<option value=''>-Select One-</option>");
                jQuery.each(json, function() {
                    ddl.append("<option value='" + this.value + "'>" + this.value + "</option>");
                });

            },
            error:function(err) {
                alert(err);
            }
        });
    }


    function changePFContributionValue(id) {
       // alert("obj.id :"+id);
        var val=document.getElementById(id).value;
        if(val.length>0){
            document.getElementById("dOwnPf").value =parseFloat(val)*2;
        } else{
            document.getElementById("dOwnPf").value =val;
        }
    }

    function getStageData() {
        var empNo = $('#employeeIdHrEmployee').val();
        var payScaleId =  $('#payScaleId').val();
        var stage = $('#stage').val();

        $.ajax({
            type:'POST',
            url: '${request.contextPath}/HrEmployeePayStructure/getStageData',
            dataType:"JSON",
            data:'empNo='+empNo+'&payScaleId='+payScaleId+'&stage='+stage,
            success:function(response) {
                //var json = JSON.parse(response);
                var json = response;
                var data = json.message.split(":");
                $("#pBasic").val(parseFloat(data[0]));
                $("#pDa").val(parseFloat(data[1]));
                $("#pHr").val(parseFloat(data[2]));
                $("#pConveyance").val(parseFloat(data[3]));
                $("#pWashingAllow").val(parseFloat(data[4]));
                $("#pMedicalAllowance").val(parseFloat(data[5]));
                $("#pOrgPfContribution").val(parseFloat(data[6]));
                $("#totalPayable").val(parseFloat(data[7]));

                //Edit By Maruf
                $("#dOwnPf").val(parseFloat(data[6])*2);
                $("#dLoanSalary").val(parseFloat(data[8]));
                $("#dLoanPf").val(parseFloat(data[9]));

            },
            error:function(err) {
                alert(err);
            }
        }) ;
    }
</script>


%{--summary function are here--}%
<script type="text/javascript">
    // Net Payable Salary
    function getNetPayableSalary()
    {
        document.getElementById("totalPayable").value = parseFloat(document.getElementById("pBasic").value)+parseFloat(document.getElementById("pDa").value)+parseFloat(document.getElementById("pHr").value)+parseFloat(document.getElementById("pConveyance").value)+parseFloat(document.getElementById("pWashingAllow").value)+parseFloat(document.getElementById("pMedicalAllowance").value)+parseFloat(document.getElementById("pOrgPfContribution").value);
        document.getElementById("totalOtherPayable").value = parseFloat(document.getElementById("spAllowance").value)+parseFloat(document.getElementById("spDaAllowance").value)+parseFloat(document.getElementById("addSpAllowance").value)+parseFloat(document.getElementById("spRetro").value)+parseFloat(document.getElementById("retroPf").value);
        document.getElementById("totalMonthlyEarnings").value = parseFloat(document.getElementById("totalPayable").value) + parseFloat(document.getElementById("totalOtherPayable").value);
        document.getElementById("totalDeduction").value = parseFloat(document.getElementById("dLoanSalary").value)+parseFloat(document.getElementById("dLoanPf").value)+parseFloat(document.getElementById("dOwnPf").value)+parseFloat(document.getElementById("dOthers").value)+parseFloat(document.getElementById("dIncomeTax").value)+parseFloat(document.getElementById("dRevenueStamp").value)+parseFloat(document.getElementById("dGroupInsurance").value);
        document.getElementById("netMonthlyPayable").value = parseFloat(document.getElementById("totalMonthlyEarnings").value) - parseFloat(document.getElementById("totalDeduction").value);
    }
</script>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="payScaleId"><g:message code="hrEmployee.payScaleId.label" default="Current Grade" /></label>
                        <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.list()}"
                                  noSelection="['':'-Select One-']" value="${hrEmployeePayStructures?.payScaleId}" onchange="getSlabNo();" class="form-control"/>

                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="stage"><g:message code="hrEmployee.stage.label" default="Current Stage" /></label>
                        <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="" value="" noSelection="['':'-Select One-']" onchange="getStageData();" class="form-control"/>
                    </div>
                </div>

            </td>
        </tr>
    </table>
</div>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <h3>Earnings (As Per Pay Structure)</h3>
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pBasic"><g:message code="hrEmployee.pBasic.label" default="Basic" /></label>
                        <g:textField id="pBasic" name="pBasic" value="${pBasic?:0}"  readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pDa"><g:message code="hrEmployee.pDa.label" default="Dearness Allowance" /></label>
                        <g:textField id="pDa" name="pDa" value="${pDa?:0}" readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pConveyance"><g:message code="hrEmployee.pConveyance.label" default="Conveyance Allowance" /></label>
                        <g:textField id="pConveyance" name="pConveyance" value="${pConveyance?:0}"  readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pHr"><g:message code="hrEmployee.pHr.label" default="House Rent" /></label>
                        <g:textField id="pHr" name="pHr" value="${pHr?:0}" readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pWashingAllow"><g:message code="hrEmployee.pWashingAllow.label" default="Uniform Washing Allowance" /></label>
                        <g:textField id="pWashingAllow" name="pWashingAllow" value="${pWashingAllow?:0}"   readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pMedicalAllowance"><g:message code="hrEmployee.pMedicalAllowance.label" default="Medical Allowance" /></label>
                        <g:textField id="pMedicalAllowance" name="pMedicalAllowance" value="${pMedicalAllowance?:0}" readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pOrgPfContribution"><g:message code="hrEmployee.pOrgPfContribution.label" default="University PF Contribution" /></label>
                        <g:textField id="pOrgPfContribution" name="pOrgPfContribution" value="${pOrgPfContribution?:0}"
                                     onchange="getNetPayableSalary(); changePFContributionValue(this.id);" onkeyup="getNetPayableSalary(); changePFContributionValue(this.id);" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="totalPayable"><g:message code="hrEmployee.totalPayable.label" default="Monthly Earnings" /></label>
                        <g:textField id="totalPayable" name="totalPayable" value="${totalPayable?:0}" readonly="readonly" class="form-control" />
                    </div>
                </div>

            </td>
        </tr>
    </table>
</div>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <h3>Other Earnings</h3>
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="spAllowance"><g:message code="hrEmployee.spAllowance.label" default="Special Allowance" /></label>
                        <g:textField id="spAllowance" name="spAllowance" value="${spAllowance?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="spDaAllowance"><g:message code="hrEmployee.spDaAllowance.label" default="Special DA Allowance" /></label>
                        <g:textField id="spDaAllowance" name="spDaAllowance" value="${spDaAllowance?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="addSpAllowance"><g:message code="hrEmployee.addSpAllowance.label" default="Add. Special Allowance" /></label>
                        <g:textField id="addSpAllowance" name="addSpAllowance" value="${addSpAllowance?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="spRetro"><g:message code="hrEmployee.spRetro.label" default="Special Retro" /></label>
                        <g:textField id="spRetro" name="spRetro" value="${totalPayable?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="retroPf"><g:message code="hrEmployee.retroPf.label" default="Retro PF" /></label>
                        <g:textField id="retroPf" name="retroPf" value="${retroPf?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pWashingAllow"><g:message code="hrEmployee.pWashingAllow.label" default="Monthly Other Earnings" /></label>
                        <g:textField id="totalOtherPayable" name="totalOtherPayable" value="${totalOtherPayable?:0}" readonly="readonly" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="totalMonthlyEarnings"><g:message code="hrEmployee.totalMonthlyEarnings.label" default="Total Monthly Earnings" /></label>
                        <g:textField id="totalMonthlyEarnings" name="totalMonthlyEarnings" value="${totalMonthlyEarnings?:0}" readonly="readonly" class="form-control" />
                    </div>
                </div>

            </td>
        </tr>
    </table>
</div>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <h3>Deductions</h3>
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dLoanSalary"><g:message code="hrEmployee.dLoanSalary.label" default="Loan Against Salary" /></label>
                        <g:textField id="dLoanSalary" name="dLoanSalary" value="${dLoanSalary?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dLoanPf"><g:message code="hrEmployee.dLoanPf.label" default="Loan Against PF" /></label>
                        <g:textField id="dLoanPf" name="dLoanPf" value="${dLoanPf?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dOwnPf"><g:message code="hrEmployee.dOwnPf.label" default="PF Contribution" /></label>
                        <g:textField id="dOwnPf" name="dOwnPf" value="${dOwnPf?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dOthers"><g:message code="hrEmployee.dOthers.label" default="Others Deduction" /></label>
                        <g:textField id="dOthers" name="dOthers" value="${dOthers?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dIncomeTax"><g:message code="hrEmployee.dIncomeTax.label" default="Income Tax" /></label>
                        <g:textField id="dIncomeTax" name="dIncomeTax" value="${dIncomeTax?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dRevenueStamp"><g:message code="hrEmployee.dRevenueStamp.label" default="Revenue Stamp" /></label>
                        <g:textField id="dRevenueStamp" name="dRevenueStamp" value="${dRevenueStamp?:10}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dGroupInsurance"><g:message code="hrEmployee.dGroupInsurance.label" default="Group Insurance" /></label>
                        <g:textField id="dGroupInsurance" name="dGroupInsurance" value="${dGroupInsurance?:0}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dIncomeTaxPc"><g:message code="hrEmployee.dIncomeTaxPc.label" default="Income Tax(%)" /></label>
                        <g:textField id="dIncomeTaxPc" name="dIncomeTaxPc" value="${dIncomeTaxPc?:0}" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="totalDeduction"><g:message code="hrEmployee.totalDeduction.label" default="Total Deductions" /></label>
                        <g:textField id="totalDeduction" name="totalDeduction" value="${totalDeduction?:0}" readonly="readonly" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="netMonthlyPayable"><g:message code="hrEmployee.netMonthlyPayable.label" default="Net Monthly Payable" /></label>
                        <g:textField id="netMonthlyPayable" name="netMonthlyPayable" value="${netMonthlyPayable?:0}" readonly="readonly" class="form-control" />
                    </div>
                </div>

            </td>
        </tr>
    </table>
</div>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">
                <div class="col-xs-100">
                    <div class="form-group">
                        <label for="salStopFlag"><g:message code="hrEmployee.salStopFlag.label" default="Salary Stop?" /></label>
                        <g:checkBox id="salStopFlag" name="salStopFlag"  value=""   />
                    </div>
                </div>
            </td>
        </tr>
    </table>
</div>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">

    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="payrollRemarks"><g:message code="hrEmployee.payrollRemarks.label" default="Remarks" /></label>
                        <g:textArea id="payrollRemarks" name="payrollRemarks" value="" style="width:800%; height: 100%;"  class="form-control" />
                    </div>
                </div>
            </td>
        </tr>
    </table>
</div>