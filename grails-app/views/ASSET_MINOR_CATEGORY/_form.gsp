<%@ page import="fixedAsset.ASSET_MINOR_CATEGORY" %>



%{--<div class="fieldcontain ${hasErrors(bean: ASSET_MINOR_CATEGORYInstance, field: 'ASSET_MAJOR_CATEGORY_ID', 'error')} ">--}%
	%{--<label for="ASSET_MAJOR_CATEGORY_ID">--}%
		%{--<g:message code="ASSET_MINOR_CATEGORY.ASSET_MAJOR_CATEGORY_ID.label" default="ASSETMAJORCATEGORYID" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select id="ASSET_MAJOR_CATEGORY_ID" name="ASSET_MAJOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MAJOR_CATEGORY.list()}" optionKey="id" value="${ASSET_MINOR_CATEGORYInstance?.ASSET_MAJOR_CATEGORY_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_MINOR_CATEGORYInstance, field: 'MINOR_CATEGORY_NAME', 'error')} ">--}%
	%{--<label for="MINOR_CATEGORY_NAME">--}%
		%{--<g:message code="ASSET_MINOR_CATEGORY.MINOR_CATEGORY_NAME.label" default="MINORCATEGORYNAME" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="MINOR_CATEGORY_NAME" value="${ASSET_MINOR_CATEGORYInstance?.MINOR_CATEGORY_NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_MINOR_CATEGORYInstance, field: 'DESCRIPTION', 'error')} ">--}%
	%{--<label for="DESCRIPTION">--}%
		%{--<g:message code="ASSET_MINOR_CATEGORY.DESCRIPTION.label" default="DESCRIPTION" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="DESCRIPTION" value="${ASSET_MINOR_CATEGORYInstance?.DESCRIPTION}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_MINOR_CATEGORYInstance, field: 'REMARKS', 'error')} ">--}%
	%{--<label for="REMARKS">--}%
		%{--<g:message code="ASSET_MINOR_CATEGORY.REMARKS.label" default="REMARKS" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="REMARKS" value="${ASSET_MINOR_CATEGORYInstance?.REMARKS}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_MINOR_CATEGORYInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="ASSET_MINOR_CATEGORY.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${ASSET_MINOR_CATEGORYInstance.ID}" required=""/>
</div>--}%

     <div class="row">
         <div class="col-xs-6" style="padding-left: 10px">
             <div class="form-group">
                 <label for="ASSET_MAJOR_CATEGORY_ID">
                     <g:message code="ASSET_MINOR_CATEGORY.ASSET_MAJOR_CATEGORY_ID.label" default=" Major Category" />

                 </label>
                 <g:select required="" id="ASSET_MAJOR_CATEGORY_ID" name="ASSET_MAJOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MAJOR_CATEGORY.list()}" optionKey="id" value="${ASSET_MINOR_CATEGORYInstance?.ASSET_MAJOR_CATEGORY_ID?.id}" class="form-control" noSelection="['null': '']"/>
             </div>
         </div>

         <div class="col-xs-6">
             <div class="form-group">
                 <label for="MINOR_CATEGORY_NAME">
                     <g:message code="ASSET_MINOR_CATEGORY.MINOR_CATEGORY_NAME.label" default="Minor Category Name" />

                 </label>
                 <g:textField required="" class="form-control" name="MINOR_CATEGORY_NAME" value="${ASSET_MINOR_CATEGORYInstance?.MINOR_CATEGORY_NAME}"/>
             </div>
         </div>
     </div>


    <div class="row">
        <div class="col-xs-6" style="padding-left: 10px">
            <div class="form-group">
                <label for="DESCRIPTION">
                    <g:message code="ASSET_MINOR_CATEGORY.DESCRIPTION.label" default="Description" />

                </label>
                <g:textField required="" class="form-control" name="DESCRIPTION" value="${ASSET_MINOR_CATEGORYInstance?.DESCRIPTION}"/>
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="REMARKS">
                    <g:message code="ASSET_MINOR_CATEGORY.REMARKS.label" default="Remarks" />

                </label>
                <g:textField required="" class="form-control" name="REMARKS" value="${ASSET_MINOR_CATEGORYInstance?.REMARKS}"/>
            </div>
        </div>
    </div>



