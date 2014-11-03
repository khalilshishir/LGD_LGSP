
<%@ page import="up_asset.Up_Asset_Regi_Master" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upasset">
		<g:set var="entityName" value="${message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-up_Asset_Regi_Master" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code=" Asset Register List" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Asset" args="[entityName]" /></g:link></a>
        </p>
		<div id="show-up_Asset_Regi_Master" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="Show Asset Rgister" args="[entityName]" /></h3>
                </div>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <ol class="property-list up_Asset_Regi_Master">

                    <g:if test="${up_Asset_Regi_MasterInstance?.UP_ASSET_REGISTER}">
                    <li class="fieldcontain">
                        <span id="UP_ASSET_REGISTER-label" class="property-label"><g:message code="up_Asset_Regi_Master.UP_ASSET_REGISTER.label" default="UPASSETREGISTER" /></span>

                            <span class="property-value" aria-labelledby="UP_ASSET_REGISTER-label"><g:link controller="upAssetRegister" action="show" id="${up_Asset_Regi_MasterInstance?.UP_ASSET_REGISTER?.id}">${up_Asset_Regi_MasterInstance?.UP_ASSET_REGISTER?.encodeAsHTML()}</g:link></span>

                    </li>
                    </g:if>

                    %{--<g:if test="${up_Asset_Regi_MasterInstance?.CREATED_BY}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="CREATED_BY-label" class="property-label"><g:message code="up_Asset_Regi_Master.CREATED_BY.label" default="CREATEDBY" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${up_Asset_Regi_MasterInstance}" field="CREATED_BY"/></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${up_Asset_Regi_MasterInstance?.CREATED_DATE}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="CREATED_DATE-label" class="property-label"><g:message code="up_Asset_Regi_Master.CREATED_DATE.label" default="CREATEDDATE" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${up_Asset_Regi_MasterInstance?.CREATED_DATE}" /></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${up_Asset_Regi_MasterInstance?.UPDATED_BY}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="UPDATED_BY-label" class="property-label"><g:message code="up_Asset_Regi_Master.UPDATED_BY.label" default="UPDATEDBY" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue bean="${up_Asset_Regi_MasterInstance}" field="UPDATED_BY"/></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${up_Asset_Regi_MasterInstance?.UPDATED_DATE}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="UPDATED_DATE-label" class="property-label"><g:message code="up_Asset_Regi_Master.UPDATED_DATE.label" default="UPDATEDDATE" /></span>--}%

                            %{--<span class="property-value" aria-labelledby="UPDATED_DATE-label"><g:formatDate date="${up_Asset_Regi_MasterInstance?.UPDATED_DATE}" /></span>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                    %{--<g:if test="${up_Asset_Regi_MasterInstance?.upAssetRegiDetails}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<span id="upAssetRegiDetails-label" class="property-label"><g:message code="up_Asset_Regi_Master.upAssetRegiDetails.label" default="Up Asset Regi Details" /></span>--}%

                            %{--<g:each in="${up_Asset_Regi_MasterInstance.upAssetRegiDetails}" var="u">--}%
                            %{--<span class="property-value" aria-labelledby="upAssetRegiDetails-label"><g:link controller="up_Asset_Regi_Details" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>--}%
                            %{--</g:each>--}%

                    %{--</li>--}%
                    %{--</g:if>--}%

                </ol>
                <div class="panel-body">
                    <g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${up_Asset_Regi_MasterInstance?.id}" />
                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${up_Asset_Regi_MasterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
		</div>
	</body>
</html>
