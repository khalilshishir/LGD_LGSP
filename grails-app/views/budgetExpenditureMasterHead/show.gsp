
<%@ page import="planningbudget.BudgetExpenditureMasterHead" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'budgetExpenditureMasterHead.label', default: 'UP Expenditure Master Head')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
%{--<a href="#show-budgetExpenditureMasterHead" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

<div id="show-budgetExpenditureMasterHead" class="content scaffold-show" role="main">

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


                <ol class="property-list budgetExpenditureMasterHead">

                    <g:if test="${budgetExpenditureMasterHeadInstance?.masterHeadName}">
                        <li class="fieldcontain">
                            <span id="masterHeadName-label" class="property-label"><g:message code="budgetExpenditureMasterHead.masterHeadName.label" default="Master Head Name : " /></span>

                            <span class="property-value" aria-labelledby="masterHeadName-label"><g:fieldValue bean="${budgetExpenditureMasterHeadInstance}" field="masterHeadName"/></span>

                        </li>
                    </g:if>

                    <g:if test="${budgetExpenditureMasterHeadInstance?.masterHeadCode}">
                        <li class="fieldcontain">
                            <span id="masterHeadCode-label" class="property-label"><g:message code="budgetExpenditureMasterHead.masterHeadCode.label" default="Master Head Code : " /></span>

                            <span class="property-value" aria-labelledby="masterHeadCode-label"><g:fieldValue bean="${budgetExpenditureMasterHeadInstance}" field="masterHeadCode"/></span>

                        </li>
                    </g:if>

                </ol>
                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${budgetExpenditureMasterHeadInstance?.id}" />
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${budgetExpenditureMasterHeadInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
        </div>
    </div>
</body>
</html>
