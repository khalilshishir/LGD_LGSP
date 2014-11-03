<%@ page import="audit.AuditFirm" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'auditFirm.label', default: 'AuditFirm')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
%{--<a href="#list-auditFirm" class="skip" tabindex="-1"><g:message code="default.link.skip.label"--}%
                                                                %{--default="Skip to content&hellip;"/></a>--}%

%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label"--}%
                                                              %{--args="[entityName]"/></g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>
<div id="list-auditFirm" class="content scaffold-list" role="main">
    %{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
        </div>
</div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed" >
        <thead>
        <tr>

            <g:sortableColumn property="AUDIT_FIRM_ID"
                              title="${message(code: 'auditFirm.AUDIT_FIRM_ID.label', default: 'Audit Firm ID')}"/>

            <g:sortableColumn property="AUDIT_FIRM_NAME"
                              title="${message(code: 'auditFirm.AUDIT_FIRM_NAME.label', default: 'Audit Firm Name')}"/>

            <g:sortableColumn property="AUDIT_FIRM_ADDRESS"
                              title="${message(code: 'auditFirm.AUDIT_FIRM_ADDRESS.label', default: 'Audit Firm Address')}"/>

            <g:sortableColumn property="AUDIT_FIRM_PHONE"
                              title="${message(code: 'auditFirm.AUDIT_FIRM_PHONE.label', default: 'Audit Firm Phone')}"/>

            <g:sortableColumn property="AUDIT_FIRM_EMAIL"
                              title="${message(code: 'auditFirm.AUDIT_FIRM_EMAIL.label', default: 'Audit Firm E-Mail')}"/>




        </tr>
        </thead>
        <tbody>
        <g:each in="${auditFirmInstanceList}" status="i" var="auditFirmInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${auditFirmInstance.id}">${fieldValue(bean: auditFirmInstance, field: "AUDIT_FIRM_ID")}</g:link></td>

                <td>${fieldValue(bean: auditFirmInstance, field: "AUDIT_FIRM_NAME")}</td>

                <td>${fieldValue(bean: auditFirmInstance, field: "AUDIT_FIRM_ADDRESS")}</td>

                <td>${fieldValue(bean: auditFirmInstance, field: "AUDIT_FIRM_PHONE")}</td>

                <td>${fieldValue(bean: auditFirmInstance, field: "AUDIT_FIRM_EMAIL")}</td>



            </tr>
        </g:each>
        </tbody>
    </table>



</div>
</body>
</html>
