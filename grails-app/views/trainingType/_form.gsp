<%@ page import="training.TrainingType" %>





<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINING_TYPE_ID"><g:message code="trainingType.TRAINING_TYPE_ID.label" default="Training Type ID" /></label>
            <g:textField class="form-control" name="TRAINING_TYPE_ID" value="${trainingTypeInstance?.TRAINING_TYPE_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TRAINING_TYPE_NAME"><g:message code="trainingType.TRAINING_TYPE_NAME.label" default="Training Type Name" /></label>
            <g:textField class="form-control" name="TRAINING_TYPE_NAME" value="${trainingTypeInstance?.TRAINING_TYPE_NAME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TRAINING_TYPE_NAME_BN"><g:message code="trainingType.TRAINING_TYPE_NAME_BN.label" default="ট্রেনিং টাইপ নাম" /></label>
            <g:textField class="form-control" name="TRAINING_TYPE_NAME_BN" value="${trainingTypeInstance?.TRAINING_TYPE_NAME_BN}"/>
        </div>
    </div>
</div>