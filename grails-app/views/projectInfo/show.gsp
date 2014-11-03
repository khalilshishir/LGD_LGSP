
<%@ page import="integration.ProjectInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projectInfo.label', default: 'ProjectInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-projectInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-projectInfo" class="content scaffold-show" role="main">
        <div class="panel panel-info">
        <div class="panel-heading">
			<h3><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
        <div class="panel-body">
			<ol class="property-list projectInfo">
			
				<g:if test="${projectInfoInstance?.approvalStatus}">
				<li class="fieldcontain">
					<span id="approvalStatus-label" class="property-label"><g:message code="projectInfo.approvalStatus.label" default="Approval Status" /></span>
					
						<span class="property-value" aria-labelledby="approvalStatus-label"><g:fieldValue bean="${projectInfoInstance}" field="approvalStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="projectInfo.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${projectInfoInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.completationDate}">
				<li class="fieldcontain">
					<span id="completationDate-label" class="property-label"><g:message code="projectInfo.completationDate.label" default="Completation Date" /></span>
					
						<span class="property-value" aria-labelledby="completationDate-label"><g:formatDate format="MM/dd/yyyy" date="${projectInfoInstance?.completationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.cumulativeExpenditure}">
				<li class="fieldcontain">
					<span id="cumulativeExpenditure-label" class="property-label"><g:message code="projectInfo.cumulativeExpenditure.label" default="Cumulative Expenditure" /></span>
					
						<span class="property-value" aria-labelledby="cumulativeExpenditure-label"><g:fieldValue bean="${projectInfoInstance}" field="cumulativeExpenditure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.dateOfApproval}">
				<li class="fieldcontain">
					<span id="datOfApproval-label" class="property-label"><g:message code="projectInfo.datOfApproval.label" default="Dat Of Approval" /></span>
					
						<span class="property-value" aria-labelledby="datOfApproval-label"><g:formatDate format="MM/dd/yyyy" date="${projectInfoInstance?.dateOfApproval}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.deptId}">
				<li class="fieldcontain">
					<span id="deptId-label" class="property-label"><g:message code="projectInfo.deptId.label" default="Dept Id" /></span>
					
						<span class="property-value" aria-labelledby="deptId-label"><g:fieldValue bean="${projectInfoInstance}" field="deptId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.deptName}">
				<li class="fieldcontain">
					<span id="deptName-label" class="property-label"><g:message code="projectInfo.deptName.label" default="Dept Name" /></span>
					
						<span class="property-value" aria-labelledby="deptName-label"><g:fieldValue bean="${projectInfoInstance}" field="deptName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.financialYear}">
				<li class="fieldcontain">
					<span id="financialYear-label" class="property-label"><g:message code="projectInfo.financialYear.label" default="Financial Year" /></span>
					
						<span class="property-value" aria-labelledby="financialYear-label"><g:fieldValue bean="${projectInfoInstance}" field="financialYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.gobAdpAllocation}">
				<li class="fieldcontain">
					<span id="gobAdpAllocation-label" class="property-label"><g:message code="projectInfo.gobAdpAllocation.label" default="Gob Adp Allocation" /></span>
					
						<span class="property-value" aria-labelledby="gobAdpAllocation-label"><g:fieldValue bean="${projectInfoInstance}" field="gobAdpAllocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.gobAdpExpenditure}">
				<li class="fieldcontain">
					<span id="gobAdpExpenditure-label" class="property-label"><g:message code="projectInfo.gobAdpExpenditure.label" default="Gob Adp Expenditure" /></span>
					
						<span class="property-value" aria-labelledby="gobAdpExpenditure-label"><g:fieldValue bean="${projectInfoInstance}" field="gobAdpExpenditure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.gobAdpRelease}">
				<li class="fieldcontain">
					<span id="gobAdpRelease-label" class="property-label"><g:message code="projectInfo.gobAdpRelease.label" default="Gob Adp Release" /></span>
					
						<span class="property-value" aria-labelledby="gobAdpRelease-label"><g:fieldValue bean="${projectInfoInstance}" field="gobAdpRelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.gobCost}">
				<li class="fieldcontain">
					<span id="gobCost-label" class="property-label"><g:message code="projectInfo.gobCost.label" default="Gob Cost" /></span>
					
						<span class="property-value" aria-labelledby="gobCost-label"><g:fieldValue bean="${projectInfoInstance}" field="gobCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.gobRadpAllocation}">
				<li class="fieldcontain">
					<span id="gobRadpAllocation-label" class="property-label"><g:message code="projectInfo.gobRadpAllocation.label" default="Gob Radp Allocation" /></span>
					
						<span class="property-value" aria-labelledby="gobRadpAllocation-label"><g:fieldValue bean="${projectInfoInstance}" field="gobRadpAllocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.gobRadpExpenditure}">
				<li class="fieldcontain">
					<span id="gobRadpExpenditure-label" class="property-label"><g:message code="projectInfo.gobRadpExpenditure.label" default="Gob Radp Expenditure" /></span>
					
						<span class="property-value" aria-labelledby="gobRadpExpenditure-label"><g:fieldValue bean="${projectInfoInstance}" field="gobRadpExpenditure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.gobRadpRelease}">
				<li class="fieldcontain">
					<span id="gobRadpRelease-label" class="property-label"><g:message code="projectInfo.gobRadpRelease.label" default="Gob Radp Release" /></span>
					
						<span class="property-value" aria-labelledby="gobRadpRelease-label"><g:fieldValue bean="${projectInfoInstance}" field="gobRadpRelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.implementationPeriod}">
				<li class="fieldcontain">
					<span id="implementationPeriod-label" class="property-label"><g:message code="projectInfo.implementationPeriod.label" default="Implementation Period" /></span>
					
						<span class="property-value" aria-labelledby="implementationPeriod-label"><g:fieldValue bean="${projectInfoInstance}" field="implementationPeriod"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.locationOfProject}">
				<li class="fieldcontain">
					<span id="locationOfProject-label" class="property-label"><g:message code="projectInfo.locationOfProject.label" default="Location Of Project" /></span>
					
						<span class="property-value" aria-labelledby="locationOfProject-label"><g:fieldValue bean="${projectInfoInstance}" field="locationOfProject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.nameOfPd}">
				<li class="fieldcontain">
					<span id="nameOfPd-label" class="property-label"><g:message code="projectInfo.nameOfPd.label" default="Name Of Pd" /></span>
					
						<span class="property-value" aria-labelledby="nameOfPd-label"><g:fieldValue bean="${projectInfoInstance}" field="nameOfPd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.nameOfProject}">
				<li class="fieldcontain">
					<span id="nameOfProject-label" class="property-label"><g:message code="projectInfo.nameOfProject.label" default="Name Of Project" /></span>
					
						<span class="property-value" aria-labelledby="nameOfProject-label"><g:fieldValue bean="${projectInfoInstance}" field="nameOfProject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.objectiveOne}">
				<li class="fieldcontain">
					<span id="objectiveOne-label" class="property-label"><g:message code="projectInfo.objectiveOne.label" default="Objective One" /></span>
					
						<span class="property-value" aria-labelledby="objectiveOne-label"><g:fieldValue bean="${projectInfoInstance}" field="objectiveOne"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.objectiveThree}">
				<li class="fieldcontain">
					<span id="objectiveThree-label" class="property-label"><g:message code="projectInfo.objectiveThree.label" default="Objective Three" /></span>
					
						<span class="property-value" aria-labelledby="objectiveThree-label"><g:fieldValue bean="${projectInfoInstance}" field="objectiveThree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.objectiveTwo}">
				<li class="fieldcontain">
					<span id="objectiveTwo-label" class="property-label"><g:message code="projectInfo.objectiveTwo.label" default="Objective Two" /></span>
					
						<span class="property-value" aria-labelledby="objectiveTwo-label"><g:fieldValue bean="${projectInfoInstance}" field="objectiveTwo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.paAdpAllocation}">
				<li class="fieldcontain">
					<span id="paAdpAllocation-label" class="property-label"><g:message code="projectInfo.paAdpAllocation.label" default="Pa Adp Allocation" /></span>
					
						<span class="property-value" aria-labelledby="paAdpAllocation-label"><g:fieldValue bean="${projectInfoInstance}" field="paAdpAllocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.paAdpExpenditure}">
				<li class="fieldcontain">
					<span id="paAdpExpenditure-label" class="property-label"><g:message code="projectInfo.paAdpExpenditure.label" default="Pa Adp Expenditure" /></span>
					
						<span class="property-value" aria-labelledby="paAdpExpenditure-label"><g:fieldValue bean="${projectInfoInstance}" field="paAdpExpenditure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.paAdpRelease}">
				<li class="fieldcontain">
					<span id="paAdpRelease-label" class="property-label"><g:message code="projectInfo.paAdpRelease.label" default="Pa Adp Release" /></span>
					
						<span class="property-value" aria-labelledby="paAdpRelease-label"><g:fieldValue bean="${projectInfoInstance}" field="paAdpRelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.paCost}">
				<li class="fieldcontain">
					<span id="paCost-label" class="property-label"><g:message code="projectInfo.paCost.label" default="Pa Cost" /></span>
					
						<span class="property-value" aria-labelledby="paCost-label"><g:fieldValue bean="${projectInfoInstance}" field="paCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.paRadpAllocation}">
				<li class="fieldcontain">
					<span id="paRadpAllocation-label" class="property-label"><g:message code="projectInfo.paRadpAllocation.label" default="Pa Radp Allocation" /></span>
					
						<span class="property-value" aria-labelledby="paRadpAllocation-label"><g:fieldValue bean="${projectInfoInstance}" field="paRadpAllocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.paRadpExpenditure}">
				<li class="fieldcontain">
					<span id="paRadpExpenditure-label" class="property-label"><g:message code="projectInfo.paRadpExpenditure.label" default="Pa Radp Expenditure" /></span>
					
						<span class="property-value" aria-labelledby="paRadpExpenditure-label"><g:fieldValue bean="${projectInfoInstance}" field="paRadpExpenditure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.paRadpRelease}">
				<li class="fieldcontain">
					<span id="paRadpRelease-label" class="property-label"><g:message code="projectInfo.paRadpRelease.label" default="Pa Radp Release" /></span>
					
						<span class="property-value" aria-labelledby="paRadpRelease-label"><g:fieldValue bean="${projectInfoInstance}" field="paRadpRelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.physicalProgress}">
				<li class="fieldcontain">
					<span id="physicalProgress-label" class="property-label"><g:message code="projectInfo.physicalProgress.label" default="Physical Progress" /></span>
					
						<span class="property-value" aria-labelledby="physicalProgress-label"><g:fieldValue bean="${projectInfoInstance}" field="physicalProgress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.projectCode}">
				<li class="fieldcontain">
					<span id="projectCode-label" class="property-label"><g:message code="projectInfo.projectCode.label" default="Project Code" /></span>
					
						<span class="property-value" aria-labelledby="projectCode-label"><g:fieldValue bean="${projectInfoInstance}" field="projectCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.published}">
				<li class="fieldcontain">
					<span id="published-label" class="property-label"><g:message code="projectInfo.published.label" default="Published" /></span>
					
						<span class="property-value" aria-labelledby="published-label"><g:fieldValue bean="${projectInfoInstance}" field="published"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.sourceOfFund}">
				<li class="fieldcontain">
					<span id="sourceOfFund-label" class="property-label"><g:message code="projectInfo.sourceOfFund.label" default="Source Of Fund" /></span>
					
						<span class="property-value" aria-labelledby="sourceOfFund-label"><g:fieldValue bean="${projectInfoInstance}" field="sourceOfFund"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.startingDate}">
				<li class="fieldcontain">
					<span id="startingDate-label" class="property-label"><g:message code="projectInfo.startingDate.label" default="Starting Date" /></span>
					
						<span class="property-value" aria-labelledby="startingDate-label"><g:formatDate format="MM/dd/yyyy" date="${projectInfoInstance?.startingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.totalAdpAllocation}">
				<li class="fieldcontain">
					<span id="totalAdpAllocation-label" class="property-label"><g:message code="projectInfo.totalAdpAllocation.label" default="Total Adp Allocation" /></span>
					
						<span class="property-value" aria-labelledby="totalAdpAllocation-label"><g:fieldValue bean="${projectInfoInstance}" field="totalAdpAllocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.totalAdpExpenditure}">
				<li class="fieldcontain">
					<span id="totalAdpExpenditure-label" class="property-label"><g:message code="projectInfo.totalAdpExpenditure.label" default="Total Adp Expenditure" /></span>
					
						<span class="property-value" aria-labelledby="totalAdpExpenditure-label"><g:fieldValue bean="${projectInfoInstance}" field="totalAdpExpenditure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.totalAdpRelease}">
				<li class="fieldcontain">
					<span id="totalAdpRelease-label" class="property-label"><g:message code="projectInfo.totalAdpRelease.label" default="Total Adp Release" /></span>
					
						<span class="property-value" aria-labelledby="totalAdpRelease-label"><g:fieldValue bean="${projectInfoInstance}" field="totalAdpRelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.totalProjectCost}">
				<li class="fieldcontain">
					<span id="totalProjectCost-label" class="property-label"><g:message code="projectInfo.totalProjectCost.label" default="Total Project Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalProjectCost-label"><g:fieldValue bean="${projectInfoInstance}" field="totalProjectCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.totalRadpExpenditure}">
				<li class="fieldcontain">
					<span id="totalRadpExpenditure-label" class="property-label"><g:message code="projectInfo.totalRadpExpenditure.label" default="Total Radp Expenditure" /></span>
					
						<span class="property-value" aria-labelledby="totalRadpExpenditure-label"><g:fieldValue bean="${projectInfoInstance}" field="totalRadpExpenditure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInfoInstance?.totalRadpRelease}">
				<li class="fieldcontain">
					<span id="totalRadpRelease-label" class="property-label"><g:message code="projectInfo.totalRadpRelease.label" default="Total Radp Release" /></span>
					
						<span class="property-value" aria-labelledby="totalRadpRelease-label"><g:fieldValue bean="${projectInfoInstance}" field="totalRadpRelease"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projectInfoInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${projectInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
        </div>
        </div>
		</div>

	</body>
</html>
