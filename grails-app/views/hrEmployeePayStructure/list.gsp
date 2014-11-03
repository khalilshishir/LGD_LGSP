
<%@ page import="hrms.HrEmployeePayStructure" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrEmployeePayStructure.label', default: 'Employee Monthly Payable Salary')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hrEmployeePayStructure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		%{--<div id="list-hrEmployeePayStructure" class="content scaffold-list" role="main">--}%
           <div id="wrapper" style="width: 1150px;">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

        %{--Add Search option contents--}%
            <div id="search-div">
                <g:form id="search" name="search" action="search">
                    <span><strong>Employee ID:</strong></span>
                    <g:textField id="cardNo" name="cardNo" value="${params.cardNo}" class="search-div-input" style="text-align: center;width: 180px;"/>
                        <g:submitButton class="search-button" name="searchbtn" value="Search"/>
                </g:form>
            </div>
            %{--Add Search option contents--}%

            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="common-list-table">
				<thead>
					<tr>
                        <th>IDNO</th>
                        %{--<g:sortableColumn property="cardNo" title="${message(code: 'hrEmployeePayStructure.cardNo.label', default: 'Card No')}" />--}%
                        <th>Name of Employee</th>
                        %{--<g:sortableColumn property="employeeName" title="${message(code: 'hrEmployeePayStructure.employeeName.label', default: 'Name of Employee')}"/>--}%
                        <th>Designation</th>
                        %{--<g:sortableColumn property="designationName" title="${message(code: 'hrEmployeePayStructure.designationName.label', default: 'Designation')}"/>--}%
                        <th>Basic</th>
						%{--<g:sortableColumn property="pBasic" title="${message(code: 'hrEmployeePayStructure.pBasic.label', default: 'Basic')}" />--}%
                        <th>Dearness</th>
						%{--<g:sortableColumn property="pDa" title="${message(code: 'hrEmployeePayStructure.pDa.label', default: 'Dearness')}" />--}%
                        <th>House Rent</th>
						%{--<g:sortableColumn property="pHr" title="${message(code: 'hrEmployeePayStructure.pHr.label', default: 'House Rent')}" />--}%
                        <th>Conveyance</th>
						%{--<g:sortableColumn property="pConveyance" title="${message(code: 'hrEmployeePayStructure.pConveyance.label', default: 'Conveyance')}" />--}%
                        <th>Washing</th>
						%{--<g:sortableColumn property="pWashingAllow" title="${message(code: 'hrEmployeePayStructure.pWashingAllow.label', default: 'Washing')}" />--}%
                        <th>Medical</th>
						%{--<g:sortableColumn property="pMedicalAllowance" title="${message(code: 'hrEmployeePayStructure.pMedicalAllowance.label', default: 'Medical')}" />--}%
                        <th>University PF</th>
                        <th>SP Allowance</th>
                        <th>SP DA Allowance</th>
                        <th>Add. SP Allowance</th>
                        <th>Retro</th>
                        %{--<g:sortableColumn property="pOrgPfContribution" title="${message(code: 'hrEmployeePayStructure.pOrgPfContribution.label', default: 'University PF')}" />--}%
                        <th>Total Earnings</th>
                        %{--<g:sortableColumn property="totalPayable" title="${message(code: 'hrEmployeePayStructure.totalPayable.label', default: 'Total Earnings')}" />--}%
                        %{--<th>Sal Stop</th>--}%
					</tr>
				</thead>
				<tbody>
				<g:each in="${hrEmployeePayStructureInstanceList}" status="i" var="hrEmployeePayStructureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" id="${hrEmployeePayStructureInstance.id}">${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.cardNo}</g:link></td>

                        <td>${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.employeeName}</td>

                        <td>${hrEmployeePayStructureInstance?.employeeIdHrEmployee?.designationIdHrDesignation?.designationName}</td>

                        <td class="list-align-right">${hrEmployeePayStructureInstance?.pBasic}</td>
					
						<td class="list-align-right">${hrEmployeePayStructureInstance?.pDa}</td>
					
						<td class="list-align-right">${hrEmployeePayStructureInstance?.pHr}</td>
					
						<td class="list-align-right">${hrEmployeePayStructureInstance?.pConveyance}</td>
					
						<td class="list-align-right">${hrEmployeePayStructureInstance?.pWashingAllow}</td>
					
						<td class="list-align-right">${hrEmployeePayStructureInstance?.pMedicalAllowance}</td>

                        <td class="list-align-right">${hrEmployeePayStructureInstance?.pOrgPfContribution}</td>

                        <td class="list-align-right">${hrEmployeePayStructureInstance?.spAllowance}</td>

                        <td class="list-align-right">${hrEmployeePayStructureInstance?.spDaAllowance}</td>

                        <td class="list-align-right">${hrEmployeePayStructureInstance?.addSpAllowance}</td>

                        <td class="list-align-right">${hrEmployeePayStructureInstance?.spRetro}</td>

                        <td class="list-align-right" style="font-weight: bold;">${hrEmployeePayStructureInstance?.pBasic+hrEmployeePayStructureInstance?.pDa+
                        hrEmployeePayStructureInstance?.pHr+hrEmployeePayStructureInstance?.pConveyance+
                        hrEmployeePayStructureInstance?.pWashingAllow+hrEmployeePayStructureInstance?.pMedicalAllowance+
                        hrEmployeePayStructureInstance?.pOrgPfContribution+
                        hrEmployeePayStructureInstance?.spAllowance+hrEmployeePayStructureInstance?.spDaAllowance+
                        hrEmployeePayStructureInstance?.addSpAllowance+hrEmployeePayStructureInstance?.spRetro
                        }
                        </td>

                        %{--<td class="list-align-center">${hrEmployeePayStructureInstance?.salStopFlag == true?'Yes':'No'}</td>--}%
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hrEmployeePayStructureInstanceTotal}" params="${[cardNo: params.cardNo]}" />
			</div>
		</div>
	</body>
</html>
