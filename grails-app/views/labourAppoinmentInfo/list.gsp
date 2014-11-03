
<%@ page import="procurement.up.communityprocurement.LabourAppoinmentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'labourAppoinmentInfo.label', default: 'লেবার অ্যাপয়েন্টমেন্ট ইনফো')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন লেবার অ্যাপয়েন্টমেন্ট ইনফো" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-labourAppoinmentInfo" class="content scaffold-list" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label/" default="লেবার অ্যাপয়েন্টমেন্ট ইনফো লিস্ট" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="labourAppoinmentInfo.UP_PROCUREMENT_MASTER" title="${message(code: 'labourAppoinmentInfo.UP_PROCUREMENT_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${labourAppoinmentInfoInstanceList}" status="i" var="labourAppoinmentInfoInstance">
					<tr>
					
						<td><g:link action="show" id="${labourAppoinmentInfoInstance.id}">${fieldValue(bean: labourAppoinmentInfoInstance, field: "UP_PROCUREMENT_MASTER.SCHEME_INFO")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${labourAppoinmentInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
