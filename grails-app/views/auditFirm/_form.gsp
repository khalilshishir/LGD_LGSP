<%@ page import="audit.AuditFirm" %>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_FIRM_ID"><g:message code="auditFirm.AUDIT_FIRM_ID.label" default="AUDIT FIRM ID" /></label>
        <g:textField class="form-control" name="AUDIT_FIRM_ID" value="${auditFirmInstance?.AUDIT_FIRM_ID}"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_FIRM_NAME"><g:message code="auditFirm.AUDIT_FIRM_NAME.label" default="AUDIT FIRM NAME
        " /></label>
        <g:textField class="form-control" name="AUDIT_FIRM_NAME" value="${auditFirmInstance?.AUDIT_FIRM_NAME}"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_FIRM_ADDRESS"><g:message code="auditFirm.AUDIT_FIRM_ADDRESS.label" default="AUDIT FIRM ADDRESS" /></label>
        <g:textField class="form-control" name="AUDIT_FIRM_ADDRESS" value="${auditFirmInstance?.AUDIT_FIRM_ADDRESS}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_FIRM_PHONE"><g:message code="auditFirm.AUDIT_FIRM_PHONE.label" default="AUDIT FIRM PHONE" /></label>
        <g:textField class="form-control" name="AUDIT_FIRM_PHONE" value="${auditFirmInstance?.AUDIT_FIRM_PHONE}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_FIRM_EMAIL"><g:message code="auditFirm.AUDIT_FIRM_EMAIL.label" default="AUDIT FIRM EMAIL" /></label>
        <g:textField class="form-control" name="AUDIT_FIRM_EMAIL" value="${auditFirmInstance?.AUDIT_FIRM_EMAIL}"/>
    </div>
</div>