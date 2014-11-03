
<%@ page import="payroll.Payscale" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payscale.label', default: 'Payscale')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-payscale" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-payscale" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list payscale">
			
				<g:if test="${payscaleInstance?.PAYSCALE_ID}">
				<li class="fieldcontain">
					<span id="PAYSCALE_ID-label" class="property-label"><g:message code="payscale.PAYSCALE_ID.label" default="Payscale ID" /></span>
					
						<span class="property-value" aria-labelledby="PAYSCALE_ID-label"><g:fieldValue bean="${payscaleInstance}" field="PAYSCALE_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscaleInstance?.GRADE_NO}">
				<li class="fieldcontain">
					<span id="GRADE_NO-label" class="property-label"><g:message code="payscale.GRADE_NO.label" default="Drade No" /></span>
					
						<span class="property-value" aria-labelledby="GRADE_NO-label"><g:fieldValue bean="${payscaleInstance}" field="GRADE_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payscaleInstance?.DESIGNATION_ID}">
				<li class="fieldcontain">
					<span id="DESIGNATION_ID-label" class="property-label"><g:message code="payscale.DESIGNATION_ID.label" default="Designation ID" /></span>
					
						<span class="property-value" aria-labelledby="DESIGNATION_ID-label"><g:fieldValue bean="${payscaleInstance}" field="DESIGNATION_ID"/></span>
					
				</li>
				</g:if>
			
			</ol>
            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${payscaleInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${payscaleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
    </body>
</html>
