<%@ page import="grantmanagement.PerformanceMeasure" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'performanceMeasure.label', default: 'PerformanceMeasure')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-performanceMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                         default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-performanceMeasure" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <th><g:message code="performanceMeasure.measureCategory.label" default="Measure Category"/></th>

            <th><g:message code="performanceMeasure.unionParishad.label" default="Union Parishad"/></th>

            <g:sortableColumn property="remark"
                              title="${message(code: 'performanceMeasure.remark.label', default: 'Remark')}"/>

            <th><g:message code="performanceMeasure.fiscalYear.label" default="Fiscal Year"/></th>

            <th><g:message code="performanceMeasure.upazila.label" default="Upazila"/></th>

            <g:sortableColumn property="mark"
                              title="${message(code: 'performanceMeasure.mark.label', default: 'Mark')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${performanceMeasureInstanceList}" status="i" var="performanceMeasureInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${performanceMeasureInstance.id}">${fieldValue(bean: performanceMeasureInstance, field: "measureCategory")}</g:link></td>

                <td>${fieldValue(bean: performanceMeasureInstance, field: "unionParishad")}</td>

                <td>${fieldValue(bean: performanceMeasureInstance, field: "remark")}</td>

                <td>${fieldValue(bean: performanceMeasureInstance, field: "fiscalYear")}</td>

                <td>${fieldValue(bean: performanceMeasureInstance, field: "upazila")}</td>

                <td>${fieldValue(bean: performanceMeasureInstance, field: "mark")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${performanceMeasureInstanceTotal}"/>
    </div>
</div>
</body>
</html>
