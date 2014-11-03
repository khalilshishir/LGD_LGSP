
<%@ page import="settings.SchemeInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schemeInfo.label', default: 'Scheme Info')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-schemeInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

		<div id="list-schemeInfo" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="SCHEME_ID" title="${message(code: 'schemeInfo.SCHEME_ID.label', default: 'SCHEMEID')}" />
					
						<g:sortableColumn property="NAME" title="${message(code: 'schemeInfo.NAME.label', default: 'NAME')}" />
					
						<g:sortableColumn property="SCHEME_LOCATION" title="${message(code: 'schemeInfo.SCHEME_LOCATION.label', default: 'SCHEMELOCATION')}" />
					
						<th><g:message code="schemeInfo.UNION_PARISHAD.label" default="UNIONPARISHAD" /></th>
					
						<th><g:message code="schemeInfo.SCHEME_TYPE.label" default="SCHEMETYPE" /></th>
					
						<g:sortableColumn property="GRANTED_AMOUNT" title="${message(code: 'schemeInfo.GRANTED_AMOUNT.label', default: 'Contract Amount')}" />

						<g:sortableColumn property="IS_LABOUR_APPOINTED" title="${message(code: 'schemeInfo.IS_LABOUR_APPOINTED.label', default: 'Is Labour Appointed')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${schemeInfoInstanceList}" status="i" var="schemeInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${schemeInfoInstance.id}">${fieldValue(bean: schemeInfoInstance, field: "SCHEME_ID")}</g:link></td>
					
						<td>${fieldValue(bean: schemeInfoInstance, field: "NAME")}</td>
					
						<td>${fieldValue(bean: schemeInfoInstance, field: "SCHEME_LOCATION")}</td>
					
						<td>${fieldValue(bean: schemeInfoInstance, field: "UNION_PARISHAD.UP_NAME")}</td>
					
						<td>${fieldValue(bean: schemeInfoInstance, field: "SCHEME_TYPE")}</td>
					
						<td>${fieldValue(bean: schemeInfoInstance, field: "GRANTED_AMOUNT")}</td>

						<td>${fieldValue(bean: schemeInfoInstance, field: "IS_LABOUR_APPOINTED")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${schemeInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
