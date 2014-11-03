
<%@ page import="procurement.up.otmprocurement.UP_OTM_Tender_Schedule_Sample" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="upprocurement">
    <g:set var="entityName" value="${message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল')}" />
    <title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
</head>
<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল" args="[entityName]" /></g:link></a>
</p>
<div id="list-upOtmEvaluation" class="content scaffold-list" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.list.label/" default="ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল লিস্ট" args="[entityName]" /></h3>
        </div>
    </div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
        <thead>
        <tr>

            <g:sortableColumn property="UP_OTM_Tender_Schedule_Sample.UP_PROC_MASTER" title="${message(code: 'UP_OTM_Tender_Schedule_Sample.UP_PROC_MASTER.label', default: 'কাজের বর্ণনা ও অবস্থান')}" />

            <g:sortableColumn property="UNIT" title="${message(code: 'UP_OTM_Tender_Schedule_Sample.UNIT.label', default: 'কাজের একক')}" />

            <g:sortableColumn property="AMOUNT" title="${message(code: 'UP_OTM_Tender_Schedule_Sample.AMOUNT.label', default: 'কাজের পরিমাণ')}" />

            <g:sortableColumn property="RATE" title="${message(code: 'UP_OTM_Tender_Schedule_Sample.RATE.label', default: 'একক মূল্য (টাকা)')}" />

            <g:sortableColumn property="TOTAL_AMOUNT" title="${message(code: 'UP_OTM_Tender_Schedule_Sample.TOTAL_AMOUNT.label', default: 'মোট মূল্য (টাকা)')}" />

            <g:sortableColumn property="FINISH_DATE"  title="${message(code: 'UP_OTM_Tender_Schedule_Sample.FINISH_DATE.label', default: 'বাস্তবায়নের নির্ধারিত সময়সীমা')}"/>

            <g:sortableColumn property="TIMELINE_OF_RATE"  title="${message(code: 'UP_OTM_Tender_Schedule_Sample.TIMELINE_OF_RATE.label', default: 'দড় বহাল থাকার প্রস্তাবিত সময়সীমা')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${UP_OTM_Tender_Schedule_SampleInstanceList}" status="i" var="UP_OTM_Tender_Schedule_SampleInstance">
            <tr>

                <td><g:link action="show" id="${UP_OTM_Tender_Schedule_SampleInstance.id}">${fieldValue(bean: UP_OTM_Tender_Schedule_SampleInstance, field: "UP_PROC_MASTER.SCHEME_INFO.NAME")}</g:link></td>

                <td>${fieldValue(bean: UP_OTM_Tender_Schedule_SampleInstance, field: "UNIT")}</td>

                <td>${fieldValue(bean: UP_OTM_Tender_Schedule_SampleInstance, field: "AMOUNT")}</td>

                <td>${fieldValue(bean: UP_OTM_Tender_Schedule_SampleInstance, field: "RATE")}</td>

                <td>${fieldValue(bean: UP_OTM_Tender_Schedule_SampleInstance, field: "TOTAL_AMOUNT")}</td>

                <td><g:formatDate date="${UP_OTM_Tender_Schedule_SampleInstance.FINISH_DATE}" format="yyyy-MM-dd"/></td>

                <td><g:formatDate date="${UP_OTM_Tender_Schedule_SampleInstance.TIMELINE_OF_RATE}" format="yyyy-MM-dd"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
