
<%@ page import="fixedAsset.ASSET_DISTRIBUTION" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_DISTRIBUTION.label', default: 'Asset Distribution')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-ASSET_DISTRIBUTION" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-ASSET_DISTRIBUTION" class="content scaffold-show" role="main">
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
            <div class="panel-body">

			%{--<ol class="property-list ASSET_DISTRIBUTION">
			
				<g:if test="${ASSET_DISTRIBUTIONInstance?.STAKEHOLDER_ID}">
				<li class="fieldcontain">
					<span id="STAKEHOLDER_ID-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.STAKEHOLDER_ID.label" default="STAKEHOLDERID" /></span>
					
						<span class="property-value" aria-labelledby="STAKEHOLDER_ID-label"><g:link controller="STAKEHOLDER" action="show" id="${ASSET_DISTRIBUTIONInstance?.STAKEHOLDER_ID?.id}">${ASSET_DISTRIBUTIONInstance?.STAKEHOLDER_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISTRIBUTIONInstance?.ASSET_BOOK_ID}">
				<li class="fieldcontain">
					<span id="ASSET_BOOK_ID-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.ASSET_BOOK_ID.label" default="ASSETBOOKID" /></span>
					
						<span class="property-value" aria-labelledby="ASSET_BOOK_ID-label"><g:link controller="ASSET_BOOK" action="show" id="${ASSET_DISTRIBUTIONInstance?.ASSET_BOOK_ID?.id}">${ASSET_DISTRIBUTIONInstance?.ASSET_BOOK_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISTRIBUTIONInstance?.DESCRIPTION}">
				<li class="fieldcontain">
					<span id="DESCRIPTION-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.DESCRIPTION.label" default="DESCRIPTION" /></span>
					
						<span class="property-value" aria-labelledby="DESCRIPTION-label"><g:fieldValue bean="${ASSET_DISTRIBUTIONInstance}" field="DESCRIPTION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISTRIBUTIONInstance?.LOCATION_ID}">
				<li class="fieldcontain">
					<span id="LOCATION_ID-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.LOCATION_ID.label" default="LOCATIONID" /></span>
					
						<span class="property-value" aria-labelledby="LOCATION_ID-label"><g:link controller="LOCATION" action="show" id="${ASSET_DISTRIBUTIONInstance?.LOCATION_ID?.id}">${ASSET_DISTRIBUTIONInstance?.LOCATION_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISTRIBUTIONInstance?.REMARKS}">
				<li class="fieldcontain">
					<span id="REMARKS-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.REMARKS.label" default="REMARKS" /></span>
					
						<span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue bean="${ASSET_DISTRIBUTIONInstance}" field="REMARKS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISTRIBUTIONInstance?.ASSIGN_DATE}">
				<li class="fieldcontain">
					<span id="ASSIGN_DATE-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.ASSIGN_DATE.label" default="ASSIGNDATE" /></span>
					
						<span class="property-value" aria-labelledby="ASSIGN_DATE-label"><g:formatDate date="${ASSET_DISTRIBUTIONInstance?.ASSIGN_DATE}" /></span>
					
				</li>
				</g:if>
			
				--}%%{--<g:if test="${ASSET_DISTRIBUTIONInstance?.CREATED_BY}">
				<li class="fieldcontain">
					<span id="CREATED_BY-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.CREATED_BY.label" default="CREATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${ASSET_DISTRIBUTIONInstance}" field="CREATED_BY"/></span>
					
				</li>
				</g:if>--}%%{--
			
				--}%%{--<g:if test="${ASSET_DISTRIBUTIONInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.CREATED_DATE.label" default="CREATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${ASSET_DISTRIBUTIONInstance?.CREATED_DATE}" /></span>
					
				</li>
				</g:if>--}%%{--
			
				--}%%{--<g:if test="${ASSET_DISTRIBUTIONInstance?.ID}">
				<li class="fieldcontain">
					<span id="ID-label" class="property-label"><g:message code="ASSET_DISTRIBUTION.ID.label" default="ID" /></span>
					
						<span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${ASSET_DISTRIBUTIONInstance}" field="ID"/></span>
					
				</li>
				</g:if>--}%%{--
			
			</ol>--}%
                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'STAKEHOLDER_ID', 'error')} ">
                            <label for="STAKEHOLDER_ID">
                                <g:message code="ASSET_DISTRIBUTION.STAKEHOLDER_ID.label" default="Stakeholder Name"/>

                            </label>
                            ${ASSET_DISTRIBUTIONInstance?.STAKEHOLDER_ID?.STAKEHOLDER_NAME}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'ASSET_BOOK_ID', 'error')} ">
                            <label for="ASSET_BOOK_ID">
                                <g:message code="ASSET_DISTRIBUTION.ASSET_BOOK_ID.label" default="Asset Name"/>

                            </label>
                            ${ASSET_DISTRIBUTIONInstance?.ASSET_BOOK_ID?.ASSET_NAME}
                        </div>
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'DESCRIPTION', 'error')} ">
                            <label for="DESCRIPTION">
                                <g:message code="ASSET_DISTRIBUTION.DESCRIPTION.label" default="Description"/>

                            </label>
                            ${ASSET_DISTRIBUTIONInstance?.DESCRIPTION}
                        </div>
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'LOCATION_ID', 'error')} ">
                            <label for="LOCATION_ID">
                                <g:message code="ASSET_DISTRIBUTION.LOCATION_ID.label" default="Location"/>

                            </label>
                            ${ASSET_DISTRIBUTIONInstance?.LOCATION_ID?.LOCATION_NAME}
                        </div>

                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'REMARKS', 'error')} ">
                            <label for="REMARKS">
                                <g:message code="ASSET_DISTRIBUTION.REMARKS.label" default="Remarks"/>

                            </label>
                            ${ASSET_DISTRIBUTIONInstance?.REMARKS}
                        </div>
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'ASSIGN_DATE', 'error')} ">
                            <label for="ASSIGN_DATE">
                                <g:message code="ASSET_DISTRIBUTION.ASSIGN_DATE.label" default="Assign Date"/>

                            </label>
                            %{--<g:datePicker name="ASSIGN_DATE" precision="day" value="${ASSET_DISTRIBUTIONInstance?.ASSIGN_DATE}"
                          default="none" noSelection="['': '']"/>--}%
                          ${formatDate(format:'MM/dd/yyyy',date:ASSET_DISTRIBUTIONInstance?.ASSIGN_DATE)}

                        </div>
                    </div>
                </div>
                <g:if test="${ASSET_DISTRIBUTIONInstance?.file_url_}">

                    <div class="col-xs-6">
                        <div class="form-group">
                            <div class="fieldcontain ${hasErrors(bean: ASSET_DISTRIBUTIONInstance, field: 'file_url_', 'error')} ">
                                <label for="REMARKS">
                                    <g:message code="ASSET_DISTRIBUTION.file_url_.label" default="Download :"/>

                                </label>
                                <g:form>
                                    <input type="hidden" name="file_url_" id="file_url_" value="${ASSET_DISTRIBUTIONInstance?.file_url_}"/>
                                    <g:actionSubmit class="btn btn-success" action="downloadFile" value="${message(code: 'default.button.download.label', default: 'Download')}"  />
                                </g:form>
                            </div>
                        </div>
                    </div>
                </g:if>

            </div>
            <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ASSET_DISTRIBUTIONInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${ASSET_DISTRIBUTIONInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
        </div>
	</body>
</html>
