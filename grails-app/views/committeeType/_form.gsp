<%@ page import="settings.CommitteeType" %>


<div class="col-xs-4">
    <div class="form-group">
        <label for="NAME">
            <g:message code="committeeType.NAME.label" default="Name" />

        </label>
        <g:textField  class="form-control" name="NAME" value="${committeeTypeInstance?.NAME}"/>
    </div>
</div>

%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="CREATED_BY">--}%
            %{--<g:message code="committeeType.CREATED_BY.label" default="Created By" />--}%
            %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:field  class="form-control" name="CREATED_BY" type="number" value="${committeeTypeInstance.CREATED_BY}" required=""/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="CREATED_DATE">--}%
            %{--<g:message code="committeeType.CREATED_DATE.label" default="CREATEDDATE" />--}%

        %{--</label>--}%
        %{--<g:datePicker name="CREATED_DATE" precision="day"  value="${committeeTypeInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="UPDATED_BY">--}%
            %{--<g:message code="committeeType.UPDATED_BY.label" default="Updated By" />--}%
            %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:field  class="form-control" name="UPDATED_BY" type="number" value="${committeeTypeInstance.UPDATED_BY}" required=""/>--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4">--}%
    %{--<div class="form-group">--}%
        %{--<label for="UPDATED_DATE">--}%
            %{--<g:message code="committeeType.UPDATED_DATE.label" default="UPDATEDDATE" />--}%

        %{--</label>--}%
        %{--<g:datePicker name="UPDATED_DATE" precision="day"  value="${committeeTypeInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />--}%
    %{--</div>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeTypeInstance, field: 'NAME', 'error')} ">--}%
	%{--<label for="NAME">--}%
		%{--<g:message code="committeeType.NAME.label" default="NAME" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="NAME" value="${committeeTypeInstance?.NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeTypeInstance, field: 'CREATED_BY', 'error')} required">--}%
	%{--<label for="CREATED_BY">--}%
		%{--<g:message code="committeeType.CREATED_BY.label" default="CREATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="CREATED_BY" type="number" value="${committeeTypeInstance.CREATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeTypeInstance, field: 'CREATED_DATE', 'error')} ">--}%
	%{--<label for="CREATED_DATE">--}%
		%{--<g:message code="committeeType.CREATED_DATE.label" default="CREATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="CREATED_DATE" precision="day"  value="${committeeTypeInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeTypeInstance, field: 'UPDATED_BY', 'error')} required">--}%
	%{--<label for="UPDATED_BY">--}%
		%{--<g:message code="committeeType.UPDATED_BY.label" default="UPDATEDBY" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field name="UPDATED_BY" type="number" value="${committeeTypeInstance.UPDATED_BY}" required=""/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: committeeTypeInstance, field: 'UPDATED_DATE', 'error')} ">--}%
	%{--<label for="UPDATED_DATE">--}%
		%{--<g:message code="committeeType.UPDATED_DATE.label" default="UPDATEDDATE" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:datePicker name="UPDATED_DATE" precision="day"  value="${committeeTypeInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />--}%
%{--</div>--}%

