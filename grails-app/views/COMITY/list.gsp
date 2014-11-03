
<%@ page import="fixedAsset.COMITY" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'COMITY.label', default: 'Committee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-COMITY" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-COMITY" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
            %{--<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>--}%
            <script>
                $(document).ready(function(){
                    $("#a").fadeOut(8000);
                });
            </script>
            <g:if test="${flash.message}">
                <div class="panel-body">
                    <div id="a" class="alert alert-success" role="alert">
                        <div class="message" role="status">
                            <h3 class="panel-title">${flash.message}</h3>
                        </div>
                    </div>
                </div>
            </g:if>


			%{--<table>--}%
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">

				<thead>
					<tr>
					
						<g:sortableColumn property="COMITY_NAME" title="${message(code: 'COMITY.COMITY_NAME.label', default: 'Committee Name')}" />
					
						<g:sortableColumn property="WORK_PURPOSE" title="${message(code: 'COMITY.WORK_PURPOSE.label', default: 'Work Purpose')}" />
					
						<g:sortableColumn property="DESCRIPTION" title="${message(code: 'COMITY.DESCRIPTION.label', default: 'Description')}" />
					
						<g:sortableColumn property="START_DATE" title="${message(code: 'COMITY.START_DATE.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="END_DATE" title="${message(code: 'COMITY.END_DATE.label', default: 'End Date')}" />
					
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'COMITY.CREATED_BY.label', default: 'CREATEDBY')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${COMITYInstanceList}" status="i" var="COMITYInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${COMITYInstance.id}">${fieldValue(bean: COMITYInstance, field: "COMITY_NAME")}</g:link></td>
					
						<td>${fieldValue(bean: COMITYInstance, field: "WORK_PURPOSE")}</td>
					
						<td>${fieldValue(bean: COMITYInstance, field: "DESCRIPTION")}</td>
					
						<td><g:formatDate date="${COMITYInstance.START_DATE}" /></td>
					
						<td><g:formatDate date="${COMITYInstance.END_DATE}" /></td>
					
						%{--<td>${fieldValue(bean: COMITYInstance, field: "CREATED_BY")}</td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${COMITYInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
