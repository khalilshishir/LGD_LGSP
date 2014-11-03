
<%@ page import="training.OthersTraining" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'othersTraining.label', default: 'OthersTraining')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-othersTraining" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
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
					
						<g:sortableColumn property="OTH_TR_NAME" title="${message(code: 'othersTraining.OTH_TR_NAME.label', default: 'Others Training Name')}" />
					
						<g:sortableColumn property="OTH_TR_PARTICI_NAME" title="${message(code: 'othersTraining.OTH_TR_PARTICI_NAME.label', default: 'Others Training Participant Name')}" />
					
						<g:sortableColumn property="OTH_TR_START_DATE" title="${message(code: 'othersTraining.OTH_TR_START_DATE.label', default: 'Others Training Start Date')}" />
					
						<g:sortableColumn property="OTH_TR_END_DATE" title="${message(code: 'othersTraining.OTH_TR_END_DATE.label', default: 'Others Training End Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${othersTrainingInstanceList}" status="i" var="othersTrainingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${othersTrainingInstance.id}">${fieldValue(bean: othersTrainingInstance, field: "OTH_TR_NAME")}</g:link></td>
					
						<td>${fieldValue(bean: othersTrainingInstance, field: "OTH_TR_PARTICI_ATTEN")}</td>
					
						<td><g:formatDate date="${othersTrainingInstance.OTH_TR_START_DATE}" /></td>
					
						<td><g:formatDate date="${othersTrainingInstance.OTH_TR_END_DATE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${othersTrainingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
