
<%@ page import="audit.UpInspection" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upInspection.label', default: 'UpInspection')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-upInspection" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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


    <div id="list-upInspection" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<table>--}%
				%{--<thead>--}%
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

						<g:sortableColumn property="UP_I_REP_NAME" title="${message(code: 'upInspection.UP_I_REP_NAME.label', default: 'UPIREPNAME')}" />

						<g:sortableColumn property="UP_I_REP_NAME_BN" title="${message(code: 'upInspection.UP_I_REP_NAME_BN.label', default: 'UPIREPNAMEBN')}" />

						<g:sortableColumn property="UP_I_REP_DES" title="${message(code: 'upInspection.UP_I_REP_DES.label', default: 'UPIREPDES')}" />

						<g:sortableColumn property="UP_I_REP_DES_BN" title="${message(code: 'upInspection.UP_I_REP_DES_BN.label', default: 'UPIREPDESBN')}" />

						<g:sortableColumn property="IFROM_DATE" title="${message(code: 'upInspection.IFROM_DATE.label', default: 'IFROMDATE')}" />

						<g:sortableColumn property="ITO_DATE" title="${message(code: 'upInspection.ITO_DATE.label', default: 'ITODATE')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${upInspectionInstanceList}" status="i" var="upInspectionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${upInspectionInstance.id}">${fieldValue(bean: upInspectionInstance, field: "UP_I_REP_NAME")}</g:link></td>

						<td>${fieldValue(bean: upInspectionInstance, field: "UP_I_REP_NAME_BN")}</td>

						<td>${fieldValue(bean: upInspectionInstance, field: "UP_I_REP_DES")}</td>

						<td>${fieldValue(bean: upInspectionInstance, field: "UP_I_REP_DES_BN")}</td>

						<td><g:formatDate date="${upInspectionInstance.IFROM_DATE}" /></td>

						<td><g:formatDate date="${upInspectionInstance.ITO_DATE}" /></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${upInspectionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
