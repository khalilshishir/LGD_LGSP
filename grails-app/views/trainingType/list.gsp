
<%@ page import="training.TrainingType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingType.label', default: 'TrainingType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-training_Type" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="TRAINING_TYPE_ID" title="${message(code: 'trainingType.TRAINING_TYPE_ID.label', default: 'Training Type ID')}" />
					
						<g:sortableColumn property="TRAINING_TYPE_NAME" title="${message(code: 'trainingType.TRAINING_TYPE_NAME.label', default: 'Training Type Name')}" />

                        <g:sortableColumn property="TRAINING_TYPE_NAME_BN" title="${message(code: 'trainingType.TRAINING_TYPE_NAME_BN.label', default: 'ট্রেনিং টাইপ নাম')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingTypeInstanceList}" status="i" var="trainingTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingTypeInstance.id}">${fieldValue(bean: trainingTypeInstance, field: "TRAINING_TYPE_ID")}</g:link></td>
					
						<td>${fieldValue(bean: trainingTypeInstance, field: "TRAINING_TYPE_NAME")}</td>

                        <td>${fieldValue(bean: trainingTypeInstance, field: "TRAINING_TYPE_NAME_BN")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingTypeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
