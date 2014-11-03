<%@ page import="stock.Stock" %>



<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'item', 'error')} required">
	<label for="item">
		%{--<g:message code="stock.item.label" default="Item" />--}%
        <g:message code="default.stock.item" default="Item" />

		<span class="required-indicator">*</span>
	</label>
	<g:textField name="item" required="" value="${stockInstance?.item}"/>
</div>

