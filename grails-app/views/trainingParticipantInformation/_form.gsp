<%@ page import="training.TrainingParticipantInformation" %>



<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TPI_ID', 'error')} ">
	<label for="TPI_ID">
		<g:message code="trainingParticipantInformation.TPI_ID.label" default="TPIID" />
		
	</label>
	<g:textField name="TPI_ID" value="${trainingParticipantInformationInstance?.TPI_ID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TPI_NAME', 'error')} ">
	<label for="TPI_NAME">
		<g:message code="trainingParticipantInformation.TPI_NAME.label" default="TPINAME" />
		
	</label>
	<g:textField name="TPI_NAME" value="${trainingParticipantInformationInstance?.TPI_NAME}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TRAINEE_INFORMATION', 'error')} ">
	<label for="TRAINEE_INFORMATION">
		<g:message code="trainingParticipantInformation.TRAINEE_INFORMATION.label" default="TRAINEEINFORMATION" />
		
	</label>
	<g:select id="TRAINEE_INFORMATION" name="TRAINEE_INFORMATION.id" from="${training.TraineeInformation.list()}" optionKey="id" value="${trainingParticipantInformationInstance?.TRAINEE_INFORMATION?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TPI_DURATION', 'error')} ">
	<label for="TPI_DURATION">
		<g:message code="trainingParticipantInformation.TPI_DURATION.label" default="TPIDURATION" />
		
	</label>
	<g:textField name="TPI_DURATION" value="${trainingParticipantInformationInstance?.TPI_DURATION}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TRAINING_INFORMATION', 'error')} ">
	<label for="TRAINING_INFORMATION">
		<g:message code="trainingParticipantInformation.TRAINING_INFORMATION.label" default="TRAININGINFORMATION" />
		
	</label>
	<g:select id="TRAINING_INFORMATION" name="TRAINING_INFORMATION.id" from="${training.TrainingInformation.list()}" optionKey="id" value="${trainingParticipantInformationInstance?.TRAINING_INFORMATION?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TPI_TRAINING_DATE', 'error')} required">
	<label for="TPI_TRAINING_DATE">
		<g:message code="trainingParticipantInformation.TPI_TRAINING_DATE.label" default="TPITRAININGDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="TPI_TRAINING_DATE" precision="day"  value="${trainingParticipantInformationInstance?.TPI_TRAINING_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TRAINEE_CATEGORY', 'error')} ">
	<label for="TRAINEE_CATEGORY">
		<g:message code="trainingParticipantInformation.TRAINEE_CATEGORY.label" default="TRAINEECATEGORY" />
		
	</label>
	<g:select id="TRAINEE_CATEGORY" name="TRAINEE_CATEGORY.id" from="${training.TraineeCategory.list()}" optionKey="id" value="${trainingParticipantInformationInstance?.TRAINEE_CATEGORY?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'UNION_PARISHAD', 'error')} ">
	<label for="UNION_PARISHAD">
		<g:message code="trainingParticipantInformation.UNION_PARISHAD.label" default="UNIONPARISHAD" />
		
	</label>
	<g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${settings.UnionParishad.list()}" optionKey="id" value="${trainingParticipantInformationInstance?.UNION_PARISHAD?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TRAINING_BUDGET', 'error')} ">
	<label for="TRAINING_BUDGET">
		<g:message code="trainingParticipantInformation.TRAINING_BUDGET.label" default="TRAININGBUDGET" />
		
	</label>
	<g:select id="TRAINING_BUDGET" name="TRAINING_BUDGET.id" from="${training.TrainingBudget.list()}" optionKey="id" value="${trainingParticipantInformationInstance?.TRAINING_BUDGET?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TPI_ATTENDENCE_TARGET', 'error')} ">
	<label for="TPI_ATTENDENCE_TARGET">
		<g:message code="trainingParticipantInformation.TPI_ATTENDENCE_TARGET.label" default="TPIATTENDENCETARGET" />
		
	</label>
	<g:textField name="TPI_ATTENDENCE_TARGET" value="${trainingParticipantInformationInstance?.TPI_ATTENDENCE_TARGET}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TPI_NO_OF_BATCH', 'error')} required">
	<label for="TPI_NO_OF_BATCH">
		<g:message code="trainingParticipantInformation.TPI_NO_OF_BATCH.label" default="TPINOOFBATCH" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="TPI_NO_OF_BATCH" type="number" value="${trainingParticipantInformationInstance.TPI_NO_OF_BATCH}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TRAINING_STATUS', 'error')} ">
	<label for="TRAINING_STATUS">
		<g:message code="trainingParticipantInformation.TRAINING_STATUS.label" default="TRAININGSTATUS" />
		
	</label>
	<g:select id="TRAINING_STATUS" name="TRAINING_STATUS.id" from="${training.TrainingStatus.list()}" optionKey="id" value="${trainingParticipantInformationInstance?.TRAINING_STATUS?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'TPI_ENTRY_DATE', 'error')} required">
	<label for="TPI_ENTRY_DATE">
		<g:message code="trainingParticipantInformation.TPI_ENTRY_DATE.label" default="TPIENTRYDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="TPI_ENTRY_DATE" precision="day"  value="${trainingParticipantInformationInstance?.TPI_ENTRY_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'IS_ACTIVE', 'error')} ">
	<label for="IS_ACTIVE">
		<g:message code="trainingParticipantInformation.IS_ACTIVE.label" default="ISACTIVE" />
		
	</label>
	<g:checkBox name="IS_ACTIVE" value="${trainingParticipantInformationInstance?.IS_ACTIVE}" />
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'CREATE_DATE', 'error')} required">
	<label for="CREATE_DATE">
		<g:message code="trainingParticipantInformation.CREATE_DATE.label" default="CREATEDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="CREATE_DATE" precision="day"  value="${trainingParticipantInformationInstance?.CREATE_DATE}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'CREATE_BY', 'error')} required">
	<label for="CREATE_BY">
		<g:message code="trainingParticipantInformation.CREATE_BY.label" default="CREATEBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CREATE_BY" type="number" value="${trainingParticipantInformationInstance.CREATE_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'UPDATED_BY', 'error')} required">
	<label for="UPDATED_BY">
		<g:message code="trainingParticipantInformation.UPDATED_BY.label" default="UPDATEDBY" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UPDATED_BY" type="number" value="${trainingParticipantInformationInstance.UPDATED_BY}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingParticipantInformationInstance, field: 'UPDATED_DATE', 'error')} required">
	<label for="UPDATED_DATE">
		<g:message code="trainingParticipantInformation.UPDATED_DATE.label" default="UPDATEDDATE" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="UPDATED_DATE" precision="day"  value="${trainingParticipantInformationInstance?.UPDATED_DATE}"  />
</div>

