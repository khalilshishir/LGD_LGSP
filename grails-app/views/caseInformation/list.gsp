
<%@ page import="integration.CaseInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'caseInformation.label', default: 'CaseInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-caseInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="list-caseInformation" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="caseNo" title="${message(code: 'caseInformation.caseNo.label', default: 'মামলার নং.')}" />
					
						<g:sortableColumn property="caseDate" title="${message(code: 'caseInformation.caseDate.label', default: 'মামলার তারিখ')}" />
					
						<g:sortableColumn property="receiveDate" title="${message(code: 'caseInformation.receiveDate.label', default: 'আরজি প্রাপ্তির তারিখ')}" />
					
						<g:sortableColumn property="documentNo" title="${message(code: 'caseInformation.documentNo.label', default: ' নথি নং  ')}" />
					
						<g:sortableColumn property="caseSubject" title="${message(code: 'caseInformation.caseSubject.label', default: 'মামলার বিষয়')}" />
					
						<th><g:message code="caseInformation.courtType.label" default="আদালতের ধরণ " /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${caseInformationInstanceList}" status="i" var="caseInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${caseInformationInstance.id}">${fieldValue(bean: caseInformationInstance, field: "caseNo")}</g:link></td>
					
						<td>${fieldValue(bean: caseInformationInstance, field: "caseDate")}</td>
					
						<td><g:formatDate format="MM/dd/yyyy" date="${caseInformationInstance.receiveDate}" /></td>
					
						<td>${fieldValue(bean: caseInformationInstance, field: "documentNo")}</td>
					
						<td>${fieldValue(bean: caseInformationInstance, field: "caseSubject")}</td>
					
						<td>${fieldValue(bean: caseInformationInstance, field: "courtType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${caseInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
