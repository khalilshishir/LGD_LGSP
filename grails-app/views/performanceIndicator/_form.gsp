<%@ page import="grantmanagement.PerformanceIndicator" %>

<script src = "${resource(dir: 'js', file: 'jquery.blockUI.js')}"></script>

<script type="text/javascript">
    function GetPerformanceHeadTotalMark(headId){
        $.ajax({
            url: "${request.contextPath}/PerformanceIndicator/GetPerformanceHeadTotalMark",
            type: "POST",
            data: "head_id=" + headId,
            async: false,
            //dataType: "json",
            success: function (response) {

                $("#performanceHeadMark").html(response);


            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            }
        });

    }
    function GetPerformaceIndicatorDetail(headId){
        $.ajax({
            url: "${request.contextPath}/PerformanceIndicator/GetPerformanceIndicatorByHeadId",
            type: "POST",
            data: "head_id=" + headId,
            async: false,
            //dataType: "json",

            success: function (response) {
                $("#fuck").empty();
                $("#fuck").append(response);


            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            }
        });
    }

    jQuery(document).on("change","#performanceHead",function(){
        $.blockUI("plz wait...");


        var value=$("#performanceHead").val();
        GetPerformanceHeadTotalMark(value);
        GetPerformaceIndicatorDetail(value);

        $.unblockUI();

    });

//     Performance Head
    function GeneratePerformanceHeadDdl(headId){
        $.ajax({
            url: "${request.contextPath}/PerformanceIndicator/GetPerformanceHeadByOrganizationID",
//                                      /ControllerName/ControllerMethodName
            type: "POST",
            data: "head_id=" + headId,
            async: false,
            //dataType: "json",

            success: function (response) {
                $("#performanceHead").empty();
                $("#performanceHead").append(response);
//                Note : performanceHead is g:select id for performance head


            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            }
        });
    }

    jQuery(document).on("change","#organiztionType",function(){
        $.blockUI("plz wait...");


        var value=$("#organiztionType").val();
        GeneratePerformanceHeadDdl(value);

        $.unblockUI();

    });

//    PerformanceHead
</script>

