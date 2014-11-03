<%@ page import="up_asset.UpAssetRegister; up_asset.Up_Asset_Regi_Master" %>

<!--Start test filter -->
<script src = "${resource(dir: 'js', file: 'jquery-1.8.0.min.js')}"></script>
<script src = "${resource(dir: 'js', file: 'jquery.blockUI.js')}"></script>

<script type="text/javascript">
    //OnLoad:
   // $("#division").empty();


    //    Division List : Start


    //With JavaScript
//    function getCountryID(){
    function getAssetType(){
       // $.blockUI("plz wait...");

        var assettype = document.getElementById('assetType').value;
       alert(assettype);
        GenerateAssetDetails(assettype);
        $.unblockUI();
    }


    //    function getDivisionID(){
    //        var countryID = document.getElementById('division').value; //division =
    //        alert(countryID);
    //    }



     //With jQuery
    /*
     jQuery(document).on("change","#country",function(){
     $.blockUI("plz wait...");

     var value=$("#country").val();
     GenerateDivisionDetails(value);
     //        alert(value.toString())

     $.unblockUI();

     });
     */


 /*
    function GenerateAssetDetails(parameterReceiver){
        //Ajax is used for Server side task
        jQuery.ajax({
            //                          /ControllerName/ControllerMethodName
            url: "${request.contextPath}/Up_Asset_Regi_MasterController/GetAssetListByAssetID",
            type: "POST",
            data: "requestedCode=" + parameterReceiver,
            async: false,
//            dataType: "json",

            success: function (response) {
//                alert(response.toString())

                $("#assetname").empty();
//                $("#division").empty();
                $("#assetname").append(response);
//                $("#division").append(response);
//              Note : districtName is g:select id for districtName head
            }

            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            }
        });
    }
    //    Division List : Close

*/
</script>


 <!--end test filter -->

 <div class="row">
     <div class="col-xs-6" style="padding-left: 10px">
         <div class="form-group">
             <label for="UP_ASSET_REGISTER">
             <g:message code="up_Asset_Regi_Master.UP_ASSET_REGISTER.label" default="Asset Type" />
             </label>
             <g:select class="form-control" id="UP_ASSET_REGISTER" name="UP_ASSET_REGISTER.id" from="${lookUp.AllLookup.list()}" optionKey="id" value="${up_Asset_Regi_MasterInstance?.UP_ASSET_REGISTER?.id}"  noSelection="['null': 'Select']"/>
         </div>
     </div>

 </div>
<div class="col-xs-12 detail-list ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'upAssetRegiDetails', 'error')} ">
    <div class="form-group">
        <ul class="one-to-many">
            <fieldset>
                <li><g:render template="details"/></li>
            </fieldset>
        </ul>
    </div>
</div>



%{--<div class="fieldcontain ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'upAssetRegiDetails', 'error')} ">
    <label for="upAssetRegiDetails">
        <g:message code="up_Asset_Regi_Master.upAssetRegiDetails.label" default="Up Asset Regi Details" />

    </label>
    <g:select name="upAssetRegiDetails" from="${up_asset.Up_Asset_Regi_Details.list()}" multiple="multiple" optionKey="id" size="5" value="${up_Asset_Regi_MasterInstance?.upAssetRegiDetails*.id}" class="many-to-many"/>
</div>--}%
%{--
<div class="fieldcontain ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'UP_ASSET_REGISTER', 'error')} ">
	<label for="UP_ASSET_REGISTER">
		<g:message code="up_Asset_Regi_Master.UP_ASSET_REGISTER.label" default="UPASSETREGISTER" />

	</label>
	<g:select id="UP_ASSET_REGISTER" name="UP_ASSET_REGISTER.id" from="${up_asset.UpAssetRegister.list()}" optionKey="id" value="${up_Asset_Regi_MasterInstance?.UP_ASSET_REGISTER?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'CREATED_BY', 'error')} required">--}%
	%{--<label for="CREATED_BY">--}%
		%{--<g:message code="up_Asset_Regi_Master.CREATED_BY.label" default="CREATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="CREATED_BY" type="number" value="${up_Asset_Regi_MasterInstance.CREATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'CREATED_DATE', 'error')} ">--}%
	%{--<label for="CREATED_DATE">--}%
		%{--<g:message code="up_Asset_Regi_Master.CREATED_DATE.label" default="CREATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="CREATED_DATE" precision="day"  value="${up_Asset_Regi_MasterInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'UPDATED_BY', 'error')} required">--}%
	%{--<label for="UPDATED_BY">--}%
		%{--<g:message code="up_Asset_Regi_Master.UPDATED_BY.label" default="UPDATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="UPDATED_BY" type="number" value="${up_Asset_Regi_MasterInstance.UPDATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'UPDATED_DATE', 'error')} ">--}%
	%{--<label for="UPDATED_DATE">--}%
		%{--<g:message code="up_Asset_Regi_Master.UPDATED_DATE.label" default="UPDATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="UPDATED_DATE" precision="day"  value="${up_Asset_Regi_MasterInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: up_Asset_Regi_MasterInstance, field: 'upAssetRegiDetails', 'error')} ">--}%
	%{--<label for="upAssetRegiDetails">--}%
		%{--<g:message code="up_Asset_Regi_Master.upAssetRegiDetails.label" default="Up Asset Regi Details" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select name="upAssetRegiDetails" from="${up_asset.Up_Asset_Regi_Details.list()}" multiple="multiple" optionKey="id" size="5" value="${up_Asset_Regi_MasterInstance?.upAssetRegiDetails*.id}" class="many-to-many"/>--}%
%{--</div>--}%

