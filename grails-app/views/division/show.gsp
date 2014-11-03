
<%@ page import="settings.Division" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'division.label', default: 'Division')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-division" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
                <script>
                    $(document).ready(function(){
                       $.bootstrapGrowl("${flash.message}", {
                           ele: 'body', // which element to append to
                            type: 'info', // (null, 'info', 'danger', 'success')
                            offset: {from: 'top', amount: 20}, // 'top', or 'bottom'
                            align: 'right', // ('left', 'right', or 'center')
                            width: 400, // (integer, or 'auto')
                            delay: 4000, // Time while the message will be displayed. It's not equivalent to the *demo* timeOut!
                            allow_dismiss: true, // If true then will display a cross to close the popup.
                            stackup_spacing: 10 // spacing between consecutively stacked growls.

                        });


                    });
                </script>
			</g:if>

            <div class="panel-body">
			<ol class="property-list division">
			
				<g:if test="${divisionInstance?.DIV_ID}">
				<li class="fieldcontain">
					<span id="DIV_ID-label" class="property-label"><g:message code="division.DIV_ID.label" default="Division Id : " /></span>
					
						<span class="property-value" aria-labelledby="DIV_ID-label"><g:fieldValue bean="${divisionInstance}" field="DIV_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divisionInstance?.DIV_NAME}">
				<li class="fieldcontain">
					<span id="DIV_NAME-label" class="property-label"><g:message code="division.DIV_NAME.label" default="Division Name : " /></span>
					
						<span class="property-value" aria-labelledby="DIV_NAME-label"><g:fieldValue bean="${divisionInstance}" field="DIV_NAME"/></span>
					
				</li>
				</g:if>
			

			
			</ol>
			<g:form>
				<fieldset class="buttons">
                    <g:hiddenField name="id" value="${divisionInstance?.id}" />
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${divisionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

                </fieldset>
			</g:form>
            </div>
            </div>
		</div>
	</body>
</html>
