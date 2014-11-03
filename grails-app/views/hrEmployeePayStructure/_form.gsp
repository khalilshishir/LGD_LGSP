<%@ page import="hrms.HrPayscaleDetail; hrms.HrPayscale; hrms.HrEmployeePayStructure" %>

<script type="text/javascript">

   /* $(document).ready(function () {
        $("#currPayScaleId").attr("disabled","disabled");
    });*/

    function getEmpInfo() {
        var idNo = $('#employeeIdHrEmployee').val();

        $.ajax({
            type:'POST',
            async: false,
            url: '${request.contextPath}/HrEmployeePayStructure/getEmpInfo',
            dataType:"JSON",
            data:'idNo='+idNo,
            success:function(response) {
                var json = response;
                var data = json.message.split(":");
                $("#cardNo").val(data[0]);
                $("#designationName").val(data[1]);
                //$("#gradeNo").val(data[2]);
                //$("#payScaleId").val(parseInt(data[3]));
                //$("#currPayScaleId").val(parseInt(data[3]));
            },
            error:function(err) {
                alert(err);
                //alert('No Data Found...');
            }
        }) ;
    }

   function getGradeNo() {

       $.ajax({
           type:"POST",
           url:'${request.contextPath}/HrEmployeePayStructure/getGradeNo',
           dataType:'JSON',
           success:function(data) {
               var json = eval("(" + data.message + ")");
               var ddl = $("#payScaleId");
               ddl.empty();
               ddl.append("<option value='null'>-Select One-</option>");
               jQuery.each(json, function() {
                   ddl.append("<option value='" + this.id + "'>" + this.value + "</option>");
               });

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
                ddl.append("<option value='null'>-Select One-</option>");
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
            },
            error:function(err) {
                alert(err);
            }
        }) ;
    }


</script>

<div id="wrapper">
    <h3>Employees General Information</h3>
<table class="promint_block">
        <tr>
            <td>Employee ID:</td>
            <td>
            <g:textField id="cardNo" name="cardNo"  value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.cardNo}" readonly="readonly" style="background-color: #dcdcdc;text-align: center;" class="small_sized_txt"/>
            </td>
            <td>Employee Name:</td>
            <td>
                <g:if test="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.id == null}">
                    <g:select id="employeeIdHrEmployee" name="employeeIdHrEmployee.id" from="${hrms.HrEmployee.list()}" optionKey="id" required="" noSelection="${['null':'-Select One-']}" value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.id}" class="many-to-one" onchange="getEmpInfo();getGradeNo();"/>
                </g:if>
                <g:else>
                    <g:select id="employeeIdHrEmployee" name="employeeIdHrEmployee.id" from="${hrms.HrEmployee.findById(hrEmployeePayStructureInstance?.employeeIdHrEmployee?.id)}" optionKey="id" required="" value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.id}"/>
                </g:else>
            </td>
            <td>Designation:</td>
            <td>
            <g:textField id="designationName" name="designationName"  value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.designationIdHrDesignation?.designationName}" readonly="readonly" style="background-color: #dcdcdc;" class="small_sized_txt"/>
            </td>
        </tr>

    <tr>
        <td>Salary Grade:</td>
        <td>
            <g:if test="${hrEmployeePayStructureInstance?.payScaleId == null}">
                <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="" value="" noSelection="['null':'-Select One-']" onchange="getSlabNo();"/>
            </g:if>
            <g:else>
            <g:select id="payScaleId" name="payScaleId" optionKey="id" optionValue="gradeNo" from="${hrms.HrPayscale.findById(hrEmployeePayStructureInstance?.payScaleId)}" value="${hrEmployeePayStructureInstance?.payScaleId}"/>
            </g:else>
        </td>
        <td>Stage of Grade:</td>
        <td>
            <g:if test="${hrEmployeePayStructureInstance?.stage == null}">
                <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="" value="" noSelection="['null':'-Select One-']" onchange="getStageData();"/>
            </g:if>
            <g:else>
                <g:select id="stage" name="stage" optionKey="stage" optionValue="stage" from="${hrms.HrPayscaleDetail.find("from HrPayscaleDetail where payscaleIdHrPayscale.id=? and stage=?", [Long.valueOf(hrEmployeePayStructureInstance?.payScaleId),hrEmployeePayStructureInstance?.stage])}" value="${hrEmployeePayStructureInstance?.stage}"/>
            </g:else>
        </td>
        <td></td>
        <td>
        </td>
    </tr>