<div class="fieldcontain ${hasErrors(bean: performanceIndicatorInstance, field: 'performanceHead', 'error')} required">


    <div class="row" style="padding-left: 15px">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="organiztionType">Organization type</label>
            <span class="required-indicator">*</span>
            %{--<g:select id="budgetIncomeMasterHead" noSelection="[null:'Select one']" name="organiztionType.id" from="${grantmanagement.OrganiztionType?.values()}" optionKey="id" required="required" value="${performanceHeadInstance?.organiztionType?.name()}" class="form-control" />--}%
            <g:select name="organiztionType" from="${grantmanagement.PerformanceOrgType.list()}" value="${orgType}" noSelection="[null:'select one']" optionValue="orgName" optionKey="keyword" required="" class="form-control"/>
        </div>
    </div>


    <div class="col-xs-6" style="position: relative;" >
        <div class="form-group">
            <label for="performanceHead">Performance Head</label>
            <span class="required-indicator">*</span>
            <g:select id="performanceHead" noSelection="[null:'Select one']" name="performanceHead.id" from="${grantmanagement.PerformanceHead.list()}" optionKey="id" required="required" value="${performanceIndicatorInstance?.performanceHead?.id}" class="form-control"/>
        </div>
    </div>
    %{--<label for="performanceHead">--}%
        %{--<g:message code="performanceIndicator.performanceHead.label" default="Performance Head" />--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%

    %{--<g:select id="performanceHead" name="performanceHead.id" from="${grantmanagement.PerformanceHead.list()}" noSelection="[null:'Select One']" optionKey="id" required="" value="${performanceIndicatorInstance?.performanceHead?.id}" class="many-to-one"/>--}%


    %{--Total Marks & Label--}%
    <div class="col-xs-6">
        <label>
            Total Marks:
        </label>
        <label id="performanceHeadMark" name="performanceHeadMark">

        </label>
    </div>

</div>
</div>

<div class="row" style="padding-left: 15px">
    %{--Table--}%
    <div class="row" style="clear: both; padding-left: 15px; padding-right: 30px">
        <table border="2" id="fuck" width="100%" style="margin-bottom: 5px">

        </table>
    </div>


    <div class="col-xs-6">
        <div class="form-group">
            <label for="indicatorName">Indicator Name</label>
            <span class="required-indicator">*</span>
            <g:textField name="indicatorName" required="required" value="${performanceIndicatorInstance?.indicatorName}" class="form-control"/>
        </div>
    </div>

    %{--<div class="fieldcontain ${hasErrors(bean: performanceIndicatorInstance, field: 'indicatorName', 'error')} required">--}%
    %{--<label for="indicatorName">--}%
    %{--<g:message code="performanceIndicator.indicatorName.label" default="Indicator Name" />--}%
    %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:textField name="indicatorName" required="" value="${performanceIndicatorInstance?.indicatorName}"/>--}%
    %{--</div>--}%

    <div class="col-xs-6">
        <div class="form-group">
            <label for="mark">Mark</label>
            <span class="required-indicator">*</span>
            <g:field name="mark" type="number" value="${performanceIndicatorInstance.mark}" required="required" class="form-control"/>
        </div>
    </div>
    %{--<div class="fieldcontain ${hasErrors(bean: performanceIndicatorInstance, field: 'mark', 'error')} required">--}%
    %{--<label for="mark">--}%
    %{--<g:message code="performanceIndicator.mark.label" default="Mark" />--}%
    %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:field name="mark" type="number" value="${performanceIndicatorInstance.mark}" required=""/>--}%
    %{--</div>--}%

    <div class="col-xs-6">
        <div class="form-group">
            <label for="performanceMeasure">Performance Measure</label>
            <g:textField name="performanceMeasure" value="${performanceIndicatorInstance?.performanceMeasure}" class="form-control"/>
        </div>
    </div>
    %{--<div class="fieldcontain ${hasErrors(bean: performanceIndicatorInstance, field: 'performanceMeasure', 'error')} ">--}%
    %{--<label for="performanceMeasure">--}%
    %{--<g:message code="performanceIndicator.performanceMeasure.label" default="Performance Measure" />--}%
    %{----}%
    %{--</label>--}%
    %{--<g:textField name="performanceMeasure" value="${performanceIndicatorInstance?.performanceMeasure}"/>--}%
    %{--</div>--}%

    <div class="col-xs-6">
        <div class="form-group">
            <label for="meansOfVerification">Means Of Verification</label>
            <g:textField name="meansOfVerification" value="${performanceIndicatorInstance?.meansOfVerification}" class="form-control"/>
        </div>
    </div>
    %{--<div class="fieldcontain ${hasErrors(bean: performanceIndicatorInstance, field: 'meansOfVerification', 'error')} ">--}%
    %{--<label for="meansOfVerification">--}%
    %{--<g:message code="performanceIndicator.meansOfVerification.label" default="Means Of Verification" />--}%
    %{----}%
    %{--</label>--}%
    %{--<g:textField name="meansOfVerification" value="${performanceIndicatorInstance?.meansOfVerification}"/>--}%
    %{--</div>--}%

    <div class="col-xs-6">
        <div class="form-group">
            <label for="slNo">SL No</label>
            <g:textField name="slNo" value="${performanceIndicatorInstance?.slNo}" class="form-control"/>
        </div>
    </div>
    %{--<div class="fieldcontain ${hasErrors(bean: performanceIndicatorInstance, field: 'slNo', 'error')} ">--}%
    %{--<label for="slNo">--}%
    %{--<g:message code="performanceIndicator.meansOfVerification.label" default="Serial No" />--}%

    %{--</label>--}%
    %{--<g:textField name="slNo" value="${performanceIndicatorInstance?.slNo}"/>--}%
    %{--</div>--}%
</div>
