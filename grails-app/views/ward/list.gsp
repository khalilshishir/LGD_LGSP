<%@ page import="settings.Ward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ward.label', default: 'Ward')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-ward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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

        <div id="list-ward" class="content scaffold-list" role="main">
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
					

						<g:sortableColumn property="WARD_NO" title="${message(code: 'ward.WARD_NO.label', default: 'Ward No')}" />
					
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'ward.CREATED_BY.label', default: 'Created By')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="CREATED_DATE" title="${message(code: 'ward.CREATED_DATE.label', default: 'Created Date')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="UPDATED_BY" title="${message(code: 'ward.UPDATED_BY.label', default: 'Updaed By')}" />--}%
					
						%{--<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'ward.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${wardInstanceList}" status="i" var="wardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${wardInstance.id}">${fieldValue(bean: wardInstance, field: "WARD_NO")}</g:link></td>


						%{--<td>${fieldValue(bean: wardInstance, field: "CREATED_BY")}</td>--}%
					%{----}%
						%{--<td><g:formatDate date="${wardInstance.CREATED_DATE}" /></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: wardInstance, field: "UPDATED_BY")}</td>--}%
					
						%{--<td><g:formatDate date="${wardInstance.UPDATED_DATE}" /></td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${wardInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
