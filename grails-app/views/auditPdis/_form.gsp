<%@ page import="audit.AuditPdis" %>

<div class="col-xs-4">
    <div class="form-group">
        <label for="auditPackage"><g:message code="auditPdis.auditPackage.label" default="Audit Package" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="auditPackage" name="auditPackage.id" from="${audit.AuditPackage.list()}" optionKey="id" optionValue="AUDIT_PACK_NAME" required="" value="${auditPdisInstance?.auditPackage?.id}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="auditFirm"><g:message code="auditPdis.auditFirm.label" default="Audit Firm" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="auditFirm" name="auditFirm.id" from="${audit.AuditFirm.list()}" optionKey="id" optionValue="AUDIT_FIRM_NAME" required="" value="${auditPdisInstance?.auditFirm?.id}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="auditor"><g:message code="auditPdis.auditor.label" default="Auditor" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="auditor" name="auditor.id" from="${audit.Auditor.list()}" optionKey="id" optionValue="AUDITOR_NAME" required="" value="${auditPdisInstance?.auditor?.id}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="unionParishad"><g:message code="auditPdis.unionParishad.label" default="Union Parishad" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="unionParishad" name="unionParishad.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" required="" value="${auditPdisInstance?.auditor?.id}"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="AUDIT_PDIS_ID"><g:message code="auditPdis.AUDIT_PDIS_ID.label" default="Package Distribution Id" /></label>
        <g:textField class="form-control" name="AUDIT_PDIS_ID" value="${auditPdisInstance?.AUDIT_PDIS_ID}"/>
    </div>
</div>




<div class="col-xs-6">
    <div class="form-group">
        <label for="AUDIT_PDIS_DATE">Package Distribution Date</label>
        <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:auditPdisInstance?.AUDIT_PDIS_DATE)}" data-close="true" data-name="AUDIT_PDIS_DATE"></div>
    </div>
</div>


