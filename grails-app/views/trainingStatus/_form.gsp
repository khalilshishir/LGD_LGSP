<%@ page import="training.TrainingStatus" %>





<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_STAT_ID"><g:message code="trainingStatus.TR_STAT_ID.label" default="Training Status ID" /></label>
            <g:textField class="form-control" name="TR_STAT_ID" value="${trainingStatusInstance?.TR_STAT_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TRAINEE_INFO"><g:message code="trainingStatus.TRAINEE_INFO.label" default="Trainee Info Name" /></label>
            <g:select id="TRAINEE_INFO" name="TRAINEE_INFO.id" from="${training.TraineeInformation.list()}" optionKey="id" value="${trainingStatusInstance?.TRAINEE_INFO?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_STAT_ATTENDENT"><g:message code="trainingStatus.TR_STAT_ATTENDENT.label" default="Training Status Attendent" /></label>
            <g:field name="TR_STAT_ATTENDENT" type="number" class="form-control" value="${trainingStatusInstance.TR_STAT_ATTENDENT}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TR_STAT_ATTENDENT_BN"><g:message code="trainingStatus.TR_STAT_ATTENDENT_BN.label" default="উপস্থিতির সংখ্যা" /></label>
            <g:textField name="TR_STAT_ATTENDENT_BN" class="form-control" value="${trainingStatusInstance.TR_STAT_ATTENDENT_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    %{--<div class="col-xs-6 ${hasErrors(bean: trainingStatusInstance, field: 'TR_STAT_DATE_OF_TRAINING', 'error')} " style="padding-left: 10px">
        <label for="TR_STAT_DATE_OF_TRAINING">
            <g:message code="trainingStatus.TR_STAT_DATE_OF_TRAINING.label" default="Training Status Date of Training" />

        </label>
        <g:datePicker class="form-control" name="TR_STAT_DATE_OF_TRAINING" precision="day"  value="${trainingStatusInstance?.TR_STAT_DATE_OF_TRAINING}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: trainingStatusInstance, field: 'TR_STAT_DATE_OF_TRAINING', 'error')} " style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_STAT_DATE_OF_TRAINING">Training Status Date of Training</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:trainingStatusInstance?.TR_STAT_DATE_OF_TRAINING)}" data-close="true" data-name="TR_STAT_DATE_OF_TRAINING"></div>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TR_STAT_NO_OF_ABSENT"><g:message code="trainingStatus.TR_STAT_NO_OF_ABSENT.label" default="Training Status No of Absent" /></label>
            <g:field name="TR_STAT_NO_OF_ABSENT" type="number" class="form-control" value="${trainingStatusInstance.TR_STAT_NO_OF_ABSENT}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_STAT_NO_OF_ABSENT_BN"><g:message code="trainingStatus.TR_STAT_NO_OF_ABSENT_BN.label" default="অনুপস্থিতির সংখ্যা" /></label>
            <g:textField name="TR_STAT_NO_OF_ABSENT_BN" class="form-control" value="${trainingStatusInstance.TR_STAT_NO_OF_ABSENT_BN}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TR_STAT_NO_OF_TRAINED"><g:message code="trainingStatus.TR_STAT_NO_OF_TRAINED.label" default="Training Status No of Trained" /></label>
            <g:field name="TR_STAT_NO_OF_TRAINED" type="number" class="form-control" value="${trainingStatusInstance.TR_STAT_NO_OF_TRAINED}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_STAT_NO_OF_TRAINED_BN"><g:message code="trainingStatus.TR_STAT_NO_OF_TRAINED_BN.label" default="প্রশিক্ষনের সংখ্যা" /></label>
            <g:textField name="TR_STAT_NO_OF_TRAINED_BN" class="form-control" value="${trainingStatusInstance.TR_STAT_NO_OF_TRAINED_BN}"/>
        </div>
    </div>
</div>