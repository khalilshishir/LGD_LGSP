
<%@ page import="fixedAsset.ASSET_MAJOR_CATEGORY" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'Asset Major Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-ASSET_MAJOR_CATEGORY" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-ASSET_MAJOR_CATEGORY" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
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



			%{--<ol class="property-list ASSET_MAJOR_CATEGORY">
			
				<g:if test="${ASSET_MAJOR_CATEGORYInstance?.MAJOR_CATEGORY_NAME}">
				<li class="fieldcontain">
					<span id="MAJOR_CATEGORY_NAME-label" class="property-label"><g:message code="ASSET_MAJOR_CATEGORY.MAJOR_CATEGORY_NAME.label" default="MAJORCATEGORYNAME" /></span>
					
						<span class="property-value" aria-labelledby="MAJOR_CATEGORY_NAME-label"><g:fieldValue bean="${ASSET_MAJOR_CATEGORYInstance}" field="MAJOR_CATEGORY_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_MAJOR_CATEGORYInstance?.DESCRIPTION}">
				<li class="fieldcontain">
					<span id="DESCRIPTION-label" class="property-label"><g:message code="ASSET_MAJOR_CATEGORY.DESCRIPTION.label" default="DESCRIPTION" /></span>
					
						<span class="property-value" aria-labelledby="DESCRIPTION-label"><g:fieldValue bean="${ASSET_MAJOR_CATEGORYInstance}" field="DESCRIPTION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_MAJOR_CATEGORYInstance?.REMARKS}">
				<li class="fieldcontain">
					<span id="REMARKS-label" class="property-label"><g:message code="ASSET_MAJOR_CATEGORY.REMARKS.label" default="REMARKS" /></span>
					
						<span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue bean="${ASSET_MAJOR_CATEGORYInstance}" field="REMARKS"/></span>
					
				</li>
				</g:if>
			
				--}%%{--<g:if test="${ASSET_MAJOR_CATEGORYInstance?.ID}">
				<li class="fieldcontain">
					<span id="ID-label" class="property-label"><g:message code="ASSET_MAJOR_CATEGORY.ID.label" default="ID" /></span>
					
						<span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${ASSET_MAJOR_CATEGORYInstance}" field="ID"/></span>
					
				</li>
				</g:if>--}%%{--
			
			</ol>--}%
            <div class="panel-body">

            <div class="col-xs-6">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: ASSET_MAJOR_CATEGORYInstance, field: 'MAJOR_CATEGORY_NAME', 'error')} ">
                        <label for="MAJOR_CATEGORY_NAME">
                            <g:message code="ASSET_MAJOR_CATEGORY.MAJOR_CATEGORY_NAME.label" default="Major Category Name" />

                        </label>
                        ${ASSET_MAJOR_CATEGORYInstance?.MAJOR_CATEGORY_NAME}
                    </div>
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: ASSET_MAJOR_CATEGORYInstance, field: 'Description', 'error')} ">
                        <label for="DESCRIPTION">
                            <g:message code="ASSET_MAJOR_CATEGORY.DESCRIPTION.label" default="DESCRIPTION" />

                        </label>
                        ${ASSET_MAJOR_CATEGORYInstance?.DESCRIPTION}
                    </div>
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <div class="fieldcontain ${hasErrors(bean: ASSET_MAJOR_CATEGORYInstance, field: 'REMARKS', 'error')} ">
                        <label for="REMARKS">
                            <g:message code="ASSET_MAJOR_CATEGORY.REMARKS.label" default="Remarks" />

                        </label>
                        ${ASSET_MAJOR_CATEGORYInstance?.REMARKS}
                    </div>
                </div>
            </div>
        </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ASSET_MAJOR_CATEGORYInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${ASSET_MAJOR_CATEGORYInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
		</div>
	</body>
</html>
