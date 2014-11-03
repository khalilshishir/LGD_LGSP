<%@ page import="training.TrainingType; training.OthersTraining" %>





<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="OTH_TR_ID"><g:message code="othersTraining.OTH_TR_ID.label" default="Others Training ID" /></label>
            <g:textField class="form-control" name="OTH_TR_ID" value="${othersTrainingInstance?.OTH_TR_ID}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="OTH_TR_NAME"><g:message code="othersTraining.OTH_TR_NAME.label" default="Others Training Name" /></label>
            <g:textField class="form-control" name="OTH_TR_NAME" value="${othersTrainingInstance.OTH_TR_NAME}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="OTH_TR_NAME_BN"><g:message code="othersTraining.OTH_TR_NAME_BN.label" default="অন্যান্য প্রশিক্ষণ নাম" /></label>
            <g:textField class="form-control" name="OTH_TR_NAME_BN" value="${othersTrainingInstance.OTH_TR_NAME_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="OTH_TR_PARTICI_NAME"><g:message code="othersTraining.OTH_TR_PARTICI_NAME.label" default="Others Training Participant Name" /></label>
            <g:textField class="form-control" name="OTH_TR_PARTICI_NAME" value="${othersTrainingInstance?.OTH_TR_PARTICI_NAME}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="OTH_TR_PARTICI_NAME_BN"><g:message code="othersTraining.OTH_TR_PARTICI_NAME_BN.label" default="অন্যান্য প্রশিক্ষণ অংশগ্রহণকারী নাম" /></label>
            <g:textField class="form-control" name="OTH_TR_PARTICI_NAME_BN" value="${othersTrainingInstance?.OTH_TR_PARTICI_NAME_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="OTH_TR_PARTICI_ATTEN"><g:message code="othersTraining.OTH_TR_PARTICI_ATTEN.label" default="Others Training Participant Attendence" /></label>
            <g:textField class="form-control" name="OTH_TR_PARTICI_ATTEN" value="${othersTrainingInstance.OTH_TR_PARTICI_ATTEN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="OTH_TR_PARTICI_ATTEN_BN"><g:message code="othersTraining.OTH_TR_PARTICI_ATTEN_BN.label" default="অন্যান্য প্রশিক্ষণ অংশগ্রহণকারী উপস্থিতি" /></label>
            <g:textField class="form-control" name="OTH_TR_PARTICI_ATTEN_BN" value="${othersTrainingInstance.OTH_TR_PARTICI_ATTEN_BN}"/>
        </div>
    </div>

    %{--<div class="col-xs-4 ${hasErrors(bean: othersTrainingInstance, field: 'OTH_TR_START_DATE', 'error')} " style="padding-left: 10px">
        <label for="OTH_TR_START_DATE">
            <g:message code="othersTraining.OTH_TR_START_DATE.label" default="Others Training Start Date" />

        </label>
        <g:datePicker class="form-control" name="OTH_TR_START_DATE" precision="day"  value="${othersTrainingInstance?.OTH_TR_START_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-4 ${hasErrors(bean: othersTrainingInstance, field: 'OTH_TR_START_DATE', 'error')} ">
        <div class="form-group">
            <label for="OTH_TR_START_DATE">Others Training Start Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:othersTrainingInstance?.OTH_TR_START_DATE)}" data-close="true" data-name="OTH_TR_START_DATE"></div>
        </div>
    </div>

    %{--<div class="col-xs-4 ${hasErrors(bean: othersTrainingInstance, field: 'OTH_TR_END_DATE', 'error')} ">
        <label for="OTH_TR_END_DATE">
            <g:message code="othersTraining.OTH_TR_END_DATE.label" default="Others Training End Date" />

        </label>
        <g:datePicker class="form-control" name="OTH_TR_END_DATE" precision="day"  value="${othersTrainingInstance?.OTH_TR_END_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-4 ${hasErrors(bean: othersTrainingInstance, field: 'OTH_TR_END_DATE', 'error')} ">
        <div class="form-group">
            <label for="OTH_TR_END_DATE">Others Training End Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:othersTrainingInstance?.OTH_TR_END_DATE)}" data-close="true" data-name="OTH_TR_END_DATE"></div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="LEVEL"><g:message code="othersTraining.LEVEL.label" default="Level Name" /></label>
            <g:select id="LEVEL" name="LEVEL.id" from="${training.Level.list()}" optionKey="id" value="${othersTrainingInstance?.LEVEL?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_CATEGORY"><g:message code="othersTraining.TRAINEE_CATEGORY.label" default="Trainee Category Name" /></label>
            <g:select id="TRAINEE_CATEGORY" name="TRAINEE_CATEGORY.id" from="${training.TraineeCategory.list()}" optionKey="id" value="${othersTrainingInstance?.TRAINEE_CATEGORY?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINING_TYPE"><g:message code="othersTraining.TRAINING_TYPE.label" default="Training Type Name" /></label>
            <g:select id="TRAINING_TYPE" name="TRAINING_TYPE.id" from="${TrainingType.list()}" optionKey="id" value="${othersTrainingInstance?.TRAINING_TYPE?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="UNION_PARISHAD"><g:message code="othersTraining.UNION_PARISHAD.label" default="Union Parishad Name" /></label>
            <g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" value="${othersTrainingInstance?.UNION_PARISHAD?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>