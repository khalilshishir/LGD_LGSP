
<%@ page import="planningbudget.Meeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lawBranchTwo.label', default: 'LawBranchTwo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-lawBranchTwo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="list-lawBranchTwo" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="documentNo" title="${message(code: 'lawBranchTwo.documentNo.label', default: 'Document No')}" />
					
						<g:sortableColumn property="receiveDate" title="${message(code: 'lawBranchTwo.receiveDate.label', default: 'Receive Date')}" />
					
						<g:sortableColumn property="subject" title="${message(code: 'lawBranchTwo.subject.label', default: 'Subject')}" />
					
						<g:sortableColumn property="departmentActivity" title="${message(code: 'lawBranchTwo.departmentActivity.label', default: 'Department Activity')}" />
					
						<g:sortableColumn property="endingDate" title="${message(code: 'lawBranchTwo.endingDate.label', default: 'Ending Date')}" />
					
						<g:sortableColumn property="comments" title="${message(code: 'lawBranchTwo.comments.label', default: 'Comments')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lawBranchTwoInstanceList}" status="i" var="lawBranchTwoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${lawBranchTwoInstance.id}">${fieldValue(bean: lawBranchTwoInstance, field: "documentNo")}</g:link></td>
					
						<td><g:formatDate format="MM/dd/yyyy" date="${lawBranchTwoInstance.receiveDate}" /></td>
					
						<td>${fieldValue(bean: lawBranchTwoInstance, field: "subject")}</td>
					
						<td>${fieldValue(bean: lawBranchTwoInstance, field: "departmentActivity")}</td>
					
						<td><g:formatDate format="MM/dd/yyyy" date="${lawBranchTwoInstance.endingDate}" /></td>
					
						<td>${fieldValue(bean: lawBranchTwoInstance, field: "comments")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lawBranchTwoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
