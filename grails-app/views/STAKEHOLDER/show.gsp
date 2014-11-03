
<%@ page import="fixedAsset.STAKEHOLDER" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-STAKEHOLDER" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="Home"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="Stake holder List" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Stake holder" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-STAKEHOLDER" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="Show Stake holder" args="[entityName]" /></h3>
                </div>
                %{--<g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>--}%
        <script>
            $(document).ready(function(){
                $("#a").fadeOut(8000);
            });
        </script>
        <g:if test="${flash.message}">
            <div class="panel-body">
                <div id="a" class="alert alert-success" role="alert">
                    <div class="message" role="status">
                        <h3 class="panel-title">${flash.message}</h3>
                    </div>
                </div>
            </div>
        </g:if>
                <div class="panel-body">
                    %{--<ol class="property-list STAKEHOLDER">--}%
                    %{----}%
                        %{--<g:if test="${STAKEHOLDERInstance?.STAKEHOLDER_NAME}">--}%
                        %{--<li class="fieldcontain">--}%
                            %{--<span id="STAKEHOLDER_NAME-label" class="property-label"><g:message code="STAKEHOLDER.STAKEHOLDER_NAME.label" default="STAKEHOLDERNAME" /></span>--}%
                            %{----}%
                                %{--<span class="property-value" aria-labelledby="STAKEHOLDER_NAME-label"><g:fieldValue bean="${STAKEHOLDERInstance}" field="STAKEHOLDER_NAME"/></span>--}%
                            %{----}%
                        %{--</li>--}%
                        %{--</g:if>--}%
                    %{----}%
                        %{--<g:if test="${STAKEHOLDERInstance?.STAKEHOLDER_ADDRESS}">--}%
                        %{--<li class="fieldcontain">--}%
                            %{--<span id="STAKEHOLDER_ADDRESS-label" class="property-label"><g:message code="STAKEHOLDER.STAKEHOLDER_ADDRESS.label" default="STAKEHOLDERADDRESS" /></span>--}%
                            %{----}%
                                %{--<span class="property-value" aria-labelledby="STAKEHOLDER_ADDRESS-label"><g:fieldValue bean="${STAKEHOLDERInstance}" field="STAKEHOLDER_ADDRESS"/></span>--}%
                            %{----}%
                        %{--</li>--}%
                        %{--</g:if>--}%
                    %{----}%
                        %{--<g:if test="${STAKEHOLDERInstance?.EMAIL}">--}%
                        %{--<li class="fieldcontain">--}%
                            %{--<span id="EMAIL-label" class="property-label"><g:message code="STAKEHOLDER.EMAIL.label" default="EMAIL" /></span>--}%
                            %{----}%
                                %{--<span class="property-value" aria-labelledby="EMAIL-label"><g:fieldValue bean="${STAKEHOLDERInstance}" field="EMAIL"/></span>--}%
                            %{----}%
                        %{--</li>--}%
                        %{--</g:if>--}%
                    %{----}%
                        %{--<g:if test="${STAKEHOLDERInstance?.DIVISION_ID}">--}%
                        %{--<li class="fieldcontain">--}%
                            %{--<span id="DIVISION_ID-label" class="property-label"><g:message code="STAKEHOLDER.DIVISION_ID.label" default="DIVISIONID" /></span>--}%
                            %{----}%
                                %{--<span class="property-value" aria-labelledby="DIVISION_ID-label"><g:link controller="division" action="show" id="${STAKEHOLDERInstance?.DIVISION_ID?.id}">${STAKEHOLDERInstance?.DIVISION_ID?.encodeAsHTML()}</g:link></span>--}%
                            %{----}%
                        %{--</li>--}%
                        %{--</g:if>--}%
                    %{----}%
                        %{--<g:if test="${STAKEHOLDERInstance?.DISTRICT_ID}">--}%
                        %{--<li class="fieldcontain">--}%
                            %{--<span id="DISTRICT_ID-label" class="property-label"><g:message code="STAKEHOLDER.DISTRICT_ID.label" default="DISTRICTID" /></span>--}%
                            %{----}%
                                %{--<span class="property-value" aria-labelledby="DISTRICT_ID-label"><g:link controller="district" action="show" id="${STAKEHOLDERInstance?.DISTRICT_ID?.id}">${STAKEHOLDERInstance?.DISTRICT_ID?.encodeAsHTML()}</g:link></span>--}%
                            %{----}%
                        %{--</li>--}%
                        %{--</g:if>--}%
                    %{----}%
                        %{--<g:if test="${STAKEHOLDERInstance?.UPAZILLA_ID}">--}%
                        %{--<li class="fieldcontain">--}%
                            %{--<span id="UPAZILLA_ID-label" class="property-label"><g:message code="STAKEHOLDER.UPAZILLA_ID.label" default="UPAZILLAID" /></span>--}%
                            %{----}%
                                %{--<span class="property-value" aria-labelledby="UPAZILLA_ID-label"><g:link controller="upazila" action="show" id="${STAKEHOLDERInstance?.UPAZILLA_ID?.id}">${STAKEHOLDERInstance?.UPAZILLA_ID?.encodeAsHTML()}</g:link></span>--}%
                            %{----}%
                        %{--</li>--}%
                        %{--</g:if>--}%
                    %{----}%
                        %{--<g:if test="${STAKEHOLDERInstance?.REMARKS}">--}%
                        %{--<li class="fieldcontain">--}%
                            %{--<span id="REMARKS-label" class="property-label"><g:message code="STAKEHOLDER.REMARKS.label" default="REMARKS" /></span>--}%
                            %{----}%
                                %{--<span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue bean="${STAKEHOLDERInstance}" field="REMARKS"/></span>--}%
                            %{----}%
                        %{--</li>--}%
                        %{--</g:if>--}%

                        %{--<g:if test="${STAKEHOLDERInstance?.ID}">
                        <li class="fieldcontain">
                            <span id="ID-label" class="property-label"><g:message code="STAKEHOLDER.ID.label" default="ID" /></span>

                                <span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${STAKEHOLDERInstance}" field="ID"/></span>

                        </li>
                        </g:if>--}%

                    %{--</ol>--}%

                    <div class="row">
                        <div class="col-xs-6" style="padding-left: 10px">
                            <div class="form-group">
                                <label for="STAKEHOLDER_NAME">
                                    <g:message code="STAKEHOLDER.STAKEHOLDER_NAME.label" default="Name" />

                                </label>
                                %{--<g:textField  class="form-control" name="STAKEHOLDER_NAME" value="${STAKEHOLDERInstance?.STAKEHOLDER_NAME}"/>--}%
                                ${STAKEHOLDERInstance?.STAKEHOLDER_NAME}
                            </div>
                        </div>


                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="STAKEHOLDER_ADDRESS">
                                    <g:message code="STAKEHOLDER.STAKEHOLDER_ADDRESS.label" default="Address" />

                                </label>
                                %{--<g:textField  class="form-control" name="STAKEHOLDER_ADDRESS" value="${STAKEHOLDERInstance?.STAKEHOLDER_ADDRESS}"/>--}%
                                ${STAKEHOLDERInstance?.STAKEHOLDER_ADDRESS}
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-xs-6" style="padding-left: 10px">
                            <div class="form-group">
                                <label for="EMAIL">
                                    <g:message code="STAKEHOLDER.EMAIL.label" default="Email" />

                                </label>
                                %{--<g:field  class="form-control" type="email" name="EMAIL" value="${STAKEHOLDERInstance?.EMAIL}"/>--}%
                                ${STAKEHOLDERInstance?.EMAIL}
                            </div>
                        </div>


                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="DIVISION_ID">
                                    <g:message code="STAKEHOLDER.DIVISION_ID.label" default="Division Name" />

                                </label>
                                %{--<g:select id="DIVISION_ID" name="DIVISION_ID.id" from="${settings.Division.list()}" optionKey="id" value="${STAKEHOLDERInstance?.DIVISION_ID?.id}"  class="form-control" noSelection="['null': '']"/>--}%
                                ${STAKEHOLDERInstance?.DIVISION_ID?.encodeAsHTML()}
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-xs-6" style="padding-left: 10px">
                            <div class="form-group">
                                <label for="DISTRICT_ID">
                                    <g:message code="STAKEHOLDER.DISTRICT_ID.label" default="District Name" />

                                </label>
                                %{--<g:select id="DISTRICT_ID" name="DISTRICT_ID.id" from="${settings.District.list()}" optionKey="id" value="${STAKEHOLDERInstance?.DISTRICT_ID?.id}"  class="form-control" noSelection="['null': '']"/>--}%
                                ${STAKEHOLDERInstance?.DISTRICT_ID?.encodeAsHTML()}
                            </div>
                        </div>


                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="UPAZILLA_ID">
                                    <g:message code="STAKEHOLDER.UPAZILLA_ID.label" default="Upzila Name" />

                                </label>
                                %{--<g:select id="UPAZILLA_ID" name="UPAZILLA_ID.id" from="${settings.Upazila.list()}" optionKey="id" value="${STAKEHOLDERInstance?.UPAZILLA_ID?.id}"  class="form-control" noSelection="['null': '']"/>--}%
                                ${STAKEHOLDERInstance?.UPAZILLA_ID?.encodeAsHTML()}
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-xs-6" style="padding-left: 10px">
                            <div class="form-group">
                                <label for="REMARKS">
                                    <g:message code="STAKEHOLDER.REMARKS.label" default="Remarks" />

                                </label>
                                %{--<g:textField class="form-control" name="REMARKS" value="${STAKEHOLDERInstance?.REMARKS}"/>--}%
                                ${STAKEHOLDERInstance?.REMARKS}
                            </div>
                        </div>


                        <div class="col-xs-6">
                            <div class="form-group">

                            </div>
                        </div>
                    </div>

                </div>
                <div class="panel-body">
                    <g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${STAKEHOLDERInstance?.id}" />
                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${STAKEHOLDERInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
		</div>
	</body>
</html>
