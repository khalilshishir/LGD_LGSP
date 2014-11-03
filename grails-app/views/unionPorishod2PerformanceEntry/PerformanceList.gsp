<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 24/9/2014
  Time: 2:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'unionPorishod2PerformanceEntry.label', default: 'Union Porishod2 Performance Entry')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    %{--|--}%
    %{--<a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="ZillaParishodPerformanceList">Zilla Parishod Performance List</g:link></a>--}%
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="UnionPorishod2PerformanceEntry">Union Parishod2 Performance Entry New </g:link></a>
</p>

<div id="list-district" class="content scaffold-list" role="main">
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

            <g:sortableColumn property="organiztionType" title="${message(code: 'unionPorishod2PerformanceEntry.organiztionType.label', default: '&nbsp')}" />

            <th><g:message code="unionPorishod2PerformanceEntry.performanceHead.label" default="Performance Head" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.performanceMeasure.label" default="Performance Measure" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.performancePointsToEarn.label" default="Points to earn" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.performanceMeansOfVerification.label" default="Means Of Verification" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.Score.label" default="Score" /></th>

            %{--<th><g:message code="unionPorishod2PerformanceEntry.performanceIndicator.label" default="Performance Indicator" /></th>--}%

            %{--<th><g:message code="unionPorishod2PerformanceEntry.markDstribution.label" default="Mark Dstribution" /></th>--}%

            <th><g:message code="unionPorishod2PerformanceEntry.division.label" default="Division" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.district.label" default="District" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.upozila.label" default="Upazila" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.unionPorishod.label" default="Union Porishod" /></th>

            <th><g:message code="unionPorishod2PerformanceEntry.fiscalYear.label" default="Fiscal Year" /></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${unionPorishod2PerformanceEntryInstanceList}" status="i" var="unionPorishod2PerformanceEntryInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="PerformanceShow" params="[union:unionPorishod2PerformanceEntryInstance?.unionParishad?.id, fiscalYr:unionPorishod2PerformanceEntryInstance?.fiscalYear?.id]" id="${unionPorishod2PerformanceEntryInstance.id}">Select</g:link></td>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "performanceHead")}</td>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "performanceIndicator.performanceMeasure")}</td>
                %{--<td>${unionPorishod2PerformanceEntryInstance?.performanceIndicator?.performanceMeasure}</td>--}%


                %{--<td>${unionPorishod2PerformanceEntryInstance?.performanceIndicator?.performanceMeasure}</td>--}%
                <g:if test="${unionPorishod2PerformanceEntryInstance?.performanceIndicator?.mark!=0}">
                    <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "performanceIndicator.mark")}</td>
                </g:if>
                <g:else>
                    <td>${grantmanagement.MarkDstribution.findAllByPerformanceIndicator(unionPorishod2PerformanceEntryInstance?.performanceIndicator).sum{it.mark}}</td>
                </g:else>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "performanceIndicator.meansOfVerification")}</td>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "obtainMark")}</td>

                %{--<td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "performanceIndicator")}</td>--}%

                %{--<td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "markDstribution")}</td>--}%

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "division")}</td>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "district")}</td>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "upazila.UPZ_NAME")}</td>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "unionParishad.UP_NAME")}</td>

                <td>${fieldValue(bean: unionPorishod2PerformanceEntryInstance, field: "fiscalYear")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${unionPorishod2PerformanceEntryInstanceTotal}" />
    </div>
</div>
</body>
</html>