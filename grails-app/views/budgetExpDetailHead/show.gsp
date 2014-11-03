
<%@ page import="planningbudget.BudgetExpDetailHead" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'budgetExpDetailHead.label', default: 'UP Expenditure Detail Head')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
%{--<a href="#show-budgetExpDetailHead" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
<div id="show-budgetExpDetailHead" class="content scaffold-show" role="main">
    %{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>


        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div class="panel-body">
            <ol class="property-list upazila">


                <ol class="property-list budgetExpDetailHead">

                    <g:if test="${budgetExpDetailHeadInstance?.detailHeadName}">
                        <li class="fieldcontain">
                            <span id="detailHeadName-label" class="property-label"><g:message code="budgetExpDetailHead.detailHeadName.label" default="Detail Head Name : " /></span>

                            <span class="property-value" aria-labelledby="detailHeadName-label"><g:fieldValue bean="${budgetExpDetailHeadInstance}" field="detailHeadName"/></span>

                        </li>
                    </g:if>

                    <g:if test="${budgetExpDetailHeadInstance?.budgetExpenditureMasterHead}">
                        <li class="fieldcontain">
                            <span id="budgetExpenditureMasterHead-label" class="property-label"><g:message code="budgetExpDetailHead.budgetExpenditureMasterHead.label" default="Budget Expenditure Master Head : " /></span>

                            <span class="property-value" aria-labelledby="budgetExpenditureMasterHead-label"><g:link controller="budgetExpenditureMasterHead" action="show" id="${budgetExpDetailHeadInstance?.budgetExpenditureMasterHead?.id}">${budgetExpDetailHeadInstance?.budgetExpenditureMasterHead?.encodeAsHTML()}</g:link></span>

                        </li>
                    </g:if>

                    <g:if test="${budgetExpDetailHeadInstance?.detailHeadCode}">
                        <li class="fieldcontain">
                            <span id="detailHeadCode-label" class="property-label"><g:message code="budgetExpDetailHead.detailHeadCode.label" default="Detail Head Code : " /></span>

                            <span class="property-value" aria-labelledby="detailHeadCode-label"><g:fieldValue bean="${budgetExpDetailHeadInstance}" field="detailHeadCode"/></span>

                        </li>
                    </g:if>

                </ol>
                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${budgetExpDetailHeadInstance?.id}" />
                        <g:link class="save btn btn-primary btn-sm" action="edit" id="${budgetExpDetailHeadInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
        </div>
    </div>
</body>
</html>

