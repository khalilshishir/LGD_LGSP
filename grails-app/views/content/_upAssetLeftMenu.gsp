<script type="text/javascript">
    $(document).ready(function(){

        $("#astSub").toggle();
        $("#fxdSub").toggle();
        $("#infraSub").toggle();

        $("#ast").click(function(){
            $("#astSub").toggle();
        });
        $("#fxd").click(function(){
            $("#fxdSub").toggle();
        });

        $("#infra").click(function(){
            $("#infraSub").toggle();
        });


//        $("#cp").click(function(){
//            $("#lai").toggle();
//            $("#mrs").toggle();
//            $("#ada").toggle();
//            $("#proc_master_com").toggle();
//
//        });


//
//
    });
</script>

<div class="col-xs-3" style="float: left;">
    <div class="list-group">
        <a href="#" id="ast" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>সম্পদ   (ইউনিয়ন পরিষদ) </strong> </a><!-- this is header -->
        <a href="${g.createLink(controller: "up_Asset_Regi_Master")}"  id="astSub" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>ইউনিয়ন পরিষদ  সম্পদ তৈরি    করুন </a>


        <a href="#" id="fxd" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>স্থায়ী সম্পদ </strong> </a><!-- this is header -->
        <a href="${g.createLink(controller: "up_Asset_Regi_Master")}"  id="fxdSub" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i>স্থায়ী সম্পদ তৈরি করুন </a>

        <a href="#" id="infra" class="list-group-item active" style="font-size:14px;"><span class="glyphicon glyphicon-log-out"></span> &nbsp &nbsp <strong>অবকাঠামগত সম্পদ </strong> </a><!-- this is header -->

        <a href="${g.createLink(controller: "up_Asset_Regi_Master")}" id="infraSub" class="list-group-item"><i class="fa fa-angle-double-right fa-col"></i> অবকাঠামগত সম্পদ তৈরি করুন</a>


    </div><!--list-group-->
</div><!--col-xs-3-->