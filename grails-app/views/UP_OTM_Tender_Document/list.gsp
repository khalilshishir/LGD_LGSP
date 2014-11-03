
<%@ page import="procurement.up.otmprocurement.UP_OTM_Tender_Document" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'UP_OTM_Tender_Document.label', default: 'UP OTM Tender Document')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
    <div id="list-advanceAdjustment" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TASK_COMP_LAST_DATE" title="${message(code: 'UP_OTM_Tender_Document.UP_PROC_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />

                        <g:sortableColumn property="UP_PROC_MASTER" title="${message(code: 'UP_OTM_Tender_Document.TASK_COMP_LAST_DATE.label', default: 'কর্ম সম্পাদনের শেষ তারিখ')}" />

						<g:sortableColumn property="NO_OF_ACTIVATION_DAY" title="${message(code: 'UP_OTM_Tender_Document.NO_OF_ACTIVATION_DAY.label', default: 'সক্রিয়করণের দিন সংখ্যা')}" />
					
						<g:sortableColumn property="TENDER_SUB_LAST_DATE" title="${message(code: 'UP_OTM_Tender_Document.TENDER_SUB_LAST_DATE.label', default: 'দরপত্র দাখিলের শেষ তারিখ')}" />
					
						<g:sortableColumn property="TENDER_SUB_LAST_TIME" title="${message(code: 'UP_OTM_Tender_Document.TENDER_SUB_LAST_TIME.label', default: 'দরপত্র দাখিলের শেষ সময়')}" />
					
						<g:sortableColumn property="TENDER_OPENING_DATE" title="${message(code: 'UP_OTM_Tender_Document.TENDER_OPENING_DATE.label', default: 'দরপত্র খোলার তারিখ')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${UP_OTM_Tender_DocumentInstanceList}" status="i" var="UP_OTM_Tender_DocumentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${UP_OTM_Tender_DocumentInstance.id}">${fieldValue(bean: UP_OTM_Tender_DocumentInstance, field: "UP_PROC_MASTER")}</g:link></td>
					
						<td><g:formatDate date="${UP_OTM_Tender_DocumentInstance.TASK_COMP_LAST_DATE}" format="yyyy-MM-dd"/></td>
					
						<td>${fieldValue(bean: UP_OTM_Tender_DocumentInstance, field: "NO_OF_ACTIVATION_DAY")}</td>
					
						<td><g:formatDate date="${UP_OTM_Tender_DocumentInstance.TENDER_SUB_LAST_DATE}" format="yyyy-MM-dd"/></td>
					
						<td>${fieldValue(bean: UP_OTM_Tender_DocumentInstance, field: "TENDER_SUB_LAST_TIME")}</td>
					
						<td><g:formatDate date="${UP_OTM_Tender_DocumentInstance.TENDER_OPENING_DATE}" format="yyyy-MM-dd"/></td>
					
					</tr>
				</g:each>
				</tbody>
        </table>
    </div>
    </body>
</html>
