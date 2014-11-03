<%@ page import="training.TrainingOrientationRefresherTrainingPeerLearning" %>





<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="NAME_OF_TRAINING"><g:message code="trainingOrientationRefresherTrainingPeerLearning.NAME_OF_TRAINING.label" default="Name of Training" /></label>
            <g:textField class="form-control" name="NAME_OF_TRAINING" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.NAME_OF_TRAINING}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="NAME_OF_TRAINING_BN"><g:message code="trainingOrientationRefresherTrainingPeerLearning.NAME_OF_TRAINING_BN.label" default="প্রশিক্ষণ নাম" /></label>
            <g:textField class="form-control" name="NAME_OF_TRAINING_BN" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.NAME_OF_TRAINING_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="SUBJECT"><g:message code="trainingOrientationRefresherTrainingPeerLearning.SUBJECT.label" default="Subject" /></label>
            <g:textField class="form-control" name="SUBJECT" value="${trainingOrientationRefresherTrainingPeerLearningInstance.SUBJECT}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="SUBJECT_BN"><g:message code="trainingOrientationRefresherTrainingPeerLearning.SUBJECT_BN.label" default="বিষয়" /></label>
            <g:textField class="form-control" name="SUBJECT_BN" value="${trainingOrientationRefresherTrainingPeerLearningInstance.SUBJECT_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="PARTICIPANT"><g:message code="trainingOrientationRefresherTrainingPeerLearning.PARTICIPANT.label" default="Participant" /></label>
            <g:textField class="form-control" name="PARTICIPANT" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.PARTICIPANT}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="PARTICIPANT_BN"><g:message code="trainingOrientationRefresherTrainingPeerLearning.PARTICIPANT_BN.label" default="অংশগ্রহণকারী" /></label>
            <g:textField class="form-control" name="PARTICIPANT_BN" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.PARTICIPANT_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="DURATION"><g:message code="trainingOrientationRefresherTrainingPeerLearning.DURATION.label" default="Duration" /></label>
            <g:textField class="form-control" name="DURATION" value="${trainingOrientationRefresherTrainingPeerLearningInstance.DURATION}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="DURATION_BN"><g:message code="trainingOrientationRefresherTrainingPeerLearning.DURATION_BN.label" default="স্থিতিকাল" /></label>
            <g:textField class="form-control" name="DURATION_BN" value="${trainingOrientationRefresherTrainingPeerLearningInstance.DURATION_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINERS"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINERS.label" default="Trainers" /></label>
            <g:textField class="form-control" name="TRAINERS" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINERS}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINERS_BN"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINERS_BN.label" default="প্রশিক্ষক" /></label>
            <g:textField class="form-control" name="TRAINERS_BN" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINERS_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINING_EVALUATION"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_EVALUATION.label" default="Training Evaluation" /></label>
            <g:textField class="form-control" name="TRAINING_EVALUATION" value="${trainingOrientationRefresherTrainingPeerLearningInstance.TRAINING_EVALUATION}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINING_EVALUATION_BN"><g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_EVALUATION_BN.label" default="প্রশিক্ষণ মূল্যায়ন" /></label>
            <g:textField class="form-control" name="TRAINING_EVALUATION_BN" value="${trainingOrientationRefresherTrainingPeerLearningInstance.TRAINING_EVALUATION_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="QTD_BY_PARTICIPANTS"><g:message code="trainingOrientationRefresherTrainingPeerLearning.QTD_BY_PARTICIPANTS.label" default="Quality Training Determined By Participants" /></label>
            <g:textField class="form-control" name="QTD_BY_PARTICIPANTS" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.QTD_BY_PARTICIPANTS}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="QTD_BY_PARTICIPANTS_BN"><g:message code="trainingOrientationRefresherTrainingPeerLearning.QTD_BY_PARTICIPANTS_BN.label" default="কোয়ালিটির প্রশিক্ষণ অংশগ্রহণকারীদের দ্বারা নির্ধারিত" /></label>
            <g:textField class="form-control" name="QTD_BY_PARTICIPANTS_BN" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.QTD_BY_PARTICIPANTS_BN}"/>
        </div>
    </div>

    %{--<div class="col-xs-4 ${hasErrors(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: 'TRAINING_START_DATE', 'error')} ">
        <label for="TRAINING_START_DATE">
            <g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_START_DATE.label" default="Training Start Date" />

        </label>
        <g:datePicker class="form-control" name="TRAINING_START_DATE" precision="day"  value="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_START_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-4 ${hasErrors(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: 'TRAINING_START_DATE', 'error')} ">
        <div class="form-group">
            <label for="TRAINING_START_DATE">Training Start Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_START_DATE)}" data-close="true" data-name="TRAINING_START_DATE"></div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs-4 ${hasErrors(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: 'TRAINING_END_DATE', 'error')} " style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINING_END_DATE">Training End Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_END_DATE)}" data-close="true" data-name="TRAINING_END_DATE"></div>
        </div>
    </div>
    %{--<div class="col-xs-4 ${hasErrors(bean: trainingOrientationRefresherTrainingPeerLearningInstance, field: 'TRAINING_END_DATE', 'error')} " style="padding-left: 10px">
        <label for="TRAINING_END_DATE">
            <g:message code="trainingOrientationRefresherTrainingPeerLearning.TRAINING_END_DATE.label" default="Training End Date" />

        </label>
        <g:datePicker class="form-control" name="TRAINING_END_DATE" precision="day"  value="${trainingOrientationRefresherTrainingPeerLearningInstance?.TRAINING_END_DATE}" default="none" noSelection="['': '']" />
    </div>--}%

    <div class="col-xs-4">
        <div class="form-group">
            <label for="UNION_PARISHAD"><g:message code="trainingOrientationRefresherTrainingPeerLearning.UNION_PARISHAD.label" default="Union Parishad Name" /></label>
            <g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" value="${trainingOrientationRefresherTrainingPeerLearningInstance?.UNION_PARISHAD?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>