<%@ page import="fixedAsset.STAKEHOLDER" %>



%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'STAKEHOLDER_NAME', 'error')} ">--}%
	%{--<label for="STAKEHOLDER_NAME">--}%
		%{--<g:message code="STAKEHOLDER.STAKEHOLDER_NAME.label" default="STAKEHOLDERNAME" />--}%

	%{--</label>--}%
	%{--<g:textField name="STAKEHOLDER_NAME" value="${STAKEHOLDERInstance?.STAKEHOLDER_NAME}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'STAKEHOLDER_ADDRESS', 'error')} ">--}%
	%{--<label for="STAKEHOLDER_ADDRESS">--}%
		%{--<g:message code="STAKEHOLDER.STAKEHOLDER_ADDRESS.label" default="STAKEHOLDERADDRESS" />--}%

	%{--</label>--}%
	%{--<g:textField name="STAKEHOLDER_ADDRESS" value="${STAKEHOLDERInstance?.STAKEHOLDER_ADDRESS}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'EMAIL', 'error')} ">--}%
	%{--<label for="EMAIL">--}%
		%{--<g:message code="STAKEHOLDER.EMAIL.label" default="EMAIL" />--}%

	%{--</label>--}%
	%{--<g:field type="email" name="EMAIL" value="${STAKEHOLDERInstance?.EMAIL}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'DIVISION_ID', 'error')} ">--}%
	%{--<label for="DIVISION_ID">--}%
		%{--<g:message code="STAKEHOLDER.DIVISION_ID.label" default="DIVISIONID" />--}%

	%{--</label>--}%
	%{--<g:select id="DIVISION_ID" name="DIVISION_ID.id" from="${settings.Division.list()}" optionKey="id" value="${STAKEHOLDERInstance?.DIVISION_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'DISTRICT_ID', 'error')} ">--}%
	%{--<label for="DISTRICT_ID">--}%
		%{--<g:message code="STAKEHOLDER.DISTRICT_ID.label" default="DISTRICTID" />--}%

	%{--</label>--}%
	%{--<g:select id="DISTRICT_ID" name="DISTRICT_ID.id" from="${settings.District.list()}" optionKey="id" value="${STAKEHOLDERInstance?.DISTRICT_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'UPAZILLA_ID', 'error')} ">--}%
	%{--<label for="UPAZILLA_ID">--}%
		%{--<g:message code="STAKEHOLDER.UPAZILLA_ID.label" default="UPAZILLAID" />--}%

	%{--</label>--}%
	%{--<g:select id="UPAZILLA_ID" name="UPAZILLA_ID.id" from="${settings.Upazila.list()}" optionKey="id" value="${STAKEHOLDERInstance?.UPAZILLA_ID?.id}" class="many-to-one" noSelection="['null': '']"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'REMARKS', 'error')} ">--}%
	%{--<label for="REMARKS">--}%
		%{--<g:message code="STAKEHOLDER.REMARKS.label" default="REMARKS" />--}%

	%{--</label>--}%
	%{--<g:textField name="REMARKS" value="${STAKEHOLDERInstance?.REMARKS}"/>--}%
%{--</div>--}%



%{--<div class="fieldcontain ${hasErrors(bean: STAKEHOLDERInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="STAKEHOLDER.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${STAKEHOLDERInstance.ID}" required=""/>
</div>--}%



<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="STAKEHOLDER_NAME">
                <g:message code="STAKEHOLDER.STAKEHOLDER_NAME.label" default="Name" />

            </label>
            <g:textField required="" class="form-control" name="STAKEHOLDER_NAME" value="${STAKEHOLDERInstance?.STAKEHOLDER_NAME}"/>
        </div>
    </div>


    <div class="col-xs-6">
        <div class="form-group">
            <label for="STAKEHOLDER_ADDRESS">
                <g:message code="STAKEHOLDER.STAKEHOLDER_ADDRESS.label" default="Address" />

            </label>
            <g:textField required="" class="form-control" name="STAKEHOLDER_ADDRESS" value="${STAKEHOLDERInstance?.STAKEHOLDER_ADDRESS}"/>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="EMAIL">
                <g:message code="STAKEHOLDER.EMAIL.label" default="Email" />

            </label>
            <g:field required="" class="form-control" type="email" name="EMAIL" value="${STAKEHOLDERInstance?.EMAIL}"/>
        </div>
    </div>


    <div class="col-xs-6">
        <div class="form-group">
            <label for="DIVISION_ID">
            <g:message code="STAKEHOLDER.DIVISION_ID.label" default="Division Name" />

            </label>
            <g:select required="" id="DIVISION_ID" name="DIVISION_ID.id" from="${settings.Division.list()}" optionKey="id" value="${STAKEHOLDERInstance?.DIVISION_ID?.id}"  class="form-control" noSelection="['null': '']"/>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="DISTRICT_ID">
                <g:message code="STAKEHOLDER.DISTRICT_ID.label" default="District Name" />

            </label>
            <g:select required="" id="DISTRICT_ID" name="DISTRICT_ID.id" from="${settings.District.list()}" optionKey="id" value="${STAKEHOLDERInstance?.DISTRICT_ID?.id}"  class="form-control" noSelection="['null': '']"/>
        </div>
    </div>


    <div class="col-xs-6">
        <div class="form-group">
            <label for="UPAZILLA_ID">
                <g:message code="STAKEHOLDER.UPAZILLA_ID.label" default="Upzila Name" />

            </label>
            <g:select required="" id="UPAZILLA_ID" name="UPAZILLA_ID.id" from="${settings.Upazila.list()}" optionKey="id" value="${STAKEHOLDERInstance?.UPAZILLA_ID?.id}"  class="form-control" noSelection="['null': '']"/>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="REMARKS">
                <g:message code="STAKEHOLDER.REMARKS.label" default="Remarks" />

            </label>
            <g:textField required="" class="form-control" name="REMARKS" value="${STAKEHOLDERInstance?.REMARKS}"/>
        </div>
    </div>


    <div class="col-xs-6">
        <div class="form-group">

        </div>
    </div>
</div>