</table>

 <br/><br/>

    <h3>Earnings (from Pay Structure)</h3>
    <table class="payroll_block">
        <tr>
            <td>Basic:</td>
            <td>
                <g:textField id="pBasic" name="pBasic" value="${hrEmployeePayStructureInstance?.pBasic != null?hrEmployeePayStructureInstance?.pBasic:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </td>
            <td>Dearness Allowance:</td>
            <td>
                <g:textField id="pDa" name="pDa" value="${hrEmployeePayStructureInstance?.pDa != null?hrEmployeePayStructureInstance?.pDa:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </td>
            <td>House Rent:</td>
            <td>
                <g:textField id="pHr" name="pHr" value="${hrEmployeePayStructureInstance?.pHr != null?hrEmployeePayStructureInstance?.pHr:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </td>
        </tr>

        <tr>
            <td>Conveyance Allowance:</td>
            <td>
                <g:textField id="pConveyance" name="pConveyance" value="${hrEmployeePayStructureInstance?.pConveyance != null?hrEmployeePayStructureInstance?.pConveyance:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </td>
            <td>Washing Allowance:</td>
            <td>
                <g:textField id="pWashingAllow" name="pWashingAllow" value="${hrEmployeePayStructureInstance?.pWashingAllow != null?hrEmployeePayStructureInstance?.pWashingAllow:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </td>
            <td>Medical Allowance:</td>
            <td>
                <g:textField id="pMedicalAllowance" name="pMedicalAllowance" value="${hrEmployeePayStructureInstance?.pMedicalAllowance != null?hrEmployeePayStructureInstance?.pMedicalAllowance:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </td>
        </tr>

        <tr>
            <td>University PF Contribution:</td>
            <td>
                <g:textField id="pOrgPfContribution" name="pOrgPfContribution" value="${hrEmployeePayStructureInstance?.pOrgPfContribution != null?hrEmployeePayStructureInstance?.pOrgPfContribution:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </td>
            <td>Total Earnings:</td>
            <td>
                <g:if test="${params.action=='create'}">
                    <g:textField id="totalPayable" name="totalPayable" value="${totalPayable?:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
                </g:if>
                <g:else>
                    <g:textField id="totalPayable" name="totalPayable" value="${hrEmployeePayStructureInstance.pBasic+hrEmployeePayStructureInstance.pDa+hrEmployeePayStructureInstance.pHr+hrEmployeePayStructureInstance.pConveyance+hrEmployeePayStructureInstance.pWashingAllow+hrEmployeePayStructureInstance.pMedicalAllowance+hrEmployeePayStructureInstance.pOrgPfContribution}" readonly="readonly" style="background-color: #dcdcdc;"/>
                </g:else>
            </td>
        </tr>
    </table>

<br/><br/>
<h3>Other Earnings</h3>
<table class="payroll_block">
    <tr>
        <td>Special Allowance:</td>
        <td>
            <g:textField id="spAllowance" name="spAllowance" value="${hrEmployeePayStructureInstance?.spAllowance != null?hrEmployeePayStructureInstance?.spAllowance:0}"/>
        </td>
        <td>Special DA Allowance:</td>
        <td>
            <g:textField id="spDaAllowance" name="spDaAllowance" value="${hrEmployeePayStructureInstance?.spDaAllowance != null?hrEmployeePayStructureInstance?.spDaAllowance:0}"/>
        </td>
        <td>Add. Special Allowance:</td>
        <td>
            <g:textField id="addSpAllowance" name="addSpAllowance" value="${hrEmployeePayStructureInstance?.addSpAllowance != null?hrEmployeePayStructureInstance?.addSpAllowance:0}"/>
        </td>
    </tr>

    <tr>
        <td>Special Retro:</td>
        <td>
            <g:textField id="spRetro" name="spRetro" value="${hrEmployeePayStructureInstance?.spRetro != null?hrEmployeePayStructureInstance?.spRetro:0}"/>
        </td>
        <td>Retro PF:</td>
        <td>
            <g:textField id="retroPf" name="retroPf" value="${hrEmployeePayStructureInstance?.retroPf != null?hrEmployeePayStructureInstance?.retroPf:0}"/>
        </td>

        <td>Total Other Earnings:</td>
        <td>
            <g:if test="${params.action=='create'}">
                <g:textField id="totalOtherPayable" name="totalOtherPayable" value="${totalOtherPayable?:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </g:if>
            <g:else>
                <g:textField id="totalOtherPayable" name="totalOtherPayable" value="${hrEmployeePayStructureInstance?.spAllowance+hrEmployeePayStructureInstance?.spDaAllowance+hrEmployeePayStructureInstance?.addSpAllowance+hrEmployeePayStructureInstance?.spRetro+hrEmployeePayStructureInstance?.retroPf}" readonly="readonly" style="background-color: #dcdcdc;"/>
            </g:else>
        </td>
    </tr>
