
<%@ page import="settings.Upazila" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upazila.label', default: 'Upazila')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-upazila" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

		<div id="list-upazila" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<table>--}%
				%{--<thead>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <g:message code="default.list.label" default="লিস্ট - ইউনিয়ন পরিষদ ক্রয়" args="[entityName]" /></h3>
                </div>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
                <thead>
					<tr>
					
						<td>Upazila Id</td>
                        <td>Upazila Name</td>
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'upazila.CREATED_BY.label', default: 'Created By')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="CREATED_DATE" title="${message(code: 'upazila.CREATED_DATE.label', default: 'Created Date')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="UPDATED_BY" title="${message(code: 'upazila.UPDATED_BY.label', default: 'Updated By')}" />--}%

						%{--<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'upazila.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upazilaInstanceList}" status="i" var="upazilaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${upazilaInstance.id}">${fieldValue(bean: upazilaInstance, field: "UPZ_ID")}</g:link></td>
					
						<td>${fieldValue(bean: upazilaInstance, field: "UPZ_NAME")}</td>
					
						%{--<td>${fieldValue(bean: upazilaInstance, field: "CREATED_BY")}</td>--}%
					%{----}%
						%{--<td><g:formatDate date="${upazilaInstance.CREATED_DATE}" /></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: upazilaInstance, field: "UPDATED_BY")}</td>--}%
					
						%{--<td><g:formatDate date="${upazilaInstance.UPDATED_DATE}" /></td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>
</html>
