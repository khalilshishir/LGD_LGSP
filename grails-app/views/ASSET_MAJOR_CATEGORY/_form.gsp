<%@ page import="fixedAsset.ASSET_MAJOR_CATEGORY" %>


<div class="col-xs-6">
    <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: ASSET_MAJOR_CATEGORYInstance, field: 'MAJOR_CATEGORY_NAME', 'error')} ">
                <label for="MAJOR_CATEGORY_NAME">
                    <g:message code="ASSET_MAJOR_CATEGORY.MAJOR_CATEGORY_NAME.label" default="Major Category Name" />

                </label>
                <g:textField required="" name="MAJOR_CATEGORY_NAME" class="form-control" value="${ASSET_MAJOR_CATEGORYInstance?.MAJOR_CATEGORY_NAME}"/>
            </div>
        </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: ASSET_MAJOR_CATEGORYInstance, field: 'DESCRIPTION', 'error')} ">
                <label for="DESCRIPTION">
                    <g:message code="ASSET_MAJOR_CATEGORY.DESCRIPTION.label" default="Description" />

                </label>
                <g:textField required="" class="form-control" name="DESCRIPTION" value="${ASSET_MAJOR_CATEGORYInstance?.DESCRIPTION}"/>
            </div>
        </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: ASSET_MAJOR_CATEGORYInstance, field: 'REMARKS', 'error')} ">
                <label for="REMARKS">
                    <g:message code="ASSET_MAJOR_CATEGORY.REMARKS.label" default="Remarks" />

                </label>
                <g:textField required="" class="form-control" name="REMARKS" value="${ASSET_MAJOR_CATEGORYInstance?.REMARKS}"/>
            </div>
        </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: ASSET_MAJOR_CATEGORYInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="ASSET_MAJOR_CATEGORY.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${ASSET_MAJOR_CATEGORYInstance.ID}" required=""/>
</div>--}%

