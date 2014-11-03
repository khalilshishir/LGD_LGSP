<%@ page import="settings.District" %>


%{--<div class="fieldcontain ${hasErrors(bean: districtInstance, field: 'division', 'error')} required">
    <label for="division">
        <g:message code="district.division.label" default="Division" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="division" name="division.id" from="${settings.Division.list()}" optionKey="id" required="" value="${districtInstance?.division?.id}" class="many-to-one"/>
</div>--}%
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
        <label for="DIS_ID"><g:message code="district.DIS_ID.label" default="District ID" /></label>
        <g:textField class="form-control" name="DIS_ID" value="${districtInstance?.DIS_ID}"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="DIS_NAME"><g:message code="district.DIS_NAME.label" default="District Name" /></label>
        <g:textField class="form-control" name="DIS_NAME" value="${districtInstance?.DIS_NAME}"/>
    </div>
</div>





