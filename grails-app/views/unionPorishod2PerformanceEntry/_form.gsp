<%@ page import="grantmanagement.UnionPorishod2PerformanceEntry" %>



<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'organiztionType', 'error')} required">
	<label for="organiztionType">
		<g:message code="unionPorishod2PerformanceEntry.organiztionType.label" default="Organiztion Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="organiztionType" from="${grantmanagement.OrganiztionType?.values()}" keys="${grantmanagement.OrganiztionType.values()*.name()}" required="" value="${unionPorishod2PerformanceEntryInstance?.organiztionType?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'performanceHead', 'error')} required">
	<label for="performanceHead">
		<g:message code="unionPorishod2PerformanceEntry.performanceHead.label" default="Performance Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="performanceHead" name="performanceHead.id" from="${grantmanagement.PerformanceHead.list()}" optionKey="id" required="" value="${unionPorishod2PerformanceEntryInstance?.performanceHead?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'performanceIndicator', 'error')} required">
	<label for="performanceIndicator">
		<g:message code="unionPorishod2PerformanceEntry.performanceIndicator.label" default="Performance Indicator" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="performanceIndicator" name="performanceIndicator.id" from="${grantmanagement.PerformanceIndicator.list()}" optionKey="id" required="" value="${unionPorishod2PerformanceEntryInstance?.performanceIndicator?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'markDstribution', 'error')} ">
	<label for="markDstribution">
		<g:message code="unionPorishod2PerformanceEntry.markDstribution.label" default="Mark Dstribution" />
		
	</label>
	<g:select id="markDstribution" name="markDstribution.id" from="${grantmanagement.MarkDstribution.list()}" optionKey="id" value="${unionPorishod2PerformanceEntryInstance?.markDstribution?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'division', 'error')} required">
	<label for="division">
		<g:message code="unionPorishod2PerformanceEntry.division.label" default="Division" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="division" name="division.id" from="${settings.Division.list()}" optionKey="id" required="" value="${unionPorishod2PerformanceEntryInstance?.division?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="unionPorishod2PerformanceEntry.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="district" name="district.id" from="${settings.District.list()}" optionKey="id" required="" value="${unionPorishod2PerformanceEntryInstance?.district?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'obtainMark', 'error')} required">
	<label for="obtainMark">
		<g:message code="unionPorishod2PerformanceEntry.obtainMark.label" default="Obtain Mark" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="obtainMark" type="number" value="${unionPorishod2PerformanceEntryInstance.obtainMark}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'fiscalYear', 'error')} required">
	<label for="fiscalYear">
		<g:message code="unionPorishod2PerformanceEntry.fiscalYear.label" default="Fiscal Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fiscalYear" name="fiscalYear.id" from="${planningbudget.FiscalYear.list()}" optionKey="id" required="" value="${unionPorishod2PerformanceEntryInstance?.fiscalYear?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'unionParishad', 'error')} required">
	<label for="unionParishad">
		<g:message code="unionPorishod2PerformanceEntry.unionParishad.label" default="Union Parishad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unionParishad" name="unionParishad.id" from="${settings.UnionParishad.list()}" optionKey="id" required="" value="${unionPorishod2PerformanceEntryInstance?.unionParishad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unionPorishod2PerformanceEntryInstance, field: 'upazila', 'error')} required">
	<label for="upazila">
		<g:message code="unionPorishod2PerformanceEntry.upazila.label" default="Upazila" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${unionPorishod2PerformanceEntryInstance?.upazila?.id}" class="many-to-one"/>
</div>

