
<%@ page import="planningbudget.BudgetIncomeDetailHead" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'budgetIncomeDetailHead.label', default: 'UP Income Detail Head')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
%{--<a href="#show-budgetIncomeDetailHead" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--</ul>--}%
%{--</div>--}%

<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>

<div id="show-budgetIncomeDetailHead" class="content scaffold-show" role="main">
    %{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>

        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div class="panel-body">

            <ol class="property-list budgetIncomeDetailHead">

                <g:if test="${budgetIncomeDetailHeadInstance?.detailHeadName}">
                    <li class="fieldcontain">
                        <span id="detailHeadName-label" class="property-label"><g:message code="budgetIncomeDetailHead.detailHeadName.label" default="Detail Head Name : " /></span>

                        <span class="property-value" aria-labelledby="detailHeadName-label"><g:fieldValue bean="${budgetIncomeDetailHeadInstance}" field="detailHeadName"/></span>

                    </li>
                </g:if>

                <g:if test="${budgetIncomeDetailHeadInstance?.budgetIncomeMasterHead}">
                    <li class="fieldcontain">
                        <span id="budgetIncomeMasterHead-label" class="property-label"><g:message code="budgetIncomeDetailHead.budgetIncomeMasterHead.label" default="Budget Income Master Head : " /></span>

                        <span class="property-value" aria-labelledby="budgetIncomeMasterHead-label"><g:link controller="budgetIncomeMasterHead" action="show" id="${budgetIncomeDetailHeadInstance?.budgetIncomeMasterHead?.id}">${budgetIncomeDetailHeadInstance?.budgetIncomeMasterHead?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

                <g:if test="${budgetIncomeDetailHeadInstance?.detailHeadCode}">
                    <li class="fieldcontain">
                        <span id="detailHeadCode-label" class="property-label"><g:message code="budgetIncomeDetailHead.detailHeadCode.label" default="Detail Head Code : " /></span>

                        <span class="property-value" aria-labelledby="detailHeadCode-label"><g:fieldValue bean="${budgetIncomeDetailHeadInstance}" field="detailHeadCode"/></span>

                    </li>
                </g:if>

            </ol>
            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${budgetIncomeDetailHeadInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${budgetIncomeDetailHeadInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
                <fieldset class="buttons">
            </g:form>
        </div>
    </div>
</body>
</html>
