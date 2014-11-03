<%@ page import="hrms.HrEmployeePayStructure;hrms.HrEmployee" %>

<script type="text/javascript">

    function employeePayrollRemarkReport() {
        $.ajax({
            type:"POST",
            url:'${request.contextPath}/AccountReport/employeePayrollRemarkReport',
            dataType:'JSON',
            success:function(data) {
                alert(data.message);
            },
            error:function(err) {
                alert(err);
            }
        });
    }

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

    // employees payroll related record deletion
    function delEmpPayInfo() {

        var employeesPayrollId = document.getElementById('employeesPayrollId').value;
        if(employeesPayrollId != "")
        {
            var status = confirm("Do you want to Delete Continue?");

            if (status == true) {

                $.ajax({
                    type:'POST',
                    url: '${request.contextPath}/HrEmployee/delEmpPayInfo',
                    dataType:"JSON",
                    data:'employeesPayrollId='+employeesPayrollId,
                    success:function(response) {
                        var json = response;
                        var data = json.message;
                        /*$("#pBasic").val("");*/
                        var message = data;
                        var title="Record Status";
                        $("<div></div>").dialog( {
                            buttons: { "Ok": function () {
                                $(this).dialog("close");
                                return false;
                            }},
                            close: function (event, ui) { $(this).remove(); },
                            resizable: false,
                            title: title,
                            modal: true,
                            position:['center',200]
                        }).html(message);
                    },
                    error:function(err) {
                        alert(err);
                    }
                }) ;
            }
            else
            {
                null
            }

        }
        else
        {
            var message = "No Data Found";
            var title="Record Status";
            $("<div></div>").dialog( {
                buttons: { "Ok": function () {
                    $(this).dialog("close");
                    //$("#fromDate").attr("value","").focus();
                    return false;
                }},
                close: function (event, ui) { $(this).remove(); },
                resizable: false,
                title: title,
                modal: true,
                position:['center',200]
            }).html(message);
        }
    }

</script>

%{--summary function are here--}%
<script type="text/javascript">

    function changePFContributionValue(id) {
       // alert("obj.id :"+id);
        var val=document.getElementById(id).value;
        if(val.length>0){
            document.getElementById("dOwnPf").value =parseFloat(val)*2;
        } else{
            document.getElementById("dOwnPf").value =val;
        }
    }


    // Net Payable Salary
    function getNetPayableSalary()
    {


        //document.getElementById("totalPayable").value = parseFloat(document.getElementById("pBasic").value)+parseFloat(document.getElementById("pDa").value)+parseFloat(document.getElementById("pHr").value)+parseFloat(document.getElementById("pConveyance").value)+parseFloat(document.getElementById("pWashingAllow").value)+parseFloat(document.getElementById("pMedicalAllowance").value)+parseFloat(document.getElementById("pOrgPfContribution").value);
        getExpectedFieldValue("totalPayable","pBasic:pDa:pHr:pConveyance:pWashingAllow:pMedicalAllowance:pOrgPfContribution");
        document.getElementById("totalOtherPayable").value = parseFloat(document.getElementById("spAllowance").value)+parseFloat(document.getElementById("spDaAllowance").value)+parseFloat(document.getElementById("addSpAllowance").value)+parseFloat(document.getElementById("spRetro").value)+parseFloat(document.getElementById("retroPf").value);
        ///getExpectedFieldValue("totalOtherPayable","spAllowance:spDaAllowance:addSpAllowance:spRetro:retroPf");
        document.getElementById("totalMonthlyEarnings").value = parseFloat(document.getElementById("totalPayable").value) + parseFloat(document.getElementById("totalOtherPayable").value);
        document.getElementById("totalDeduction").value = parseFloat(document.getElementById("dLoanSalary").value)+parseFloat(document.getElementById("dLoanPf").value)+parseFloat(document.getElementById("dOwnPf").value)+parseFloat(document.getElementById("dOthers").value)+parseFloat(document.getElementById("dIncomeTax").value)+parseFloat(document.getElementById("dRevenueStamp").value)+parseFloat(document.getElementById("dGroupInsurance").value);
        document.getElementById("netMonthlyPayable").value = parseFloat(document.getElementById("totalMonthlyEarnings").value) - parseFloat(document.getElementById("totalDeduction").value);
    }

    function getExpectedFieldValue(v,idString){
        var returnVal=0.0
        var fldValF
        var fldVal
        var id=v
        var idStr=idString
        var subStr=idStr.split(":")

        for(var i=0;i<subStr.length;i++ ){
            fldVal=document.getElementById(subStr[i]).value;

            if(fldVal.trim()==""){
                fldVal=0.0
            }else{
                fldValF= parseFloat(fldVal);
            }
            if(fldValF==""){
               returnVal=0.0;
            }
            else{
                returnVal=parseFloat(returnVal)+fldValF;
            }
        }
        document.getElementById(id).value =returnVal;
    }
