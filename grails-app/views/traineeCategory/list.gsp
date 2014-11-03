
<%@ page import="training.TraineeCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'traineeCategory.label', default: 'TraineeCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-traineeCategory" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TRAINEE_CATEGORY_ID" title="${message(code: 'traineeCategory.TRAINEE_CATEGORY_ID.label', default: 'Trainee Category ID')}" />
					
						<g:sortableColumn property="TRAINEE_CATEGORY_NAME" title="${message(code: 'traineeCategory.TRAINEE_CATEGORY_NAME.label', default: 'Trainee Category Name')}" />
					
						<g:sortableColumn property="NO_OF_TRAINEE_QUANTITY" title="${message(code: 'traineeCategory.NO_OF_TRAINEE_QUANTITY.label', default: 'No of Trainee Quantity')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${traineeCategoryInstanceList}" status="i" var="traineeCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${traineeCategoryInstance.id}">${fieldValue(bean: traineeCategoryInstance, field: "TRAINEE_CATEGORY_ID")}</g:link></td>
					
						<td>${fieldValue(bean: traineeCategoryInstance, field: "TRAINEE_CATEGORY_NAME")}</td>
					
						<td>${fieldValue(bean: traineeCategoryInstance, field: "NO_OF_TRAINEE_QUANTITY")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${traineeCategoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
