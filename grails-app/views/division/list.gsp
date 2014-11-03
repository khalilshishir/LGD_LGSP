
<%@ page import="settings.Division" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'division.label', default: 'Division')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-division" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-division" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
                <script>
                    $(document).ready(function(){
                        $.bootstrapGrowl("${flash.message}", {
                            ele: 'body', // which element to append to
                            type: 'success', // (null, 'info', 'danger', 'success')
                            offset: {from: 'top', amount: 20}, // 'top', or 'bottom'
                            align: 'right', // ('left', 'right', or 'center')
                            width: 400, // (integer, or 'auto')
                            delay: 4000, // Time while the message will be displayed. It's not equivalent to the *demo* timeOut!
                            allow_dismiss: true, // If true then will display a cross to close the popup.
                            stackup_spacing: 10 // spacing between consecutively stacked growls.*//*

                        });

                    });
                </script>			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
            %{--<table id="grid-basic" class="table table-condensed table-hover table-striped">--}%
                <thead>
					<tr>
					
						<g:sortableColumn property="DIV_ID" title="${message(code: 'division.DIV_ID.label', default: 'DIVID')}" />
					
						<g:sortableColumn property="DIV_NAME" title="${message(code: 'division.DIV_NAME.label', default: 'DIVNAME')}" />
					
						%{--<g:sortableColumn property="CREATED_BY" title="${message(code: 'division.CREATED_BY.label', default: 'CREATEDBY')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="CREATED_DATE" title="${message(code: 'division.CREATED_DATE.label', default: 'CREATEDDATE')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="UPDATED_BY" title="${message(code: 'division.UPDATED_BY.label', default: 'UPDATEDBY')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="UPDATED_DATE" title="${message(code: 'division.UPDATED_DATE.label', default: 'UPDATEDDATE')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${divisionInstanceList}" status="i" var="divisionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${divisionInstance.id}">${fieldValue(bean: divisionInstance, field: "DIV_ID")}</g:link></td>
					
						<td>${fieldValue(bean: divisionInstance, field: "DIV_NAME")}</td>
					
						%{--<td>${fieldValue(bean: divisionInstance, field: "CREATED_BY")}</td>--}%
					
						%{--<td><g:formatDate date="${divisionInstance.CREATED_DATE}" /></td>--}%
					
						%{--<td>${fieldValue(bean: divisionInstance, field: "UPDATED_BY")}</td>--}%
					
						%{--<td><g:formatDate date="${divisionInstance.UPDATED_DATE}" /></td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>


</html>
