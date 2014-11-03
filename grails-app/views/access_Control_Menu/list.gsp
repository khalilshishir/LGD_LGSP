<%@ page import="access_control.Access_Control_Menu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-access_Control_Menu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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


    <div id="list-access_Control_Menu" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="delete_val" title="${message(code: 'access_Control_Menu.delete_val.label', default: 'Deleteval')}" />
					
						<g:sortableColumn property="edit_val" title="${message(code: 'access_Control_Menu.edit_val.label', default: 'Editval')}" />
					
						<th><g:message code="access_Control_Menu.obj_acl_class.label" default="Objaclclass" /></th>
					
						<th><g:message code="access_Control_Menu.obj_role.label" default="Objrole" /></th>
					
						<g:sortableColumn property="read_val" title="${message(code: 'access_Control_Menu.read_val.label', default: 'Readval')}" />
					
						<g:sortableColumn property="write_val" title="${message(code: 'access_Control_Menu.write_val.label', default: 'Writeval')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${access_Control_MenuInstanceList}" status="i" var="access_Control_MenuInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${access_Control_MenuInstance.id}">${fieldValue(bean: access_Control_MenuInstance, field: "delete_val")}</g:link></td>
					
						<td><g:formatBoolean boolean="${access_Control_MenuInstance.edit_val}" /></td>
					
						<td>${fieldValue(bean: access_Control_MenuInstance, field: "obj_acl_class")}</td>
					
						<td>${fieldValue(bean: access_Control_MenuInstance, field: "obj_role")}</td>
					
						<td><g:formatBoolean boolean="${access_Control_MenuInstance.read_val}" /></td>
					
						<td><g:formatBoolean boolean="${access_Control_MenuInstance.write_val}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${access_Control_MenuInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
