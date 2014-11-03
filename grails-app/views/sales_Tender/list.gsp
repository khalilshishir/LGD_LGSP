<%@ page import="procurement.pmu.Sales_Tender" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'sales_Tender.label', default: 'Sales_Tender')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-sales_Tender" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-sales_Tender" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="SALES_TENDER_CODE"
                              title="${message(code: 'sales_Tender.SALES_TENDER_CODE.label', default: 'SALESTENDERCODE')}"/>

            <g:sortableColumn property="TENDER_NAME"
                              title="${message(code: 'sales_Tender.TENDER_NAME.label', default: 'TENDERNAME')}"/>

            <g:sortableColumn property="PROCURE_NAME"
                              title="${message(code: 'sales_Tender.PROCURE_NAME.label', default: 'PROCURENAME')}"/>

            <g:sortableColumn property="FILE_UPLOAD"
                              title="${message(code: 'sales_Tender.FILE_UPLOAD.label', default: 'FILEUPLOAD')}"/>

            <g:sortableColumn property="PUBLISHED_DATE"
                              title="${message(code: 'sales_Tender.PUBLISHED_DATE.label', default: 'PUBLISHEDDATE')}"/>

            <g:sortableColumn property="REMARKS"
                              title="${message(code: 'sales_Tender.REMARKS.label', default: 'REMARKS')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${sales_TenderInstanceList}" status="i" var="sales_TenderInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${sales_TenderInstance.id}">${fieldValue(bean: sales_TenderInstance, field: "SALES_TENDER_CODE")}</g:link></td>

                <td>${fieldValue(bean: sales_TenderInstance, field: "TENDER_NAME")}</td>

                <td>${fieldValue(bean: sales_TenderInstance, field: "PROCURE_NAME")}</td>

                <td>${fieldValue(bean: sales_TenderInstance, field: "FILE_UPLOAD")}</td>

                <td>${fieldValue(bean: sales_TenderInstance, field: "PUBLISHED_DATE")}</td>

                <td>${fieldValue(bean: sales_TenderInstance, field: "REMARKS")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${sales_TenderInstanceTotal}"/>
    </div>
</div>
</body>
</html>
