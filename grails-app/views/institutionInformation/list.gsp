
<%@ page import="training.InstitutionInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'institutionInformation.label', default: 'InstitutionInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>
		<div id="list-institutionInformation" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="INSTITUTION_ID" title="${message(code: 'institutionInformation.INSTITUTION_ID.label', default: 'Institution ID')}" />
					
						<g:sortableColumn property="INSTITUTION_NAME" title="${message(code: 'institutionInformation.INSTITUTION_NAME.label', default: 'Institution Name')}" />

                        <g:sortableColumn property="INSTITUTION_NAME_BN" title="${message(code: 'institutionInformation.INSTITUTION_NAME_BN.label', default: 'ইন্সটিটিউশান নাম')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${institutionInformationInstanceList}" status="i" var="institutionInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${institutionInformationInstance.id}">${fieldValue(bean: institutionInformationInstance, field: "INSTITUTION_ID")}</g:link></td>
					
						<td>${fieldValue(bean: institutionInformationInstance, field: "INSTITUTION_NAME")}</td>

                        <td>${fieldValue(bean: institutionInformationInstance, field: "INSTITUTION_NAME_BN")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${institutionInformationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
