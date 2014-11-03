
<%@ page import="procurement.up.otmprocurement.UpOtmProcurement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

    <p align="right" style="color:#666; font-size: 15px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 15px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 15px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 15px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>

    <div id="show-upOtmProcurement" class="content scaffold-show" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="panel-body">
                <ol class="property-list upDirectProcurement">

                    <g:if test="${upOtmProcurementInstance?.schemeInfo}">
                        <li class="fieldcontain">
                            <span id="schemeInfo-label" class="property-label"><g:message code="upOtmProcurement.schemeInfo.label" default="scheme Info" /></span>

                            <span class="property-value" aria-labelledby="schemeInfo-label"><g:link controller="schemeInfo" action="show" id="${upDirectProcurementInstance?.schemeInfo?.id}">${upDirectProcurementInstance?.schemeInfo?.encodeAsHTML()}</g:link></span>

                        </li>
                    </g:if>

                    <g:if test="${upOtmProcurementInstance?.upOtmProcurementDetails}">
                        <li class="fieldcontain">
                            <span id="upDirectProcDetails-label" class="property-label"><g:message code="upOtmProcurement.upDirectProcDetails.label" default="Up Direct Proc Details" /></span>

                            <g:each in="${upOtmProcurementInstance.upOtmProcurementDetails}" var="u">
                                <span class="property-value" aria-labelledby="upDirectProcDetails-label"><g:link controller="upDirectProcDetails" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
                            </g:each>

                        </li>
                    </g:if>

                </ol>


                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${upOtmProcurementInstance?.id}" />
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${upOtmProcurementInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>


    %{----}%
		%{--<a href="#show-upOtmProcurement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		%{--<div id="show-upOtmProcurement" class="content scaffold-show" role="main">--}%
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<ol class="property-list upOtmProcurement">--}%
			%{----}%
				%{--<g:if test="${upOtmProcurementInstance?.schemeInfo}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="schemeInfo-label" class="property-label"><g:message code="upOtmProcurement.schemeInfo.label" default="Scheme Info" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="schemeInfo-label"><g:link controller="schemeInfo" action="show" id="${upOtmProcurementInstance?.schemeInfo?.id}">${upOtmProcurementInstance?.schemeInfo?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
				%{--<g:if test="${upOtmProcurementInstance?.upOtmProcurementDetails}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="upOtmProcurementDetails-label" class="property-label"><g:message code="upOtmProcurement.upOtmProcurementDetails.label" default="Up Otm Procurement Details" /></span>--}%
					%{----}%
						%{--<g:each in="${upOtmProcurementInstance.upOtmProcurementDetails}" var="u">--}%
						%{--<span class="property-value" aria-labelledby="upOtmProcurementDetails-label"><g:link controller="upOtmProcurementDetails" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>--}%
						%{--</g:each>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			%{----}%
			%{--</ol>--}%
			%{--<g:form>--}%
				%{--<fieldset class="buttons">--}%
					%{--<g:hiddenField name="id" value="${upOtmProcurementInstance?.id}" />--}%
					%{--<g:link class="edit" action="edit" id="${upOtmProcurementInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				%{--</fieldset>--}%
			%{--</g:form>--}%
		%{--</div>--}%
	%{--</body>--}%
%{--</html>--}%
