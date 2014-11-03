
<%@ page import="grantmanagement.PerformanceHead" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'performanceHead.label', default: 'Performance Head')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>
<div id="show-performanceHead" class="content scaffold-show" role="main">
    %{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div class="panel-body">

            <ol class="property-list performanceHead">

                <g:if test="${performanceHeadInstance?.headName}">
                    <li class="fieldcontain">
                        <span id="headName-label" class="property-label"><g:message code="performanceHead.headName.label" default="Head Name : " /></span>

                        <span class="property-value" aria-labelledby="headName-label"><g:fieldValue bean="${performanceHeadInstance}" field="headName"/></span>

                    </li>
                </g:if>

                <g:if test="${performanceHeadInstance?.mark}">
                    <li class="fieldcontain">
                        <span id="mark-label" class="property-label"><g:message code="performanceHead.mark.label" default="Mark : " /></span>

                        <span class="property-value" aria-labelledby="mark-label"><g:fieldValue bean="${performanceHeadInstance}" field="mark"/></span>

                    </li>
                </g:if>

                <g:if test="${performanceHeadInstance?.organiztionType}">
                    <li class="fieldcontain">
                        <span id="organiztionType-label" class="property-label"><g:message code="performanceHead.organiztionType.label" default="Organization Type : " /></span>

                        <span class="property-value" aria-labelledby="organiztionType-label"><g:fieldValue bean="${performanceHeadInstance}" field="organiztionType"/></span>

                    </li>
                </g:if>

                <g:if test="${performanceHeadInstance?.slNo}">
                    <li class="fieldcontain">
                        <span id="slNo-label" class="property-label"><g:message code="performanceHead.slNo.label" default="Sl No : " /></span>

                        <span class="property-value" aria-labelledby="slNo-label"><g:fieldValue bean="${performanceHeadInstance}" field="slNo"/></span>

                    </li>
                </g:if>

            </ol>
            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${performanceHeadInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${performanceHeadInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </div>
</body>
</html>
