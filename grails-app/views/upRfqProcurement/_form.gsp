<%@ page import="settings.SchemeInfo; procurement.up.rfqprocurement.UpRfqProcurement" %>


<div class="col-xs-3"></div>
<div class="col-xs-6">
    <div class="form-group">
        <label for="schemeInfo"><g:message code="UpRfqProcurement.schemeInfo.label" default="স্কীম সমূহ" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="schemeInfo" name="schemeInfo.id" from="${SchemeInfo.list()}" optionKey="id"  onchange="setValueOnSchemeChange(this.value)" noSelection="['': 'Select One']" optionValue="NAME" required="" value="${upRfqProcurementInstance?.schemeInfo?.id}" class="form-control"/>

    </div>
</div>
<div class="col-xs-3"></div>

<div id="schemeTypeGrantedAmounIsLabourAppointed" class="col-xs-12" style="background-color:#e7e7e7;padding: 5px;">
</div>

<div class="col-xs-12 detail-list ${hasErrors(bean: upRfqProcurementInstance, field: 'upRfqProcurementDetails', 'error')} ">
    <div class="form-group">
        <ul class="one-to-many">
            <fieldset>
                <li><g:render template="details"/></li>
            </fieldset>
        </ul>
    </div>
</div>