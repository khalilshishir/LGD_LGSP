<%@ page import="audit.AuditPackage" %>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_PACK_ID"><g:message code="auditPackage.AUDIT_PACK_ID.label" default="AUDIT PACKAGE ID" /></label>
        <g:textField class="form-control" name="AUDIT_PACK_ID" value="${auditPackageInstance?.AUDIT_PACK_ID}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_PACK_NAME"><g:message code="auditPackage.AUDIT_PACK_NAME.label" default="AUDIT PACKAGE NAME" /></label>
        <g:textField class="form-control" name="AUDIT_PACK_NAME" value="${auditPackageInstance?.AUDIT_PACK_NAME}"/>
    </div>
</div>
