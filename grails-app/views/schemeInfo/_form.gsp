<%@ page import="comonclass.UpProcType; lookUp.AllLookup; lookUp.Lookup; planningbudget.SchemeCategory; planningbudget.FiscalYear; settings.SchemeInfo" %>

<script type="text/javascript">
    function loadProcurementTypeOnBlurContractAmount() {

        var schemeType = $('#SCHEME_TYPE').val(),
                isLabourAppointed = false,
                contractAmount = $('#RECEIVED_AMOUNT').val();
        if ($("#IS_LABOUR_APPOINTED").is(':checked')) {
            isLabourAppointed = true;
        } else {
            isLabourAppointed = false;
        }
        <g:remoteFunction controller="common" action="loadProcurementTypeOnBlurContractAmount" update="IMPLEMENTATION_SYSTEM" params="'schemeType=\'+schemeType+\'&isLabourAppointed=\'+isLabourAppointed+\'&contractAmount=\'+contractAmount" />
    }
</script>

<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'SCHEME_ID', 'error')} ">
        <label for="SCHEME_ID">
            <g:message code="schemeInfo.SCHEME_ID.label" default="Scheme ID" />

        </label>
        <g:textField class="form-control" name="SCHEME_ID" value="${schemeInfoInstance?.SCHEME_ID}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'NAME', 'error')} ">
        <label for="NAME">
            <g:message code="schemeInfo.NAME.label" default="Scheme Name" />

        </label>
        <g:textField class="form-control" name="NAME" value="${schemeInfoInstance?.NAME}"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'SCHEME_LOCATION', 'error')} ">
        <label for="SCHEME_LOCATION">
            <g:message code="schemeInfo.SCHEME_LOCATION.label" default="Scheme Location" />

        </label>
        <g:textField class="form-control" name="SCHEME_LOCATION" value="${schemeInfoInstance?.SCHEME_LOCATION}"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'UNION_PARISHAD', 'error')} required">
        <label for="UNION_PARISHAD">
            <g:message code="schemeInfo.UNION_PARISHAD.label" default="Union Parishad" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" required="" value="${schemeInfoInstance?.UNION_PARISHAD?.id}" />
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'SCHEME_TYPE', 'error')} required">
        <label for="SCHEME_TYPE">
            <g:message code="schemeInfo.SCHEME_TYPE.label" default="Scheme Type" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="SCHEME_TYPE" name="SCHEME_TYPE.id" from="${settings.SchemeType.list()}" optionKey="id" required="" value="${schemeInfoInstance?.SCHEME_TYPE?.id}" />
    </div>
</div>



<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'GRANTED_AMOUNT', 'error')} required">
        <label for="GRANTED_AMOUNT">
            <g:message code="schemeInfo.GRANTED_AMOUNT.label" default="Estimated Amount" />
            <span class="required-indicator">*</span>
        </label>
        <g:field class="form-control" type="number" name="GRANTED_AMOUNT" value="${schemeInfoInstance.GRANTED_AMOUNT}" required=""/>
    </div>
</div>


%{--<div class="col-xs-4">--}%
%{--<div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'RECEIVED_AMOUNT', 'error')} required">--}%
%{--<label for="RECEIVED_AMOUNT">--}%
%{--<g:message code="schemeInfo.RECEIVED_AMOUNT.label" default="Contract Amount" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:field class="form-control" type="number" name="RECEIVED_AMOUNT" value="${schemeInfoInstance.RECEIVED_AMOUNT}" required=""/>--}%
%{--</div>--}%
%{--</div>--}%


%{--<div class="col-xs-4">--}%
%{--<div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'WORK_DESCRIPTION', 'error')} ">--}%
%{--<label for="WORK_DESCRIPTION">--}%
%{--<g:message code="schemeInfo.WORK_DESCRIPTION.label" default="Description of Scheme" />--}%

%{--</label>--}%
%{--<g:textField class="form-control" name="WORK_DESCRIPTION" value="${schemeInfoInstance?.WORK_DESCRIPTION}"/>--}%
%{--</div>--}%
%{--</div>--}%



