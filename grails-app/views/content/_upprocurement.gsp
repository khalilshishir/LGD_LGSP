<%@ page import="comonclass.UpProcType" %>
<script type="text/javascript">
    $(document).ready(function(){

        $("#proc_master_up").toggle();
        $("#proc_master").toggle();
        $("#proc_master_com").toggle();
        $("#proc_master_rfq").toggle();
        $("#proc_master_otm").toggle();
        $("#dir-proc-report").toggle();
        $("#item_details").toggle();

        $("#lai").toggle();
        $("#mrs").toggle();
        $("#ada").toggle();
        $("#uprfq").toggle();
        $("#openingsheet").toggle();
        $("#opningsheetdetails").toggle();
        $("#evaluation").toggle();
        $("#evaluationDetails").toggle();
        $("#workorder").toggle();
        $("#billpayment").toggle();



        $("#otm-opening-sheet").toggle();
        $("#otm-schedule").toggle();
        $("#otm-te").toggle();
        $("#otm-work-order").toggle();
        $("#otm-bill-pay").toggle();
        $("#otm-invitation").toggle();




        $("#proc_up").click(function(){
            $("#proc_master_up").toggle();
        });
        $("#proc").click(function(){
            $("#proc_master").toggle();
            $("#dir-proc-report").toggle();
        });


        $("#cp").click(function(){
            $("#lai").toggle();
            $("#mrs").toggle();
            $("#ada").toggle();
            $("#proc_master_com").toggle();

        });


        $("#rfq").click(function(){
            $("#proc_master_rfq").toggle();
            $("#uprfq").toggle();
            $("#item_details").toggle();
            $("#openingsheet").toggle();
            $("#opningsheetdetails").toggle();
            $("#evaluation").toggle();
            $("#evaluationDetails").toggle();
            $("#workorder").toggle();
            $("#billpayment").toggle();
        });
        $("#otm-proc").click(function(){
            $("#proc_master_otm").toggle();
            $("#otm-invitation").toggle();
            $("#otm-opening-sheet").toggle();
            $("#otm-schedule").toggle();
            $("#otm-te").toggle();
            $("#otm-work-order").toggle();
            $("#otm-bill-pay").toggle();
        });
    });
</script>

<div class="col-xs-3" style="float: left;">
    <div class="list-group">
        <a href="#" id="proc_up" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>ক্রয় (ইউনিয়ন পরিষদ) </strong> </a><!-- this is header -->
        <a href="${g.createLink(controller: "Up_Proc_Master",action: "create",params:UpProcType.DIRECT_PROCUREMENT)}"  id="proc_master_up" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>ইউনিয়ন পরিষদ ক্রয় তৈরী  করুন </a>


        <a href="#" id="proc" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong> সরাসরি ক্রয়- পদ্ধতি </strong> </a><!-- this is header -->
        <a href="${g.createLink(controller: "upDirectProcurement",action: "create")}"  id="proc_master" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>আইটেম এর বর্ণনা</a>
        <a href="${g.createLink(controller: "upDirectProcurement",action: "create")}"  id="dir-proc-report" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>রিপোর্ট </a>

        <a href="#" id="cp" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>কমিউনিটি ক্রয়- পদ্ধতি </strong> </a><!-- this is header -->
        %{--<a href="${g.createLink(controller: "Up_Proc_Master")}"  id="proc_master_com" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>মালামালের বিবরণ তৈরী  করুন</a>--}%
        <a href="${g.createLink(controller: "upCommuniProcurement",action: 'create')}"  id="proc_master_com" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>মালামালের বিবরণ তৈরী  করুন</a>
        <a href="${g.createLink(controller: "labourAppoinmentInfo")}" id="lai" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Labour Appointment Info</a>
        <a href="${g.createLink(controller: "MasterRoleSalary")}" id="mrs" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Master Role Salary</a>
        <a href="${g.createLink(controller: "AdvanceAdjustment")}" id="ada" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Advance Adjustment</a>

        <a href="#" id="rfq" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-share-alt"></span> &nbsp &nbsp <strong>আর এফ কিউ পদ্ধতি </strong></a><!-- this is header -->
        %{--<a href="${g.createLink(controller: "Up_Proc_Master")}"  id="proc_master_rfq" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>মালামালের বিবরণ তৈরী  করুন</a>--}%
    %{--<a href="${g.createLink(controller: "Up_Proc_Master")}" id="item_details" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up RFQ Item Details</a>--}%
        <a href="${g.createLink(controller: "upRfqProcurement",action: 'create')}"  id="item_details" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>মালামালের বিবরণ তৈরী  করুন</a>
        <a href="${g.createLink(controller: "upRfqOpeningSheet")}" id="openingsheet" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up RFQ Opening Sheet</a>

        %{--<a href="UpRFQOpeningSheetDetails.html" id="opningsheetdetails" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up RFQ Opening Sheet Details</a>--}%
        <a href="${g.createLink(controller: "upRfqEvaluation")}" id="evaluation" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Evaluation</a>
        %{--<a href="${g.createLink(controller: "Up_Proc_Master")}" id="evaluationDetails" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Evaluation Sheet Details</a>--}%
        <a href="${g.createLink(controller: "upRFQProcWorkOrder")}" id="workorder" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Procurement Work Order</a>
        <a href="${g.createLink(controller: "advanceAdjustment")}" id="billpayment" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP RFQ Procurement Bill Payment</a>

        <a href="#" id="otm-proc" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-upload"></span> &nbsp &nbsp <strong>উন্মুক্ত দরপত্র   পদ্ধতি </strong></a><!-- this is header -->
        <a href="${g.createLink(controller: "upOtmProcurement",action: 'create')}"  id="proc_master_otm" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>মালামালের বিবরণ তৈরী  করুন</a>
        <a href="${g.createLink(controller: "IFT")}" id="otm-invitation"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Invitation For Tender</a>
        %{--<a href="UPOTMItemDetails.html" id="UPOTMItemDetails"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP OTM Item Details</a>--}%
        <a href="${g.createLink(controller: "UP_OTM_Tender_Schedule_Sample")}" id="otm-schedule"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>Schedule</a>
        <a href="${g.createLink(controller: 'upOtmOpeningSheet')}" id="otm-opening-sheet"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up OTM Opening Sheet</a>
        %{--<a href="UpOTMOpeningSheetDetails.html" id="otm-opening-sheet-details"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up OTM Opening Sheet Details</a>--}%
        <a href="${g.createLink(controller: 'upOtmEvaluation')}" id="otm-te"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>OTM Tender Evaluation</a>
        <a href="${g.createLink(controller: "upRFQProcWorkOrder")}" id="otm-work-order"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> UP OTM Procurement Work Order</a>
        <a href="${g.createLink(controller: "advanceAdjustment")}" id="otm-bill-pay"  class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> Up OTM Bill Payment</a>

    </div><!--list-group-->
</div><!--col-xs-3-->