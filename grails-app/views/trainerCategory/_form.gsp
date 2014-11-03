<%@ page import="training.TrainerCategory" %>





<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINER_CATEGORY_ID"><g:message code="trainerCategory.TRAINER_CATEGORY_ID.label" default="Trainer Category ID" /></label>
            <g:textField class="form-control" name="TRAINER_CATEGORY_ID" value="${trainerCategoryInstance?.TRAINER_CATEGORY_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TRAINER_CATEGORY_NAME"><g:message code="trainerCategory.TRAINER_CATEGORY_NAME.label" default="Trainer Category Name" /></label>
            <g:textField class="form-control" name="TRAINER_CATEGORY_NAME" value="${trainerCategoryInstance?.TRAINER_CATEGORY_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINER_CATEGORY_NAME_BN"><g:message code="trainerCategory.TRAINER_CATEGORY_NAME_BN.label" default="ট্রেইনার ক্যাটাগরি নাম " /></label>
            <g:textField class="form-control" name="TRAINER_CATEGORY_NAME_BN" value="${trainerCategoryInstance?.TRAINER_CATEGORY_NAME_BN}"/>
        </div>
    </div>
</div>