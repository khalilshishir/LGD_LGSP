
<%@ page import="planningbudget.SchemeApprovalStatus; planningbudget.SchemeName" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schemeName.label', default: 'Scheme Name')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-schemeName" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="show-schemeName" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
            <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
                <ol class="property-list schemeName">

				<g:if test="${schemeNameInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="schemeName.unionParishad.label" default="ইউনিয়ন পরিষদঃ " /></span>

						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${schemeNameInstance?.unionParishad?.id}">${schemeNameInstance?.unionParishad?.UP_NAME.encodeAsHTML()}</g:link></span>

				</li>
				</g:if>
			
				<g:if test="${schemeNameInstance?.ward}">
				<li class="fieldcontain">
					<span id="ward-label" class="property-label"><g:message code="schemeName.ward.label" default="ওয়ার্ডঃ " /></span>
					
						<span class="property-value" aria-labelledby="ward-label"><g:link controller="ward" action="show" id="${schemeNameInstance?.ward?.id}">${schemeNameInstance?.ward?.WARD_NO.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeNameInstance?.fiscalYear}">
				<li class="fieldcontain">
					<span id="fiscalYear-label" class="property-label"><g:message code="schemeName.fiscalYear.label" default="অর্থ বছরঃ " /></span>
					
						<span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${schemeNameInstance?.fiscalYear?.id}">${schemeNameInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeNameInstance?.schemeName}">
				<li class="fieldcontain">
					<span id="schemeName-label" class="property-label"><g:message code="schemeName.schemeName.label" default="প্রকল্পের নামঃ " /></span>
					
						<span class="property-value" aria-labelledby="schemeName-label"><g:fieldValue bean="${schemeNameInstance}" field="schemeName"/></span>
					
				</li>
				</g:if>


                    %{--<g:if test="${schemeNameInstance.approvalStatus.statusName}">--}%
                        %{--<li class="fieldcontain">--}%
                        %{--<span id="approvalStatus-label" class="property-label"><g:message code="schemeName.approvalStatus.label" default="অনুমোদন এর অবস্থাঃ  " /></span>--}%

                        %{--<span class="property-value" aria-labelledby="approvalStatus-label">${schemeNameInstance.approvalStatus.statusName}</span>--}%

                        %{--</li>--}%
                    %{--</g:if>--}%
			
				%{--<g:if test="${schemeNameInstance?.isApproved}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="isApproved-label" class="property-label"><g:message code="schemeName.isApproved.label" default="Is Approved" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="isApproved-label"><g:formatBoolean boolean="${schemeNameInstance?.isApproved}" /></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%

			</ol>
                <g:if test="${schemeNameInstance?.approvalStatus==SchemeApprovalStatus.findByKeyWard("approved")}">
                    This is Approved by next lavel. U do not have permission to edit or delete it
                </g:if>
                <g:else>
                    <g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${schemeNameInstance?.id}" />
                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${schemeNameInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </g:else>

            </div>
        </div>
    </body>
</html>
