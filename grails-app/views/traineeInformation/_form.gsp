<%@ page import="training.TraineeInformation" %>





<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINEE_INFO_ID"><g:message code="traineeInformation.TRAINEE_INFO_ID.label" default="Trainee Information ID" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_ID" value="${traineeInformationInstance?.TRAINEE_INFO_ID}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_INFO_NAME"><g:message code="traineeInformation.TRAINEE_INFO_NAME.label" default="Trainee Information Name" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_NAME" value="${traineeInformationInstance?.TRAINEE_INFO_NAME}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_INFO_NAME_BN"><g:message code="traineeInformation.TRAINEE_INFO_NAME_BN.label" default="ট্রেনি সম্পর্কিত তথ্য" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_NAME_BN" value="${traineeInformationInstance?.TRAINEE_INFO_NAME_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINEE_CATEGORY"><g:message code="traineeInformation.TRAINEE_CATEGORY.label" default="Trainee Category Name" /></label>
            <g:select id="TRAINEE_CATEGORY" name="TRAINEE_CATEGORY.id" from="${training.TraineeCategory.list()}" optionKey="id" value="${traineeInformationInstance?.TRAINEE_CATEGORY?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_QUALIFICATION"><g:message code="traineeInformation.TR_INFO_QUALIFICATION.label" default="Trainee Information Qualification" /></label>
            <g:textField class="form-control" name="TR_INFO_QUALIFICATION" value="${traineeInformationInstance?.TR_INFO_QUALIFICATION}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_QUALIFICATION_BN"><g:message code="traineeInformation.TR_INFO_QUALIFICATION_BN.label" default="শিক্ষা গত যোগ্যতা" /></label>
            <g:textField class="form-control" name="TR_INFO_QUALIFICATION_BN" value="${traineeInformationInstance?.TR_INFO_QUALIFICATION_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINEE_INFO_AGE"><g:message code="traineeInformation.TRAINEE_INFO_AGE.label" default="Trainee Information Age" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_AGE" value="${traineeInformationInstance?.TRAINEE_INFO_AGE}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_INFO_AGE_BN"><g:message code="traineeInformation.TRAINEE_INFO_AGE_BN.label" default="বয়স" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_AGE_BN" value="${traineeInformationInstance?.TRAINEE_INFO_AGE_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_INFO_GENDER"><g:message code="traineeInformation.TRAINEE_INFO_GENDER.label" default="Trainee Information Gender" /></label>
            <g:select id="TRAINEE_INFO_GENDER" name="TRAINEE_INFO_GENDER.id" from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('GENDER'))}" optionKey="id" value="${traineeInformationInstance?.TRAINEE_INFO_GENDER?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_INFO_AREA_SPECIFICATION"><g:message code="traineeInformation.TR_INFO_AREA_SPECIFICATION.label" default="Trainee Info Area Specification" /></label>
            <g:textField class="form-control" name="TR_INFO_AREA_SPECIFICATION" value="${traineeInformationInstance?.TR_INFO_AREA_SPECIFICATION}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TR_INFO_AREA_SPECIFICATION_BN"><g:message code="traineeInformation.TR_INFO_AREA_SPECIFICATION_BN.label" default="এরিয়া স্পেছিফিকেশন " /></label>
            <g:textField class="form-control" name="TR_INFO_AREA_SPECIFICATION_BN" value="${traineeInformationInstance?.TR_INFO_AREA_SPECIFICATION_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_INFO_PRE_ADDRESS"><g:message code="traineeInformation.TRAINEE_INFO_PRE_ADDRESS.label" default="Trainee Info Present Address" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_PRE_ADDRESS" value="${traineeInformationInstance?.TRAINEE_INFO_PRE_ADDRESS}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINEE_INFO_PRE_ADDRESS_BN"><g:message code="traineeInformation.TRAINEE_INFO_PRE_ADDRESS_BN.label" default="বর্তমান ঠীকানা" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_PRE_ADDRESS_BN" value="${traineeInformationInstance?.TRAINEE_INFO_PRE_ADDRESS_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_INFO_MOBILE"><g:message code="traineeInformation.TRAINEE_INFO_MOBILE.label" default="Trainee Information Mobile" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_MOBILE" value="${traineeInformationInstance?.TRAINEE_INFO_MOBILE}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="TRAINEE_INFO_MOBILE_BN"><g:message code="traineeInformation.TRAINEE_INFO_MOBILE_BN.label" default="মোবাইল" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_MOBILE_BN" value="${traineeInformationInstance?.TRAINEE_INFO_MOBILE_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINEE_INFO_EMAIL"><g:message code="traineeInformation.TRAINEE_INFO_EMAIL.label" default="Trainee Information Email" /></label>
            <g:textField class="form-control" name="TRAINEE_INFO_EMAIL" value="${traineeInformationInstance?.TRAINEE_INFO_EMAIL}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="LEVEL"><g:message code="traineeInformation.LEVEL.label" default="Level Name" /></label>
            <g:select id="LEVEL" name="LEVEL.id" from="${training.Level.list()}" optionKey="id" value="${traineeInformationInstance?.LEVEL?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="DEPARTMENT"><g:message code="traineeInformation.DEPARTMENT.label" default="Department Name" /></label>
            <g:select id="DEPARTMENT" name="DEPARTMENT.id" from="${payroll.Department.list()}" optionKey="id" value="${traineeInformationInstance?.DEPARTMENT?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>