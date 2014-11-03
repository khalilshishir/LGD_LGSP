
<%@ page import="grantmanagement.PerformanceHead" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'performanceHead.label', default: 'Performance Head')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>

<div id="list-performanceHead" class="content scaffold-list" role="main">
    %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
        </div>
    </div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
        <thead>
        <tr>

            <g:sortableColumn property="headName" title="${message(code: 'performanceHead.headName.label', default: 'Head Name')}" />

            <g:sortableColumn property="mark" title="${message(code: 'performanceHead.mark.label', default: 'Mark')}" />

            <g:sortableColumn property="organiztionType" title="${message(code: 'performanceHead.organiztionType.label', default: 'Organiztion Type')}" />

            <g:sortableColumn property="slNo" title="${message(code: 'performanceHead.slNo.label', default: 'Sl No')}" />

        </tr>
        </thead>
        <tbody>
        <g:each in="${performanceHeadInstanceList}" status="i" var="performanceHeadInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${performanceHeadInstance.id}">${fieldValue(bean: performanceHeadInstance, field: "headName")}</g:link></td>

                <td>${fieldValue(bean: performanceHeadInstance, field: "mark")}</td>

                <td>${fieldValue(bean: performanceHeadInstance, field: "organiztionType")}</td>

                <td>${fieldValue(bean: performanceHeadInstance, field: "slNo")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${performanceHeadInstanceTotal}" />
    </div>
</div>
</body>
</html>