<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'SCHEME_START_DATE', 'error')} ">
        <label for="SCHEME_START_DATE">
            <g:message code="schemeInfo.SCHEME_START_DATE.label" default="Scheme Start Date" />
        </label><br>
        %{--<g:datePicker name="SCHEME_START_DATE" precision="day"  value="${schemeInfoInstance?.SCHEME_START_DATE}" default="none" noSelection="['': '']" />--}%
        <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:schemeInfoInstance?.SCHEME_START_DATE)}" data-close="true" data-name="SCHEME_START_DATE"></div>
    </div>
</div>



<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'SCHEME_END_DATE', 'error')} ">
        <label for="SCHEME_END_DATE">
            <g:message code="schemeInfo.SCHEME_END_DATE.label" default="Scheme End Date" />

        </label><br>
        <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:schemeInfoInstance?.SCHEME_END_DATE)}" data-close="true" data-name="SCHEME_END_DATE"></div>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'WORK_DESCRIPTION', 'error')} ">
        <label for="WORK_DESCRIPTION">
            <g:message code="schemeInfo.WORK_DESCRIPTION.label" default="Description of Scheme" />

        </label>
        <g:textField class="form-control" name="WORK_DESCRIPTION" value="${schemeInfoInstance?.WORK_DESCRIPTION}"/>
    </div>
</div>




%{--<div class="col-xs-4">--}%
%{--<div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'RESPONSIBLE_PERSON', 'error')} ">--}%
%{--<label for="RESPONSIBLE_PERSON">--}%
%{--<g:message code="schemeInfo.RESPONSIBLE_PERSON.label" default="Responsible Person" />--}%

%{--</label>--}%
%{--<g:textField class="form-control" name="RESPONSIBLE_PERSON" value="${schemeInfoInstance?.RESPONSIBLE_PERSON}"/>--}%
%{--</div>--}%
%{--</div>--}%


<div class="col-xs-4">
    <div class="fieldcontain ${hasErrors(bean: schemeInfoInstance, field: 'IS_SELECTED_BY_WOMEN', 'error')} ">
        <label for="IS_SELECTED_BY_WOMEN">
            <g:message code="schemeInfo.IS_SELECTED_BY_WOMEN.label" default="Is Selected By Women ?" />

        </label>
        <g:checkBox class="form-control" name="IS_SELECTED_BY_WOMEN" value="${schemeInfoInstance?.IS_SELECTED_BY_WOMEN}" />
    </div>
</div>

<div class="col-xs-4">
    <div class="fieldcontain ${hasErrors(bean: schemeInfoInstance, field: 'IS_LABOUR_APPOINTED', 'error')} ">
        <label for="IS_LABOUR_APPOINTED">
            <g:message code="schemeInfo.IS_LABOUR_APPOINTED.label" default="Is Labour Appointed ?" />

        </label>
        <g:checkBox class="form-control" id="IS_LABOUR_APPOINTED" name="IS_LABOUR_APPOINTED" value="${schemeInfoInstance?.IS_LABOUR_APPOINTED}" />
    </div>
</div>

<div class="col-xs-4">

    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'IMPLEMENTATION_STATUS', 'error')} ">
        <label for="IMPLEMENTATION_STATUS">
            <g:message code="schemeInfo.IMPLEMENTATION_STATUS.label" default="Implementation Status ?" />

        </label>
        <g:checkBox class="form-control" name="IMPLEMENTATION_STATUS" value="${schemeInfoInstance?.IMPLEMENTATION_STATUS}" />
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'RESPONSIBLE_PERSON', 'error')} ">
        <label for="RESPONSIBLE_PERSON">
            <g:message code="schemeInfo.RESPONSIBLE_PERSON.label" default="Responsible Person" />

        </label>
        <g:textField class="form-control" name="RESPONSIBLE_PERSON" value="${schemeInfoInstance?.RESPONSIBLE_PERSON}"/>
    </div>
</div>

<div class="col-xs-4">

    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'IMPLEMENTATION_STATUS', 'error')} ">
        <label for="approvedByUp">
            <g:message code="schemeInfo.approvedByUp.label" default="Approved By Union porishad ?" />

        </label>
        <g:checkBox class="form-control" name="approvedByUp" value="${schemeInfoInstance?.approvedByUp}" />
    </div>
</div>

<div class="col-xs-4">

    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'endorsedByBgcc', 'error')} ">
        <label for="endorsedByBgcc">
            <g:message code="schemeInfo.endorsedByBgcc.label" default="Endorsed By BGCC ?" />

        </label>
        <g:checkBox class="form-control" name="endorsedByBgcc" value="${schemeInfoInstance?.endorsedByBgcc}" />
    </div>
