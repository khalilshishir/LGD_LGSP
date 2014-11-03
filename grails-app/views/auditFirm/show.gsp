<%@ page import="audit.AuditFirm" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'auditFirm.label', default: 'AuditFirm')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
%{--<a href="#show-auditFirm" class="skip" tabindex="-1"><g:message code="default.link.skip.label"--}%
                                                                %{--default="Skip to content&hellip;"/></a>--}%

%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        %{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>--}%
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label"--}%
                                                              %{--args="[entityName]"/></g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>
<div id="show-auditFirm" class="content scaffold-show" role="main">
    %{--<h1><g:message code="default.show.label" args="[entityName]"/></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="panel-body">
    <ol class="property-list auditFirm">

        <g:if test="${auditFirmInstance?.AUDIT_FIRM_ID}">
            <li class="fieldcontain">
                <span id="AUDIT_FIRM_ID-label" class="property-label"><g:message code="auditFirm.AUDIT_FIRM_ID.label"
                                                                                 default="Audit Firm ID : "/></span>

                <span class="property-value" aria-labelledby="AUDIT_FIRM_ID-label"><g:fieldValue
                        bean="${auditFirmInstance}" field="AUDIT_FIRM_ID"/></span>

            </li>
        </g:if>

        <g:if test="${auditFirmInstance?.AUDIT_FIRM_NAME}">
            <li class="fieldcontain">
                <span id="AUDIT_FIRM_NAME-label" class="property-label"><g:message
                        code="auditFirm.AUDIT_FIRM_NAME.label" default="Audit Firm Name : "/></span>

                <span class="property-value" aria-labelledby="AUDIT_FIRM_NAME-label"><g:fieldValue
                        bean="${auditFirmInstance}" field="AUDIT_FIRM_NAME"/></span>

            </li>
        </g:if>

        <g:if test="${auditFirmInstance?.AUDIT_FIRM_ADDRESS}">
            <li class="fieldcontain">
                <span id="AUDIT_FIRM_ADDRESS-label" class="property-label"><g:message
                        code="auditFirm.AUDIT_FIRM_ADDRESS.label" default="Audit Firm Address : "/></span>

                <span class="property-value" aria-labelledby="AUDIT_FIRM_ADDRESS-label"><g:fieldValue
                        bean="${auditFirmInstance}" field="AUDIT_FIRM_ADDRESS"/></span>

            </li>
        </g:if>

        <g:if test="${auditFirmInstance?.AUDIT_FIRM_PHONE}">
            <li class="fieldcontain">
                <span id="AUDIT_FIRM_PHONE-label" class="property-label"><g:message
                        code="auditFirm.AUDIT_FIRM_PHONE.label" default="Audit Firm Phone : "/></span>

                <span class="property-value" aria-labelledby="AUDIT_FIRM_PHONE-label"><g:fieldValue
                        bean="${auditFirmInstance}" field="AUDIT_FIRM_PHONE"/></span>

            </li>
        </g:if>

        <g:if test="${auditFirmInstance?.AUDIT_FIRM_EMAIL}">
            <li class="fieldcontain">
                <span id="AUDIT_FIRM_EMAIL-label" class="property-label"><g:message
                        code="auditFirm.AUDIT_FIRM_EMAIL.label" default="Audit Firm E-Mail : "/></span>

                <span class="property-value" aria-labelledby="AUDIT_FIRM_EMAIL-label"><g:fieldValue
                        bean="${auditFirmInstance}" field="AUDIT_FIRM_EMAIL"/></span>

            </li>
        </g:if>









    </ol>

    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${auditFirmInstance?.id}"/>
            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${auditFirmInstance?.id}"><g:message code="default.button.edit.label"
                                                                                        default="Edit"/></g:link>
            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
    </div>
</div>
</body>
</html>
