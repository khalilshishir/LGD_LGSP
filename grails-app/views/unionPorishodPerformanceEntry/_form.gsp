<%@ page import="grantmanagement.UnionPorishodPerformanceEntry" %>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'organiztionType', 'error')} required">
	<label for="organiztionType">
		<g:message code="unionPorishodPerformanceEntry.organiztionType.label" default="Organiztion Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="organiztionType" from="${grantmanagement.OrganiztionType?.values()}" keys="${grantmanagement.OrganiztionType.values()*.name()}" required="" value="${unionPorishodPerformanceEntryInstance?.organiztionType?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'performanceHead', 'error')} required">
	<label for="performanceHead">
		<g:message code="unionPorishodPerformanceEntry.performanceHead.label" default="Performance Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="performanceHead" name="performanceHead.id" from="${grantmanagement.PerformanceHead.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.performanceHead?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'performanceIndicator', 'error')} required">
	<label for="performanceIndicator">
		<g:message code="unionPorishodPerformanceEntry.performanceIndicator.label" default="Performance Indicator" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="performanceIndicator" name="performanceIndicator.id" from="${grantmanagement.PerformanceIndicator.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.performanceIndicator?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'markDstribution', 'error')} required">
	<label for="markDstribution">
		<g:message code="unionPorishodPerformanceEntry.markDstribution.label" default="Mark Dstribution" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="markDstribution" name="markDstribution.id" from="${grantmanagement.MarkDstribution.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.markDstribution?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'division', 'error')} required">
	<label for="division">
		<g:message code="unionPorishodPerformanceEntry.division.label" default="Division" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="division" name="division.id" from="${settings.Division.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.division?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="unionPorishodPerformanceEntry.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="district" name="district.id" from="${settings.District.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.district?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'obtainMark', 'error')} required">
	<label for="obtainMark">
		<g:message code="unionPorishodPerformanceEntry.obtainMark.label" default="Obtain Mark" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="obtainMark" type="number" value="${unionPorishodPerformanceEntryInstance.obtainMark}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'fiscalYear', 'error')} required">
	<label for="fiscalYear">
		<g:message code="unionPorishodPerformanceEntry.fiscalYear.label" default="Fiscal Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fiscalYear" name="fiscalYear.id" from="${planningbudget.FiscalYear.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.fiscalYear?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'unionParishad', 'error')} required">
	<label for="unionParishad">
		<g:message code="unionPorishodPerformanceEntry.unionParishad.label" default="Union Parishad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unionParishad" name="unionParishad.id" from="${settings.UnionParishad.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.unionParishad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishodPerformanceEntryInstance, field: 'upazila', 'error')} required">
	<label for="upazila">
		<g:message code="unionPorishodPerformanceEntry.upazila.label" default="Upazila" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${unionPorishodPerformanceEntryInstance?.upazila?.id}" class="many-to-one"/>
</div>

