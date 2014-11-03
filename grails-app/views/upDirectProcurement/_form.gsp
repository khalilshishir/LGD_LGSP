<%@ page import="settings.SchemeInfo; procurement.up.directprocurement.UpDirectProcurement" %>
<div class="col-xs-3"></div>
<div class="col-xs-6">
    <div class="form-group">
        <label for="schemeInfo"><g:message code="upDirectProcurement.schemeInfo.label" default="স্কীম সমূহ" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="schemeInfo" name="schemeInfo.id" from="${SchemeInfo.list()}" optionKey="id"  onchange="setValueOnSchemeChange(this.value)" noSelection="['': 'Select One']" optionValue="NAME" required="" value="${upDirectProcurementInstance?.schemeInfo?.id}" class="form-control"/>

    </div>
</div>
<div class="col-xs-3"></div>

<div id="schemeTypeGrantedAmounIsLabourAppointed" class="col-xs-12" style="background-color:#e7e7e7;padding: 5px;">
</div>

<div class="col-xs-12 detail-list ${hasErrors(bean: upDirectProcurementInstance, field: 'upDirectProcDetails', 'error')} ">
    %{--<div class="form-group">--}%
        %{--<ul class="one-to-many">--}%
            %{--<fieldset>--}%
               <g:render template="details"/>
            %{--</fieldset>--}%
        %{--</ul>--}%
    %{--</div>--}%
</div>
