<%@ page import="training.TraineeCategory" %>





<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINEE_CATEGORY_ID"><g:message code="traineeCategory.TRAINEE_CATEGORY_ID.label" default="Trainee Category ID" /></label>
            <g:textField class="form-control" name="TRAINEE_CATEGORY_ID" value="${traineeCategoryInstance?.TRAINEE_CATEGORY_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TRAINEE_CATEGORY_NAME"><g:message code="traineeCategory.TRAINEE_CATEGORY_NAME.label" default="Trainee Category Name" /></label>
            <g:textField class="form-control" name="TRAINEE_CATEGORY_NAME" value="${traineeCategoryInstance?.TRAINEE_CATEGORY_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINEE_CATEGORY_NAME_BN"><g:message code="traineeCategory.TRAINEE_CATEGORY_NAME_BN.label" default="শিক্ষার্থী শ্রেণী বিভাগ" /></label>
            <g:textField class="form-control" name="TRAINEE_CATEGORY_NAME_BN" value="${traineeCategoryInstance?.TRAINEE_CATEGORY_NAME_BN}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="NO_OF_TRAINEE_QUANTITY"><g:message code="traineeCategory.NO_OF_TRAINEE_QUANTITY.label" default="No of Trainee Quantity" /></label>
            <g:field name="NO_OF_TRAINEE_QUANTITY" class="form-control" type="number" value="${traineeCategoryInstance.NO_OF_TRAINEE_QUANTITY}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="NO_OF_TRAINEE_QUANTITY_BN"><g:message code="traineeCategory.NO_OF_TRAINEE_QUANTITY_BN.label" default="শিক্ষার্থী সংখ্যা " /></label>
            <g:field name="NO_OF_TRAINEE_QUANTITY_BN" class="form-control" type="number" value="${traineeCategoryInstance.NO_OF_TRAINEE_QUANTITY_BN}"/>
        </div>
    </div>
</div>