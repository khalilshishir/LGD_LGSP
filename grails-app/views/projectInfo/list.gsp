
<%@ page import="integration.ProjectInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projectInfo.label', default: 'ProjectInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-projectInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="list-projectInfo" class="content scaffold-list" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
			<h3><g:message code="default.list.label" args="[entityName]" /></h3>
                    </div>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>

                        <g:sortableColumn property="namOfProject" title="${message(code: 'projectInfo.approvalStatus.label', default: 'Name Of Project')}" />
					
						<g:sortableColumn property="approvalStatus" title="${message(code: 'projectInfo.approvalStatus.label', default: 'Approval Status')}" />
					
						<g:sortableColumn property="comments" title="${message(code: 'projectInfo.comments.label', default: 'Comments')}" />
					
						<g:sortableColumn property="completationDate" title="${message(code: 'projectInfo.completationDate.label', default: 'Completation Date')}" />
					
						<g:sortableColumn property="cumulativeExpenditure" title="${message(code: 'projectInfo.cumulativeExpenditure.label', default: 'Cumulative Expenditure')}" />
					
						<g:sortableColumn property="datOfApproval" title="${message(code: 'projectInfo.dateOfApproval.label', default: 'Dat Of Approval')}" />
					
						<g:sortableColumn property="deptId" title="${message(code: 'projectInfo.deptId.label', default: 'Dept Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInfoInstanceList}" status="i" var="projectInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${projectInfoInstance.id}">${fieldValue(bean: projectInfoInstance, field: "nameOfProject")}</g:link></td>
					
						<td>${fieldValue(bean: projectInfoInstance, field: "approvalStatus")}</td>
					
						<td>${fieldValue(bean: projectInfoInstance, field: "comments")}</td>
					
						<td><g:formatDate format="MM/d/yyyy" date="${projectInfoInstance.completationDate}" /></td>
					
						<td>${fieldValue(bean: projectInfoInstance, field: "cumulativeExpenditure")}</td>
					
						<td><g:formatDate format="MM/d/yyyy" date="${projectInfoInstance.dateOfApproval}" /></td>
					
						<td>${fieldValue(bean: projectInfoInstance, field: "deptId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