</table>


    <br/><br/>

    <h3>Deductions</h3>
    <table class="payroll_block">
        <tr>
            <td>Loan Against Salary:</td>
            <td>
                <g:textField id="dLoanSalary" name="dLoanSalary" value="${hrEmployeePayStructureInstance?.dLoanSalary != null?hrEmployeePayStructureInstance?.dLoanSalary:0}"/>
            </td>
            <td>Loan Against PF:</td>
            <td>
                <g:textField id="dLoanPf" name="dLoanPf" value="${hrEmployeePayStructureInstance?.dLoanPf != null?hrEmployeePayStructureInstance?.dLoanPf:0}"/>
            </td>
            <td>PF Contribution:</td>
            <td>
                <g:textField id="dOwnPf" name="dOwnPf" value="${hrEmployeePayStructureInstance?.dOwnPf != null?hrEmployeePayStructureInstance?.dOwnPf:0}"/>
            </td>
        </tr>

        <tr>
            <td>Others Deduction:</td>
            <td>
                <g:textField id="dOthers" name="dOthers" value="${hrEmployeePayStructureInstance?.dOthers != null?hrEmployeePayStructureInstance?.dOthers:0}"/>
            </td>
            <td>Income Tax:</td>
            <td>
                <g:textField id="dIncomeTax" name="dIncomeTax" value="${hrEmployeePayStructureInstance?.dIncomeTax != null?hrEmployeePayStructureInstance?.dIncomeTax:0}" />
            </td>
            <td>Revenue Stamp:</td>
            <td>
                <g:textField id="dRevenueStamp" name="dRevenueStamp" value="${hrEmployeePayStructureInstance?.dRevenueStamp != null?hrEmployeePayStructureInstance?.dRevenueStamp:0}"/>
            </td>
        </tr>

        <tr>
            <td>Group Insurance:</td>
            <td style="width: 30px">
                <g:textField id="dGroupInsurance" name="dGroupInsurance" value="${hrEmployeePayStructureInstance?.dGroupInsurance != null?hrEmployeePayStructureInstance?.dGroupInsurance:0}"/>
            </td>
            <td>Total Deductions:</td>
            <td>
                <g:if test="${params.action=='create'}">
                    <g:textField id="totalDeduction" name="totalDeduction" value="${totalDeduction?:0}" readonly="readonly" style="background-color: #dcdcdc;"/>
                </g:if>
                <g:else>
                    <g:textField id="totalDeduction" name="totalDeduction" value="${hrEmployeePayStructureInstance.dLoanSalary+hrEmployeePayStructureInstance.dLoanPf+hrEmployeePayStructureInstance.dOwnPf+hrEmployeePayStructureInstance.dOthers+hrEmployeePayStructureInstance.dIncomeTax+hrEmployeePayStructureInstance.dRevenueStamp+hrEmployeePayStructureInstance.dGroupInsurance}" readonly="readonly" style="background-color: #dcdcdc;"/>
                </g:else>
            </td>
        </tr>
    </table>
    <br/>
    <table border="0" cellpadding="0" cellspacing="0" bgcolor="#ffefd5">
        <tr>
            <td style="width: 100px;color: red;font-weight: bold;">Salary Stop?:</td>
            <td>
                <g:checkBox id="salStopFlag" name="salStopFlag"  value="${hrEmployeePayStructureInstance?.salStopFlag}"/>
            </td>
        </tr>
    </table>

