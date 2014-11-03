
<%@ page import="procurement.pmu.ProcurementPlan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'procurementPlan.label', default: 'ProcurementPlan')}" />
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

    <div id="show-designation" class="content scaffold-show" role="main">
        %{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>
            %{--</div>--}%

            <div class="panel-body">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

		%{--<a href="#show-procurementPlan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%

		%{--<div id="show-procurementPlan" class="content scaffold-show" role="main">--}%
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
                %{--<div class="message" role="status">${flash.message}--}%
                %{--</div>--}%
			%{--</g:if>--}%


			<ol class="property-list procurementPlan">
			
				<g:if test="${procurementPlanInstance?.perCode}">
				<li class="fieldcontain">
					<span id="perCode-label" class="property-label"><g:message code="procurementPlan.perCode.label" default="Per Code" /></span>
					
						<span class="property-value" aria-labelledby="perCode-label"><g:fieldValue bean="${procurementPlanInstance}" field="perCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${procurementPlanInstance?.perName}">
				<li class="fieldcontain">
					<span id="perName-label" class="property-label"><g:message code="procurementPlan.perName.label" default="Per Name" /></span>
					
						<span class="property-value" aria-labelledby="perName-label"><g:fieldValue bean="${procurementPlanInstance}" field="perName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${procurementPlanInstance?.createdate}">
				<li class="fieldcontain">
					<span id="createdate-label" class="property-label"><g:message code="procurementPlan.createdate.label" default="Createdate" /></span>
					
						<span class="property-value" aria-labelledby="createdate-label"><g:formatDate date="${procurementPlanInstance?.createdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${procurementPlanInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="procurementPlan.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${procurementPlanInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${procurementPlanInstance?.createby}">
				<li class="fieldcontain">
					<span id="createby-label" class="property-label"><g:message code="procurementPlan.createby.label" default="Createby" /></span>
					
						<span class="property-value" aria-labelledby="createby-label"><g:fieldValue bean="${procurementPlanInstance}" field="createby"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${procurementPlanInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${procurementPlanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />



                </fieldset>
			</g:form>
		</div>
        </div>
        </div>

	</body>
</html>
