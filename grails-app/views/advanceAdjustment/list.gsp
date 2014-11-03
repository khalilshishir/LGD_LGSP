
<%@ page import="procurement.up.communityprocurement.AdvanceAdjustment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'advanceAdjustment.label', default: 'এডভান্স এডজাস্টমেন্ট ')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন এডভান্স এডজাস্টমেন্ট " args="[entityName]" /></g:link></a>
    </p>
		<div id="list-advanceAdjustment" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label/" default="এডভান্স এডজাস্টমেন্ট  লিস্ট" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="advanceAdjustment.UP_PROCUREMENT_MASTER" title="${message(code: 'advanceAdjustment.UP_PROCUREMENT_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />

                        <g:sortableColumn property="ADJUSTMENT_AMOUNT" title="${message(code: 'advanceAdjustment.ADJUSTMENT_AMOUNT.label', default: 'সমন্বয় মূল্য')}" />

						<g:sortableColumn property="PAYMENT_DATE" title="${message(code: 'advanceAdjustment.PAYMENT_DATE.label', default: 'প্রদানের তারিখ')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${advanceAdjustmentInstanceList}" status="i" var="advanceAdjustmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${advanceAdjustmentInstance.id}">${fieldValue(bean: advanceAdjustmentInstance, field: "upProcMaster.SCHEME_INFO")}</g:link></td>
					
						<td>${fieldValue(bean: advanceAdjustmentInstance, field: "ADJUSTMENT_AMOUNT")}</td>
					
						<td><g:formatDate date="${advanceAdjustmentInstance.PAYMENT_DATE}" format="yyyy-MM-dd" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
