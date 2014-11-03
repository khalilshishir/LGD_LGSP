<%@ page import="grantmanagement.DistributePBGAmount" %>



<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'measureCategory', 'error')} required">
	<label for="measureCategory">
		<g:message code="distributePBGAmount.measureCategory.label" default="Measure Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="measureCategory" name="measureCategory.id" from="${grantmanagement.PerformanceMeasureCategory.list()}" optionKey="id" required="" value="${distributePBGAmountInstance?.measureCategory?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'fiscalYear', 'error')} required">
	<label for="fiscalYear">
		<g:message code="distributePBGAmount.fiscalYear.label" default="Fiscal Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fiscalYear" name="fiscalYear.id" from="${planningbudget.FiscalYear.list()}" optionKey="id" required="" value="${distributePBGAmountInstance?.fiscalYear?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'unionParishad', 'error')} required">
	<label for="unionParishad">
		<g:message code="distributePBGAmount.unionParishad.label" default="Union Parishad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unionParishad" name="unionParishad.id" from="${settings.UnionParishad.list()}" optionKey="id" required="" value="${distributePBGAmountInstance?.unionParishad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'upazila', 'error')} required">
	<label for="upazila">
		<g:message code="distributePBGAmount.upazila.label" default="Upazila" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="upazila" name="upazila.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${distributePBGAmountInstance?.upazila?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'allocatedAmount', 'error')} required">
	<label for="allocatedAmount">
		<g:message code="distributePBGAmount.allocatedAmount.label" default="Allocated Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="allocatedAmount" name="allocatedAmount.id" from="${grantmanagement.AllocatedAmount.list()}" optionKey="id" required="" value="${distributePBGAmountInstance?.allocatedAmount?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'percentage', 'error')} required">
	<label for="percentage">
		<g:message code="distributePBGAmount.percentage.label" default="Percentage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentage" type="number" value="${distributePBGAmountInstance.percentage}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'amountPBG', 'error')} required">
	<label for="amountPBG">
		<g:message code="distributePBGAmount.amountPBG.label" default="Amount PBG" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amountPBG" value="${fieldValue(bean: distributePBGAmountInstance, field: 'amountPBG')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'totalAmount', 'error')} required">
	<label for="totalAmount">
		<g:message code="distributePBGAmount.totalAmount.label" default="Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalAmount" value="${fieldValue(bean: distributePBGAmountInstance, field: 'totalAmount')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributePBGAmountInstance, field: 'distributeBBGAmount', 'error')} required">
	<label for="distributeBBGAmount">
		<g:message code="distributePBGAmount.distributeBBGAmount.label" default="Distribute BBGA mount" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="distributeBBGAmount" name="distributeBBGAmount.id" from="${grantmanagement.DistributeBBGAmount.list()}" optionKey="id" required="" value="${distributePBGAmountInstance?.distributeBBGAmount?.id}" class="many-to-one"/>
</div>

