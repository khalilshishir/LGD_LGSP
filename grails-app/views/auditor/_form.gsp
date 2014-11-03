<%@ page import="audit.Auditor" %>

<div class="col-xs-4">
<div class="form-group">
	<label for="auditFirm">
		<g:message code="auditor.auditFirm.label" default="Audit Firm" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="auditFirm" name="auditFirm.id" from="${audit.AuditFirm.list()}" optionKey="id" optionValue="AUDIT_FIRM_NAME" required="" value="${auditorInstance?.auditFirm?.id}"/>
</div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDITOR_ID"><g:message code="auditor.AUDITOR_ID.label" default="Auditor ID" /></label>
        <g:textField class="form-control" name="AUDITOR_ID" value="${auditorInstance?.AUDITOR_ID}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDITOR_NAME"><g:message code="auditor.AUDITOR_NAME.label" default="Auditor Name" /></label>
        <g:textField class="form-control" name="AUDITOR_NAME" value="${auditorInstance?.AUDITOR_NAME}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDITOR_DESIGNATION"><g:message code="auditor.AUDITOR_DESIGNATION.label" default="Auditor Designation" /></label>
        <g:textField class="form-control" name="AUDITOR_DESIGNATION" value="${auditorInstance?.AUDITOR_DESIGNATION}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDITOR_PRES_ADD"><g:message code="auditor.AUDITOR_PRES_ADD.label" default="Present Address" /></label>
        <g:textField class="form-control" name="AUDITOR_PRES_ADD" value="${auditorInstance?.AUDITOR_PRES_ADD}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDITOR_PER_ADD"><g:message code="auditor.AUDITOR_PER_ADD.label" default="Permanent Address" /></label>
        <g:textField class="form-control" name="AUDITOR_PER_ADD" value="${auditorInstance?.AUDITOR_PER_ADD}"/>
    </div>
</div>