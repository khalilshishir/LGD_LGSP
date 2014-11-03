
<%@ page import="payroll.Designation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'designation.label', default: 'Designation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-designation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-designation" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>

.

            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			%{--<table class="table table-striped">--}%
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">

				<thead>
					<tr>
					
						<g:sortableColumn property="DESIGNATION_ID" title="${message(code: 'designation.DESIGNATION_ID.label', default: 'Designation ID')}" />
					
						<g:sortableColumn property="DESIGNATION_NAME" title="${message(code: 'designation.DESIGNATION_NAME.label', default: 'Designation Name')}" />
					
						<g:sortableColumn property="IS_ACTIVE" title="${message(code: 'designation.IS_ACTIVE.label', default: 'Is Active')}" />
					
					</tr>
				</thead>
				<tbody>
				%{--<g:each in="${designationInstanceList}" status="i" var="designationInstance">--}%
					%{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
                <g:each in="${designationInstanceList}" var="designationInstance">
                    %{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">	--}%
						<td><g:link action="show" id="${designationInstance.id}">${fieldValue(bean: designationInstance, field: "DESIGNATION_ID")}</g:link></td>
					
						<td>${fieldValue(bean: designationInstance, field: "DESIGNATION_NAME")}</td>
					
						<td><g:formatBoolean boolean="${designationInstance.IS_ACTIVE}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			%{--<div class="pagination">
				<g:paginate total="${designationInstanceTotal}" />
			</div>--}%
		</div>
	</body>
</html>
