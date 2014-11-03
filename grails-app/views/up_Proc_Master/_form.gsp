<%@ page import="comonclass.UpProcType; procurement.up.Up_Proc_Master" %>

<div class="col-xs-6">
    <div class="form-group">
        <label for="SCHEME_INFO"><g:message code="up_Proc_Master.SCHEME_INFO.label" default="স্কীম সমূহ" /></label>
        %{--<g:select id="SCHEME_INFO" name="SCHEME_INFO.id" from="${settings.SchemeInfo.list()}" optionKey="id" optionValue="NAME" required="" value="${up_Proc_MasterInstance?.SCHEME_INFO?.id}" class="form-control" onchange="loadProcurementTypeBySchemeInfo(this.value)" noSelection="['': 'Select One']"/>--}%
        <g:select id="SCHEME_INFO" name="SCHEME_INFO.id" from="${settings.SchemeInfo.list()}" optionKey="id" optionValue="NAME" required="" value="${up_Proc_MasterInstance?.SCHEME_INFO?.id}" class="form-control" onchange="setValueOnSchemeChange(this.value)" noSelection="['': 'Select One']"/>
    </div>
</div>

<div id="schemeTypeGrantedAmounIsLabourAppointed">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="স্কীমের ধরণ" /></label>
            <g:textField id="schemeType" name="schemeType"  class="form-control" readonly="" />
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="location"><g:message code="up_Proc_Master.Committee.label" default="অবস্থান" /></label>
            <g:textField id="location" name="location"  class="form-control" readonly="" />
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="grantedAmount"><g:message code="up_Proc_Master.Committee.label" default="Estimated Price" /></label>
            <g:textField id="grantedAmount" name="grantedAmount"  class="form-control" readonly="" />
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="isLabourAppointed"><g:message code="up_Proc_Master.Committee.label" default="শ্রমিক নিয়োজিত কিনা ?"/></label>
            <g:textField id="isLabourAppointed" name="isLabourAppointed" class="form-control" readonly=""/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="COMMITTEE"><g:message code="up_Proc_Master.Committee.label" default="ওয়ার্ড কমিটি" /></label>
        <g:select id="COMMITTEE" name="COMMITTEE.id" from="${wardCommitteeList}" optionKey="id" optionValue="COMMITTEE_NAME" required="" value="${up_Proc_MasterInstance?.COMMITTEE?.id}" class="form-control" noSelection="['': 'Select One']"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="procurementType"><g:message code="up_Proc_Master.Procurement_Type.label" default="ক্রয়ের ধরণ" /></label>
        <g:select id="procurementType" name="procurementType" from="${procurementTypeList}"  required="" value="${procurementTypeList}" class="form-control" noSelection="['': 'Select One']" />
    </div>
</div>
<div class="col-xs-12">
    <div class="form-group">
        <label for="DETAILS"><g:message code="up_Proc_Master.DETAILS.label" default="বর্ণনা" /></label>
        %{--<g:textField class="form-control" name="DETAILS" value="${up_Proc_MasterInstance?.DETAILS}"/>--}%
        <g:textArea class="form-control" name="DETAILS" value="${up_Proc_MasterInstance?.DETAILS}" rows="2" cols="1" placeholder="ক্রয়ের বর্ণনা লিখুন"></g:textArea>
    </div>
</div>
<div class="col-xs-12 detail-list ${hasErrors(bean: up_Proc_MasterInstance, field: 'upDirectProcurementDetails', 'error')} ">
    <div class="form-group">
        <ul class="one-to-many">
            <fieldset>
                <li><g:render template="details"/></li>
            </fieldset>
        </ul>
    </div>
</div>
%{--<div class="detail-list ${hasErrors(bean: up_Proc_MasterInstance, field: 'upDirectProcurementDetails', 'error')} ">--}%
%{--<ul class="one-to-many">--}%
%{--<fieldset>--}%
%{--<li><g:render template="details"/></li>--}%
%{--</fieldset>--}%
%{--</ul>--}%
%{--</div>--}%
