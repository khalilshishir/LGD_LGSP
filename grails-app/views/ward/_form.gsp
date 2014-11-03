<%@ page import="settings.Ward" %>



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
                <label for="upazila"><g:message code="ward.upazila.label" default="Upazila" />
                    <span class="required-indicator">*</span>
                </label>
                <g:select  class="form-control" id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" optionValue="UPZ_NAME" required="" value="${unionParishadInstance?.upazila?.id}"/>
            </div>
        </div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="unionParishad"><g:message code="ward.unionParishad.label" default="Union Parishad" />
            <span class="required-indicator">*</span>
        </label>
        <g:select  id="unionParishad" name="unionParishad.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" required="" value="${wardInstance?.unionParishad?.id}" class="form-control"/>
    </div>
</div>

        <div class="col-xs-4">
            <div class="form-group">
                <label for="WARD_NO">
                    <g:message code="ward.WARD_NO.label" default="Ward No" />
                </label>
                <g:textField class="form-control" name="WARD_NO" value="${wardInstance?.WARD_NO}"/>
            </div>
        </div>