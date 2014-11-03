<%@ page import="grantmanagement.ZillaPorishodPerformanceEntry" %>



<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'organiztionType', 'error')} required">
	<label for="organiztionType">
		<g:message code="zillaPorishodPerformanceEntry.organiztionType.label" default="Organiztion Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="organiztionType" from="${grantmanagement.OrganiztionType?.values()}" keys="${grantmanagement.OrganiztionType.values()*.name()}" required="" value="${zillaPorishodPerformanceEntryInstance?.organiztionType?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'performanceHead', 'error')} required">
	<label for="performanceHead">
		<g:message code="zillaPorishodPerformanceEntry.performanceHead.label" default="Performance Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="performanceHead" name="performanceHead.id" from="${grantmanagement.PerformanceHead.list()}" optionKey="id" required="" value="${zillaPorishodPerformanceEntryInstance?.performanceHead?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'performanceIndicator', 'error')} required">
	<label for="performanceIndicator">
		<g:message code="zillaPorishodPerformanceEntry.performanceIndicator.label" default="Performance Indicator" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="performanceIndicator" name="performanceIndicator.id" from="${grantmanagement.PerformanceIndicator.list()}" optionKey="id" required="" value="${zillaPorishodPerformanceEntryInstance?.performanceIndicator?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'markDstribution', 'error')} required">
	<label for="markDstribution">
		<g:message code="zillaPorishodPerformanceEntry.markDstribution.label" default="Mark Dstribution" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="markDstribution" name="markDstribution.id" from="${grantmanagement.MarkDstribution.list()}" optionKey="id" required="" value="${zillaPorishodPerformanceEntryInstance?.markDstribution?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'division', 'error')} required">
	<label for="division">
		<g:message code="zillaPorishodPerformanceEntry.division.label" default="Division" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="division" name="division.id" noSelection="[null:'select']" from="${settings.Division.list()}" optionKey="id" required="" value="${zillaPorishodPerformanceEntryInstance?.division?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="zillaPorishodPerformanceEntry.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="district" name="district.id" from="${settings.District.list()}" optionKey="id" required="" value="${zillaPorishodPerformanceEntryInstance?.district?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'obtainMark', 'error')} required">
	<label for="obtainMark">
		<g:message code="zillaPorishodPerformanceEntry.obtainMark.label" default="Obtain Mark" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="obtainMark" type="number" value="${zillaPorishodPerformanceEntryInstance.obtainMark}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: zillaPorishodPerformanceEntryInstance, field: 'fiscalYear', 'error')} required">
	<label for="fiscalYear">
		<g:message code="zillaPorishodPerformanceEntry.fiscalYear.label" default="Fiscal Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fiscalYear" name="fiscalYear.id" from="${planningbudget.FiscalYear.list()}" optionKey="id" required="" value="${zillaPorishodPerformanceEntryInstance?.fiscalYear?.id}" class="many-to-one"/>
</div>

