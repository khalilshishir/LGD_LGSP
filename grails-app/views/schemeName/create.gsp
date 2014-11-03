<%@ page import="planningbudget.SchemeName" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schemeName.label', default: 'Scheme Name')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
        <style>
        table{
            border-color: #31b0d5;
        }
        th {
            border-color: #31b0d5;
            text-align: center;
            font-size: 15px
        }
        tr {
            border-color: #31b0d5
        }
        td {
            border-color: #31b0d5
        }
        </style>
	</head>
	<body>
		%{--<a href="#create-schemeName" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="create-schemeName" class="content scaffold-create" role="main">
			%{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">

                    <h3><g:message code="default.create.label" args="[entityName]" /></h3>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${schemeNameInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${schemeNameInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                </div>


            <div class="panel-body">

			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>


                %{--<fieldset>--}%
                    %{--<div class="row" style="padding-left: 15px; margin-top: 15px">--}%


                        %{--<div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'ward', 'error')} required">--}%
                            %{--<div class="form-group">--}%
                                %{--<label for="ward">--}%
                                    %{--<g:message code="schemeName.ward.label" default="ওয়ার্ড" />--}%
                                %{--</label>--}%
                                %{--<span class="required-indicator">*</span>--}%
                                %{--<g:select class="form-control" id="ward" name="ward.id" noSelection="[null:'নির্বাচন করুন']" from="${settings.Ward.list()}" optionKey="id" optionValue="WARD_NO" required="required" value="${schemeNameInstance?.ward?.id}"/>--}%
                            %{--</div>--}%
                        %{--</div>--}%

                        %{--<div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'schemeName', 'error')} required">--}%
                            %{--<div class="form-group">--}%
                                %{--<label for="schemeName">--}%
                                    %{--<g:message code="schemeName.schemeName.label" default="প্রকল্পের নাম" />--}%
                                %{--</label>--}%
                                %{--<span class="required-indicator">*</span>--}%
                                %{--<g:textField class="form-control" name="schemeName" required="" value="${schemeNameInstance?.schemeName}"/>--}%
                            %{--</div>--}%
                        %{--</div>--}%

                        %{--<div class="col-xs-6 ${hasErrors(bean: schemeNameInstance, field: 'isApproved', 'error')} ">--}%
                            %{--<label for="isApproved">--}%
                                %{--<g:message code="schemeNames.isApproved.label" default="অনুমোদিত" />--}%

                            %{--</label>--}%
                            %{--<g:checkBox class="form-control" name="isApproved" disabled="disabled" value="${schemeNameInstance?.isApproved}" />--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</fieldset>--}%


                <fieldset class="buttons" style="margin-top: 10px">
                    <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>

            </g:form>
            </div>
        </div>
        </div>
    </body>
</html>

