<%@ page import="training.TrainingInformation" %>


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINING_INFO_ID"><g:message code="trainingInformation.TRAINING_INFO_ID.label" default="Training Information ID" /></label>
            <g:textField class="form-control" name="TRAINING_INFO_ID" value="${trainingInformationInstance?.TRAINING_INFO_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TRAINING_INFO_STATUS"><g:message code="trainingInformation.TRAINING_INFO_STATUS.label" default="Training Info Status" /></label>
            <g:select id="TRAINING_INFO_STATUS" name="TRAINING_INFO_STATUS.id" from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('TR_INFO_STATUS '))}" optionKey="id" value="${trainingInformationInstance?.TRAINING_INFO_STATUS?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINING_TYPE"><g:message code="trainingInformation.TRAINING_TYPE.label" default="Training Type Name" /></label>
            <g:select id="TRAINING_TYPE" name="TRAINING_TYPE.id" from="${training.TrainingType.list()}" optionKey="id" value="${trainingInformationInstance?.TRAINING_TYPE?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: trainingInformationInstance, field: 'TR_INFO_TRAINING_DATE', 'error')} ">
        <label for="TR_INFO_TRAINING_DATE">
            <g:message code="trainingInformation.TR_INFO_TRAINING_DATE.label" default="Training Info Training Date" />

        </label>
        <g:datePicker class="form-control" name="TR_INFO_TRAINING_DATE" precision="day"  value="${trainingInformationInstance?.TR_INFO_TRAINING_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: trainingInformationInstance, field: 'TR_INFO_TRAINING_DATE', 'error')} ">
        <div class="form-group">
            <label for="TR_INFO_TRAINING_DATE">Training Info Training Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:trainingInformationInstance?.TR_INFO_TRAINING_DATE)}" data-close="true" data-name="TR_INFO_TRAINING_DATE"></div>
        </div>
    </div>
</div>