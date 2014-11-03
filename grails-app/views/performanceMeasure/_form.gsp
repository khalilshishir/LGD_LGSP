<%@ page import="grantmanagement.PerformanceMeasure" %>



<div class="fieldcontain ${hasErrors(bean: performanceMeasureInstance, field: 'measureCategory', 'error')} required">
    <label for="measureCategory">
        <g:message code="performanceMeasure.measureCategory.label" default="Measure Category"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="measureCategory" name="measureCategory.id" from="${grantmanagement.PerformanceMeasureCategory.list()}"
              optionKey="id" required="" value="${performanceMeasureInstance?.measureCategory?.id}"
              class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: performanceMeasureInstance, field: 'unionParishad', 'error')} required">
    <label for="unionParishad">
        <g:message code="performanceMeasure.unionParishad.label" default="Union Parishad"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="unionParishad" name="unionParishad.id" from="${settings.UnionParishad.list()}" optionKey="id"
              required="" value="${performanceMeasureInstance?.unionParishad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: performanceMeasureInstance, field: 'remark', 'error')} ">
    <label for="remark">
        <g:message code="performanceMeasure.remark.label" default="Remark"/>

    </label>
    <g:textField name="remark" value="${performanceMeasureInstance?.remark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: performanceMeasureInstance, field: 'fiscalYear', 'error')} required">
    <label for="fiscalYear">
        <g:message code="performanceMeasure.fiscalYear.label" default="Fiscal Year"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="fiscalYear" name="fiscalYear.id" from="${planningbudget.FiscalYear.list()}" optionKey="id" required=""
              value="${performanceMeasureInstance?.fiscalYear?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: performanceMeasureInstance, field: 'upazila', 'error')} required">
    <label for="upazila">
        <g:message code="performanceMeasure.upazila.label" default="Upazila"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" required=""
              value="${performanceMeasureInstance?.upazila?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: performanceMeasureInstance, field: 'mark', 'error')} required">
    <label for="mark">
        <g:message code="performanceMeasure.mark.label" default="Mark"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="mark" type="number" value="${performanceMeasureInstance.mark}" required=""/>
</div>

