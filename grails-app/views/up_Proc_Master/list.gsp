
<%@ page import="procurement.up.Up_Proc_Master" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'up_Proc_Master.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>

    <p align="right" style="color:#666; font-size: 15px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 15px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 15px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউনিয়ন পরিষদ ক্রয়" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-up_Proc_Master" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label/" default="লিস্ট - ইউনিয়ন পরিষদ ক্রয়" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="Details" title="${message(code: 'up_Proc_Master.DETAILS.label', default: 'বর্ণনা')}" />

                        <g:sortableColumn property="Scheme Info" title="${message(code: 'up_Proc_Master.DETAILS.label', default: 'স্কীম সমূহ')}" />

                        <g:sortableColumn property="Committee" title="${message(code: 'up_Proc_Master.DETAILS.label', default: 'কমিটি')}" />

                        <g:sortableColumn property="Procurement Type" title="${message(code: 'up_Proc_Master.DETAILS.label', default: 'ক্রয়ের ধরণ')}" />

						%{--<th><g:message code="up_Proc_Master.SCHEME_INFO.label" default="SCHEMEINFO" /></th>--}%
					
						%{--<th><g:message code="up_Proc_Master.COMMITTEE.label" default="COMMITTEE" /></th>--}%
					
						%{--<th><g:message code="up_Proc_Master.PROCUREMENT_TYPE.label" default="PROCUREMENTTYPE" /></th>--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${up_Proc_MasterInstanceList}" status="i" var="up_Proc_MasterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${up_Proc_MasterInstance.id}">${fieldValue(bean: up_Proc_MasterInstance, field: "SCHEME_INFO.NAME")}</g:link></td>
					
						<td>${fieldValue(bean: up_Proc_MasterInstance, field: "SCHEME_INFO.NAME")}</td>
					
						<td>${fieldValue(bean: up_Proc_MasterInstance, field: "COMMITTEE.COMMITTEE_NAME")}</td>
					
						<td>${fieldValue(bean: up_Proc_MasterInstance, field: "procurementType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${up_Proc_MasterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
