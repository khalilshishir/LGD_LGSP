
<%@ page import="fixedAsset.ASSET_MINOR_CATEGORY" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-ASSET_MINOR_CATEGORY" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="Minor Asset List" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Minor Asset Book" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-ASSET_MINOR_CATEGORY" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="Show Minor Asset" args="[entityName]" /></h3>
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
                    %{--<ol class="property-list ASSET_MINOR_CATEGORY">--}%

                    %{--<g:if test="${ASSET_MINOR_CATEGORYInstance?.ASSET_MAJOR_CATEGORY_ID}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="ASSET_MAJOR_CATEGORY_ID-label" class="property-label"><g:message code="ASSET_MINOR_CATEGORY.ASSET_MAJOR_CATEGORY_ID.label" default="Category Id :" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="ASSET_MAJOR_CATEGORY_ID-label"><g:link controller="ASSET_MAJOR_CATEGORY" action="show" id="${ASSET_MINOR_CATEGORYInstance?.ASSET_MAJOR_CATEGORY_ID?.id}">${ASSET_MINOR_CATEGORYInstance?.ASSET_MAJOR_CATEGORY_ID?.encodeAsHTML()}</g:link></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${ASSET_MINOR_CATEGORYInstance?.MINOR_CATEGORY_NAME}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="MINOR_CATEGORY_NAME-label" class="property-label"><g:message code="ASSET_MINOR_CATEGORY.MINOR_CATEGORY_NAME.label" default="Category Name :" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="MINOR_CATEGORY_NAME-label"><g:fieldValue bean="${ASSET_MINOR_CATEGORYInstance}" field="MINOR_CATEGORY_NAME"/></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${ASSET_MINOR_CATEGORYInstance?.DESCRIPTION}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="DESCRIPTION-label" class="property-label"><g:message code="ASSET_MINOR_CATEGORY.DESCRIPTION.label" default="Description :" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="DESCRIPTION-label"><g:fieldValue bean="${ASSET_MINOR_CATEGORYInstance}" field="DESCRIPTION"/></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${ASSET_MINOR_CATEGORYInstance?.REMARKS}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="REMARKS-label" class="property-label"><g:message code="ASSET_MINOR_CATEGORY.REMARKS.label" default="Remarks :" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue bean="${ASSET_MINOR_CATEGORYInstance}" field="REMARKS"/></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${ASSET_MINOR_CATEGORYInstance?.ID}">
                    <li class="fieldcontain">
                        <span id="ID-label" class="property-label"><g:message code="ASSET_MINOR_CATEGORY.ID.label" default="ID" /></span>

                            <span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${ASSET_MINOR_CATEGORYInstance}" field="ID"/></span>

                    </li>
                    </g:if>--}%

                    %{--</ol>--}%


                    <div class="row">
                        <div class="col-xs-6" style="padding-left: 10px">
                            <div class="form-group">
                                <label for="ASSET_MAJOR_CATEGORY_ID">
                                    <g:message code="ASSET_MINOR_CATEGORY.ASSET_MAJOR_CATEGORY_ID.label" default=" Major Category" />

                                </label>
                                %{--<g:select id="ASSET_MAJOR_CATEGORY_ID" name="ASSET_MAJOR_CATEGORY_ID.id" from="${fixedAsset.ASSET_MAJOR_CATEGORY.list()}" optionKey="id" value="${ASSET_MINOR_CATEGORYInstance?.ASSET_MAJOR_CATEGORY_ID?.id}" class="form-control" noSelection="['null': '']"/>--}%
                                ${ASSET_MINOR_CATEGORYInstance?.ASSET_MAJOR_CATEGORY_ID?.encodeAsHTML()}
                            </div>
                        </div>

                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="MINOR_CATEGORY_NAME">
                                    <g:message code="ASSET_MINOR_CATEGORY.MINOR_CATEGORY_NAME.label" default="Minor Category Name" />

                                </label>
                                %{--<g:textField class="form-control" name="MINOR_CATEGORY_NAME" value="${ASSET_MINOR_CATEGORYInstance?.MINOR_CATEGORY_NAME}"/>--}%
                                ${ASSET_MINOR_CATEGORYInstance?.MINOR_CATEGORY_NAME}
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-xs-6" style="padding-left: 10px">
                            <div class="form-group">
                                <label for="DESCRIPTION">
                                    <g:message code="ASSET_MINOR_CATEGORY.DESCRIPTION.label" default="Description" />

                                </label>
                                %{--<g:textField class="form-control" name="DESCRIPTION" value="${ASSET_MINOR_CATEGORYInstance?.DESCRIPTION}"/>--}%
                                ${ASSET_MINOR_CATEGORYInstance?.DESCRIPTION}
                            </div>
                        </div>

                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="REMARKS">
                                    <g:message code="ASSET_MINOR_CATEGORY.REMARKS.label" default="Remarks" />

                                </label>
                                %{--<g:textField class="form-control" name="REMARKS" value="${ASSET_MINOR_CATEGORYInstance?.REMARKS}"/>--}%
                                ${ASSET_MINOR_CATEGORYInstance?.REMARKS}
                            </div>
                        </div>
                    </div>

                </div>
                <div class="panel-body">
                    <g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${ASSET_MINOR_CATEGORYInstance?.id}" />
                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${ASSET_MINOR_CATEGORYInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
		</div>
	</body>
</html>
