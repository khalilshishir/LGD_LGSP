<%@ page import="fixedAsset.LOCATION" %>


<div class="col-xs-6">
    <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'LOCATION_NAME', 'error')} ">
                <label for="LOCATION_NAME">
                    <g:message code="LOCATION.LOCATION_NAME.label" default="Location Name" />

                </label>
                <g:textField required="" class="form-control" name="LOCATION_NAME" value="${LOCATIONInstance?.LOCATION_NAME}"/>
            </div>
    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'LOCATION_ADDRESS', 'error')} ">
                <label for="LOCATION_ADDRESS">
                    <g:message code="LOCATION.LOCATION_ADDRESS.label" default="Location Address" />

                </label>
                <g:textField required="" class="form-control" name="LOCATION_ADDRESS" value="${LOCATIONInstance?.LOCATION_ADDRESS}"/>
            </div>
     </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'DIVISION_ID', 'error')} ">
            <label for="DIVISION_ID">
                <g:message code="LOCATION.DIVISION_ID.label" default="Division" />

            </label>
            <g:select required="" id="DIVISION_ID" name="DIVISION_ID.id" from="${settings.Division.list()}" optionKey="id" value="${LOCATIONInstance?.DIVISION_ID?.id}" class="many-to-one form-control" noSelection="['null': '']"/>
        </div>
   </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'DISTRICT_ID', 'error')} ">
                <label for="DISTRICT_ID">
                    <g:message code="LOCATION.DISTRICT_ID.label" default="District" />

                </label>
                <g:select required="" id="DISTRICT_ID" name="DISTRICT_ID.id" from="${settings.District.list()}" optionKey="id" value="${LOCATIONInstance?.DISTRICT_ID?.id}" class="many-to-one form-control" noSelection="['null': '']"/>
            </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'UPAZILLA_ID', 'error')} ">
                <label for="UPAZILLA_ID">
                    <g:message code="LOCATION.UPAZILLA_ID.label" default="Upazilla" />

                </label>
                <g:select required="" id="UPAZILLA_ID" name="UPAZILLA_ID.id" from="${settings.Upazila.list()}" optionKey="id" value="${LOCATIONInstance?.UPAZILLA_ID?.id}" class="many-to-one form-control" noSelection="['null': '']"/>
            </div>
    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'REMARKS', 'error')} ">
            <label for="REMARKS">
                <g:message code="LOCATION.REMARKS.label" default="Remarks" />

            </label>
            <g:textField required="" class="form-control" name="REMARKS" value="${LOCATIONInstance?.REMARKS}"/>
        </div>
    </div>
</div>
%{--<div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="LOCATION.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${LOCATIONInstance.ID}" required=""/>
</div>--}%

