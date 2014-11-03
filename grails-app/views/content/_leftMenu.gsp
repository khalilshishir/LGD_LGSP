<script type="text/javascript">
    $(document).ready(function(){
        $("#div").toggle();
        $("#dis").toggle();
        $("#upz").toggle();
        $("#up").toggle();
        $("#wd").toggle();
        $("#wc").toggle();
        $("#sic").toggle();
        $("#tec").toggle();
        $("#procurement_master").toggle();
        $("#updp").toggle();
        $("#updpd").toggle();
        $("#upcp").toggle();
        $("#lai").toggle();
        $("#mrs").toggle();
        $("#ada").toggle();
        $("#uprfq").toggle();
        $("#item_details").toggle();
        $("#openingsheet").toggle();
        $("#opningsheetdetails").toggle();
        $("#evaluation").toggle();
        $("#evaluationDetails").toggle();
        $("#workorder").toggle();
        $("#billpayment").toggle();

        $("#LOCATION").toggle();
        $("#ASSET_MAJOR_CATEGORY").toggle();
        $("#ASSET_MINOR_CATEGORY").toggle();
        $("#ASSET_BOOK").toggle();
        $("#STAKEHOLDER").toggle();
        $("#ASSET_DISTRIBUTION").toggle();
        $("#ASSET_DISTRIBUTION_MOVEMENT").toggle();
        $("#ASSET_MOVEMENT_HISTORY").toggle();
        $("#COMITY").toggle();
        $("#ASSET_DISPOSAL").toggle();
        $("#ASSET_BOOK_DISPOSAL_LIST").toggle();
        $("#ASSET_BOOK_DISPOSAL_LIST_ALL").toggle();
        $("#reports").toggle();

        $("#INSPECTION").toggle();


        $("#UpOTMProcurement").toggle();
        $("#TCAF_Committee").toggle();
        $("#TenderEvaluationCommittee").toggle();
        $("#UPOTMTenderDocument").toggle();
        $("#UPOTMInvaitationForTender").toggle();
        $("#UPOTMItemDetails").toggle();
        $("#UpOTMOpeningSheet").toggle();
        $("#UpOTMOpeningSheetDetails").toggle();
        $("#UpOTMSchedule").toggle();
        $("#UPOTMTEForm").toggle();
        $("#UPOTMProcWorkOrder").toggle();
        $("#UpOTMBillPayment").toggle();
        $("#otm-opening-sheet").toggle();
        $("#otm-schedule").toggle();
        $("#otm-te").toggle();
        $("#otm-work-order").toggle();
        $("#otm-bill-pay").toggle();
        $("#otm-invitation").toggle();

        $("#proc_master").toggle();
        $("#proc_direct_actual").toggle();
        $("#schemeinfo").toggle();


        $("#pmu_proc").toggle();

         $("#performanceHead").toggle();
         $("#PerformanceIndicator").toggle();
         $("#performanceMeasureCategory").toggle();
         $("#performanceMeasure").toggle();
         $("#markDstribution").toggle();
         $("#unionPorishod2PerformanceEntry").toggle();
         $("#performanceOrgType").toggle();
         $("#unionPorishodPerformanceEntry").toggle();
         $("#zillaPorishodPerformanceEntry").toggle();
         $("#fiscalYear").toggle();
         $("#committeeType").toggle();
         $("#committeeLevel").toggle();
         $("#ccommittee").toggle();
         $("#meeting").toggle();
         $("#meetingLevel").toggle();
         $("#memberDesignation").toggle();
         $("#schemeCategory").toggle();
         $("#schemeType").toggle();
         $("#sschemeInfo").toggle();
         $("#courtType").toggle();
         $("#caseInformation").toggle();
         $("#lawBranchTwo").toggle();
         $("#lgedOffice").toggle();
         $("#lgedAuditInfo").toggle();
         $("#projectInfo").toggle();
        $("#allocateAmount").toggle();
        $("#distributeBBGAmount").toggle();
//            $("#dp").toggle();
//            $("#cp").toggle();
//            $("#rfq").toggle();
//            $("#otm-proc").toggle();
//        });
        $("#FIXED_ASSET").click(function(){
            $("#LOCATION").toggle();
            $("#ASSET_MAJOR_CATEGORY").toggle();
            $("#ASSET_MINOR_CATEGORY").toggle();
            $("#ASSET_BOOK").toggle();
            $("#STAKEHOLDER").toggle();
            $("#ASSET_DISTRIBUTION").toggle();
            $("#ASSET_DISTRIBUTION_MOVEMENT").toggle();
            $("#ASSET_MOVEMENT_HISTORY").toggle();
            $("#COMITY").toggle();
            $("#ASSET_DISPOSAL").toggle();
            $("#ASSET_BOOK_DISPOSAL_LIST").toggle();
            $("#ASSET_BOOK_DISPOSAL_LIST_ALL").toggle();
            $("#reports").toggle();

        });

        $("#MONITORING").click(function(){
            $("#INSPECTION").toggle();

        });

        $("#settings").click(function(){
            $("#div").toggle();
            $("#dis").toggle();
            $("#upz").toggle();
            $("#up").toggle();
            $("#wd").toggle();
            $("#schemeinfo").toggle();

        });

        $("#committee").click(function(){
            $("#wc").toggle();
            $("#sic").toggle();
            $("#tec").toggle();
        });
        $("#proc").click(function(){
            $("#proc_master").toggle();
        });
        $("#pmu_proc_").click(function(){
            $("#pmu_proc_master").toggle();
        });
        $("#proc_direct").click(function(){
            $("#proc_direct_actual").toggle();
        });
        $("#cp").click(function(){
            $("#upcp").toggle();
            $("#lai").toggle();
            $("#mrs").toggle();
            $("#ada").toggle();
        });
        $("#dp").click(function(){
            $("#updp").toggle();
            $("#updpd").toggle();
        });
        $("#procurement").click(function(){
            $("#procurement_master").toggle();
        });
        $("#rfq").click(function(){
            $("#uprfq").toggle();
            $("#item_details").toggle();
            $("#openingsheet").toggle();
            $("#opningsheetdetails").toggle();
            $("#evaluation").toggle();
            $("#evaluationDetails").toggle();
            $("#workorder").toggle();
            $("#billpayment").toggle();
        });
        $("#otm").click(function(){
            $("#UpOTMProcurement").toggle();
            $("#TCAF_Committee").toggle();
            $("#TenderEvaluationCommittee").toggle();
            $("#UPOTMTenderDocument").toggle();
            $("#UPOTMInvaitationForTender").toggle();
            $("#UPOTMItemDetails").toggle();
            $("#UpOTMOpeningSheet").toggle();
            $("#UpOTMOpeningSheetDetails").toggle();
            $("#UpOTMSchedule").toggle();
            $("#UPOTMTEForm").toggle();
            $("#UPOTMProcWorkOrder").toggle();
            $("#UpOTMBillPayment").toggle();
        });   $("#otm-proc").click(function(){
            $("#otm-invitation").toggle();
            $("#otm-opening-sheet").toggle();
            $("#otm-schedule").toggle();
            $("#otm-te").toggle();
            $("#otm-work-order").toggle();
            $("#otm-bill-pay").toggle();
        });
        $("#grantManagement").click(function(){
            $("#performanceHead").toggle();
            $("#PerformanceIndicator").toggle();
            $("#performanceMeasureCategory").toggle();
            $("#performanceMeasure").toggle();
            $("#markDstribution").toggle();
            $("#unionPorishod2PerformanceEntry").toggle();
            $("#performanceOrgType").toggle();
            $("#unionPorishodPerformanceEntry").toggle();
            $("#zillaPorishodPerformanceEntry").toggle();
            $("#allocateAmount").toggle();
            $("#distributeBBGAmount").toggle();
});

        $("#Planning").click(function(){       //otherStakeHolder
            $("#fiscalYear").toggle();
            $("#committeeType").toggle();
            $("#committeeLevel").toggle();
            $("#ccommittee").toggle();
            $("#meeting").toggle();
            $("#meetingLevel").toggle();
            $("#memberDesignation").toggle();
            $("#schemeCategory").toggle();
            $("#schemeType").toggle();
            $("#sschemeInfo").toggle();

        });

        $("#otherStakeHolder").click(function(){
            $("#courtType").toggle();
            $("#caseInformation").toggle();
            $("#lawBranchTwo").toggle();
            $("#lgedOffice").toggle();
            $("#lgedAuditInfo").toggle();
            $("#projectInfo").toggle();
        });

    });
