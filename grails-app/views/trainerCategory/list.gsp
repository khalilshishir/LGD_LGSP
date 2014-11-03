
<%@ page import="training.TrainerCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainerCategory.label', default: 'TrainerCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-trainerCategory" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TRAINER_CATEGORY_ID" title="${message(code: 'trainerCategory.TRAINER_CATEGORY_ID.label', default: 'Trainer Category ID')}" />
					
						<g:sortableColumn property="TRAINER_CATEGORY_NAME" title="${message(code: 'trainerCategory.TRAINER_CATEGORY_NAME.label', default: 'Trainer Category Name')}" />

                        <g:sortableColumn property="TRAINER_CATEGORY_NAME_BN" title="${message(code: 'trainerCategory.TRAINER_CATEGORY_NAME_BN.label', default: 'ট্রেইনার ক্যাটাগরি নাম ')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainerCategoryInstanceList}" status="i" var="trainerCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainerCategoryInstance.id}">${fieldValue(bean: trainerCategoryInstance, field: "TRAINER_CATEGORY_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainerCategoryInstance, field: "TRAINER_CATEGORY_NAME")}</td>

                        <td>${fieldValue(bean: trainerCategoryInstance, field: "TRAINER_CATEGORY_NAME_BN")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainerCategoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