</script>

<div style="width: 990px; background: #fff; padding: 5px;border: 1px solid #ccc;">

    <table class="promint_block">

        <tr>
            <td style="width:115px ">Current Grade:</td>
            <td style="width:170px ">
                <g:if test="${hrEmployeePayStructures?.payScaleId == null}">
                    <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.list()}" value="" noSelection="['':'-Select One-']" onchange="getSlabNo();"/>
                </g:if>
                <g:else>
                    %{--<g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.findById(hrEmployeePayStructures?.payScaleId)}" value="${hrEmployeePayStructures?.payScaleId}"/>--}%
                    <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.list()}" value="${hrEmployeePayStructures?.payScaleId}" onchange="getSlabNo();"/>
                </g:else>

            </td>
            <td style="width:115px ">Current Stage:</td>
            <td style="width:200px ">
                <g:if test="${hrEmployeePayStructures?.payScaleId == null && hrEmployeePayStructures?.stage == null}">
                    <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="" value="" noSelection="['':'-Select One-']" onchange="getStageData();"/>
                </g:if>
                <g:elseif test="${hrEmployeePayStructures?.payScaleId != null && hrEmployeePayStructures?.stage == null}">
                    %{--<g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="${hrms.HrPayscaleDetail.find("from HrPayscaleDetail where payscaleIdHrPayscale.id=? and stage=?", [Long.valueOf(hrEmployeePayStructures?.payScaleId),Integer.valueOf(hrEmployeePayStructures?.stage)])}" value="${hrEmployeePayStructures?.stage}"/>--}%
                    <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="${hrms.HrPayscaleDetail.findAll("from HrPayscaleDetail where payscaleIdHrPayscale.id=? order by stage", [Long.valueOf(hrEmployeePayStructures?.payScaleId)])}" value="${hrEmployeePayStructures?.stage}" noSelection="['':'-Select One-']" onchange="getStageData();"/>
                </g:elseif>
                <g:else>
                %{--<g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="${hrms.HrPayscaleDetail.find("from HrPayscaleDetail where payscaleIdHrPayscale.id=? and stage=?", [Long.valueOf(hrEmployeePayStructures?.payScaleId),Integer.valueOf(hrEmployeePayStructures?.stage)])}" value="${hrEmployeePayStructures?.stage}"/>--}%
                    <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="${hrms.HrPayscaleDetail.findAll("from HrPayscaleDetail where payscaleIdHrPayscale.id=? order by stage", [Long.valueOf(hrEmployeePayStructures?.payScaleId)])}" value="${hrEmployeePayStructures?.stage}" noSelection="['':'-Select One-']" onchange="getStageData();"/>
                </g:else>

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
                <g:textField id="pBasic" name="pBasic" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic}"  style="width: 144px;" readonly="readonly" class="readonly-input" onchange="getNetPayableSalary();"/>
            </td>
            <td>Dearness Allowance:</td>
            <td>
                <g:textField id="pDa" name="pDa" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pDa}"   style="width: 144px;" readonly="readonly" class="readonly-input" onchange="getNetPayableSalary();"/>
            </td>
            <td>House Rent:</td>
            <td>
                <g:textField id="pHr" name="pHr" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pHr}"   style="width: 144px;" readonly="readonly" class="readonly-input" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Conveyance Allowance:</td>
            <td>
                <g:textField id="pConveyance" name="pConveyance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pConveyance}" style="width: 144px;" readonly="readonly" class="readonly-input" onchange="getNetPayableSalary();"/>
            </td>
            <td>Uniform Washing Allowance:</td>
            <td>
                <g:textField id="pWashingAllow" name="pWashingAllow" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pWashingAllow}" style="width: 144px;" readonly="readonly" class="readonly-input" onchange="getNetPayableSalary();"/>
            </td>
            <td>Medical Allowance:</td>
            <td>
                <g:textField id="pMedicalAllowance" name="pMedicalAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pMedicalAllowance}" style="width: 144px;" readonly="readonly" class="readonly-input" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>University PF Contribution:</td>
            <td>
                <g:textField id="pOrgPfContribution" name="pOrgPfContribution" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pOrgPfContribution}" style="width: 144px;" onchange="changePFContributionValue(this.id);getNetPayableSalary();" onkeyup="changePFContributionValue(this.id);getNetPayableSalary();"/>
            </td>
            <td>Monthly Earnings:</td>
            <td>
                <g:textField id="totalPayable" name="totalPayable" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic+hrEmployeePayStructures.pDa+hrEmployeePayStructures.pHr+hrEmployeePayStructures.pConveyance+hrEmployeePayStructures.pWashingAllow+hrEmployeePayStructures.pMedicalAllowance+hrEmployeePayStructures.pOrgPfContribution}" style="width: 144px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

    <br/><br/>
    <h3>Other Earnings</h3>
    <table class="payroll_block">
        <tr>
            <td>Special Allowance:</td>
            <td>
                <g:textField id="spAllowance" name="spAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spAllowance}" onkeyup="getNetPayableSalary();" onchange="getNetPayableSalary();"/>
            </td>
            <td>Special DA Allowance:</td>
            <td>
                <g:textField id="spDaAllowance" name="spDaAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spDaAllowance}" onkeyup="getNetPayableSalary();" onchange="getNetPayableSalary();"/>
            </td>
            <td>Add. Special Allowance:</td>
            <td>
                <g:textField id="addSpAllowance" name="addSpAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.addSpAllowance}" onkeyup="getNetPayableSalary();" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Special Retro:</td>
            <td>
                <g:textField id="spRetro" name="spRetro" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spRetro}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Retro PF:</td>
            <td>
                <g:textField id="retroPf" name="retroPf" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.retroPf}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Monthly Other Earnings:</td>
            <td>
                <g:textField id="totalOtherPayable" name="totalOtherPayable" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spAllowance+hrEmployeePayStructures.spDaAllowance+hrEmployeePayStructures.addSpAllowance+hrEmployeePayStructures.spRetro+hrEmployeePayStructures.retroPf}" style="width: 144px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>

    </table>

    <br/>
    <table border="0" cellpadding="0" cellspacing="0" class="payroll_block">
        <tr>
            <td style="width: 160px;">Total Monthly Earnings:</td>
            <td>
                <g:textField id="totalMonthlyEarnings" name="totalMonthlyEarnings" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic+hrEmployeePayStructures.pDa+hrEmployeePayStructures.pHr+hrEmployeePayStructures.pConveyance+hrEmployeePayStructures.pWashingAllow+hrEmployeePayStructures.pMedicalAllowance+hrEmployeePayStructures.pOrgPfContribution+hrEmployeePayStructures.spAllowance+hrEmployeePayStructures.spDaAllowance+hrEmployeePayStructures.addSpAllowance+hrEmployeePayStructures.spRetro+hrEmployeePayStructures.retroPf}" style="width: 140px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

    <br/><br/>

    <h3>Deductions</h3>
    <table class="payroll_block">
        <tr>
            <td>Loan Against Salary:</td>
            <td>
                <g:textField id="dLoanSalary" name="dLoanSalary" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanSalary}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Loan Against PF:</td>
            <td>
                <g:textField id="dLoanPf" name="dLoanPf" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanPf}" onchange="getNetPayableSalary();"/>
            </td>
            <td>PF Contribution:</td>
            <td>
                <g:textField id="dOwnPf" name="dOwnPf" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dOwnPf}" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Others Deduction:</td>
            <td>
                <g:textField id="dOthers" name="dOthers" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dOthers}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Income Tax:</td>
            <td>
                <g:textField id="dIncomeTax" name="dIncomeTax" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dIncomeTax}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Revenue Stamp:</td>
            <td>
                <g:textField id="dRevenueStamp" name="dRevenueStamp" value="${hrEmployeePayStructures==null?10:hrEmployeePayStructures.dRevenueStamp}" onchange="getNetPayableSalary();"/>
            </td>
        </tr>

        <tr>
            <td>Group Insurance:</td>
            <td style="width: 30px">
                <g:textField id="dGroupInsurance" name="dGroupInsurance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dGroupInsurance}" onchange="getNetPayableSalary();"/>
            </td>
            <td>Income Tax(%):</td>
            <td>
                <g:textField id="dIncomeTaxPc" name="dIncomeTaxPc" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dIncomeTaxPc}" />
            </td>
            <td>Total Deductions:</td>
            <td>
                <g:textField id="totalDeduction" name="totalDeduction" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanSalary+hrEmployeePayStructures.dLoanPf+hrEmployeePayStructures.dOwnPf+hrEmployeePayStructures.dOthers+hrEmployeePayStructures.dIncomeTax+hrEmployeePayStructures.dRevenueStamp+hrEmployeePayStructures.dGroupInsurance}" style="width: 144px;" readonly="readonly" class="readonly-input"/>
            </td>
        </tr>
    </table>

