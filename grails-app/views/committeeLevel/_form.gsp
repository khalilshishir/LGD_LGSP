<%@ page import="settings.CommitteeLevel" %>

<div class="col-xs-4">
    <div class="form-group">
        <label for="NAME">
            <g:message code="committeeLevel.NAME.label" default="Name" />

        </label>
        <g:textField  class="form-control" name="NAME" value="${committeeLevelInstance?.NAME}"/>
    </div>
</div>

%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="CREATED_BY">--}%
            %{--<g:message code="committeeLevel.CREATED_BY.label" default="Created By" />--}%
            %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:field  class="form-control" name="CREATED_BY" type="number" value="${committeeLevelInstance.CREATED_BY}" required=""/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="CREATED_DATE">--}%
            %{--<g:message code="committeeLevel.CREATED_DATE.label" default="CREATEDDATE" />--}%

        %{--</label>--}%
        %{--<g:datePicker name="CREATED_DATE" precision="day"  value="${committeeLevelInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="UPDATED_BY">--}%
            %{--<g:message code="committeeLevel.UPDATED_BY.label" default="Updated By" />--}%
            %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:field  class="form-control" name="UPDATED_BY" type="number" value="${committeeLevelInstance.UPDATED_BY}" required=""/>--}%
    %{--</div>--}%
%{--</div>--}%


%{--<div class="fieldcontain ${hasErrors(bean: committeeLevelInstance, field: 'NAME', 'error')} ">--}%
	%{--<label for="NAME">--}%
		%{--<g:message code="committeeLevel.NAME.label" default="NAME" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="NAME" value="${committeeLevelInstance?.NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeLevelInstance, field: 'CREATED_BY', 'error')} required">--}%
	%{--<label for="CREATED_BY">--}%
		%{--<g:message code="committeeLevel.CREATED_BY.label" default="CREATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="CREATED_BY" type="number" value="${committeeLevelInstance.CREATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeLevelInstance, field: 'CREATED_DATE', 'error')} ">--}%
	%{--<label for="CREATED_DATE">--}%
		%{--<g:message code="committeeLevel.CREATED_DATE.label" default="CREATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="CREATED_DATE" precision="day"  value="${committeeLevelInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeLevelInstance, field: 'UPDATED_BY', 'error')} required">--}%
	%{--<label for="UPDATED_BY">--}%
		%{--<g:message code="committeeLevel.UPDATED_BY.label" default="UPDATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="UPDATED_BY" type="number" value="${committeeLevelInstance.UPDATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeLevelInstance, field: 'UPDATED_DATE', 'error')} ">--}%
	%{--<label for="UPDATED_DATE">--}%
		%{--<g:message code="committeeLevel.UPDATED_DATE.label" default="UPDATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="UPDATED_DATE" precision="day"  value="${committeeLevelInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

