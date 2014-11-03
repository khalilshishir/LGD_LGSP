<%@ page import="training.TrainingParticipantsAbsentReason" %>





<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TPAR_ID"><g:message code="trainingParticipantsAbsentReason.TPAR_ID.label" default="Training Participants Absent Reason ID" /></label>
            <g:textField class="form-control" name="TPAR_ID" value="${trainingParticipantsAbsentReasonInstance?.TPAR_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TPAR_NAME"><g:message code="trainingParticipantsAbsentReason.TPAR_NAME.label" default="Training Participants Absent Reason Name" /></label>
            <g:textField class="form-control" name="TPAR_NAME" value="${trainingParticipantsAbsentReasonInstance?.TPAR_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TPAR_NAME_BN"><g:message code="trainingParticipantsAbsentReason.TPAR_NAME_BN.label" default="প্রশিক্ষণ অংশগ্রহণকারীরা অনুপস্থিত কারণ নাম" /></label>
            <g:textField class="form-control" name="TPAR_NAME_BN" value="${trainingParticipantsAbsentReasonInstance?.TPAR_NAME_BN}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TPAR_REASON"><g:message code="trainingParticipantsAbsentReason.TPAR_REASON.label" default="Training Participants Absent Reason" /></label>
            <g:textField class="form-control" name="TPAR_REASON" value="${trainingParticipantsAbsentReasonInstance?.TPAR_REASON}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TPAR_REASON_BN"><g:message code="trainingParticipantsAbsentReason.TPAR_REASON_BN.label" default="প্রশিক্ষণ অংশগ্রহণকারীরা অনুপস্থিত কারণ" /></label>
            <g:textField class="form-control" name="TPAR_REASON_BN" value="${trainingParticipantsAbsentReasonInstance?.TPAR_REASON_BN}"/>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: trainingParticipantsAbsentReasonInstance, field: 'TPAR_ABSENT_DATE', 'error')} ">
        <label for="TPAR_ABSENT_DATE">
            <g:message code="trainingParticipantsAbsentReason.TPAR_ABSENT_DATE.label" default="Training Participants Absent Reason Date" />

        </label>
        <g:datePicker class="form-control" name="TPAR_ABSENT_DATE" precision="day"  value="${trainingParticipantsAbsentReasonInstance?.TPAR_ABSENT_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: trainingParticipantsAbsentReasonInstance, field: 'TPAR_ABSENT_DATE', 'error')} ">
        <div class="form-group">
            <label for="TPAR_ABSENT_DATE">Training Participants Absent Reason Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:trainingParticipantsAbsentReasonInstance?.TPAR_ABSENT_DATE)}" data-close="true" data-name="TPAR_ABSENT_DATE"></div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TPI"><g:message code="trainingParticipantsAbsentReason.TPI.label" default="Training Participant Info Name" /></label>
            <g:select id="TPI" name="TPI.id" from="${training.TrainingParticipantInformation.list()}" optionKey="id" value="${trainingParticipantsAbsentReasonInstance?.TPI?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="UNION_PARISHAD"><g:message code="trainingParticipantsAbsentReason.UNION_PARISHAD.label" default="Union Parishad Name" /></label>
            <g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" value="${trainingParticipantsAbsentReasonInstance?.UNION_PARISHAD?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>