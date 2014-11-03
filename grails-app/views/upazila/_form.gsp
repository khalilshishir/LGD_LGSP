<%@ page import="settings.Upazila" %>


<div class="col-xs-4">
    <div class="form-group">
        <label for="division"><g:message code="district.division.label" default="Division" />
            <span class="required-indicator">*</span>
        </label>
        <g:select  class="form-control" id="division" name="division.id" from="${settings.Division.list()}" optionKey="id" optionValue="DIV_NAME" required="" value="${districtInstance?.division?.id}"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="district"><g:message code="upazila.district.label" default="District" />
            <span class="required-indicator">*</span>
        </label>
        <g:select  class="form-control" id="district" name="district.id" from="${settings.District.list()}" optionKey="id" optionValue="DIS_NAME" required="" value="${upazilaInstance?.district?.id}"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="UPZ_ID"><g:message code="upazila.UPZ_ID.label" default="Upazila ID" /></label>
        <g:textField class="form-control" name="UPZ_ID" value="${upazilaInstance?.UPZ_ID}"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="UPZ_NAME">
            <g:message code="upazila.UPZ_NAME.label" default="Upazila Name" />
        </label>
        <g:textField class="form-control" name="UPZ_NAME" value="${upazilaInstance?.UPZ_NAME}"/>
    </div>
</div>