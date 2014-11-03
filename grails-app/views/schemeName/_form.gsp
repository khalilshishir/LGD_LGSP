<%@ page import="planningbudget.SchemeName" %>


<style>
table{
    width: 98%;
    border: 1px;
    border-style: solid;
    border-color: #31b0d5;
}
th {
    border: 1px;
    border-style: solid;
    border-color: #31b0d5;
    text-align: center;
    font-size: 15px
}
tr,td {
    border: 1px;
    border-style: solid;
    border-color: #31b0d5;
}
</style>

<script src = "${resource(dir: 'js', file: 'jquery-1.8.0.min.js')}"></script>
<script src = "${resource(dir: 'js', file: 'jquery.blockUI.js')}"></script>

<script type="text/javascript">

    %{--jQuery(document).on("change","#division",function(){--}%
        %{--$.blockUI("plz wait...");--}%

        %{--var divisionID=$("#division").val();--}%
        %{--GetDistrictID(divisionID);--}%

        %{--$.unblockUI();--}%

    %{--});--}%

    %{--function GetDistrictID(divisionID){--}%
        %{--alert(divisionID)--}%

        %{--$.ajax({--}%
            %{--url: "${request.contextPath}/SchemeName/GetDistrictDetailsByDivisionID",--}%
            %{--type: "POST",--}%
            %{--data: {--}%
                %{--divisionID:divisionID--}%
            %{--},--}%
            %{--async: false,--}%
            %{--//dataType: "json",--}%

            %{--success: function (response) {--}%
                %{--alert(response);--}%

                %{--$("#district").empty()--}%
                %{--$("#district").append(response)--}%

            %{--},--}%
            %{--error: function (xhr, textStatus, errorThrown) {--}%
                %{--alert("An internal error occurred! Please try again later.");--}%
            %{--}--}%
        %{--});--}%
    %{--}--}%


    %{--jQuery(document).on("change","#district",function(){--}%
        %{--$.blockUI("plz wait...");--}%

        %{--var districtID=$("#district").val();--}%
        %{--GetUpazilaID(districtID);--}%

        %{--$.unblockUI();--}%

    %{--});--}%

    %{--function GetUpazilaID(districtID){--}%
        %{--alert(districtID)--}%

        %{--$.ajax({--}%
            %{--url: "${request.contextPath}/SchemeName/GetUpazilaDetailsByDistrictID",--}%
            %{--type: "POST",--}%
            %{--data: {--}%
                %{--districtID:districtID--}%
            %{--},--}%
            %{--async: false,--}%
            %{--//dataType: "json",--}%

            %{--success: function (response) {--}%
                %{--alert(response);--}%

                %{--$("#unionParishad").empty()--}%
                %{--$("#unionParishad").append(response)--}%
            %{--},--}%
            %{--error: function (xhr, textStatus, errorThrown) {--}%
                %{--alert("An internal error occurred! Please try again later.");--}%
            %{--}--}%
        %{--});--}%

    %{--}--}%


    %{--jQuery(document).on("change","#upazila",function(){--}%
        %{--$.blockUI("plz wait...");--}%

        %{--var upazilaID=$("#upazila").val();--}%
        %{--GetUpazilaID(upazilaID);--}%

        %{--$.unblockUI();--}%

    %{--});--}%

    %{--function GetUpazilaID(upazilaID){--}%
        %{--alert(upazilaID)--}%

        %{--$.ajax({--}%
            %{--url: "${request.contextPath}/SchemeName/GetUnionDetailsByUpazilaID",--}%
            %{--type: "POST",--}%
            %{--data: {--}%
                %{--upazilaID:upazilaID--}%
            %{--},--}%
            %{--async: false,--}%
            %{--//dataType: "json",--}%

            %{--success: function (response) {--}%
                %{--alert(response);--}%

                %{--$("#unionParishad").empty()--}%
                %{--$("#unionParishad").append(response)--}%
            %{--},--}%
            %{--error: function (xhr, textStatus, errorThrown) {--}%
                %{--alert("An internal error occurred! Please try again later.");--}%
            %{--}--}%
        %{--});--}%
    %{--}--}%



    %{--jQuery(document).on("change","#unionParishad",function(){--}%
        %{--$.blockUI("plz wait...");--}%

        %{--var unionParishadID=$("#unionParishad").val();--}%
        %{--GetWardID(unionParishadID);--}%

        %{--$.unblockUI();--}%

    %{--});--}%

    %{--function GetWardID(unionParishadID){--}%
        %{--alert(unionParishadID)--}%

        %{--$.ajax({--}%
            %{--url: "${request.contextPath}/SchemeName/GetWardDetailsByUnionID",--}%
            %{--type: "POST",--}%
            %{--data: {--}%
                %{--unionParishadID:unionParishadID--}%
            %{--},--}%
            %{--async: false,--}%
            %{--//dataType: "json",--}%

            %{--success: function (response) {--}%
                %{--alert(response);--}%

                %{--$("#ward").empty()--}%
                %{--$("#ward").append(response)--}%
            %{--},--}%
            %{--error: function (xhr, textStatus, errorThrown) {--}%
                %{--alert("An internal error occurred! Please try again later.");--}%
            %{--}--}%
        %{--});--}%
    %{--}--}%



    jQuery(document).on("change","#fiscalYear",function(){
        $.blockUI("plz wait...");


        var unionParishadID=$("#unionParishad").val();
        var wardID=$("#ward").val();
        var fiscalYearID=$("#fiscalYear").val();


        GetFiscalYearDetails(unionParishadID,wardID,fiscalYearID);

        $.unblockUI();

    });

    function GetFiscalYearDetails(unionParishadID, wardID, fiscalYearID ){

        $.ajax({
            url: "${request.contextPath}/SchemeName/GetFiscalYearDetailsEntry",
            %{--url: "${request.contextPath}/Ward/GetFiscalYearDetailsEntry",--}%
            type: "POST",
            data: {
                unionParishadID:unionParishadID,
                wardID: wardID,
                fiscalYearID:fiscalYearID
            },
            async: false,
            //dataType: "json",

            success: function (response) {
//                alert(response);

                $("#schemeNameDetailsTable").html(response);


            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            }
        });
    }

</script>







<div class="row" style="padding-left: 15px">

    <div class="col-xs-6">
        <div class="form-group">
            <label for="division">বিভাগ</label>
            <span class="required-indicator">*</span>
            <g:select class="form-control" name="division" id="division" noSelection="[null:'নির্বাচন করুন']" optionKey="id"  from="${settings.Division.list().sort()}"></g:select>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="district">জেলা</label>
            <span class="required-indicator">*</span>
            <g:select class="form-control" name="district" id="district" noSelection="[null:'নির্বাচন করুন']" optionKey="id" from="${settings.District.list().sort()}" ></g:select>
            %{--<g:select class="form-control" name="district" id="district" noSelection="[null:'নির্বাচন করুন']" optionKey="id" from="${settings.District.list().sort()}" onchange="GetUpazilaID()"></g:select>--}%
            %{--<g:select class="form-control" name="district" id="district" noSelection="[null:'নির্বাচন করুন']" optionKey="id" from=""></g:select>--}%
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="upazila">উপজেলা</label>
            <span class="required-indicator">*</span>
            <g:select class="form-control" id="upazila" name="upazila" noSelection="[null:'নির্বাচন করুন']" from="${settings.Upazila.list()}" optionKey="id" required="required"/>
            %{--<g:select class="form-control" id="upazila" name="upazila" noSelection="[null:'নির্বাচন করুন']" from="" optionKey="id" required="required"/>--}%
        </div>
    </div>

    <div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'unionParishad', 'error')} required">
        <div class="form-group">
            <label for="unionParishad">
                <g:message code="schemeName.unionParishad.label" default="ইউনিয়ন" />
            </label>
            <span class="required-indicator">*</span>
            <g:select class="form-control" id="unionParishad" name="unionParishad.id" noSelection="[null:'নির্বাচন করুন']"  from="${settings.UnionParishad.list()}" optionKey="id"optionValue="UP_NAME"  required="required" value="${schemeNameInstance?.unionParishad?.id}"/>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'ward', 'error')} required">--}%
        %{--<div class="form-group">--}%
            %{--<label for="ward">--}%
                %{--<g:message code="schemeName.ward.label" default="ওয়ার্ড" />--}%
            %{--</label>--}%
            %{--<span class="required-indicator">*</span>--}%
            %{--<g:select class="form-control" id="ward" name="ward.id" noSelection="[null:'নির্বাচন করুন']" from="${settings.Ward.list()}" optionKey="id" optionValue="WARD_NO" required="required" value="${schemeNameInstance?.ward?.id}"/>--}%
        %{--</div>--}%
    %{--</div>--}%

    <div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'fiscalYear', 'error')} required">
        <div class="form-group">
            <label for="fiscalYear">
                <g:message code="schemeName.fiscalYear.label" default="অর্থ বছর" />
            </label>
            <span class="required-indicator">*</span>
            <g:select class="form-control" id="fiscalYear" name="fiscalYear.id" noSelection="[null:'নির্বাচন করুন']" from="${planningbudget.FiscalYear.list()}" optionKey="id" optionValue="fiscalYear" required="required" value="${schemeNameInstance?.fiscalYear?.id}" />
        </div>
    </div>

    <table id="schemeNameDetailsTable">
        %{--<tr>--}%
        %{--<th>ওয়ার্ড নম্বর</th>--}%
        %{--<th>অগ্রাধিকার ভিত্তিক নির্বাচিত স্কিমের নাম</th>--}%
        %{--</tr>--}%
        %{--<tr>--}%
        %{--<td>Word 1</td>--}%
        %{--<td>5 km road</td>--}%
        %{--</tr>--}%
    </table>


    %{--<label id="schemeNameDetailsTable" name="schemeNameDetailsTable" style="width: 98%">--}%

    %{--</label>--}%

    <div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'ward', 'error')} required">
        <div class="form-group">
            <label for="ward">
                <g:message code="schemeName.ward.label" default="ওয়ার্ড" />
            </label>
            <span class="required-indicator">*</span>
            <g:select class="form-control" id="ward" name="ward.id" noSelection="[null:'নির্বাচন করুন']" from="${settings.Ward.list()}" optionKey="id" optionValue="WARD_NO" required="required" value="${schemeNameInstance?.ward?.id}"/>
        </div>
    </div>

    <div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'schemeName', 'error')} required">
        <div class="form-group">
            <label for="schemeName">
                <g:message code="schemeName.schemeName.label" default="প্রকল্পের নাম" />
            </label>
            <span class="required-indicator">*</span>
            <g:textField class="form-control" name="schemeName" required="" value="${schemeNameInstance?.schemeName}"/>
        </div>
    </div>

