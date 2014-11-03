<%@ page import="grantmanagement.MarkDstribution" %>
<script src="${resource(dir: 'js', file: 'jquery.blockUI.js')}"></script>
<script type="text/javascript">
    function GetPerformanceIndicatorMarksDistribution(indicatorId){
        $.ajax({
            url: "${request.contextPath}/MarkDstribution/GetMarkDistributionByPerformanceId",
            type: "POST",
            data: "indicator_id=" + indicatorId,
            async: false,
            //dataType: "json",

            success: function (response) {

//                $("#performanceIndicator").empty();
//                $("#performanceIndicator").append(response);
                $("#rulesTbl").empty();
                $("#rulesTbl").append(response);
            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            }
        });
    }

    function GeneratePerformaneIndicatorDdl(headId){
        $.ajax({
            url: "${request.contextPath}/MarkDstribution/GetPerformanceIndicatorByHeadId",
            type: "POST",
            data: "head_id=" + headId,
            async: false,
            //dataType: "json",

            success: function (response) {

                $("#performanceIndicator").empty();
                $("#performanceIndicator").append(response);

            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            }
        });
    }

    jQuery(document).on("change","#performanceHead",function(){
        $.blockUI("plz wait...");
        var headId=$("#performanceHead").val();
        GeneratePerformaneIndicatorDdl(headId);
        $.unblockUI();
    });

    jQuery(document).on("change","#performanceIndicator",function(){
        $.blockUI("plz wait...");

        var value=$("#performanceIndicator").val();
        GetPerformanceIndicatorMarksDistribution(value);

        $.unblockUI();
    });





 %{--Start : Performance Head--}%
    function GeneratePerformanceHeadDdl(headId){
        $.ajax({
//                                      /ControllerName/ControllerMethodName
            url: "${request.contextPath}/PerformanceIndicator/GetPerformanceHeadByOrganizationID",
            type: "POST",
            data: "head_id=" + headId,
            async: false,
            //dataType: "json",
            success: function (response) {
                $("#performanceHead").empty();
                $("#performanceIndicator").empty();
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

    %{--End : Performance Head--}%

</script>



    <div class="row" style="padding-left: 15px">

        <div class="col-xs-6">
            <div class="form-group">
                <label for="organiztionType">Organization type</label>
                <span class="required-indicator">*</span>
                %{--<g:select id="budgetIncomeMasterHead" noSelection="[null:'Select one']" name="organiztionType.id" from="${grantmanagement.OrganiztionType?.values()}" optionKey="id" required="required" value="${performanceHeadInstance?.organiztionType?.name()}" class="form-control" />--}%
                <g:select name="organiztionType" from="${grantmanagement.PerformanceOrgType.list()}" noSelection="[null:'select one']"  required="" value="${markDstributionInstance?.performanceHead?.organiztionType?.keyword}" optionKey="keyword" optionValue="orgName" class="form-control"/>
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="performanceHead">Performance Head</label>
                <span class="required-indicator">*</span>
                <g:select id="performanceHead" noSelection="[null:'Select one']" name="performanceHead.id" from="${grantmanagement.PerformanceHead.list()}" optionKey="id" required="required" value="${markDstributionInstance?.performanceHead?.id}" class="many-to-one" class="form-control"/>
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: markDstributionInstance, field: 'performanceHead', 'error')} required">--}%
        %{--<label for="performanceHead">--}%
        %{--<g:message code="markDstribution.performanceHead.label" default="Performance Head" />--}%
        %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:select id="performanceHead" name="performanceHead.id" noSelection="[null:'Select One']" from="${grantmanagement.PerformanceHead.list()}" optionKey="id" required="" value="${markDstributionInstance?.performanceHead?.id}" class="many-to-one"/>--}%
        %{--</div>--}%


        <div class="col-xs-6">
            <div class="form-group">
                <label for="performanceIndicator">Performance Indicator</label>
                <span class="required-indicator">*</span>
                <g:select id="performanceIndicator" noSelection="[null:'Select one']" name="performanceIndicator.id" from="${grantmanagement.PerformanceIndicator.list()}" optionKey="id" required="required" value="${markDstributionInstance?.performanceIndicator?.id}" class="form-control" />
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: markDstributionInstance, field: 'performanceIndicator', 'error')} required">--}%
        %{--<label for="performanceIndicator">--}%
        %{--<g:message code="markDstribution.performanceIndicator.label" default="Performance Indicator" />--}%
        %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:select id="performanceIndicator" name="performanceIndicator.id" noSelection="[null:'Select One']" from="${grantmanagement.PerformanceIndicator.list()}" optionKey="id" required="" value="${markDstributionInstance?.performanceIndicator?.id}" class="many-to-one"/>--}%
        %{--</div>--}%
    </div>


    <div class="row" style="padding-left: 15px">

        %{--Table--}%
        <div>
            <table id="rulesTbl" border="3" width="98%" style="margin-bottom: 5px">

            </table>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="rules">Rules</label>
                <span class="required-indicator">*</span>
                <g:textField class="form-control" name="rules" value="${markDstributionInstance?.rules}"/>
            </div>
        </div>
        %{--<div class="fieldcontain ${hasErrors(bean: markDstributionInstance, field: 'rules', 'error')} required">--}%
        %{--<label for="rules">--}%
        %{--<g:message code="markDstribution.rules.label" default="Rules" />--}%
        %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:textField name="rules" required="" value="${markDstributionInstance?.rules}"/>--}%
        %{--</div>--}%

        <div class="col-xs-6">
            <div class="form-group">
                <label for="mark">Mark</label>
                <span class="required-indicator">*</span>
                <g:field class="form-control" name="mark" type="number" value="${markDstributionInstance.mark}" required="required"/>
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: markDstributionInstance, field: 'mark', 'error')} required">--}%
            %{--<label for="mark">--}%
                %{--<g:message code="markDstribution.mark.label" default="Mark" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:field name="mark" type="number" value="${markDstributionInstance.mark}" required=""/>--}%
        %{--</div>--}%


        <div class="col-xs-6">
            <div class="form-group">
                <label for="slNo">SL No</label>
                <span class="required-indicator">*</span>
                <g:field class="form-control" name="slNo" type="number" value="${markDstributionInstance.slNo}" required="required"/>
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: markDstributionInstance, field: 'slNo', 'error')} required">--}%
            %{--<label for="slNo">--}%
                %{--<g:message code="markDstribution.slNo.label" default="Sl No" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:field name="slNo" type="number" value="${markDstributionInstance.slNo}" required=""/>--}%
        %{--</div>--}%

    </div>