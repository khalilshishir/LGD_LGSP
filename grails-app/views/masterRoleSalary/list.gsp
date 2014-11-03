
<%@ page import="procurement.up.communityprocurement.MasterRoleSalary" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'masterRoleSalary.label', default: 'মাস্টার রোল মজুরি')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন মাস্টার রোল মজুরি" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-masterRoleSalary" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label/" default="মাস্টার রোল মজুরি লিস্ট" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
                        <g:sortableColumn property="masterRoleSalary.UP_PROCUREMENT_MASTER" title="${message(code: 'masterRoleSalary.UP_PROCUREMENT_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />
					

					</tr>
				</thead>
				<tbody>
				<g:each in="${masterRoleSalaryInstanceList}" status="i" var="masterRoleSalaryInstance">
					<tr>
					
						<td><g:link action="show" id="${masterRoleSalaryInstance.id}">${fieldValue(bean: masterRoleSalaryInstance, field: "upProcMaster.SCHEME_INFO")}</g:link></td>
					

					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
