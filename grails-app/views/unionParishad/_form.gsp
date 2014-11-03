<%@ page import="settings.UnionParishad" %>



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
                <label for="UP_ID"><g:message code="upazila.UPZ_ID.label" default="UnionParishad ID" /></label>
                <g:textField class="form-control" name="UP_ID" value="${unionParishadInstance?.UP_ID}"/>
            </div>
        </div>
        <div class="col-xs-4">
            <div class="form-group">
                <label for="UP_NAME">
                    <g:message code="upazila.UPZ_NAME.label" default="UnionParishad Name" />
                </label>
                <g:textField class="form-control" name="UP_NAME" value="${unionParishadInstance?.UP_NAME}"/>
            </div>
        </div>


        %{----}%
        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'UP_ID', 'error')} ">--}%
            %{--<label for="UP_ID">--}%
                %{--<g:message code="unionParishad.UP_ID.label" default="UPID" />--}%
        %{----}%
            %{--</label>--}%
            %{--<g:textField name="UP_ID" value="${unionParishadInstance?.UP_ID}"/>--}%
        %{--</div>--}%
        %{----}%
        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'UP_NAME', 'error')} ">--}%
            %{--<label for="UP_NAME">--}%
                %{--<g:message code="unionParishad.UP_NAME.label" default="UPNAME" />--}%
        %{----}%
            %{--</label>--}%
            %{--<g:textField name="UP_NAME" value="${unionParishadInstance?.UP_NAME}"/>--}%
        %{--</div>--}%

        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'CREATED_BY', 'error')} required">--}%
            %{--<label for="CREATED_BY">--}%
                %{--<g:message code="unionParishad.CREATED_BY.label" default="CREATEDBY" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:field name="CREATED_BY" type="number" value="${unionParishadInstance.CREATED_BY}" required=""/>--}%
        %{--</div>--}%

        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'CREATED_DATE', 'error')} ">--}%
            %{--<label for="CREATED_DATE">--}%
                %{--<g:message code="unionParishad.CREATED_DATE.label" default="CREATEDDATE" />--}%

            %{--</label>--}%
            %{--<g:datePicker name="CREATED_DATE" precision="day"  value="${unionParishadInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />--}%
        %{--</div>--}%

        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'UPDATED_BY', 'error')} required">--}%
            %{--<label for="UPDATED_BY">--}%
                %{--<g:message code="unionParishad.UPDATED_BY.label" default="UPDATEDBY" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:field name="UPDATED_BY" type="number" value="${unionParishadInstance.UPDATED_BY}" required=""/>--}%
        %{--</div>--}%

        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'UPDATED_DATE', 'error')} ">--}%
            %{--<label for="UPDATED_DATE">--}%
                %{--<g:message code="unionParishad.UPDATED_DATE.label" default="UPDATEDDATE" />--}%

            %{--</label>--}%
            %{--<g:datePicker name="UPDATED_DATE" precision="day"  value="${unionParishadInstance?.UPDATED_DATE}" default="none" noSelection="['': '']" />--}%
        %{--</div>--}%

        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'district', 'error')} required">--}%
            %{--<label for="district">--}%
                %{--<g:message code="unionParishad.district.label" default="District" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:select id="district" name="district.id" from="${settings.District.list()}" optionKey="id" required="" value="${unionParishadInstance?.district?.id}" class="many-to-one"/>--}%
        %{--</div>--}%

        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'division', 'error')} required">--}%
            %{--<label for="division">--}%
                %{--<g:message code="unionParishad.division.label" default="Division" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:select id="division" name="division.id" from="${settings.Division.list()}" optionKey="id" required="" value="${unionParishadInstance?.division?.id}" class="many-to-one"/>--}%
        %{--</div>--}%

        %{--<div class="fieldcontain ${hasErrors(bean: unionParishadInstance, field: 'upazila', 'error')} required">--}%
            %{--<label for="upazila">--}%
                %{--<g:message code="unionParishad.upazila.label" default="Upazila" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:select id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${unionParishadInstance?.upazila?.id}" class="many-to-one"/>--}%
        %{--</div>--}%

