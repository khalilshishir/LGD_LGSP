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

<div style="width: 990px; background: #fff; padding: 5px;border: 1px solid #ccc;">

    <table class="promint_block">

        <tr>
            <td style="width:115px ">Current Grade:</td>
            <td style="width:170px ">
                <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.list()}" noSelection="['':'-Select One-']" value="${hrEmployeePayStructures?.payScaleId}" onchange="getSlabNo();"/>
            </td>
            <td style="width:115px ">Current Stage:</td>
            <td style="width:200px ">
            <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="" value="" noSelection="['':'-Select One-']" onchange="getStageData();"/>
            </td>
            <td></td>
            <td>
            </td>
        </tr>
    </table>

    <br/><br/>

    <h3>Earnings (As Per Pay Structure)</h3>
    <table class="payroll_block">
        <tr>
            <td>Basic:</td>
            <td>
                <g:textField id="pBasic" name="pBasic" value="${pBasic?:0}" style="width: 144px;" class="readonly-input"  readonly="readonly" onchange="getNetPayableSalary();"/>
            </td>
            <td>Dearness Allowance:</td>
            <td>
                <g:textField id="pDa" name="pDa" value="${pDa?:0}" style="width: 144px;" class="readonly-input"  readonly="readonly" onchange="getNetPayableSalary();"/>
            </td>
            <td>House Rent:</td>
            <td>
                <g:textField id="pHr" name="pHr" value="${pHr?:0}" style="width: 144px;" class="readonly-input" readonly="readonly" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Conveyance Allowance:</td>
            <td>
                <g:textField id="pConveyance" name="pConveyance" value="${pConveyance?:0}" style="width: 144px;" class="readonly-input"  readonly="readonly" onchange="getNetPayableSalary();"/>
            </td>
            <td>Uniform Washing Allowance:</td>
            <td>
                <g:textField id="pWashingAllow" name="pWashingAllow" value="${pWashingAllow?:0}" style="width: 144px;" class="readonly-input"  readonly="readonly" onchange="getNetPayableSalary();"/>
            </td>
            <td>Medical Allowance:</td>
            <td>
                <g:textField id="pMedicalAllowance" name="pMedicalAllowance" value="${pMedicalAllowance?:0}" style="width: 144px;" class="readonly-input"  readonly="readonly" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>University PF Contribution:</td>
            <td>
                <g:textField id="pOrgPfContribution" name="pOrgPfContribution" value="${pOrgPfContribution?:0}" style="width: 144px;"    onchange="getNetPayableSalary(); changePFContributionValue(this.id);" onkeyup="getNetPayableSalary(); changePFContributionValue(this.id);" />
            </td>
            <td>Monthly Earnings:</td>
            <td>
            <g:textField id="totalPayable" name="totalPayable" value="${totalPayable?:0}" style="width: 144px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

    <br/><br/>
    <h3>Other Earnings</h3>
    <table class="payroll_block">
        <tr>
            <td>Special Allowance:</td>
            <td>
                <g:textField id="spAllowance" name="spAllowance" value="${spAllowance?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Special DA Allowance:</td>
            <td>
                <g:textField id="spDaAllowance" name="spDaAllowance" value="${spDaAllowance?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Add. Special Allowance:</td>
            <td>
                <g:textField id="addSpAllowance" name="addSpAllowance" value="${addSpAllowance?:0}" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Special Retro:</td>
            <td>
                <g:textField id="spRetro" name="spRetro" value="${totalPayable?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Retro PF:</td>
            <td>
                <g:textField id="retroPf" name="retroPf" value="${retroPf?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Monthly Other Earnings:</td>
            <td>
            <g:textField id="totalOtherPayable" name="totalOtherPayable" value="${totalOtherPayable?:0}" style="width: 144px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

    <br/>
    <table border="0" cellpadding="0" cellspacing="0" class="payroll_block">
        <tr>
            <td style="width: 160px;">Total Monthly Earnings:</td>
            <td>
                <g:textField id="totalMonthlyEarnings" name="totalMonthlyEarnings" value="${totalMonthlyEarnings?:0}" style="width: 140px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

    <br/><br/>

    <h3>Deductions</h3>
    <table class="payroll_block">
        <tr>
            <td>Loan Against Salary:</td>
            <td>
                <g:textField id="dLoanSalary" name="dLoanSalary" value="${dLoanSalary?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Loan Against PF:</td>
            <td>
                <g:textField id="dLoanPf" name="dLoanPf" value="${dLoanPf?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>PF Contribution:</td>
            <td>
                <g:textField id="dOwnPf" name="dOwnPf" value="${dOwnPf?:0}" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Others Deduction:</td>
            <td>
                <g:textField id="dOthers" name="dOthers" value="${dOthers?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Income Tax:</td>
            <td>
                <g:textField id="dIncomeTax" name="dIncomeTax" value="${dIncomeTax?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Revenue Stamp:</td>
            <td>
                <g:textField id="dRevenueStamp" name="dRevenueStamp" value="${dRevenueStamp?:10}" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Group Insurance:</td>
            <td style="width: 30px">
                <g:textField id="dGroupInsurance" name="dGroupInsurance" value="${dGroupInsurance?:0}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Income Tax(%):</td>
            <td>
                <g:textField id="dIncomeTaxPc" name="dIncomeTaxPc" value="${dIncomeTaxPc?:0}" />
            </td>
            <td>Total Deductions:</td>
            <td>
            <g:textField id="totalDeduction" name="totalDeduction" value="${totalDeduction?:0}"  style="width: 144px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

    <br/>
    <table border="0" cellpadding="0" cellspacing="0" class="payroll_block">
        <tr>
            <td style="width: 160px;">Net Monthly Payable:</td>
            <td>
                <g:textField id="netMonthlyPayable" name="netMonthlyPayable" value="${netMonthlyPayable?:0}" style="width: 140px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

    <br/>
    <table border="0" cellpadding="0" cellspacing="0" bgcolor="#ffefd5" >
        <tr>
            <td colspan="2" style="width: 100px;color: red;font-weight: bold;">
                Salary Stop?: &nbsp;  &nbsp;
                <g:checkBox id="salStopFlag" name="salStopFlag"  value=""/>
            </td>
        </tr>
     </table>
    <br/>
    <table border="0" cellpadding="0" cellspacing="0" class="payroll_block">
        <tr>
            <td>Remarks:</td>
            <td>
                <g:textArea id="payrollRemarks" name="payrollRemarks" value="" style="height: 50px;width: 523px; border: 1px solid #d3e4ec; padding: 5px;" rows="5" cols="20"/>
            </td>
        </tr>
    </table>

</div>









