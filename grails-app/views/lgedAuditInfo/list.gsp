
<%@ page import="integration.LgedAuditInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lgedAuditInfo.label', default: 'LgedAuditInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-lgedAuditInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-lgedAuditInfo" class="content scaffold-list" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
			<h3><g:message code="default.list.label" args="[entityName]" /></h3>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                    </div>
                </div>
			<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
                        <g:sortableColumn property="auditInfoName" title="${message(code: 'lgedAuditInfo.auditInfoName.label', default: 'নিরীক্ষা প্রতিবেদনের শিরোনাম')}" />

                        <g:sortableColumn property="complainDate" title="${message(code: 'lgedAuditInfo.complainDate.label', default: 'আপত্তির তারিখ')}" />

                    <g:sortableColumn property="sectionNumber" title="${message(code: 'lgedAuditInfo.sectionNumber.label', default: 'অনুচ্ছেদ নম্বর')}" />


					
						<g:sortableColumn property="totalAmountOfAllComplain" title="${message(code: 'lgedAuditInfo.totalAmountOfAllComplain.label', default: 'মোট সংখ্যা')}" />
					
						<g:sortableColumn property="totalNoOfAllComplain" title="${message(code: 'lgedAuditInfo.totalNoOfAllComplain.label', default: 'মোট টাকা')}" />
					

					

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lgedAuditInfoInstanceList}" status="i" var="lgedAuditInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" id="${lgedAuditInfoInstance.id}">${fieldValue(bean: lgedAuditInfoInstance, field: "auditInfoName")}</g:link></td>

                        <td><g:formatDate format="MM/dd/yyyy" date="${lgedAuditInfoInstance.complainDate}" /></td>



                        <td>${fieldValue(bean: lgedAuditInfoInstance, field: "sectionNumber")}</td>


					
						<td>${fieldValue(bean: lgedAuditInfoInstance, field: "totalAmountOfAllComplain")}</td>
					
						<td>${fieldValue(bean: lgedAuditInfoInstance, field: "totalNoOfAllComplain")}</td>
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lgedAuditInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