</script>

<div class="col-xs-3" style="float: left;">
    <div class="list-group">

        <a href="#" id="settings"  class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-wrench"></span>&nbsp &nbsp <strong>  Settings </strong> </a><!-- this is header -->

        <a href="${g.createLink(controller: "Division")}" id="div" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Division</a>
        <a href="${g.createLink(controller: "District")}"  id="dis" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> District</a>
        <a href="${g.createLink(controller: "Upazila")}" id="upz"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Upzilla</a>
        <a href="${g.createLink(controller: "UnionParishad")}" id="up" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Union parishod</a>
        <a href="${g.createLink(controller: "ward")}"  id="wd" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Ward</a>
        <a href="${g.createLink(controller: "schemeInfo")}"  id="schemeinfo" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Scheme</a>

        <a href="#" id="committee" class="list-group-item active" style="font-size:14px;" ><span class="glyphicon glyphicon-user"></span> &nbsp &nbsp <strong> Look Up</strong></a><!-- this is header -->
        <a href="${g.createLink(controller: "Lookup")}" id="wc" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>LookUp Type</a>
        <a href="${g.createLink(controller: "AllLookup")}" id="sic" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>All LookUp</a>

      <a href="#" id="proc" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>Procurement </strong> </a><!-- this is header -->
        <a href="${g.createLink(controller: "Up_Proc_Master")}"  id="proc_master" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Union Parishad Procurement</a>

    <a href="#" id="pmu_proc_" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>PMU Procurement  </strong> </a><!-- this is header -->
        <a href="${g.createLink(controller: "pmuProcPlan")}"  id="pmu_proc_master" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>PMU Procurement Plan</a>

        <a href="#" id="proc_direct" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>Direct Procurement </strong> </a><!-- this is header -->
        <a href="${g.createLink(controller: "Up_Proc_Master")}"  id="proc_direct_actual" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Add Actual Details</a>

        <a href="#" id="cp" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>Community Procurement </strong> </a><!-- this is header -->
    %{--<a href="${g.createLink(controller: "Up_Proc_Master")}"  id="upcp" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up Community Procurement</a>--}%
        <a href="${g.createLink(controller: "labourAppoinmentInfo")}" id="lai" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Labour Appointment Info</a>
        <a href="${g.createLink(controller: "MasterRoleSalary")}" id="mrs" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Master Role Salary</a>
        <a href="${g.createLink(controller: "AdvanceAdjustment")}" id="ada" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Advance Adjustment</a>

        <a href="#" id="rfq" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-share-alt"></span> &nbsp &nbsp <strong>RFQ Procurement</strong></a><!-- this is header -->
    %{--<a href="${g.createLink(controller: "Up_Proc_Master")}"  id="uprfq" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up RFQ Procurement</a>--}%
    %{--<a href="${g.createLink(controller: "Up_Proc_Master")}" id="item_details" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up RFQ Item Details</a>--}%
        <a href="${g.createLink(controller: "upRfqOpeningSheet")}" id="openingsheet" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up RFQ Opening Sheet</a>
        %{--<a href="UpRFQOpeningSheetDetails.html" id="opningsheetdetails" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up RFQ Opening Sheet Details</a>--}%
        <a href="${g.createLink(controller: "upRfqEvaluation")}" id="evaluation" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Evaluation</a>
        %{--<a href="${g.createLink(controller: "Up_Proc_Master")}" id="evaluationDetails" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Evaluation Sheet Details</a>--}%
        <a href="${g.createLink(controller: "upRFQProcWorkOrder")}" id="workorder" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Procurement Work Order</a>
        <a href="${g.createLink(controller: "advanceAdjustment")}" id="billpayment" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Procurement Bill Payment</a>

        <a href="#" id="otm-proc" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-upload"></span> &nbsp &nbsp <strong>OTM Procurement</strong></a><!-- this is header -->

        <a href="${g.createLink(controller: "IFT")}" id="otm-invitation"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Invitation For Tender</a>
        %{--<a href="UPOTMItemDetails.html" id="UPOTMItemDetails"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP OTM Item Details</a>--}%
        <a href="${g.createLink(controller: "UP_OTM_Tender_Schedule_Sample")}" id="otm-schedule"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Schedule</a>
        <a href="${g.createLink(controller: 'upOtmOpeningSheet')}" id="otm-opening-sheet"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up OTM Opening Sheet</a>
        %{--<a href="UpOTMOpeningSheetDetails.html" id="otm-opening-sheet-details"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up OTM Opening Sheet Details</a>--}%
        <a href="${g.createLink(controller: 'upOtmEvaluation')}" id="otm-te"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>OTM Tender Evaluation</a>
        <a href="${g.createLink(controller: "upRFQProcWorkOrder")}" id="otm-work-order"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP OTM Procurement Work Order</a>
        <a href="${g.createLink(controller: "advanceAdjustment")}" id="otm-bill-pay"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up OTM Bill Payment</a>

        <a href="#" id="FIXED_ASSET" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-upload"></span> &nbsp &nbsp <strong>Fixed Asset (PMU)</strong></a><!-- this is header -->
        <a href="${g.createLink(controller: "LOCATION")}"  id="LOCATION" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Location</a>
        <a href="${g.createLink(controller: "ASSET_MAJOR_CATEGORY")}" id="ASSET_MAJOR_CATEGORY"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Asset Major Category</a>
        <a href="${g.createLink(controller: "ASSET_MINOR_CATEGORY")}" id="ASSET_MINOR_CATEGORY"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Asset Minor Category</a>
        <a href="${g.createLink(controller: "ASSET_BOOK")}" id="ASSET_BOOK"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Asset Book</a>
        <a href="${g.createLink(controller: "STAKEHOLDER")}" id="STAKEHOLDER"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Stakeholder</a>
        <a href="${g.createLink(controller: "ASSET_DISTRIBUTION")}" id="ASSET_DISTRIBUTION"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Asset Distribution</a>
        <a href="${g.createLink(controller: "ASSET_DISTRIBUTION",action: "assetMovementList")}" id="ASSET_DISTRIBUTION_MOVEMENT"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Asset Movement</a>
        <a href="${g.createLink(controller: "ASSET_MOVEMENT_HISTORY")}" id="ASSET_MOVEMENT_HISTORY"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Asset Movement History</a>
        <a href="${g.createLink(controller: "COMITY")}" id="COMITY"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Committee</a>
        <a href="${g.createLink(controller: "ASSET_DISPOSAL")}" id="ASSET_DISPOSAL"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Asset Disposal</a>
        <a href="${g.createLink(controller: "ASSET_BOOK",action: "list_disposed")}" id="ASSET_BOOK_DISPOSAL_LIST"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Disposed Asset List</a>
        <a href="${g.createLink(controller: "ASSET_BOOK",action: "list_all")}" id="ASSET_BOOK_DISPOSAL_LIST_ALL"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>List of all Asset</a>
        <a href="${g.createLink(controller: "FIXED_ASSET_RPT",action: "index")}" id="reports"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Reports</a>

        <a href="#" id="MONITORING" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-upload"></span> &nbsp &nbsp <strong>Monitoring</strong></a><!-- this is header -->
        <a href="${g.createLink(controller: "INSPECTION")}"  id="INSPECTION" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Inspection</a>


        <a href="#" id="Planning" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-upload"></span> &nbsp &nbsp <strong>UP Planning</strong></a>
        <a href="${g.createLink(controller: "fiscalYear", action: "create")}"  id="fiscalYear" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Fiscal Year Entry</a>
        <a href="${g.createLink(controller: "committeeType", action: "create")}"  id="committeeType" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Committee Type Entry</a>
        <a href="${g.createLink(controller: "committeeLevel", action: "create")}"  id="committeeLevel" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Committee Level Entry</a>
        <a href="${g.createLink(controller: "memberDesignation", action: "create")}"  id="memberDesignation" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Committee Member Designation</a>
        <a href="${g.createLink(controller: "committee", action: "create")}"  id="ccommittee" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Committee Entry</a>
        <a href="${g.createLink(controller: "meetingLevel", action: "create")}"  id="meetingLevel" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Meeting Level Entry</a>
        <a href="${g.createLink(controller: "meeting", action: "create")}"  id="meeting" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Meeting Entry</a>
        <a href="${g.createLink(controller: "schemeCategory", action: "create")}"  id="schemeCategory" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Scheme Category</a>
        <a href="${g.createLink(controller: "schemeType", action: "create")}"  id="schemeType" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Scheme Type</a>
        <a href="${g.createLink(controller: "schemeInfo", action: "create")}"  id="sschemeInfo" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Scheme Information</a>

        <a href="#" id="grantManagement" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-upload"></span> &nbsp &nbsp <strong>Grant Management</strong></a>
        <a href="${g.createLink(controller: "performanceOrgType", action: "create")}"  id="performanceOrgType" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Performance Organization Type</a>
        <a href="${g.createLink(controller: "performanceHead", action: "create")}"  id="performanceHead" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Performance Head</a>
        <a href="${g.createLink(controller: "performanceIndicator", action: "create")}"  id="PerformanceIndicator" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Performance Indicator</a>
        <a href="${g.createLink(controller: "markDstribution", action: "create")}"  id="markDstribution" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Mark Distribution</a>
        <a href="${g.createLink(controller: "performanceMeasureCategory", action: "create")}"  id="performanceMeasureCategory" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Performance Measurement Category</a>
        <a href="${g.createLink(controller: "performanceMeasure", action: "performanceMeasure")}"  id="performanceMeasure" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Performance Measurement</a>
        <a href="${g.createLink(controller: "unionPorishod2PerformanceEntry", action: "UnionPorishod2PerformanceEntry")}"  id="unionPorishod2PerformanceEntry" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>UP Performance Score Entry(30 marks)</a>
        <a href="${g.createLink(controller: "unionPorishodPerformanceEntry", action: "create")}"  id="unionPorishodPerformanceEntry" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>UP(Ministry) Performance Score Entry</a>
        <a href="${g.createLink(controller: "zillaPorishodPerformanceEntry", action: "create")}"  id="zillaPorishodPerformanceEntry" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Zila Parishad(Ministry) Performance Score Entry</a>
        <a href="${g.createLink(controller: "allocatedAmount", action: "create")}"  id="allocateAmount" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Amount Allocate</a>
        <a href="${g.createLink(controller: "distributeBBGAmount", action: "create")}"  id="distributeBBGAmount" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Distribute BBG Amount</a>

        <a href="#" id="otherStakeHolder" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-upload"></span> &nbsp &nbsp <strong>Ministry Stakeholder</strong></a>
        <a href="${g.createLink(controller: "courtType", action: "create")}"  id="courtType" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Court Entry</a>
        <a href="${g.createLink(controller: "caseInformation", action: "create")}"  id="caseInformation" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>LGD Case Information</a>
        <a href="${g.createLink(controller: "lawBranchTwo", action: "create")}"  id="lawBranchTwo" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>LGD Law Branch Two</a>
        <a href="${g.createLink(controller: "lgedOffice", action: "create")}"  id="lgedOffice" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>LGD Office Entry For Audit</a>
        <a href="${g.createLink(controller: "lgedAuditInfo", action: "create")}"  id="lgedAuditInfo" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>LGD Office Entry For Audit</a>
        <a href="${g.createLink(controller: "projectInfo", action: "create")}"  id="projectInfo" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>LGD Project Information</a>
    </div><!--list-group-->
</div><!--col-xs-3-->