<br/>
<table border="0" cellpadding="0" cellspacing="0" class="payroll_block">
    <tr>
        <td style="width: 160px;">Net Monthly Payable:</td>
        <td>
            <g:textField id="netMonthlyPayable" name="netMonthlyPayable" value="${(hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic+hrEmployeePayStructures.pDa+hrEmployeePayStructures.pHr+hrEmployeePayStructures.pConveyance+hrEmployeePayStructures.pWashingAllow+hrEmployeePayStructures.pMedicalAllowance+hrEmployeePayStructures.pOrgPfContribution+hrEmployeePayStructures.spAllowance+hrEmployeePayStructures.spDaAllowance+hrEmployeePayStructures.addSpAllowance+hrEmployeePayStructures.spRetro+hrEmployeePayStructures.retroPf) - (hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanSalary+hrEmployeePayStructures.dLoanPf+hrEmployeePayStructures.dOwnPf+hrEmployeePayStructures.dOthers+hrEmployeePayStructures.dIncomeTax+hrEmployeePayStructures.dRevenueStamp+hrEmployeePayStructures.dGroupInsurance)}" style="width: 140px;" readonly="readonly" class="readonly-input"/>
        </td>
    </tr>
</table>

    <br/>
    <table border="0" cellpadding="0" cellspacing="0" bgcolor="#ffefd5">
        <tr>
            <td style="width: 100px;color: red;font-weight: bold;">
                Salary Stop?:&nbsp;  &nbsp;
                <g:checkBox id="salStopFlag" name="salStopFlag"  value="${hrEmployeePayStructures?.salStopFlag}"/>
            </td>
        </tr>
    </table>

    <br/>
    <table border="0" cellpadding="0" cellspacing="0" class="payroll_block">
        <tr>
            <td>Remarks:</td>
            <td>
                <g:textArea id="payrollRemarks" name="payrollRemarks" value="${hrEmployeePayStructures?.payrollRemarks}" style="height: 50px;width: 523px; border: 1px solid #d3e4ec; padding: 5px;" rows="5" cols="20"/>
            </td>
        </tr>
    </table>

    <div style="text-align: right;">
        <g:link class="create" controller="accountReport" action="employeePayrollRemarkReport" style="text-decoration: none ">
            <input type="button" id="reportBrowser" name="reportBrowser"  value="Report Browser" class="add-btn" />
        </g:link>
    %{--<input type="button" id="delRecord" name="delRecord" value="Delete Record" onclick="delEmpPayInfo();" class="add-btn" />--}%
    </div>

    <g:hiddenField name='hrEmployeePayStructures.id' id="employeesPayrollId" value='${hrEmployeePayStructures?.id}'/>
    <g:hiddenField name='hrEmployeePayStructures.deleted' value='false'/>
    <g:hiddenField name='hrEmployeePayStructures.new' value="${hrEmployeePayStructures?.id == null?'true':'false'}"/>

</div>









