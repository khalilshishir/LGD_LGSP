<%@ page import="training.IECInformation" %>





<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="IECI_ID"><g:message code="IECInformation.IECI_ID.label" default="IEC Information ID" /></label>
            <g:textField class="form-control" name="IECI_ID" value="${IECInformationInstance?.IECI_ID}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_NATURE_OF_IEC_ACTIVI"><g:message code="IECInformation.IECI_NATURE_OF_IEC_ACTIVI.label" default="IECI Nature of IEC Activities" /></label>
            <g:textField class="form-control" name="IECI_NATURE_OF_IEC_ACTIVI" value="${IECInformationInstance.IECI_NATURE_OF_IEC_ACTIVI}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_NATURE_OF_IEC_ACTIVI_BN"><g:message code="IECInformation.IECI_NATURE_OF_IEC_ACTIVI_BN.label" default="আইইসি ক্রিয়াকলাপ IECI প্রকৃতি" /></label>
            <g:textField class="form-control" name="IECI_NATURE_OF_IEC_ACTIVI_BN" value="${IECInformationInstance.IECI_NATURE_OF_IEC_ACTIVI_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="IECI_PURPOSE"><g:message code="IECInformation.IECI_PURPOSE.label" default="IEC Information Purpose" /></label>
            <g:textField class="form-control" name="IECI_PURPOSE" value="${IECInformationInstance?.IECI_PURPOSE}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_PURPOSE_BN"><g:message code="IECInformation.IECI_PURPOSE_BN.label" default="আইইসি তথ্য উদ্দেশ্য" /></label>
            <g:textField class="form-control" name="IECI_PURPOSE_BN" value="${IECInformationInstance?.IECI_PURPOSE_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_EXP_AUD_BENE_FICIARIES"><g:message code="IECInformation.IECI_EXP_AUD_BENE_FICIARIES.label" default="IECI Expected Audience Bene Ficiaries" /></label>
            <g:textField class="form-control" name="IECI_EXP_AUD_BENE_FICIARIES" value="${IECInformationInstance.IECI_EXP_AUD_BENE_FICIARIES}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="IECI_EXP_AUD_BENE_FICIAR_BN"><g:message code="IECInformation.IECI_EXP_AUD_BENE_FICIAR_BN.label" default="IECI প্রত্যাশিত দর্শকের অপশন Ficiaries" /></label>
            <g:textField class="form-control" name="IECI_EXP_AUD_BENE_FICIAR_BN" value="${IECInformationInstance.IECI_EXP_AUD_BENE_FICIAR_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_SERVICE_PROVIDERS"><g:message code="IECInformation.IECI_SERVICE_PROVIDERS.label" default="IEC Information Service Providers" /></label>
            <g:textField class="form-control" name="IECI_SERVICE_PROVIDERS" value="${IECInformationInstance?.IECI_SERVICE_PROVIDERS}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_SERVICE_PROVIDERS_BN"><g:message code="IECInformation.IECI_SERVICE_PROVIDERS_BN.label" default="আইইসি তথ্য সার্ভিস প্রোভাইডার" /></label>
            <g:textField class="form-control" name="IECI_SERVICE_PROVIDERS_BN" value="${IECInformationInstance?.IECI_SERVICE_PROVIDERS_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="IECI_AUDIENCE_REACTION"><g:message code="IECInformation.IECI_AUDIENCE_REACTION.label" default="IEC Info Audience Reaction" /></label>
            <g:textField class="form-control" name="IECI_AUDIENCE_REACTION" value="${IECInformationInstance.IECI_AUDIENCE_REACTION}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_AUDIENCE_REACTION_BN"><g:message code="IECInformation.IECI_AUDIENCE_REACTION_BN.label" default="আইইসি তথ্য দর্শকের প্রতিক্রিয়া" /></label>
            <g:textField class="form-control" name="IECI_AUDIENCE_REACTION_BN" value="${IECInformationInstance.IECI_AUDIENCE_REACTION_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_RESULT"><g:message code="IECInformation.IECI_RESULT.label" default="IEC Information Result" /></label>
            <g:textField class="form-control" name="IECI_RESULT" value="${IECInformationInstance?.IECI_RESULT}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="IECI_RESULT_BN"><g:message code="IECInformation.IECI_RESULT_BN.label" default="আইইসি তথ্য ফলাফল" /></label>
            <g:textField class="form-control" name="IECI_RESULT_BN" value="${IECInformationInstance?.IECI_RESULT_BN}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_RELATED_COST"><g:message code="IECInformation.IECI_RELATED_COST.label" default="IEC Info Related Cost" /></label>
            <g:textField class="form-control" name="IECI_RELATED_COST" value="${IECInformationInstance.IECI_RELATED_COST}"/>
        </div>
    </div>

    <div class="col-xs-4">
        <div class="form-group">
            <label for="IECI_RELATED_COST_BN"><g:message code="IECInformation.IECI_RELATED_COST_BN.label" default="আইইসি তথ্য সম্পর্কিত খরচ" /></label>
            <g:textField class="form-control" name="IECI_RELATED_COST_BN" value="${IECInformationInstance.IECI_RELATED_COST_BN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4" style="padding-left: 10px">
        <div class="form-group">
            <label for="UNION_PARISHAD"><g:message code="IECInformation.UNION_PARISHAD.label" default="Union Parishad Name" /></label>
            <g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" value="${IECInformationInstance?.UNION_PARISHAD?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>