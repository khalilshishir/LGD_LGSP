<%@ page import="planningbudget.FiscalYear" %>

    <div class="row" style="padding-left: 15px">
    
        <div class="col-xs-6 ${hasErrors(bean: fiscalYearInstance, field: 'name', 'error')} required">
            <div class="form-group">
                <label for="name">
                    <g:message code="fiscalYear.name.label" default="Name" />
                </label>
                <span class="required-indicator">*</span>
                <g:textField class="form-control" name="name" required="" value="${fiscalYearInstance?.name}"/>
            </div>
        </div>


        %{--<div class="fieldcontain ${hasErrors(bean: fiscalYearInstance, field: 'name', 'error')} required">--}%
            %{--<label for="name">--}%
                %{--<g:message code="fiscalYear.name.label" default="Name" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<g:textField name="name" required="" value="${fiscalYearInstance?.name}"/>--}%
        %{--</div>--}%

        <div class="col-xs-6" ${hasErrors(bean: fiscalYearInstance, field: 'startYear', 'error')} required">
            <div class="form-group">
                <label for="startYear">
                    <g:message code="fiscalYear.startYear.label" default="Start Year" />
                    <span class="required-indicator">*</span>
                </label>

                <div class="bfh-datepicker" name="startYear" data-date="${formatDate(format:'MM/dd/yyyy',date:startYear)}" data-min="01/15/2013" data-close="true" onloadeddata="startYear" data-name="startYear"></div>
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: fiscalYearInstance, field: 'startYear', 'error')} required">--}%
            %{--<label for="startYear">--}%
                %{--<g:message code="fiscalYear.startYear.label" default="Start Year" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
            %{--<div class="bfh-datepicker" name="startYear" dataformatas="" data-date="${formatDate(format:'yyyy',date:fiscalYearInstance?.startYear)}" data-min="01/15/2013" data-close="true" data-name="startYear"></div>--}%
            %{--<g:datePicker default="${startDate}" name="startYear" precision="day"  value="${fiscalYearInstance?.startYear}"  />--}%
        %{--</div>--}%

        <div class="col-xs-6" ${hasErrors(bean: fiscalYearInstance, field: 'endYear', 'error')} required">
            <div class="form-group">
                <label for="endYear">
                    <g:message code="fiscalYear.endYear.label" default="End Year" />
                    <span class="required-indicator">*</span>
                </label>

                <div class="bfh-datepicker" name="endYear" data-date="${formatDate(format:'MM/dd/yyyy',date:endYear)}" data-min="01/15/2013" data-close="true" onloadeddata="endYear" data-name="endYear"></div>
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: fiscalYearInstance, field: 'endYear', 'error')} required">--}%
            %{--<label for="endYear">--}%
                %{--<g:message code="fiscalYear.endYear.label" default="End Year" />--}%
                %{--<span class="required-indicator">*</span>--}%
            %{--</label>--}%
        %{----}%
            %{--<g:datePicker default="${endDate}" name="endYear" precision="day"  value="${fiscalYearInstance?.endYear}"  />--}%
            %{--<div class="bfh-datepicker" name="endYear" data-date="${formatDate(format:'yyyy',date:fiscalYearInstance?.endYear)}" data-min="01/15/2013" data-close="true" data-name="endYear"></div>--}%
        %{--</div>--}%

    </div>