</div>



<div class="col-xs-4">
    <div class="form-group required">
        <label for="SCHEME_TYPE">
            <g:message code="fiscalYear.label" default="Fiscal Year" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="fiscalYear" name="fiscalYear.id" from="${FiscalYear.list()}" optionKey="id" required="" value="${fiscalYearInstance?.id}" />
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'RECEIVED_AMOUNT', 'error')} required">
        <label for="RECEIVED_AMOUNT">
            <g:message code="schemeInfo.RECEIVED_AMOUNT.label" default="Contract Amount" />
            <span class="required-indicator">*</span>
        </label>
        <g:field class="form-control" type="number" name="RECEIVED_AMOUNT" value="${schemeInfoInstance.RECEIVED_AMOUNT}" required="" onblur="loadProcurementTypeOnBlurContractAmount()"/>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'IMPLEMENTATION_SYSTEM', 'error')} ">
        <label for="IMPLEMENTATION_SYSTEM">
            <g:message code="schemeInfo.IMPLEMENTATION_SYSTEM.label" default="Implementation Method" />

        </label>
        <g:select class="form-control" id="IMPLEMENTATION_SYSTEM" name="IMPLEMENTATION_SYSTEM.id" from="${UpProcType.values()}" noSelection="['':'Select One']"  required=""  />

    </div>
</div>




%{--<div class="col-xs-4">--}%

%{--<div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'IMPLEMENTATION_STATUS', 'error')} ">--}%
%{--<label for="approvedByUp">--}%
%{--<g:message code="schemeInfo.approvedByUp.label" default="Approved By Union porishad ?" />--}%

%{--</label>--}%
%{--<g:checkBox class="form-control" name="approvedByUp" value="${schemeInfoInstance?.approvedByUp}" />--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="col-xs-4">--}%

%{--<div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'endorsedByBgcc', 'error')} ">--}%
%{--<label for="endorsedByBgcc">--}%
%{--<g:message code="schemeInfo.endorsedByBgcc.label" default="Endorsed By BGCC ?" />--}%

%{--</label>--}%
%{--<g:checkBox class="form-control" name="endorsedByBgcc" value="${schemeInfoInstance?.endorsedByBgcc}" />--}%
%{--</div>--}%
%{--</div>--}%

<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'projectName', 'error')} ">
        <label for="projectName">
            <g:message code="schemeInfo.projectName.label" default="Project Name" />

        </label>
        <g:textField class="form-control" name="projectName" value="${schemeInfoInstance?.projectName}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group required">
        <label for="schemeCategory">
            <g:message code="schemeCategory.label" default="Scheme Category" />
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" id="schemeCategory" name="schemeCategory.id" from="${SchemeCategory.list()}" optionKey="id" required="" value="${schemeCategoryInstance?.id}" />
    </div>
</div>



<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'indicativeCeiling', 'error')} required">
        <label for="indicativeCeiling">
            <g:message code="schemeInfo.indicativeCeiling.label" default="Indicative Ceiling" />
            <span class="required-indicator">*</span>
        </label>
        <g:field class="form-control" type="number" name="indicativeCeiling" value="${schemeInfoInstance.indicativeCeiling}" required=""/>
    </div>
</div>
<div class="col-xs-4">
    <div class="fieldcontain ${hasErrors(bean: schemeInfoInstance, field: 'typeOfLandBasedScheme', 'error')} required">
        <label for="typeOfLandBasedScheme">
            <g:message code="schemeInfoInstance.typeOfLandBasedScheme.label" default="Type Of Land Based Scheme" />
            <span class="required-indicator">*</span>
        </label>
        <g:select required="" id="typeOfLandBasedScheme" name="typeOfLandBasedScheme.id"
                  from="${AllLookup.findAllByParentIdAllLookup(Lookup.findByType_name('typeOfLandBasedScheme'))}"
                  optionKey="id" value="${pmuProcPlanInstance?.typeOfLandBasedScheme?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group ${hasErrors(bean: schemeInfoInstance, field: 'comments', 'error')} ">
        <label for="comments">
            <g:message code="schemeInfo.comments.label" default="Comments" />

        </label>
        <g:textField class="form-control" name="comments" value="${schemeInfoInstance?.comments}"/>
    </div>
</div>