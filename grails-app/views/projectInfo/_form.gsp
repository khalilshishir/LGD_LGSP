<%@ page import="integration.ProjectInfo" %>
<div class="row" style="font-size:20px">
    <div class="col-xs-6">
        <div class="form-group">
            <label >Details Project Information</label>

        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label>Details Financial Information</label>

        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="deptId">
                <g:message code="projectInfo.deptId.label" default="Dept Id" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="deptId" class="form-control" value="${projectInfoInstance?.deptId}"/>
        </div>
        <div class="col-xs-3">
            <label for="gobRadpAllocation">
                <g:message code="projectInfo.gobRadpAllocation.label" default="Gob RADP Allocation" />

            </label>

        </div>
        <div class="col-xs-3">
            <g:textField name="gobRadpAllocation" value="${projectInfoInstance?.gobRadpAllocation}" class="form-control"/>
        </div>

    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="published">
                <g:message code="projectInfo.published.label" default="Published" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="published" value="${projectInfoInstance?.published}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="paRadpAllocation">
                <g:message code="projectInfo.paRadpAllocation.label" default="PA RADP Allocation" />

            </label>

        </div>
        <div class="col-xs-3">
            <g:textField name="paRadpAllocation" value="${projectInfoInstance?.paRadpAllocation}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
      <div class="form-group">
			<div class="col-xs-3">
                  <label for="deptName">
                    <g:message code="projectInfo.deptName.label" default="Dept Name" />
                  </label>
			</div>
			<div class="col-xs-3">
                <g:textField name="deptName" value="${projectInfoInstance?.deptName}" class="form-control"/>
			</div>
			<div class="col-xs-3">
                <label for="totalAdpAllocation">
                    <g:message code="projectInfo.totalAdpAllocation.label" default="Total ADP Allocation" />
                </label>
			</div>
			<div class="col-xs-3">
                <g:textField name="totalAdpAllocation" value="${projectInfoInstance?.totalAdpAllocation}" class="form-control"/>
            </div>
      </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="projectCode">
                <g:message code="projectInfo.projectCode.label" default="Project Code" />

            </label>

        </div>
        <div class="col-xs-3">
            <g:textField name="projectCode" value="${projectInfoInstance?.projectCode}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="gobAdpAllocation">
                <g:message code="projectInfo.gobAdpAllocation.label" default="GOB ADP Allocation" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="gobAdpAllocation" value="${projectInfoInstance?.gobAdpAllocation}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="nameOfProject">
                <g:message code="projectInfo.nameOfProject.label" default="Name Of Project" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="nameOfProject" value="${projectInfoInstance?.nameOfProject}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="paAdpAllocation">
                <g:message code="projectInfo.paAdpAllocation.label" default="PA ADP Allocation" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="paAdpAllocation" value="${projectInfoInstance?.paAdpAllocation}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="approvalStatus">
                <g:message code="projectInfo.approvalStatus.label" default="Approval Status" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="approvalStatus" value="${projectInfoInstance?.approvalStatus}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="totalRadpRelease">
                <g:message code="projectInfo.totalRadpRelease.label" default="Total RADP Release" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="totalRadpRelease" value="${projectInfoInstance?.totalRadpRelease}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="dateOfApproval">
                <g:message code="projectInfo.dateOfApproval.label" default="Date Of Approval" />
                <span class="required-indicator">*</span>
            </label>
        </div>
        <div class="col-xs-3">
            %{--<g:datePicker name="dateOfApproval" precision="day"  value="${projectInfoInstance?.dateOfApproval}" class="form-control" />--}%
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:projectInfoInstance?.dateOfApproval)}" data-close="true" data-name="dateOfApproval"></div>
        </div>
        <div class="col-xs-3">
            <label for="gobRadpRelease">
                <g:message code="projectInfo.gobRadpRelease.label" default="GOB RADP Release" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="gobRadpRelease" value="${projectInfoInstance?.gobRadpRelease}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="nameOfPd">
                <g:message code="projectInfo.nameOfPd.label" default="Name Of Pd" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="nameOfPd" value="${projectInfoInstance?.nameOfPd}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="paRadpRelease">
                <g:message code="projectInfo.paRadpRelease.label" default="PA RADP Release" />
            </label>

        </div>
        <div class="col-xs-3">
            <g:textField name="paRadpRelease" value="${projectInfoInstance?.paRadpRelease}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="objectiveOne">
                <g:message code="projectInfo.objectiveOne.label" default="Objective 1" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="objectiveOne" value="${projectInfoInstance?.objectiveOne}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="totalAdpRelease">
                <g:message code="projectInfo.totalAdpRelease.label" default="Total ADP Release" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="totalAdpRelease" value="${projectInfoInstance?.totalAdpRelease}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="objectiveTwo">
                <g:message code="projectInfo.objectiveTwo.label" default="Objectives 2" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="objectiveTwo" value="${projectInfoInstance?.objectiveTwo}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="gobAdpRelease">
                <g:message code="projectInfo.gobAdpRelease.label" default="GOB ADP Release" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="gobAdpRelease" value="${projectInfoInstance?.gobAdpRelease}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="objectiveThree">
                <g:message code="projectInfo.objectiveThree.label" default="Objective Three" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="objectiveThree" value="${projectInfoInstance?.objectiveThree}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="paAdpRelease">
                <g:message code="projectInfo.paAdpRelease.label" default="PA ADP Release" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="paAdpRelease" value="${projectInfoInstance?.paAdpRelease}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="locationOfProject">
                <g:message code="projectInfo.locationOfProject.label" default="Location Of Project" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="locationOfProject" value="${projectInfoInstance?.locationOfProject}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="totalRadpExpenditure">
                <g:message code="projectInfo.totalRadpExpenditure.label" default="Total RADP Expenditure" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="totalRadpExpenditure" value="${projectInfoInstance?.totalRadpExpenditure}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="implementationPeriod">
                <g:message code="projectInfo.implementationPeriod.label" default="Implementation Period" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="implementationPeriod" value="${projectInfoInstance?.implementationPeriod}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="gobRadpExpenditure">
                <g:message code="projectInfo.gobRadpExpenditure.label" default="GOB RADP Expenditure" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="gobRadpExpenditure" value="${projectInfoInstance?.gobRadpExpenditure}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="startingDate">
                <g:message code="projectInfo.startingDate.label" default="Starting Date" />
                <span class="required-indicator">*</span>
            </label>
        </div>
        <div class="col-xs-3">
            %{--<g:datePicker name="startingDate" precision="day"  value="${projectInfoInstance?.startingDate}"  class="form-control"/>--}%
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:projectInfoInstance?.startingDate)}" data-close="true" data-name="startingDate"></div>
        </div>
        <div class="col-xs-3">
            <label for="paRadpExpenditure">
                <g:message code="projectInfo.paRadpExpenditure.label" default="PA RADP Expenditure" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="paRadpExpenditure" value="${projectInfoInstance?.paRadpExpenditure}" class="form-control" />
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="completationDate">
                <g:message code="projectInfo.completationDate.label" default="Completation Date" />
                <span class="required-indicator">*</span>
            </label>
        </div>
        <div class="col-xs-3">
            %{--<g:datePicker name="completationDate" precision="day"  value="${projectInfoInstance?.completationDate}" class="form-control" />--}%
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:projectInfoInstance?.completationDate)}" data-close="true" data-name="completationDate"></div>
        </div>
        <div class="col-xs-3">
            <label for="totalAdpExpenditure">
                <g:message code="projectInfo.totalAdpExpenditure.label" default="Total ADP Expenditure" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="totalAdpExpenditure" value="${projectInfoInstance?.totalAdpExpenditure}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="financialYear">
                <g:message code="projectInfo.financialYear.label" default="Financial Year" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="financialYear" value="${projectInfoInstance?.financialYear}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="gobAdpExpenditure">
                <g:message code="projectInfo.gobAdpExpenditure.label" default="GOB ADP Expenditure" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="gobAdpExpenditure" value="${projectInfoInstance?.gobAdpExpenditure}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="sourceOfFund">
                <g:message code="projectInfo.sourceOfFund.label" default="Source Of Fund" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="sourceOfFund" value="${projectInfoInstance?.sourceOfFund}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="paAdpExpenditure">
                <g:message code="projectInfo.paAdpExpenditure.label" default="PA ADP Expenditure" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="paAdpExpenditure" value="${projectInfoInstance?.paAdpExpenditure}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="totalProjectCost">
                <g:message code="projectInfo.totalProjectCost.label" default="Total Project Cost" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="totalProjectCost" value="${projectInfoInstance?.totalProjectCost}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="cumulativeExpenditure">
                <g:message code="projectInfo.cumulativeExpenditure.label" default="Cumulative Expenditure" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="cumulativeExpenditure" value="${projectInfoInstance?.cumulativeExpenditure}" class="form-control"/>
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="gobCost">
                <g:message code="projectInfo.gobCost.label" default="GOB Cost" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="gobCost" value="${projectInfoInstance?.gobCost}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="physicalProgress">
                <g:message code="projectInfo.physicalProgress.label" default="Physical Progress" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="physicalProgress" value="${projectInfoInstance?.physicalProgress}" class="form-control" />
        </div>
    </div>
</div>
<div class="row">
    <div class="form-group">
        <div class="col-xs-3">
            <label for="paCost">
                <g:message code="projectInfo.paCost.label" default="PA Cost" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="paCost" value="${projectInfoInstance?.paCost}" class="form-control"/>
        </div>
        <div class="col-xs-3">
            <label for="comments">
                <g:message code="projectInfo.comments.label" default="Comments" />
            </label>
        </div>
        <div class="col-xs-3">
            <g:textField name="comments" value="${projectInfoInstance?.comments}" class="form-control"/>
        </div>
    </div>
</div>
