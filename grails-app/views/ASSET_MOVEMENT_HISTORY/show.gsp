
<%@ page import="fixedAsset.ASSET_MOVEMENT_HISTORY" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'Asset Movement History')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-ASSET_MOVEMENT_HISTORY" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
        %{--|
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>--}%
    </p>
		<div id="show-ASSET_MOVEMENT_HISTORY" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			%{--<ol class="property-list ASSET_MOVEMENT_HISTORY">--}%
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.OLD_STAKEHOLDER_ID}">
				<div class="col-xs-6">
                    <div class="form-group">
                    <g:message code="ASSET_MOVEMENT_HISTORY.OLD_STAKEHOLDER_ID.label" default="Old Stakeholder Name" /> :
					
						${ASSET_MOVEMENT_HISTORYInstance?.OLD_STAKEHOLDER_ID?.STAKEHOLDER_NAME}
                    </div>
                </div>

				</g:if>

			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.NEW_STAKEHOLDER_ID}">
                    <div class="col-xs-6">
                   <div class="form-group">
                    <g:message code="ASSET_MOVEMENT_HISTORY.NEW_STAKEHOLDER_ID.label" default="New Stakeholder Name" /> :
					
						${ASSET_MOVEMENT_HISTORYInstance?.NEW_STAKEHOLDER_ID?.STAKEHOLDER_NAME}
                   </div>
                    </div>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.ASSET_BOOK_ID}">
                    <div class="col-xs-6">
                   <div class="form-group">
                    <g:message code="ASSET_MOVEMENT_HISTORY.ASSET_BOOK_ID.label" default="Asset Name" /> :
					
						${ASSET_MOVEMENT_HISTORYInstance?.ASSET_BOOK_ID?.ASSET_NAME}
                    </div>
                    </div>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.DESCRIPTION}">
                    <div class="col-xs-6">
                   <div class="form-group">
                    <g:message code="ASSET_MOVEMENT_HISTORY.DESCRIPTION.label" default="Description" /> :
					
						${ASSET_MOVEMENT_HISTORYInstance}

                   </div>
                    </div>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.OLD_LOCATION_ID}">
                    <div class="col-xs-6">
                   <div class="form-group">
                    <g:message code="ASSET_MOVEMENT_HISTORY.OLD_LOCATION_ID.label" default="Old Location" /> :
					
						${ASSET_MOVEMENT_HISTORYInstance?.OLD_LOCATION_ID?.LOCATION_NAME}
                   </div>
                    </div>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.NEW_LOCATION_ID}">

                    <div class="col-xs-6">
                        <div class="form-group">
                            <g:message code="ASSET_MOVEMENT_HISTORY.NEW_LOCATION_ID.label" default="New Location" /> :

                            ${ASSET_MOVEMENT_HISTORYInstance?.NEW_LOCATION_ID?.LOCATION_NAME}
                        </div>
                    </div>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.REMARKS}">
                    <div class="col-xs-6">
                   <div class="form-group">
                    <g:message code="ASSET_MOVEMENT_HISTORY.REMARKS.label" default="REMARKS" /> :
					
						${ASSET_MOVEMENT_HISTORYInstance.REMARKS}
                   </div>
                    </div>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.ASSIGN_DATE}">
                    <div class="col-xs-6">
                   <div class="form-group">
                    <g:message code="ASSET_MOVEMENT_HISTORY.ASSIGN_DATE.label" default="Assign Date" /> :
					
						%{--${ASSET_MOVEMENT_HISTORYInstance?.ASSIGN_DATE}--}%
                    ${formatDate(format:'MM/dd/yyyy',date:ASSET_MOVEMENT_HISTORYInstance?.ASSIGN_DATE)}

                   </div>
                    </div>
				</g:if>
			
				%{--<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.CREATED_BY}">
				<li class="fieldcontain">
					<span id="CREATED_BY-label" class="property-label"><g:message code="ASSET_MOVEMENT_HISTORY.CREATED_BY.label" default="CREATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${ASSET_MOVEMENT_HISTORYInstance}" field="CREATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="ASSET_MOVEMENT_HISTORY.CREATED_DATE.label" default="CREATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${ASSET_MOVEMENT_HISTORYInstance?.CREATED_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_MOVEMENT_HISTORYInstance?.ID}">
				<li class="fieldcontain">
					<span id="ID-label" class="property-label"><g:message code="ASSET_MOVEMENT_HISTORY.ID.label" default="ID" /></span>
					
						<span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${ASSET_MOVEMENT_HISTORYInstance}" field="ID"/></span>
					
				</li>
				</g:if>
			
			</ol>--}%
        </div>
            %{--<div class="panel-body">--}%
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ASSET_MOVEMENT_HISTORYInstance?.id}" />
					%{--<g:link class="edit" action="edit" id="${ASSET_MOVEMENT_HISTORYInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				</fieldset>
			</g:form>
            %{--</div>--}%
        </div>
        </div>
	</body>
</html>
