<%@ page import="audit.AuditPackage; audit.UpManagementLetter" %>



<div class="col-xs-4">
    <div class="form-group">
        <label for="auditPackage"><g:message code="auditPdis.auditPackage.label" default="Audit Package" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="auditPackage" name="auditPackage.id" from="${audit.AuditPackage.list()}" optionKey="id" optionValue="AUDIT_PACK_NAME" required="" value="${upManagementLetterInstance?.auditPackage?.id}"/>
    </div>
</div>


<div class="col-xs-12">
    <div class="form-group">
        <label for="LETTER_SUBJECT"><g:message code="upManagementLetter.LETTER_SUBJECT.label" default="Letter Subject" /></label>
        <g:textField class="form-control" name="LETTER_SUBJECT" value="${upManagementLetterInstance?.LETTER_SUBJECT}"/>
    </div>
</div>

<div class="col-xs-12">
    <div class="form-group">
        <label for="LETTER_SUBJECT_BN"><g:message code="upManagementLetter.LETTER_SUBJECT_BN.label" default="চিঠির বিষয়" /></label>
        <g:textField class="form-control" name="LETTER_SUBJECT_BN" value="${upManagementLetterInstance?.LETTER_SUBJECT_BN}"/>
    </div>
</div>


<div class="col-xs-12">
    <div class="form-group">
        <label for="LETTER_DESCRIPTION"><g:message code="upManagementLetter.LETTER_DESCRIPTION.label" default="Letter Description" /></label>
        <g:textArea cols="5" rows="4" class="form-control" name="LETTER_DESCRIPTION" value="${upManagementLetterInstance?.LETTER_DESCRIPTION}"/>
    </div>
</div>


<div class="col-xs-12">
    <div class="form-group">
        <label for="LETTER_DESCRIPTION_BN"><g:message code="upManagementLetter.LETTER_DESCRIPTION_BN.label" default="চিঠির বিবরণ" /></label>
        <g:textArea cols="5" rows="4" class="form-control" name="LETTER_DESCRIPTION_BN" value="${upManagementLetterInstance?.LETTER_DESCRIPTION_BN}"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="IFROM_DATE">Inspection Form Date</label>
        <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:upManagementLetterInstance?.IFROM_DATE)}" data-close="true" data-name="IFROM_DATE"></div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="ITO_DATE">Inspection To Date</label>
        <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:upManagementLetterInstance?.ITO_DATE)}" data-close="true" data-name="ITO_DATE"></div>
    </div>
</div>

