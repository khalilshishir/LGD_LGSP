
<%@ page import="procurement.pmu.ProcurementPlan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'procurementPlan.label', default: 'ProcurementPlan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>



    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
    <div id="list-procurementPlan" class="content scaffold-list" role="main">
        %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>
        </div>


        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table class="table table-striped">
            <thead>
            <tr>

                <g:sortableColumn property="perCode" title="${message(code: 'procurementPlan.perCode.label', default: 'Procurement Code')}" />

                <g:sortableColumn property="perName" title="${message(code: 'procurementPlan.perName.label', default: 'Procurement Name')}" />

                <g:sortableColumn property="createdate" title="${message(code: 'procurementPlan.createdate.label', default: 'Entry Date')}" />

                <g:sortableColumn property="isActive" title="${message(code: 'procurementPlan.isActive.label', default: 'Is Active')}" />

                <g:sortableColumn property="createby" title="${message(code: 'procurementPlan.createby.label', default: 'Createby')}" />
            </tr>
            </thead>
            <tbody>





    %{----}%
		%{--<a href="#list-procurementPlan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%

		%{--<div id="list-procurementPlan" class="content scaffold-list" role="main">--}%
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<table>--}%
				%{--<thead>--}%
					%{--<tr>--}%
					%{----}%
						%{--<g:sortableColumn property="perCode" title="${message(code: 'procurementPlan.perCode.label', default: 'Per Code')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="perName" title="${message(code: 'procurementPlan.perName.label', default: 'Per Name')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="createdate" title="${message(code: 'procurementPlan.createdate.label', default: 'Createdate')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="isActive" title="${message(code: 'procurementPlan.isActive.label', default: 'Is Active')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="createby" title="${message(code: 'procurementPlan.createby.label', default: 'Createby')}" />--}%
					%{----}%
					%{--</tr>--}%
				%{--</thead>--}%
				%{--<tbody>--}%

				<g:each in="${procurementPlanInstanceList}" status="i" var="procurementPlanInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${procurementPlanInstance.id}">${fieldValue(bean: procurementPlanInstance, field: "perCode")}</g:link></td>
					
						<td>${fieldValue(bean: procurementPlanInstance, field: "perName")}</td>
					
						<td><g:formatDate date="${procurementPlanInstance.createdate}" /></td>
					
						<td><g:formatBoolean boolean="${procurementPlanInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: procurementPlanInstance, field: "createby")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${procurementPlanInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
