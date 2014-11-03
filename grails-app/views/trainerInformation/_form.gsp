<%@ page import="training.TrainerInformation" %>





<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_INFO_ID"><g:message code="trainerInformation.TR_INFO_ID.label" default="Trainer Information ID" /></label>
            <g:textField class="form-control" name="TR_INFO_ID" value="${trainerInformationInstance?.TR_INFO_ID}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_NAME"><g:message code="trainerInformation.TR_INFO_NAME.label" default="Trainer Information Name" /></label>
            <g:textField class="form-control" name="TR_INFO_NAME" value="${trainerInformationInstance?.TR_INFO_NAME}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_NAME_BN"><g:message code="trainerInformation.TR_INFO_NAME_BN.label" default="শিক্ষক সম্পর্কিত তথ্যের নাম" /></label>
            <g:textField class="form-control" name="TR_INFO_NAME_BN" value="${trainerInformationInstance?.TR_INFO_NAME_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINER_CATEGORY"><g:message code="trainerInformation.TRAINER_CATEGORY.label" default="Trainer Category Name" /></label>
            <g:select id="TRAINER_CATEGORY" name="TRAINER_CATEGORY.id" from="${training.TrainerCategory.list()}" optionKey="id" value="${trainerInformationInstance?.TRAINER_CATEGORY?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_QUALIFICATION"><g:message code="trainerInformation.TR_INFO_QUALIFICATION.label" default="Trainer Information Qualification" /></label>
            <g:textField class="form-control" name="TR_INFO_QUALIFICATION" value="${trainerInformationInstance?.TR_INFO_QUALIFICATION}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_QUALIFICATION_BN"><g:message code="trainerInformation.TR_INFO_QUALIFICATION_BN.label" default="শিক্ষা গত যোগ্যতা" /></label>
            <g:textField class="form-control" name="TR_INFO_QUALIFICATION_BN" value="${trainerInformationInstance?.TR_INFO_QUALIFICATION_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_INFO_ADDRESS"><g:message code="trainerInformation.TR_INFO_ADDRESS.label" default="Trainer Information Address" /></label>
            <g:textField class="form-control" name="TR_INFO_ADDRESS" value="${trainerInformationInstance?.TR_INFO_ADDRESS}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_ADDRESS_BN"><g:message code="trainerInformation.TR_INFO_ADDRESS_BN.label" default="ঠিকানা" /></label>
            <g:textField class="form-control" name="TR_INFO_ADDRESS_BN" value="${trainerInformationInstance?.TR_INFO_ADDRESS_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_PHONE"><g:message code="trainerInformation.TR_INFO_PHONE.label" default="Trainer Information Phone" /></label>
            <g:textField class="form-control" name="TR_INFO_PHONE" value="${trainerInformationInstance?.TR_INFO_PHONE}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_INFO_PHONE_BN"><g:message code="trainerInformation.TR_INFO_PHONE_BN.label" default="ফোন" /></label>
            <g:textField class="form-control" name="TR_INFO_PHONE_BN" value="${trainerInformationInstance?.TR_INFO_PHONE_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_MOBILE"><g:message code="trainerInformation.TR_INFO_MOBILE.label" default="Trainer Information Mobile" /></label>
            <g:textField class="form-control" name="TR_INFO_MOBILE" value="${trainerInformationInstance?.TR_INFO_MOBILE}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_MOBILE_BN"><g:message code="trainerInformation.TR_INFO_MOBILE_BN.label" default="মোবাইল" /></label>
            <g:textField class="form-control" name="TR_INFO_MOBILE_BN" value="${trainerInformationInstance?.TR_INFO_MOBILE_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_INFO_AGE"><g:message code="trainerInformation.TR_INFO_AGE.label" default="Trainer Information Age" /></label>
            <g:textField class="form-control" name="TR_INFO_AGE" value="${trainerInformationInstance?.TR_INFO_AGE}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_AGE_BN"><g:message code="trainerInformation.TR_INFO_AGE_BN.label" default="বয়স" /></label>
            <g:textField class="form-control" name="TR_INFO_AGE_BN" value="${trainerInformationInstance?.TR_INFO_AGE_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINER_INFO_GENDER"><g:message code="trainerInformation.TRAINER_INFO_GENDER.label" default="Trainer Information Gender" /></label>
            <g:select id="TRAINER_INFO_GENDER" name="TRAINER_INFO_GENDER.id" from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('GENDER'))}" optionKey="id" value="${trainerInformationInstance?.TRAINER_INFO_GENDER?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>