</div>



%{--<div class="fieldcontain ${hasErrors(bean: schemeNameInstance, field: 'unionParishad', 'error')} required">--}%
	%{--<label for="unionParishad">--}%
		%{--<g:message code="schemeName.unionParishad.label" default="Union Parishad" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="unionParishad" name="unionParishad.id" from="${settings.UnionParishad.list()}" optionKey="id" required="" value="${schemeNameInstance?.unionParishad?.id}" class="many-to-one"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: schemeNameInstance, field: 'ward', 'error')} required">--}%
	%{--<label for="ward">--}%
		%{--<g:message code="schemeName.ward.label" default="Ward" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="ward" name="ward.id" from="${settings.Ward.list()}" optionKey="id" required="" value="${schemeNameInstance?.ward?.id}" class="many-to-one"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: schemeNameInstance, field: 'fiscalYear', 'error')} required">--}%
	%{--<label for="fiscalYear">--}%
		%{--<g:message code="schemeName.fiscalYear.label" default="Fiscal Year" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="fiscalYear" name="fiscalYear.id" from="${planningbudget.FiscalYear.list()}" optionKey="id" required="" value="${schemeNameInstance?.fiscalYear?.id}" class="many-to-one"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: schemeNameInstance, field: 'schemeName', 'error')} required">--}%
	%{--<label for="schemeName">--}%
		%{--<g:message code="schemeName.schemeName.label" default="Scheme Name" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="schemeName" required="" value="${schemeNameInstance?.schemeName}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: schemeNameInstance, field: 'isApproved', 'error')} ">--}%
	%{--<label for="isApproved">--}%
		%{--<g:message code="schemeName.isApproved.label" default="Is Approved" />--}%

	%{--</label>--}%
	%{--<g:checkBox name="isApproved" value="${schemeNameInstance?.isApproved}" />--}%
%{--</div>--}%

