<%@ page import="settings.UnionParishad; training.TrainerMovementInformation" %>





<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_MOV_INFO_ID"><g:message code="trainerMovementInformation.TR_MOV_INFO_ID.label" default="Trainer Movement Info ID" /></label>
            <g:textField class="form-control" name="TR_MOV_INFO_ID" value="${trainerMovementInformationInstance?.TR_MOV_INFO_ID}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_MOV_INFO_NAME"><g:message code="trainerMovementInformation.TR_MOV_INFO_NAME.label" default="Trainer Movement Info Name" /></label>
            <g:textField class="form-control" name="TR_MOV_INFO_NAME" value="${trainerMovementInformationInstance.TR_MOV_INFO_NAME}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_MOV_INFO_NAME_BN"><g:message code="trainerMovementInformation.TR_MOV_INFO_NAME_BN.label" default="শিক্ষক আন্দোলন তথ্য নাম" /></label>
            <g:textField class="form-control" name="TR_MOV_INFO_NAME_BN" value="${trainerMovementInformationInstance.TR_MOV_INFO_NAME_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_MOV_INFO_PRE_LOCATION"><g:message code="trainerMovementInformation.TR_MOV_INFO_PRE_LOCATION.label" default="TR Move Info Present Location" /></label>
            <g:textField class="form-control" name="TR_MOV_INFO_PRE_LOCATION" value="${trainerMovementInformationInstance?.TR_MOV_INFO_PRE_LOCATION}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_MOV_INFO_PRE_LOCATION_BN"><g:message code="trainerMovementInformation.TR_MOV_INFO_PRE_LOCATION_BN.label" default="শিক্ষক আন্দোলন তথ্য বর্তমান অবস্থান" /></label>
            <g:textField class="form-control" name="TR_MOV_INFO_PRE_LOCATION_BN" value="${trainerMovementInformationInstance?.TR_MOV_INFO_PRE_LOCATION_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_MOV_INFO_NEW_LOCATION"><g:message code="trainerMovementInformation.TR_MOV_INFO_NEW_LOCATION.label" default="TR Move Info New Location" /></label>
            <g:textField class="form-control" name="TR_MOV_INFO_NEW_LOCATION" value="${trainerMovementInformationInstance.TR_MOV_INFO_NEW_LOCATION}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_MOV_INFO_NEW_LOCATION_BN"><g:message code="trainerMovementInformation.TR_MOV_INFO_NEW_LOCATION_BN.label" default="শিক্ষক আন্দোলন তথ্য নতুন অবস্থান" /></label>
            <g:textField class="form-control" name="TR_MOV_INFO_NEW_LOCATION_BN" value="${trainerMovementInformationInstance.TR_MOV_INFO_NEW_LOCATION_BN}"/>
        </div>
    </div>

    %{--<div class="col-xs-4 ${hasErrors(bean: trainerMovementInformationInstance, field: 'TR_MOV_INFO_MOVEMENT_DATE', 'error')} ">
        <label for="TR_MOV_INFO_MOVEMENT_DATE">
            <g:message code="trainerMovementInformation.TR_MOV_INFO_MOVEMENT_DATE.label" default="TR Move Info Movement Date" />

        </label>
        <g:datePicker class="form-control" name="TR_MOV_INFO_MOVEMENT_DATE" precision="day"  value="${trainerMovementInformationInstance?.TR_MOV_INFO_MOVEMENT_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-4 ${hasErrors(bean: trainerMovementInformationInstance, field: 'TR_MOV_INFO_MOVEMENT_DATE', 'error')} ">
        <div class="form-group">
            <label for="TR_MOV_INFO_MOVEMENT_DATE">TR Move Info Movement Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:trainerMovementInformationInstance?.TR_MOV_INFO_MOVEMENT_DATE)}" data-close="true" data-name="TR_MOV_INFO_MOVEMENT_DATE"></div>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="UNION_PARISHAD"><g:message code="trainerMovementInformation.UNION_PARISHAD.label" default="Union Parishad Name" /></label>
            <g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" value="${trainerMovementInformationInstance?.UNION_PARISHAD?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>