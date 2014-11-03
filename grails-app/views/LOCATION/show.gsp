
<%@ page import="fixedAsset.LOCATION" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LOCATION.label', default: 'Location')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-LOCATION" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-LOCATION" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
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
			%{--<ol class="property-list LOCATION">
			
				<g:if test="${LOCATIONInstance?.LOCATION_NAME}">
				<li class="fieldcontain">
					<span id="LOCATION_NAME-label" class="property-label"><g:message code="LOCATION.LOCATION_NAME.label" default="LOCATIONNAME" /></span>
					
						<span class="property-value" aria-labelledby="LOCATION_NAME-label"><g:fieldValue bean="${LOCATIONInstance}" field="LOCATION_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LOCATIONInstance?.LOCATION_ADDRESS}">
				<li class="fieldcontain">
					<span id="LOCATION_ADDRESS-label" class="property-label"><g:message code="LOCATION.LOCATION_ADDRESS.label" default="LOCATIONADDRESS" /></span>
					
						<span class="property-value" aria-labelledby="LOCATION_ADDRESS-label"><g:fieldValue bean="${LOCATIONInstance}" field="LOCATION_ADDRESS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LOCATIONInstance?.DIVISION_ID}">
				<li class="fieldcontain">
					<span id="DIVISION_ID-label" class="property-label"><g:message code="LOCATION.DIVISION_ID.label" default="DIVISIONID" /></span>
					
						<span class="property-value" aria-labelledby="DIVISION_ID-label"><g:link controller="division" action="show" id="${LOCATIONInstance?.DIVISION_ID?.id}">${LOCATIONInstance?.DIVISION_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LOCATIONInstance?.DISTRICT_ID}">
				<li class="fieldcontain">
					<span id="DISTRICT_ID-label" class="property-label"><g:message code="LOCATION.DISTRICT_ID.label" default="DISTRICTID" /></span>
					
						<span class="property-value" aria-labelledby="DISTRICT_ID-label"><g:link controller="district" action="show" id="${LOCATIONInstance?.DISTRICT_ID?.id}">${LOCATIONInstance?.DISTRICT_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LOCATIONInstance?.UPAZILLA_ID}">
				<li class="fieldcontain">
					<span id="UPAZILLA_ID-label" class="property-label"><g:message code="LOCATION.UPAZILLA_ID.label" default="UPAZILLAID" /></span>
					
						<span class="property-value" aria-labelledby="UPAZILLA_ID-label"><g:link controller="upazila" action="show" id="${LOCATIONInstance?.UPAZILLA_ID?.id}">${LOCATIONInstance?.UPAZILLA_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LOCATIONInstance?.REMARKS}">
				<li class="fieldcontain">
					<span id="REMARKS-label" class="property-label"><g:message code="LOCATION.REMARKS.label" default="REMARKS" /></span>
					
						<span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue bean="${LOCATIONInstance}" field="REMARKS"/></span>
					
				</li>
				</g:if>
			
				--}%%{--<g:if test="${LOCATIONInstance?.ID}">
				<li class="fieldcontain">
					<span id="ID-label" class="property-label"><g:message code="LOCATION.ID.label" default="ID" /></span>
					
						<span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${LOCATIONInstance}" field="ID"/></span>
					
				</li>
				</g:if>--}%%{--
			
			</ol>--}%
                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'LOCATION_NAME', 'error')} ">
                            <label for="LOCATION_NAME">
                                <g:message code="LOCATION.LOCATION_NAME.label" default="Location Name" />

                            </label>
                            ${LOCATIONInstance?.LOCATION_NAME}
                        </div>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'LOCATION_ADDRESS', 'error')} ">
                            <label for="LOCATION_ADDRESS">
                                <g:message code="LOCATION.LOCATION_ADDRESS.label" default="Location Address" />

                            </label>
                            ${LOCATIONInstance?.LOCATION_ADDRESS}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'DIVISION_ID', 'error')} ">
                            <label for="DIVISION_ID">
                                <g:message code="LOCATION.DIVISION_ID.label" default="Division" />

                            </label>
                            ${LOCATIONInstance?.DIVISION_ID?.DIV_NAME}
                        </div>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'DISTRICT_ID', 'error')} ">
                            <label for="DISTRICT_ID">
                                <g:message code="LOCATION.DISTRICT_ID.label" default="District" />

                            </label>
                            ${LOCATIONInstance?.DISTRICT_ID?.DIS_NAME}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'UPAZILLA_ID', 'error')} ">
                            <label for="UPAZILLA_ID">
                                <g:message code="LOCATION.UPAZILLA_ID.label" default="Upazilla" />

                            </label>
                            ${LOCATIONInstance?.UPAZILLA_ID?.UPZ_NAME}
                        </div>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: LOCATIONInstance, field: 'Remarks', 'error')} ">
                            <label for="REMARKS">
                                <g:message code="LOCATION.REMARKS.label" default="Remarks" />

                            </label>
                            ${LOCATIONInstance?.REMARKS}
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">

			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${LOCATIONInstance?.id}" />
					<g:link class="edit  btn btn-primary btn-sm" action="edit" id="${LOCATIONInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete  btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
		</div>
        </div>
	</body>
</html>
