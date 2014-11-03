<%@ page import="settings.Committee" %>

<div class="col-xs-6">
    <div class="form-group">
        <label for="COMMITTEE_ID"><g:message code="committee.COMMITTEE_ID.label" default="Committee ID" /></label>
        <g:textField name="COMMITTEE_ID" value="${committeeInstance?.COMMITTEE_ID}" class="form-control"/>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="COMMITTEE_NAME"><g:message code="committee.COMMITTEE_NAME.label" default="Committee Name" /></label>
        <g:textField name="COMMITTEE_NAME" value="${committeeInstance?.COMMITTEE_NAME}" class="form-control"/>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="DIVISION"><g:message code="committee.division.label" default="Division" /></label>
        <g:select id="DIVISION" name="DIVISION.id" from="${settings.Division.list()}" optionKey="id" required="" value="${committeeInstance?.DIVISION?.id}" class="form-control"/>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="DISTRICT"><g:message code="committee.district.label" default="District" /></label>
        <g:select id="DISTRICT" name="DISTRICT.id" from="${settings.District.list()}" optionKey="id" required="" value="${committeeInstance?.DISTRICT?.id}" class="form-control"/>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="UPAZILA"><g:message code="committee.upazila.label" default="Upazila" /></label>
        <g:select id="UPAZILA" name="UPAZILA.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${committeeInstance?.UPAZILA?.id}" class="form-control"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="UNION_PARISHAD"><g:message code="committee.unionParishad.label" default="Union Parishad" /></label>
        <g:select id="UNION_PARISHAD" name="UNION_PARISHAD.id" from="${settings.UnionParishad.list()}" optionKey="id" optionValue="UP_NAME" required="" value="${committeeInstance?.UNION_PARISHAD?.id}" class="form-control"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="WARD"><g:message code="committee.ward.label" default="Ward" /></label>
        <g:select id="WARD" name="WARD.id" from="${settings.Ward.list()}" optionKey="id" optionValue="WARD_NO" required="" value="${committeeInstance?.WARD?.id}" class="form-control"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="committeeLevel"><g:message code="committee.committeeLevel.label" default="Committee Level" /></label>
        <g:select id="COMMITTEE_LEVEL" name="COMMITTEE_LEVEL.id" from="${settings.CommitteeLevel.list()}" optionKey="id" optionValue="NAME" required="" value="${committeeInstance?.COMMITTEE_LEVEL?.id}" class="form-control"/>
    </div>
</div>


<div class="col-xs-12 detail-list">
    <div class="form-group">
        <ul class="one-to-many">
            <fieldset>
                <li><g:render template="details"/></li>
            </fieldset>
        </ul>
    </div>
</div>

