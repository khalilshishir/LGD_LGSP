
<%@ page import="procurement.up.rfqprocurement.UpRFQProcWorkOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upRFQProcWorkOrder.label', default: 'ইউপি আর-এফ-কিউ প্রকিউরমেন্ট ওয়ার্ক অর্ডার')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>

    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি আর-এফ-কিউ প্রকিউরমেন্ট ওয়ার্ক অর্ডার" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-upRFQProcWorkOrder" class="content scaffold-list" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label/" default="ইউপি আর-এফ-কিউ প্রকিউরমেন্ট ওয়ার্ক অর্ডার লিস্ট" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="UPPROCMASTER" title="${message(code: 'upRFQProcWorkOrder.CREATED_BY.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />
					
						<g:sortableColumn property="CREATED_DATE" title="${message(code: 'upRFQProcWorkOrder.CREATED_DATE.label', default: 'তৈরির তারিখ')}" />
					
						<g:sortableColumn property="UPDATED_BY" title="${message(code: 'upRFQProcWorkOrder.UPDATED_BY.label', default: 'পরিবর্তন কারি')}" />
					
						<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'upRFQProcWorkOrder.UPDATED_DATE.label', default: 'পরিবর্তনের তারিখ')}" />
					
						<g:sortableColumn property="RECEIVED_COMPANY" title="${message(code: 'upRFQProcWorkOrder.RECEIVED_COMPANY.label', default: 'গ্রহনক্রীত  কোম্পানি')}" />
					
						<g:sortableColumn property="COMPANY_ADDRESS" title="${message(code: 'upRFQProcWorkOrder.COMPANY_ADDRESS.label', default: 'কোম্পানির ঠিকানা')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upRFQProcWorkOrderInstanceList}" status="i" var="upRFQProcWorkOrderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${upRFQProcWorkOrderInstance.id}">${fieldValue(bean: upRFQProcWorkOrderInstance, field: "UP_PROC_MASTER.SCHEME_INFO")}</g:link></td>
					
						<td><g:formatDate date="${upRFQProcWorkOrderInstance.CREATED_DATE}" /></td>
					
						<td>${fieldValue(bean: upRFQProcWorkOrderInstance, field: "UPDATED_BY")}</td>
					
						<td><g:formatDate date="${upRFQProcWorkOrderInstance.UPDATED_DATE}" /></td>
					
						<td>${fieldValue(bean: upRFQProcWorkOrderInstance, field: "RECEIVED_COMPANY")}</td>
					
						<td>${fieldValue(bean: upRFQProcWorkOrderInstance, field: "COMPANY_ADDRESS")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${upRFQProcWorkOrderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