</div>

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'payScaleId', 'error')} ">
    <label for="payScaleId">
        --}%%{--<g:message code="hrEmployeePayStructure.payScaleId.label" default="Pay Scale Id:" />--}%%{--
    </label>
    <g:hiddenField id="payScaleId" name="payScaleId" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'payScaleId')}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'cardNo', 'error')} ">
    <label for="cardNo">
        <g:message code="hrEmployeePayStructureInstance.cardNo.label" default="Employee Card No.:" />

    </label>
    <g:textField id="cardNo" name="cardNo"  value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.cardNo}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'employeeIdHrEmployee', 'error')} required">
    <label for="employeeIdHrEmployee">
        <g:message code="hrEmployeePayStructure.employeeIdHrEmployee.label" default="Employee:" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="employeeIdHrEmployee" name="employeeIdHrEmployee.id" from="${hrms.HrEmployee.list()}" optionKey="id" required="" noSelection="${['null':'Select One']}" value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.id}" class="many-to-one" onchange="getEmpInfo();"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'designationName', 'error')} ">
    <label for="designationName">
        <g:message code="hrEmployeePayStructureInstance.designationName.label" default="Employee Designation:" />

    </label>
    <g:textField id="designationName" name="designationName"  value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.designationIdHrDesignation?.designationName}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'gradeNo', 'error')} ">
    <label for="gradeNo">
        <g:message code="hrEmployeePayStructureInstance.gradeNo.label" default="Salary Grade:" />
    </label>
    <g:textField id="gradeNo" name="gradeNo"  value="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.designationIdHrDesignation?.hrPayscaleList?.gradeNo}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'stage', 'error')} ">
    <label for="stage">
        <g:message code="hrEmployeePayStructure.stage.label" default="Stage of Grade:" />

    </label>
    <g:textField id="stage" name="stage" value="${hrEmployeePayStructureInstance?.stage}" onchange="getStageData();"/>
    --}%%{--<g:select id="stage" name="stage" value="" from="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.designationIdHrDesignation}"/>--}%%{--
</div>--}%


%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pBasic', 'error')} ">
	<label for="pBasic">
		<g:message code="hrEmployeePayStructure.pBasic.label" default="Basic:" />

	</label>
	<g:textField id="pBasic" name="pBasic" value="${hrEmployeePayStructureInstance?.pBasic != null?hrEmployeePayStructureInstance?.pBasic:0}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pDa', 'error')} ">
	<label for="pDa">
		<g:message code="hrEmployeePayStructure.pDa.label" default="Dearness Allowance:" />
		
	</label>
	<g:textField id="pDa" name="pDa" value="${hrEmployeePayStructureInstance?.pDa != null?hrEmployeePayStructureInstance?.pDa:0}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pHr', 'error')} ">
	<label for="pHr">
		<g:message code="hrEmployeePayStructure.pHr.label" default="House Rent:" />
		
	</label>
	<g:textField id="pHr" name="pHr" value="${hrEmployeePayStructureInstance?.pHr != null?hrEmployeePayStructureInstance?.pHr:0}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pConveyance', 'error')} ">
	<label for="pConveyance">
		<g:message code="hrEmployeePayStructure.pConveyance.label" default="Conveyance:" />

	</label>
	<g:textField id="pConveyance" name="pConveyance" value="${hrEmployeePayStructureInstance?.pConveyance != null?hrEmployeePayStructureInstance?.pConveyance:0}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pWashingAllow', 'error')} ">
	<label for="pWashingAllow">
		<g:message code="hrEmployeePayStructure.pWashingAllow.label" default="Washing Allowance:" />
		
	</label>
	<g:textField id="pWashingAllow" name="pWashingAllow" value="${hrEmployeePayStructureInstance?.pWashingAllow != null?hrEmployeePayStructureInstance?.pWashingAllow:0}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pMedicalAllowance', 'error')} ">
	<label for="pMedicalAllowance">
		<g:message code="hrEmployeePayStructure.pMedicalAllowance.label" default="Medical Allowance:" />
		
	</label>
	<g:textField id="pMedicalAllowance" name="pMedicalAllowance" value="${hrEmployeePayStructureInstance?.pMedicalAllowance != null?hrEmployeePayStructureInstance?.pMedicalAllowance:0}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pOrgPfContribution', 'error')} ">
	<label for="pOrgPfContribution">
		<g:message code="hrEmployeePayStructure.pOrgPfContribution.label" default="University PF Contribution:" />
		
	</label>
	<g:textField id="pOrgPfContribution" name="pOrgPfContribution" value="${hrEmployeePayStructureInstance?.pOrgPfContribution != null?hrEmployeePayStructureInstance?.pOrgPfContribution:0}" readonly="readonly"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'totalPayable', 'error')} ">
    <label for="totalPayable">
        <g:message code="hrEmployeePayStructure.totalPayable.label" default="Total Earnings:" />
    </label>
    <g:if test="${params.action=='create'}">
    <g:textField id="totalPayable" name="totalPayable" value="${totalPayable}" readonly="readonly"/>
    </g:if>
    <g:else>
        <g:textField id="totalPayable" name="totalPayable" value="${hrEmployeePayStructureInstance.pBasic+hrEmployeePayStructureInstance.pDa+hrEmployeePayStructureInstance.pHr+hrEmployeePayStructureInstance.pConveyance+hrEmployeePayStructureInstance.pWashingAllow+hrEmployeePayStructureInstance.pMedicalAllowance+hrEmployeePayStructureInstance.pOrgPfContribution}" readonly="readonly"/>
    </g:else>

