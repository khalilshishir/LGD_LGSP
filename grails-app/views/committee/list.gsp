
<%@ page import="settings.Committee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'committee.label', default: 'Committee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-committee" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="COMMITTEE_ID" title="${message(code: 'committee.COMMITTEE_ID.label', default: 'Committee ID')}" />
					
						<g:sortableColumn property="COMMITTEE_NAME" title="${message(code: 'committee.COMMITTEE_NAME.label', default: 'Committee Name')}" />
					
						<th><g:message code="committee.division.label" default="Division" /></th>
					
						<th><g:message code="committee.district.label" default="District" /></th>
					
						<th><g:message code="committee.upazila.label" default="Upazila" /></th>
					
						<th><g:message code="committee.unionParishad.label" default="Union Parishad" /></th>

						<th><g:message code="committee.ward.label" default="Ward" /></th>

						<th><g:message code="committee.committeeLevel.label" default="Committee Level" /></th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${committeeInstanceList}" status="i" var="committeeInstance">
					<tr>
					
						<td><g:link action="show" id="${committeeInstance.id}">${fieldValue(bean: committeeInstance, field: "COMMITTEE_ID")}</g:link></td>
					
						<td>${fieldValue(bean: committeeInstance, field: "COMMITTEE_NAME")}</td>
					
						<td>${fieldValue(bean: committeeInstance, field: "DIVISION")}</td>
					
						<td>${fieldValue(bean: committeeInstance, field: "DISTRICT")}</td>
					
						<td>${fieldValue(bean: committeeInstance, field: "UPAZILA")}</td>
					
						<td>${fieldValue(bean: committeeInstance, field: "UNION_PARISHAD.UP_NAME")}</td>

						<td>${fieldValue(bean: committeeInstance, field: "WARD.WARD_NO")}</td>

						<td>${fieldValue(bean: committeeInstance, field: "COMMITTEE_LEVEL")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${committeeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
