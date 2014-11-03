<%@ page import="procurement.up.otmprocurement.UpOtmOpeningSheet" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="upprocurement">
    <g:set var="entityName" value="${message(code: 'upOtmOpeningSheet.label', default: 'ইউপি ও-টি-এম ওপেনিং শিট')}"/>
    <title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]"/></title>
</head>

<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label/" default="হোম"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message
            code="default.new.label/" default="নতুন ইউপি ও-টি-এম ওপেনিং শিট" args="[entityName]"/></g:link></a>
</p>

<div id="list-upRfqOpeningSheet" class="content scaffold-list" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.list.label/" default="ইউপি ও-টি-এম ওপেনিং শিট লিস্ট" args="[entityName]"/></h3>
        </div>
    </div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
        <thead>
        <tr>

            <g:sortableColumn property="upOtmOpeningSheet.UP_PROC_MASTER"
                              title="${message(code: 'upOtmOpeningSheet.UP_PROC_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}"/>

            <g:sortableColumn property="OPENING_DATE"
                              title="${message(code: 'upOtmOpeningSheet.OPENING_DATE.label', default: 'খোলার তারিখ')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${upOtmOpeningSheetInstanceList}" status="i" var="upOtmOpeningSheetInstance">
            <tr>

                <td><g:link action="show"
                            id="${upOtmOpeningSheetInstance.id}">${fieldValue(bean: upOtmOpeningSheetInstance, field: "UP_PROC_MASTER.SCHEME_INFO.NAME")}</g:link></td>

                <td><g:formatDate date="${upOtmOpeningSheetInstance.OPENING_DATE}" format="yyyy-MM-dd"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