</div>--}%


%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pChargeAllow', 'error')} ">
	<label for="pChargeAllow">
		<g:message code="hrEmployeePayStructure.pChargeAllow.label" default="PC harge Allow" />
		
	</label>
	<g:field type="number" name="pChargeAllow" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'pChargeAllow')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'pRetro', 'error')} ">
	<label for="pRetro">
		<g:message code="hrEmployeePayStructure.pRetro.label" default="PR etro" />
		
	</label>
	<g:field type="number" name="pRetro" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'pRetro')}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'dLoanSalary', 'error')} ">
	<label for="dLoanSalary">
		<g:message code="hrEmployeePayStructure.dLoanSalary.label" default="DL oan Salary" />
		
	</label>
	<g:field type="number" name="dLoanSalary" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'dLoanSalary')}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'dLoanPf', 'error')} ">
	<label for="dLoanPf">
		<g:message code="hrEmployeePayStructure.dLoanPf.label" default="DL oan Pf" />
		
	</label>
	<g:field type="number" name="dLoanPf" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'dLoanPf')}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'dOwnPf', 'error')} ">
	<label for="dOwnPf">
		<g:message code="hrEmployeePayStructure.dOwnPf.label" default="DO wn Pf" />
		
	</label>
	<g:field type="number" name="dOwnPf" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'dOwnPf')}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'dIncomeTax', 'error')} ">
	<label for="dIncomeTax">
		<g:message code="hrEmployeePayStructure.dIncomeTax.label" default="DI ncome Tax" />
		
	</label>
	<g:field type="number" name="dIncomeTax" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'dIncomeTax')}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'dRevenueStamp', 'error')} ">
	<label for="dRevenueStamp">
		<g:message code="hrEmployeePayStructure.dRevenueStamp.label" default="DR evenue Stamp" />
		
	</label>
	<g:field type="number" name="dRevenueStamp" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'dRevenueStamp')}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'dGroupInsurance', 'error')} ">
	<label for="dGroupInsurance">
		<g:message code="hrEmployeePayStructure.dGroupInsurance.label" default="DG roup Insurance" />
		
	</label>
	<g:field type="number" name="dGroupInsurance" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'dGroupInsurance')}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrEmployeePayStructureInstance, field: 'dOthers', 'error')} ">
	<label for="dOthers">
		<g:message code="hrEmployeePayStructure.dOthers.label" default="DO thers" />
		
	</label>
	<g:field type="number" name="dOthers" value="${fieldValue(bean: hrEmployeePayStructureInstance, field: 'dOthers')}"/>
</div>--}%








