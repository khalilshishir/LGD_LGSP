<%@ page import="fixedAsset.ASSET_DISTRIBUTION" %>


<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'STAKEHOLDER_ID', 'error')} ">
            <label for="STAKEHOLDER_ID">
                <g:message code="ASSET_DISTRIBUTION.STAKEHOLDER_ID.label" default="Stakeholder Name"/>

            </label>
            <g:select required="" id="STAKEHOLDER_ID" name="STAKEHOLDER_ID.id" from="${fixedAsset.STAKEHOLDER.list()}"
                      optionKey="id" value="${ASSET_DISTRIBUTIONInstance?.STAKEHOLDER_ID?.id}" class="many-to-one form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'ASSET_BOOK_ID', 'error')} ">
            <label for="ASSET_BOOK_ID">
                <g:message code="ASSET_DISTRIBUTION.ASSET_BOOK_ID.label" default="Asset Name"/>

            </label>
            <g:select required="" id="ASSET_BOOK_ID" name="ASSET_BOOK_ID.id" from="${fixedAsset.ASSET_BOOK.list()}" optionKey="id"
                      value="${ASSET_DISTRIBUTIONInstance?.ASSET_BOOK_ID?.id}" class="many-to-one form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">

        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'DESCRIPTION', 'error')} ">
            <label for="DESCRIPTION">
                <g:message code="ASSET_DISTRIBUTION.DESCRIPTION.label" default="Description"/>

            </label>
            <g:textField required="" name="DESCRIPTION" value="${ASSET_DISTRIBUTIONInstance?.DESCRIPTION}" class="form-control"/>
        </div>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'LOCATION_ID', 'error')} ">
            <label for="LOCATION_ID">
                <g:message code="ASSET_DISTRIBUTION.LOCATION_ID.label" default="Location"/>

            </label>
            <g:select required="" id="LOCATION_ID" name="LOCATION_ID.id" from="${fixedAsset.LOCATION.list()}" optionKey="id"
                      value="${ASSET_DISTRIBUTIONInstance?.LOCATION_ID?.id}" class="many-to-one form-control"
                      noSelection="['': '-Select-']"/>
        </div>

    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'REMARKS', 'error')} ">
            <label for="REMARKS">
                <g:message code="ASSET_DISTRIBUTION.REMARKS.label" default="Remarks"/>

            </label>
            <g:textField name="REMARKS" value="${ASSET_DISTRIBUTIONInstance?.REMARKS}" class="form-control"/>
        </div>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'ASSIGN_DATE', 'error')} ">
            <label for="ASSIGN_DATE">
                <g:message code="ASSET_DISTRIBUTION.ASSIGN_DATE.label" default="Assign Date"/>

            </label>
            %{--<g:datePicker name="ASSIGN_DATE" precision="day" value="${ASSET_DISTRIBUTIONInstance?.ASSIGN_DATE}"
                          default="none" noSelection="['': '']"/>--}%
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:ASSET_DISTRIBUTIONInstance?.ASSIGN_DATE)}" data-close="true" data-name="ASSIGN_DATE"></div>

        </div>
    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'pic_url_', 'error')} ">
            <label for="ASSIGN_DATE">
                <g:message code="ASSET_DISTRIBUTION.pic_url_.label" default="Upload File"/>

            </label>
            %{--<g:datePicker name="ASSIGN_DATE" precision="day" value="${ASSET_DISTRIBUTIONInstance?.ASSIGN_DATE}"
                          default="none" noSelection="['': '']"/>--}%
            <input type="file" id="file_" name="file_" class="real-upload" />

        </div>
    </div>
</div>
%{--<div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'CREATED_BY', 'error')} ">
	<label for="CREATED_BY">
		<g:message code="ASSET_DISTRIBUTION.CREATED_BY.label" default="CREATEDBY" />
		
	</label>
	<g:field name="CREATED_BY" type="number" value="${ASSET_DISTRIBUTIONInstance.CREATED_BY}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="ASSET_DISTRIBUTION.CREATED_DATE.label" default="CREATEDDATE" />
		
	</label>
	<g:datePicker name="CREATED_DATE" precision="day"  value="${ASSET_DISTRIBUTIONInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="ASSET_DISTRIBUTION.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${ASSET_DISTRIBUTIONInstance.ID}" required=""/>
</div>--}%

<script type="text/javascript">
    $("#ASSET_BOOK_ID").change(function(){
        /*var division_id = $(this).val();*/
        var asset_id = 0;
        if ($(this).val() != '') {
            asset_id = $(this).val();
        } else
            asset_id = 0;
        var base = "<%=request.getContextPath()%>";
        $.ajax({
            url: base + "/ASSET_DISTRIBUTION/ajaxAssetAvailabilityCheck",
            type: "POST",
            data: "id=" + asset_id,
            //dataType: "json",
            beforeSend: function () {
            },
            success: function (response) {
                if(response==0){
                  alert("This asset item has already distributed")
                    $("#ASSET_BOOK_ID").val('')
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                alert("An internal error occurred! Please try again later.");
            },
            complete: function () {
            }
        });
    })
</script>