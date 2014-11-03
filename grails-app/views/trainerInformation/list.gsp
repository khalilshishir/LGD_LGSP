
<%@ page import="training.TrainerInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainerInformation.label', default: 'TrainerInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainerInformation" class="content scaffold-list" role="main">
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
						<g:sortableColumn property="TR_INFO_NAME" title="${message(code: 'trainerInformation.TR_INFO_NAME.label', default: 'Trainer Information Name')}" />
					
						<g:sortableColumn property="TRAINER_CATEGORY" title="${message(code: 'trainerInformation.TRAINER_CATEGORY.label', default: 'Trainer Category Name')}" />

                        <g:sortableColumn property="TR_INFO_QUALIFICATION" title="${message(code: 'trainerInformation.TR_INFO_QUALIFICATION.label', default: 'Trainer Information Qualification')}" />

                        <g:sortableColumn property="TR_INFO_MOBILE" title="${message(code: 'trainerInformation.TR_INFO_MOBILE.label', default: 'Trainer Information Mobile')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainerInformationInstanceList}" status="i" var="trainerInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainerInformationInstance.id}">${fieldValue(bean: trainerInformationInstance, field: "TR_INFO_NAME")}</g:link></td>

                        <td>${fieldValue(bean: trainerInformationInstance, field: "TRAINER_CATEGORY")}</td>
					
						<td>${fieldValue(bean: trainerInformationInstance, field: "TR_INFO_QUALIFICATION")}</td>

                        <td>${fieldValue(bean: trainerInformationInstance, field: "TR_INFO_MOBILE")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainerInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
