
<%@ page import="grantmanagement.DistributeBBGAmount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'distributeBBGAmount.label', default: 'DistributeBBGAmount')}" />
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
		<div id="show-distributeBBGAmount" class="content scaffold-show" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

                <div class="panel-body">
                    <h3>
                    <g:if test="${fiscalYr}">
                        <li class="fieldcontain">
                            <span id="fiscalYear-label" class="property-label"><g:message code="distributeBBGAmount.fiscalYear.label" default="Fiscal Year" /></span>

                            <span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear" action="show" id="${fiscalYr?.id}">${fiscalYr?.encodeAsHTML()}</g:link></span>

                        </li>
                    </g:if>
                    </h3>
            <g:each in="${distributeBBGAmountInstanceList}" var="distributeBBGAmountInstance" status="i">
			<ol class="property-list distributeBBGAmount">
				<g:if test="${distributeBBGAmountInstance?.unionParishad}">
				<li class="fieldcontain">
					<span id="unionParishad-label" class="property-label"><g:message code="distributeBBGAmount.unionParishad.label" default="Union Parishad" /></span>
					
						<span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad" action="show" id="${distributeBBGAmountInstance?.unionParishad?.id}">${distributeBBGAmountInstance?.unionParishad?.UP_NAME?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributeBBGAmountInstance?.upazila}">
				<li class="fieldcontain">
					<span id="upazila-label" class="property-label"><g:message code="distributeBBGAmount.upazila.label" default="Upazila" /></span>
					
						<span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show" id="${distributeBBGAmountInstance?.upazila?.id}">${distributeBBGAmountInstance?.upazila?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributeBBGAmountInstance?.amountPrimaryBBG}">
				<li class="fieldcontain">
					<span id="amountPrimaryBBG-label" class="property-label"><g:message code="distributeBBGAmount.amountPrimaryBBG.label" default="Amount Primary BBG" /></span>
					
						<span class="property-value" aria-labelledby="amountPrimaryBBG-label"><g:fieldValue bean="${distributeBBGAmountInstance}" field="amountPrimaryBBG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributeBBGAmountInstance?.amountAreaBBG}">
				<li class="fieldcontain">
					<span id="amountAreaBBG-label" class="property-label"><g:message code="distributeBBGAmount.amountAreaBBG.label" default="Amount Area BBG" /></span>
					
						<span class="property-value" aria-labelledby="amountAreaBBG-label"><g:fieldValue bean="${distributeBBGAmountInstance}" field="amountAreaBBG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributeBBGAmountInstance?.amountPopulationBBG}">
				<li class="fieldcontain">
					<span id="amountPopulationBBG-label" class="property-label"><g:message code="distributeBBGAmount.amountPopulationBBG.label" default="Amount Population BBG" /></span>
					
						<span class="property-value" aria-labelledby="amountPopulationBBG-label"><g:fieldValue bean="${distributeBBGAmountInstance}" field="amountPopulationBBG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributeBBGAmountInstance?.allocatedAmount}">
				<li class="fieldcontain">
					<span id="allocatedAmount-label" class="property-label"><g:message code="distributeBBGAmount.allocatedAmount.label" default="Allocated Amount" /></span>
					
						<span class="property-value" aria-labelledby="allocatedAmount-label"><g:link controller="allocatedAmount" action="show" id="${distributeBBGAmountInstance?.allocatedAmount?.id}">${distributeBBGAmountInstance?.allocatedAmount?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${distributeBBGAmountInstance?.totalAmount}">
				<li class="fieldcontain">
					<span id="totalAmount-label" class="property-label"><g:message code="distributeBBGAmount.totalAmount.label" default="Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="totalAmount-label"><g:fieldValue bean="${distributeBBGAmountInstance}" field="totalAmount"/></span>
					
				</li>
				</g:if>
                <br/>
			</ol>
            </g:each>
                    </div>
			%{--<g:form>--}%
				%{--<fieldset class="buttons">--}%
					%{--<g:hiddenField name="id" value="${distributeBBGAmountInstance?.id}" />--}%
					%{--<g:link class="edit" action="edit" id="${distributeBBGAmountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				%{--</fieldset>--}%
			%{--</g:form>--}%
                </div>
		</div>
	</body>
</html>
