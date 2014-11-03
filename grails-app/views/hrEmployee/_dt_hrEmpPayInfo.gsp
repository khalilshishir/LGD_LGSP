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

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="payScaleId"><g:message code="hrEmployee.payScaleId.label" default="Current Grade" /></label>
                        <g:if test="${hrEmployeePayStructures?.payScaleId == null}">
                            <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.list()}" value="" noSelection="['':'-Select One-']" onchange="getSlabNo();" class="form-control"/>
                        </g:if>
                        <g:else>
                            <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.list()}" value="${hrEmployeePayStructures?.payScaleId}" onchange="getSlabNo();" class="form-control"/>
                        </g:else>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="stage"><g:message code="hrEmployee.stage.label" default="Current Stage" /></label>
                        <g:if test="${hrEmployeePayStructures?.payScaleId == null && hrEmployeePayStructures?.stage == null}">
                            <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="" value="" noSelection="['':'-Select One-']" onchange="getStageData();" class="form-control"/>
                        </g:if>
                        <g:elseif test="${hrEmployeePayStructures?.payScaleId != null && hrEmployeePayStructures?.stage == null}">
                            <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="${hrms.HrPayscaleDetail.findAll("from HrPayscaleDetail where payscaleIdHrPayscale.id=? order by stage", [Long.valueOf(hrEmployeePayStructures?.payScaleId)])}" value="${hrEmployeePayStructures?.stage}" noSelection="['':'-Select One-']" onchange="getStageData();" class="form-control"/>
                        </g:elseif>
                        <g:else>
                            <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="${hrms.HrPayscaleDetail.findAll("from HrPayscaleDetail where payscaleIdHrPayscale.id=? order by stage", [Long.valueOf(hrEmployeePayStructures?.payScaleId)])}" value="${hrEmployeePayStructures?.stage}" noSelection="['':'-Select One-']" onchange="getStageData();" class="form-control"/>
                        </g:else>
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
                        <g:textField id="pBasic" name="pBasic" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic}"  readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pDa"><g:message code="hrEmployee.pDa.label" default="Dearness Allowance" /></label>
                        <g:textField id="pDa" name="pDa" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pDa}" readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pConveyance"><g:message code="hrEmployee.pConveyance.label" default="Conveyance Allowance" /></label>
                        <g:textField id="pConveyance" name="pConveyance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pConveyance}"  readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pHr"><g:message code="hrEmployee.pHr.label" default="House Rent" /></label>
                        <g:textField id="pHr" name="pHr" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pHr}" readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pWashingAllow"><g:message code="hrEmployee.pWashingAllow.label" default="Uniform Washing Allowance" /></label>
                        <g:textField id="pWashingAllow" name="pWashingAllow" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pWashingAllow}"   readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pMedicalAllowance"><g:message code="hrEmployee.pMedicalAllowance.label" default="Medical Allowance" /></label>
                        <g:textField id="pMedicalAllowance" name="pMedicalAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pMedicalAllowance}" readonly="readonly" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="pOrgPfContribution"><g:message code="hrEmployee.pOrgPfContribution.label" default="University PF Contribution" /></label>
                        <g:textField id="pOrgPfContribution" name="pOrgPfContribution" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pOrgPfContribution}"
                                     onchange="getNetPayableSalary(); changePFContributionValue(this.id);" onkeyup="getNetPayableSalary(); changePFContributionValue(this.id);" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="totalPayable"><g:message code="hrEmployee.totalPayable.label" default="Monthly Earnings" /></label>
                        <g:textField id="totalPayable" name="totalPayable" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic+hrEmployeePayStructures.pDa+hrEmployeePayStructures.pHr+hrEmployeePayStructures.pConveyance+hrEmployeePayStructures.pWashingAllow+hrEmployeePayStructures.pMedicalAllowance+hrEmployeePayStructures.pOrgPfContribution}" readonly="readonly" class="form-control" />
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
                        <g:textField id="spAllowance" name="spAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spAllowance}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="spDaAllowance"><g:message code="hrEmployee.spDaAllowance.label" default="Special DA Allowance" /></label>
                        <g:textField id="spDaAllowance" name="spDaAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spDaAllowance}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="addSpAllowance"><g:message code="hrEmployee.addSpAllowance.label" default="Add. Special Allowance" /></label>
                        <g:textField id="addSpAllowance" name="addSpAllowance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.addSpAllowance}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="spRetro"><g:message code="hrEmployee.spRetro.label" default="Special Retro" /></label>
                        <g:textField id="spRetro" name="spRetro" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spRetro}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="retroPf"><g:message code="hrEmployee.retroPf.label" default="Retro PF" /></label>
                        <g:textField id="retroPf" name="retroPf" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.retroPf}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="totalOtherPayable"><g:message code="hrEmployee.totalOtherPayable.label" default="Monthly Other Earnings" /></label>
                        <g:textField id="totalOtherPayable" name="totalOtherPayable" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.spAllowance+hrEmployeePayStructures.spDaAllowance+hrEmployeePayStructures.addSpAllowance+hrEmployeePayStructures.spRetro+hrEmployeePayStructures.retroPf}" readonly="readonly" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="totalMonthlyEarnings"><g:message code="hrEmployee.totalMonthlyEarnings.label" default="Total Monthly Earnings" /></label>
                        <g:textField id="totalMonthlyEarnings" name="totalMonthlyEarnings" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic+hrEmployeePayStructures.pDa+hrEmployeePayStructures.pHr+hrEmployeePayStructures.pConveyance+hrEmployeePayStructures.pWashingAllow+hrEmployeePayStructures.pMedicalAllowance+hrEmployeePayStructures.pOrgPfContribution+hrEmployeePayStructures.spAllowance+hrEmployeePayStructures.spDaAllowance+hrEmployeePayStructures.addSpAllowance+hrEmployeePayStructures.spRetro+hrEmployeePayStructures.retroPf}" readonly="readonly" class="form-control" />
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
                        <g:textField id="dLoanSalary" name="dLoanSalary" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanSalary}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dLoanPf"><g:message code="hrEmployee.dLoanPf.label" default="Loan Against PF" /></label>
                        <g:textField id="dLoanPf" name="dLoanPf" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanPf}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dOwnPf"><g:message code="hrEmployee.dOwnPf.label" default="PF Contribution" /></label>
                        <g:textField id="dOwnPf" name="dOwnPf" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dOwnPf}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dOthers"><g:message code="hrEmployee.dOthers.label" default="Others Deduction" /></label>
                        <g:textField id="dOthers" name="dOthers" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dOthers}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dIncomeTax"><g:message code="hrEmployee.dIncomeTax.label" default="Income Tax" /></label>
                        <g:textField id="dIncomeTax" name="dIncomeTax" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dIncomeTax}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dRevenueStamp"><g:message code="hrEmployee.dRevenueStamp.label" default="Revenue Stamp" /></label>
                        <g:textField id="dRevenueStamp" name="dRevenueStamp" value="${hrEmployeePayStructures==null?10:hrEmployeePayStructures.dRevenueStamp}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dGroupInsurance"><g:message code="hrEmployee.dGroupInsurance.label" default="Group Insurance" /></label>
                        <g:textField id="dGroupInsurance" name="dGroupInsurance" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dGroupInsurance}" onchange="getNetPayableSalary();" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="dIncomeTaxPc"><g:message code="hrEmployee.dIncomeTaxPc.label" default="Income Tax(%)" /></label>
                        <g:textField id="dIncomeTaxPc" name="dIncomeTaxPc" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dIncomeTaxPc}" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="totalDeduction"><g:message code="hrEmployee.totalDeduction.label" default="Total Deductions" /></label>
                        <g:textField id="totalDeduction" name="totalDeduction" value="${hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanSalary+hrEmployeePayStructures.dLoanPf+hrEmployeePayStructures.dOwnPf+hrEmployeePayStructures.dOthers+hrEmployeePayStructures.dIncomeTax+hrEmployeePayStructures.dRevenueStamp+hrEmployeePayStructures.dGroupInsurance}" readonly="readonly" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="netMonthlyPayable"><g:message code="hrEmployee.netMonthlyPayable.label" default="Net Monthly Payable" /></label>
                        <g:textField id="netMonthlyPayable" name="netMonthlyPayable" value="${(hrEmployeePayStructures==null?0:hrEmployeePayStructures.pBasic+hrEmployeePayStructures.pDa+hrEmployeePayStructures.pHr+hrEmployeePayStructures.pConveyance+hrEmployeePayStructures.pWashingAllow+hrEmployeePayStructures.pMedicalAllowance+hrEmployeePayStructures.pOrgPfContribution+hrEmployeePayStructures.spAllowance+hrEmployeePayStructures.spDaAllowance+hrEmployeePayStructures.addSpAllowance+hrEmployeePayStructures.spRetro+hrEmployeePayStructures.retroPf) - (hrEmployeePayStructures==null?0:hrEmployeePayStructures.dLoanSalary+hrEmployeePayStructures.dLoanPf+hrEmployeePayStructures.dOwnPf+hrEmployeePayStructures.dOthers+hrEmployeePayStructures.dIncomeTax+hrEmployeePayStructures.dRevenueStamp+hrEmployeePayStructures.dGroupInsurance)}" readonly="readonly" class="form-control" />
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
                        <g:checkBox id="salStopFlag" name="salStopFlag"  value="${hrEmployeePayStructures?.salStopFlag}"   />
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
                        <g:textArea id="payrollRemarks" name="payrollRemarks" value="${hrEmployeePayStructures?.payrollRemarks}" style="width:800%; height: 100%;"  class="form-control" />
                    </div>
                </div>
            </td>
        </tr>
    </table>
</div>





    <div style="text-align: right;">
        <g:link class="create" controller="accountReport" action="employeePayrollRemarkReport" style="text-decoration: none ">
            <input type="button" id="reportBrowser" name="reportBrowser"  value="Report Browser" class="add-btn" />
        </g:link>
    %{--<input type="button" id="delRecord" name="delRecord" value="Delete Record" onclick="delEmpPayInfo();" class="add-btn" />--}%
    </div>

    <g:hiddenField name='hrEmployeePayStructures.id' id="employeesPayrollId" value='${hrEmployeePayStructures?.id}'/>
    <g:hiddenField name='hrEmployeePayStructures.deleted' value='false'/>
    <g:hiddenField name='hrEmployeePayStructures.new' value="${hrEmployeePayStructures?.id == null?'true':'false'}"/>











