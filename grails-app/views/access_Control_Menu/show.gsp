
<%@ page import="access_control.Access_Control_Menu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'access_Control_Menu.label', default: 'Access_Control_Menu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-access_Control_Menu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
        </p>


    <div id="show-access_Control_Menu" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%


            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>


            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div class="panel-body">

			<ol class="property-list access_Control_Menu">
			
				<g:if test="${access_Control_MenuInstance?.delete_val}">
				<li class="fieldcontain">
					<span id="delete_val-label" class="property-label"><g:message code="access_Control_Menu.delete_val.label" default="Deleteval" /></span>
					
						<span class="property-value" aria-labelledby="delete_val-label"><g:formatBoolean boolean="${access_Control_MenuInstance?.delete_val}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${access_Control_MenuInstance?.edit_val}">
				<li class="fieldcontain">
					<span id="edit_val-label" class="property-label"><g:message code="access_Control_Menu.edit_val.label" default="Editval" /></span>
					
						<span class="property-value" aria-labelledby="edit_val-label"><g:formatBoolean boolean="${access_Control_MenuInstance?.edit_val}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${access_Control_MenuInstance?.obj_acl_class}">
				<li class="fieldcontain">
					<span id="obj_acl_class-label" class="property-label"><g:message code="access_Control_Menu.obj_acl_class.label" default="Objaclclass" /></span>
					
						<span class="property-value" aria-labelledby="obj_acl_class-label"><g:link controller="aclClass" action="show" id="${access_Control_MenuInstance?.obj_acl_class?.id}">${access_Control_MenuInstance?.obj_acl_class?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${access_Control_MenuInstance?.obj_role}">
				<li class="fieldcontain">
					<span id="obj_role-label" class="property-label"><g:message code="access_Control_Menu.obj_role.label" default="Objrole" /></span>
					
						<span class="property-value" aria-labelledby="obj_role-label"><g:link controller="role" action="show" id="${access_Control_MenuInstance?.obj_role?.id}">${access_Control_MenuInstance?.obj_role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${access_Control_MenuInstance?.read_val}">
				<li class="fieldcontain">
					<span id="read_val-label" class="property-label"><g:message code="access_Control_Menu.read_val.label" default="Readval" /></span>
					
						<span class="property-value" aria-labelledby="read_val-label"><g:formatBoolean boolean="${access_Control_MenuInstance?.read_val}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${access_Control_MenuInstance?.write_val}">
				<li class="fieldcontain">
					<span id="write_val-label" class="property-label"><g:message code="access_Control_Menu.write_val.label" default="Writeval" /></span>
					
						<span class="property-value" aria-labelledby="write_val-label"><g:formatBoolean boolean="${access_Control_MenuInstance?.write_val}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${access_Control_MenuInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${access_Control_MenuInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
    </div>
    </body>
</html>
