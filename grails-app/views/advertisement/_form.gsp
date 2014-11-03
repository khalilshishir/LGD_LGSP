<%@ page import="procurement.pmu.Advertisement" %>



<div class="fieldcontain ${hasErrors(bean: advertisementInstance, field: 'add_code', 'error')} ">
	<label  for="add_code">
		<g:message code="advertisement.add_code.label" default="Addcode" />
		
	</label>
	<g:textField name="add_code" maxlength="100" value="${advertisementInstance?.add_code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertisementInstance, field: 'add_name', 'error')} ">
	<label for="add_name">
		<g:message code="advertisement.add_name.label" default="Addname" />
		
	</label>
	<g:textField name="add_name" maxlength="100" value="${advertisementInstance?.add_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertisementInstance, field: 'createdate', 'error')} ">
	<label for="createdate">
		<g:message code="advertisement.createdate.label" default="Createdate" />
		
	</label>
	<g:datePicker name="createdate" precision="day"  value="${advertisementInstance?.createdate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: advertisementInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="advertisement.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${advertisementInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: advertisementInstance, field: 'createby', 'error')} ">
	<label for="createby">
		<g:message code="advertisement.createby.label" default="Createby" />
		
	</label>
	<g:textField name="createby" maxlength="100" value="${advertisementInstance?.createby}"/>
</div>

