
<%@ page import="procurement.up.rfqprocurement.UpRfqOpeningSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upRfqOpeningSheet.label', default: 'ইউপি আর-এফ-কিউ ওপেনিং শিট')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি আর-এফ-কিউ ওপেনিং শিট" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-upRfqOpeningSheet" class="content scaffold-list" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label/" default="ইউপি আর-এফ-কিউ ওপেনিং শিট লিস্ট" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>

                        <g:sortableColumn property="upRfqOpeningSheet.UP_PROC_MASTER" title="${message(code: 'upRfqOpeningSheet.UP_PROC_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />
					
						<g:sortableColumn property="INVITATION_DATE" title="${message(code: 'upRfqOpeningSheet.INVITATION_DATE.label', default: 'আহ্বান তারিখ')}" />
					
						<g:sortableColumn property="SUB_LAST_DATE" title="${message(code: 'upRfqOpeningSheet.SUB_LAST_DATE.label', default: 'দাখিলের শেষ তারিখ')}" />
					
						<g:sortableColumn property="OPENING_DATE" title="${message(code: 'upRfqOpeningSheet.OPENING_DATE.label', default: 'খোলার তারিখ')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upRfqOpeningSheetInstanceList}" status="i" var="upRfqOpeningSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${upRfqOpeningSheetInstance.id}">${fieldValue(bean: upRfqOpeningSheetInstance, field: "UP_PROC_MASTER.SCHEME_INFO")}</g:link></td>
					
						<td><g:formatDate date="${upRfqOpeningSheetInstance.INVITATION_DATE}" format="yyyy-MM-dd" /></td>
					
						<td><g:formatDate date="${upRfqOpeningSheetInstance.SUB_LAST_DATE}" format="yyyy-MM-dd" /></td>
					
						<td><g:formatDate date="${upRfqOpeningSheetInstance.OPENING_DATE}" format="yyyy-MM-dd" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
