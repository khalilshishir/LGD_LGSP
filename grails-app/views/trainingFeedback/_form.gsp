<%@ page import="training.TrainingFeedback" %>





<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_FEED_ID"><g:message code="trainingFeedback.TR_FEED_ID.label" default="Training Feedback ID" /></label>
            <g:textField class="form-control" name="TR_FEED_ID" value="${trainingFeedbackInstance?.TR_FEED_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TPI"><g:message code="trainingFeedback.TPI.label" default="Training Participant Info ID" /></label>
            <g:select id="TPI" name="TPI.id" from="${training.TrainingParticipantInformation.list()}" optionKey="id" value="${trainingFeedbackInstance?.TPI?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_FEED_FEEDBACK"><g:message code="trainingFeedback.TR_FEED_FEEDBACK.label" default="Training Feedback" /></label>
            <g:textField class="form-control" name="TR_FEED_FEEDBACK" value="${trainingFeedbackInstance?.TR_FEED_FEEDBACK}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="TR_FEED_FEEDBACK_BN"><g:message code="trainingFeedback.TR_FEED_FEEDBACK_BN.label" default="প্রশিক্ষণ প্রতিক্রিয়া" /></label>
            <g:textField class="form-control" name="TR_FEED_FEEDBACK_BN" value="${trainingFeedbackInstance?.TR_FEED_FEEDBACK_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    %{--<div class="col-xs-6 ${hasErrors(bean: trainingFeedbackInstance, field: 'TR_FEED_FEEDBACK_DATE', 'error')} " style="padding-left: 10px">
        <label for="TR_FEED_FEEDBACK_DATE">
            <g:message code="trainingFeedback.TR_FEED_FEEDBACK_DATE.label" default="Training Feedback Date" />

        </label>
        <g:datePicker class="form-control" name="TR_FEED_FEEDBACK_DATE" precision="day"  value="${trainingFeedbackInstance?.TR_FEED_FEEDBACK_DATE}" default="none" noSelection="['': '']" />
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: trainingFeedbackInstance, field: 'TR_FEED_FEEDBACK_DATE', 'error')} " style="padding-left: 10px">
        <div class="form-group">
            <label for="TR_FEED_FEEDBACK_DATE">Training Feedback Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:trainingFeedbackInstance?.TR_FEED_FEEDBACK_DATE)}" data-close="true" data-name="TR_FEED_FEEDBACK_DATE"></div>
        </div>
    </div>
</div>