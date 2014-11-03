
<%@ page import="payroll.Department" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-department" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
            %{--</div>--}%

            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list department">
			
				<g:if test="${departmentInstance?.deptId}">
				<li class="fieldcontain">
					<span id="deptId-label" class="property-label"><g:message code="department.deptId.label" default="Dept Id" /></span>
					
						<span class="property-value" aria-labelledby="deptId-label"><g:fieldValue bean="${departmentInstance}" field="deptId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${departmentInstance?.deptName}">
				<li class="fieldcontain">
					<span id="deptName-label" class="property-label"><g:message code="department.deptName.label" default="Dept Name" /></span>
					
						<span class="property-value" aria-labelledby="deptName-label"><g:fieldValue bean="${departmentInstance}" field="deptName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${departmentInstance?.is_active}">
				<li class="fieldcontain">
					<span id="is_active-label" class="property-label"><g:message code="department.is_active.label" default="Isactive" /></span>
					
						<span class="property-value" aria-labelledby="is_active-label"><g:formatBoolean boolean="${departmentInstance?.is_active}" /></span>
					
				</li>
				</g:if>
			
			</ol>


            %{--<ol class="property-list department">
                <g:if test="${departmentInstance?.deptId}">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="adjustmentAmount"><g:message code="department.deptId.label" default="Department Id" /></label>
                                    <span class="property-value" aria-labelledby="deptId-label"><g:fieldValue bean="${departmentInstance}" field="deptId"/></span>
                                </div>
                            </div>
                </g:if>
                <g:if test="${departmentInstance?.deptName}">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="adjustmentAmount">		<g:message code="department.deptName.label" default="Department Name" /> </label>
                                    <span class="property-value" aria-labelledby="deptName-label"><g:fieldValue bean="${departmentInstance}" field="deptName"/></span>
                                </div>
                            </div>
                </g:if>


                <g:if test="${departmentInstance?.is_active}">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="adjustmentAmount"><g:message code="department.is_active.label" default="Is Active" /> </label>
                                    <span class="property-value" aria-labelledby="is_active-label"><g:formatBoolean boolean="${departmentInstance?.is_active}" /></span>
                                </div>
                            </div>
                </g:if>

            </ol>--}%

			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${departmentInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${departmentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
        </div>
        </div>
	</body>
</html>
