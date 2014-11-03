
<%@ page import="hrms.HrEmployeePayStructure" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrEmployeePayStructure.label', default: 'Employee Monthly Payable Salary')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hrEmployeePayStructure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		%{--<div id="show-hrEmployeePayStructure" class="content scaffold-show" role="main">--}%
        <div id="wrapper">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hrEmployeePayStructure">

                <g:if test="${hrEmployeePayStructureInstance?.employeeIdHrEmployee}">
                    <li class="fieldcontain">
                        <span id="cardNo-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.employeeIdHrEmployee.label" default="Employee ID:" /></span>

                        <span class="property-value" aria-labelledby="employeeIdHrEmployee-label">${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.cardNo}</span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeePayStructureInstance?.employeeIdHrEmployee}">
                    <li class="fieldcontain">
                        <span id="employeeIdHrEmployee-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.employeeIdHrEmployee.label" default="Name of Employee:" /></span>

                        <span class="property-value" aria-labelledby="employeeIdHrEmployee-label">%{--<g:link controller="hrEmployee" action="show" id="${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.id}">--}%${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.encodeAsHTML()}%{--</g:link>--}%</span>

                    </li>
                </g:if>

                <g:if test="${hrEmployeePayStructureInstance?.employeeIdHrEmployee}">
                    <li class="fieldcontain">
                        <span id="Designation-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.employeeIdHrEmployee.label" default="Designation:" /></span>

                        <span class="property-value" aria-labelledby="employeeIdHrEmployee-label">${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.designationIdHrDesignation}</span>

                    </li>
                </g:if>


            <g:if test="${hrEmployeePayStructureInstance?.employeeIdHrEmployee}">
                <li class="fieldcontain">
                    <span id="gradeNo-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.employeeIdHrEmployee.label" default="Salary Grade:" /></span>

                    <span class="property-value" aria-labelledby="employeeIdHrEmployee-label">${hrms.HrPayscale.findById(hrEmployeePayStructureInstance?.payScaleId)}</span>

                </li>
            </g:if>

            <g:if test="${hrEmployeePayStructureInstance?.stage}">
                <li class="fieldcontain">
                    <span id="stage-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.stage.label" default="Stage of Grade:" /></span>

                    <span class="property-value" aria-labelledby="stage-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="stage"/></span>

                </li>
            </g:if>

				<g:if test="${hrEmployeePayStructureInstance?.pBasic}">
				<li class="fieldcontain">
					<span id="pBasic-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.pBasic.label" default="Basic:" /></span>
					
						<span class="property-value" aria-labelledby="pBasic-label">${hrEmployeePayStructureInstance?.pBasic}</span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.pDa}">
				<li class="fieldcontain">
					<span id="pDa-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.pDa.label" default="Dearness Allowance:" /></span>
					
						<span class="property-value" aria-labelledby="pDa-label">${hrEmployeePayStructureInstance?.pDa}</span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.pHr}">
				<li class="fieldcontain">
					<span id="pHr-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.pHr.label" default="House Rent:" /></span>
					
						<span class="property-value" aria-labelledby="pHr-label">${hrEmployeePayStructureInstance?.pHr}</span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.pConveyance}">
				<li class="fieldcontain">
					<span id="pConveyance-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.pConveyance.label" default="Conveyance:" /></span>
					
						<span class="property-value" aria-labelledby="pConveyance-label">${hrEmployeePayStructureInstance?.pConveyance}</span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.pWashingAllow}">
				<li class="fieldcontain">
					<span id="pWashingAllow-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.pWashingAllow.label" default="Washing Allowance:" /></span>
					
						<span class="property-value" aria-labelledby="pWashingAllow-label">${hrEmployeePayStructureInstance?.pWashingAllow}</span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.pMedicalAllowance}">
				<li class="fieldcontain">
					<span id="pMedicalAllowance-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.pMedicalAllowance.label" default="Medical Allowance:" /></span>
					
						<span class="property-value" aria-labelledby="pMedicalAllowance-label">${hrEmployeePayStructureInstance?.pMedicalAllowance}</span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.pOrgPfContribution}">
				<li class="fieldcontain">
					<span id="pOrgPfContribution-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.pOrgPfContribution.label" default="University PF Contribution:" /></span>
					
						<span class="property-value" aria-labelledby="pOrgPfContribution-label">${hrEmployeePayStructureInstance?.pOrgPfContribution}</span>
					
				</li>
				</g:if>

            <g:if test="${hrEmployeePayStructureInstance?.employeeIdHrEmployee}">
                <li class="fieldcontain">
                    <span id="totalPayable-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.totalPayable.label" default="Total Pay Structure Earning:" /></span>

                    <span class="property-value" aria-labelledby="pOrgPfContribution-label">${hrEmployeePayStructureInstance?.pBasic+hrEmployeePayStructureInstance?.pDa+hrEmployeePayStructureInstance?.pHr+hrEmployeePayStructureInstance?.pConveyance+hrEmployeePayStructureInstance?.pWashingAllow+hrEmployeePayStructureInstance?.pMedicalAllowance+hrEmployeePayStructureInstance?.pOrgPfContribution}</span>

                </li>
            </g:if>


            <g:if test="${hrEmployeePayStructureInstance?.spAllowance}">
                <li class="fieldcontain">
                    <span id="spAllowance-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.spAllowance.label" default="Special Allowance:" /></span>

                    <span class="property-value" aria-labelledby="spAllowance-label">${hrEmployeePayStructureInstance?.spAllowance}</span>

                </li>
            </g:if>

            <g:if test="${hrEmployeePayStructureInstance?.spDaAllowance}">
                <li class="fieldcontain">
                    <span id="spDaAllowance-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.spDaAllowance.label" default="Special DA Allowance:" /></span>

                    <span class="property-value" aria-labelledby="spDaAllowance-label">${hrEmployeePayStructureInstance?.spDaAllowance}</span>

                </li>
            </g:if>

            <g:if test="${hrEmployeePayStructureInstance?.addSpAllowance}">
                <li class="fieldcontain">
                    <span id="addSpAllowance-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.addSpAllowance.label" default="Additional Special Allowance:" /></span>

                    <span class="property-value" aria-labelledby="addSpAllowance-label">${hrEmployeePayStructureInstance?.addSpAllowance}</span>

                </li>
            </g:if>

            <g:if test="${hrEmployeePayStructureInstance?.spRetro}">
                <li class="fieldcontain">
                    <span id="spRetro-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.spRetro.label" default="Retro:" /></span>

                    <span class="property-value" aria-labelledby="spRetro-label">${hrEmployeePayStructureInstance?.spRetro}</span>

                </li>
            </g:if>


            <g:if test="${hrEmployeePayStructureInstance?.employeeIdHrEmployee}">
                <li class="fieldcontain">
                    <span id="totalOtherPayable-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.totalOtherPayable.label" default="Total Other Earning:" /></span>

                    <span class="property-value" aria-labelledby="totalOtherPayable-label">${hrEmployeePayStructureInstance?.spAllowance+hrEmployeePayStructureInstance?.spDaAllowance+hrEmployeePayStructureInstance?.addSpAllowance+hrEmployeePayStructureInstance?.spRetro}</span>

                </li>
            </g:if>






			
				%{--<g:if test="${hrEmployeePayStructureInstance?.pChargeAllow}">
				<li class="fieldcontain">
					<span id="pChargeAllow-label" class="property-label"><g:message code="hrEmployeePayStructure.pChargeAllow.label" default="PC harge Allow" /></span>
					
						<span class="property-value" aria-labelledby="pChargeAllow-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="pChargeAllow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.pRetro}">
				<li class="fieldcontain">
					<span id="pRetro-label" class="property-label"><g:message code="hrEmployeePayStructure.pRetro.label" default="PR etro" /></span>
					
						<span class="property-value" aria-labelledby="pRetro-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="pRetro"/></span>
					
				</li>
				</g:if>--}%
			
				<g:if test="${hrEmployeePayStructureInstance?.dLoanSalary}">
				<li class="fieldcontain">
					<span id="dLoanSalary-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.dLoanSalary.label" default="DL oan Salary" /></span>
					
						<span class="property-value" aria-labelledby="dLoanSalary-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="dLoanSalary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.dLoanPf}">
				<li class="fieldcontain">
					<span id="dLoanPf-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.dLoanPf.label" default="DL oan Pf" /></span>
					
						<span class="property-value" aria-labelledby="dLoanPf-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="dLoanPf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.dOwnPf}">
				<li class="fieldcontain">
					<span id="dOwnPf-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.dOwnPf.label" default="Own Provident Fund(PF):" /></span>
					
						<span class="property-value" aria-labelledby="dOwnPf-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="dOwnPf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.dIncomeTax}">
				<li class="fieldcontain">
					<span id="dIncomeTax-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.dIncomeTax.label" default="Income Tax:" /></span>
					
						<span class="property-value" aria-labelledby="dIncomeTax-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="dIncomeTax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.dRevenueStamp}">
				<li class="fieldcontain">
					<span id="dRevenueStamp-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.dRevenueStamp.label" default="Revenue Stamp:" /></span>
					
						<span class="property-value" aria-labelledby="dRevenueStamp-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="dRevenueStamp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.dGroupInsurance}">
				<li class="fieldcontain">
					<span id="dGroupInsurance-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.dGroupInsurance.label" default="Group Insurance:" /></span>
					
						<span class="property-value" aria-labelledby="dGroupInsurance-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="dGroupInsurance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeePayStructureInstance?.dOthers}">
				<li class="fieldcontain">
					<span id="dOthers-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployeePayStructure.dOthers.label" default="Other Deduction:" /></span>
					
						<span class="property-value" aria-labelledby="dOthers-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="dOthers"/></span>
					
				</li>
				</g:if>
			

			

			
				%{--<g:if test="${hrEmployeePayStructureInstance?.payScaleId}">
				<li class="fieldcontain">
					<span id="payScaleId-label" class="property-label"><g:message code="hrEmployeePayStructure.payScaleId.label" default="Pay Scale Id" /></span>
					
						<span class="property-value" aria-labelledby="payScaleId-label"><g:fieldValue bean="${hrEmployeePayStructureInstance}" field="payScaleId"/></span>
					
				</li>
				</g:if>--}%
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${hrEmployeePayStructureInstance?.id}" />
					<g:link class="edit" action="edit" id="${hrEmployeePayStructureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
