<%@ page import="procurement.pmu.Supplier" %>



<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'SUPP_CODE', 'error')} ">
	<label for="SUPP_CODE">
		<g:message code="supplier.SUPP_CODE.label" default="SUPPCODE" />
		
	</label>
	<g:textField name="SUPP_CODE" maxlength="100" value="${supplierInstance?.SUPP_CODE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'SUPP_NAME', 'error')} ">
	<label for="SUPP_NAME">
		<g:message code="supplier.SUPP_NAME.label" default="SUPPNAME" />
		
	</label>
	<g:textField name="SUPP_NAME" maxlength="100" value="${supplierInstance?.SUPP_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'SUPP_ADDRESS', 'error')} ">
	<label for="SUPP_ADDRESS">
		<g:message code="supplier.SUPP_ADDRESS.label" default="SUPPADDRESS" />
		
	</label>
	<g:textField name="SUPP_ADDRESS" maxlength="100" value="${supplierInstance?.SUPP_ADDRESS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'FILE_UPLOAD', 'error')} ">
	<label for="FILE_UPLOAD">
		<g:message code="supplier.FILE_UPLOAD.label" default="FILEUPLOAD" />
		
	</label>
	<g:textField name="FILE_UPLOAD" maxlength="100" value="${supplierInstance?.FILE_UPLOAD}"/>
    <input type="file" id="FILE_UPLOAD" name="FILE_UPLOAD" class="real-upload" />
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'CREATEDATE', 'error')} ">
	<label for="CREATEDATE">
		<g:message code="supplier.CREATEDATE.label" default="CREATEDATE" />
		
	</label>
	<g:datePicker name="CREATEDATE" precision="day"  value="${supplierInstance?.CREATEDATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'ISACTIVE', 'error')} ">
	<label for="ISACTIVE">
		<g:message code="supplier.ISACTIVE.label" default="ISACTIVE" />
		
	</label>
	<g:checkBox name="ISACTIVE" value="${supplierInstance?.ISACTIVE}" />
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'CREATEBY', 'error')} ">
	<label for="CREATEBY">
		<g:message code="supplier.CREATEBY.label" default="CREATEBY" />
		
	</label>
	<g:textField name="CREATEBY" maxlength="100" value="${supplierInstance?.CREATEBY}"/>
</div>

