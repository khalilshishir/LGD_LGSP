<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 18/9/2014
  Time: 4:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>
        Zilla Parishod Performance List
    </title>
</head>

<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    %{--|--}%
    %{--<a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="ZillaParishodPerformanceList">Zilla Parishod Performance List</g:link></a>--}%
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="ZillaPorisodPerformanceEntry">Zilla Parishod Performance New</g:link></a>
</p>

<div id="list-district" class="content scaffold-list" role="main">
    %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="Zilla Parishod Performance List" args="[entityName]" /></h3>
            %{--<h3 class="panel-title"><g:message code="default.list.label"  List" args="[entityName]" /></h3>--}%
        </div>
    </div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
        <thead>
        <tr>
            <th>&nbsp;</th>
            <g:sortableColumn property="organiztionType" title="${message(code: 'zillaPorishodPerformanceEntry.organiztionType.label', default: 'Organiztion Type')}" />

            <th><g:message code="zillaPorishodPerformanceEntry.performanceHead.label" default="Performance Head" /></th>

            <th><g:message code="zillaPorishodPerformanceEntry.performanceIndicator.label" default="Performance Indicator" /></th>

            <th><g:message code="zillaPorishodPerformanceEntry.markDstribution.label" default="Mark Dstribution" /></th>

            <th><g:message code="zillaPorishodPerformanceEntry.division.label" default="Division" /></th>

            <th><g:message code="zillaPorishodPerformanceEntry.district.label" default="District" /></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${zillaPorishodPerformanceEntryInstanceList}" status="i" var="zillaPorishodPerformanceEntryInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td><g:link action="ZillaPorishodPerformanceShow" params="[zila:zillaPorishodPerformanceEntryInstance?.district.id,fiscalYr:zillaPorishodPerformanceEntryInstance?.fiscalYear?.id]">Select</g:link></td>

                <td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "organiztionType")}</td>

                <td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "performanceHead")}</td>

                <td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "performanceIndicator")}</td>

                <td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "markDstribution")}</td>

                <td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "division")}</td>

                <td>${fieldValue(bean: zillaPorishodPerformanceEntryInstance, field: "district")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${zillaPorishodPerformanceEntryInstanceTotal}" />
    </div>
</div>
</body>
</html>