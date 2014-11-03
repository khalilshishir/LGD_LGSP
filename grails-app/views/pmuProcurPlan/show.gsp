<%@ page import="procurement.pmu.PmuProcPlan" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pmuProcurPlan.label', default: 'PmuProcPlan')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>
<div id="show-pmuProcurPlan" class="content scaffold-show" role="main">
%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
<div class="panel panel-info">
<div class="panel-heading">
    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
</div>


<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<div class="panel-body">
<ol class="property-list trainingFeedback">




<g:if test="${pmuProcurPlanInstance?.SLNO}">
    <li class="fieldcontain">
        <span id="SLNO-label" class="property-label"><g:message code="pmuProcurPlan.SLNO.label"
                                                                default="SLNO"/></span>

        <span class="property-value" aria-labelledby="SLNO-label"><g:fieldValue bean="${pmuProcurPlanInstance}"
                                                                                field="SLNO"/></span>

    </li>
</g:if>


<g:if test="${pmuProcurPlanInstance?.PACKAGES_NO}">
    <li class="fieldcontain">
        <span id="PACKAGES_NO-label" class="property-label"><g:message code="pmuProcurPlan.PACKAGES_NO.label"
                                                                       default="PACKAGESNO"/></span>

        <span class="property-value" aria-labelledby="PACKAGES_NO-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="PACKAGES_NO"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.CONTRACT_DESCRIPTION}">
    <li class="fieldcontain">
        <span id="CONTRACT_DESCRIPTION-label" class="property-label"><g:message
                code="pmuProcurPlan.CONTRACT_DESCRIPTION.label" default="CONTRACTDESCRIPTION"/></span>

        <span class="property-value" aria-labelledby="CONTRACT_DESCRIPTION-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="CONTRACT_DESCRIPTION"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.UNIT}">
    <li class="fieldcontain">
        <span id="UNIT-label" class="property-label"><g:message code="pmuProcurPlan.UNIT.label"
                                                                default="UNIT"/></span>

        <span class="property-value" aria-labelledby="UNIT-label"><g:fieldValue bean="${pmuProcurPlanInstance}"
                                                                                field="UNIT"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.QTY_NOS}">
    <li class="fieldcontain">
        <span id="QTY_NOS-label" class="property-label"><g:message code="pmuProcurPlan.QTY_NOS.label"
                                                                   default="QTYNOS"/></span>

        <span class="property-value" aria-labelledby="QTY_NOS-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="QTY_NOS"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.ESTIMATED_PRICE}">
    <li class="fieldcontain">
        <span id="ESTIMATED_PRICE-label" class="property-label"><g:message
                code="pmuProcurPlan.ESTIMATED_PRICE.label" default="ESTIMATEDPRICE"/></span>

        <span class="property-value" aria-labelledby="ESTIMATED_PRICE-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="ESTIMATED_PRICE"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.PROCEDURE_METHOD}">
    <li class="fieldcontain">
        <span id="PROCEDURE_METHOD-label" class="property-label"><g:message
                code="pmuProcurPlan.PROCEDURE_METHOD.label" default="PROCEDUREMETHOD"/></span>

        <span class="property-value" aria-labelledby="PROCEDURE_METHOD-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="PROCEDURE_METHOD"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.PROCUREMEN_GUIDLINE}">
    <li class="fieldcontain">
        <span id="PROCUREMEN_GUIDLINE-label" class="property-label"><g:message
                code="pmuProcurPlan.PROCUREMEN_GUIDLINE.label" default="PROCUREMENGUIDLINE"/></span>

        <span class="property-value" aria-labelledby="PROCUREMEN_GUIDLINE-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="PROCUREMEN_GUIDLINE"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.PRIORS}">
    <li class="fieldcontain">
        <span id="PRIORS-label" class="property-label"><g:message code="pmuProcurPlan.PRIORS.label"
                                                                  default="PRIORS"/></span>

        <span class="property-value" aria-labelledby="PRIORS-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="PRIORS"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.PLANNED_DATE}">
    <li class="fieldcontain">
        <span id="PLANNED_DATE-label" class="property-label"><g:message code="pmuProcurPlan.PLANNED_DATE.label"
                                                                        default="PLANNEDDATE"/></span>

        <span class="property-value" aria-labelledby="PLANNED_DATE-label"><g:formatDate
                date="${pmuProcurPlanInstance?.PLANNED_DATE}"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.PLANNED_DATE_CONTRCT}">
    <li class="fieldcontain">
        <span id="PLANNED_DATE_CONTRCT-label" class="property-label"><g:message
                code="pmuProcurPlan.PLANNED_DATE_CONTRCT.label" default="PLANNEDDATECONTRCT"/></span>

        <span class="property-value" aria-labelledby="PLANNED_DATE_CONTRCT-label"><g:formatDate
                date="${pmuProcurPlanInstance?.PLANNED_DATE_CONTRCT}"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.PLANNED_DATE_DELIVARY}">
    <li class="fieldcontain">
        <span id="PLANNED_DATE_DELIVARY-label" class="property-label"><g:message
                code="pmuProcurPlan.PLANNED_DATE_DELIVARY.label" default="PLANNEDDATEDELIVARY"/></span>

        <span class="property-value" aria-labelledby="PLANNED_DATE_DELIVARY-label"><g:formatDate
                date="${pmuProcurPlanInstance?.PLANNED_DATE_DELIVARY}"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.NAME_OF_SUPPLIER}">
    <li class="fieldcontain">
        <span id="NAME_OF_SUPPLIER-label" class="property-label"><g:message
                code="pmuProcurPlan.NAME_OF_SUPPLIER.label" default="NAMEOFSUPPLIER"/></span>

        <span class="property-value" aria-labelledby="NAME_OF_SUPPLIER-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="NAME_OF_SUPPLIER"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.PROCESS_PROCUREMENT}">
    <li class="fieldcontain">
        <span id="PROCESS_PROCUREMENT-label" class="property-label"><g:message
                code="pmuProcurPlan.PROCESS_PROCUREMENT.label" default="PROCESSPROCUREMENT"/></span>

        <span class="property-value" aria-labelledby="PROCESS_PROCUREMENT-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="PROCESS_PROCUREMENT"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.CREATE_DATE}">
    <li class="fieldcontain">
        <span id="CREATE_DATE-label" class="property-label"><g:message code="pmuProcurPlan.CREATE_DATE.label"
                                                                       default="CREATEDATE"/></span>

        <span class="property-value" aria-labelledby="CREATE_DATE-label"><g:formatDate
                date="${pmuProcurPlanInstance?.CREATE_DATE}"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.IS_ACTIVE}">
    <li class="fieldcontain">
        <span id="IS_ACTIVE-label" class="property-label"><g:message code="pmuProcurPlan.IS_ACTIVE.label"
                                                                     default="ISACTIVE"/></span>

        <span class="property-value" aria-labelledby="IS_ACTIVE-label"><g:formatBoolean
                boolean="${pmuProcurPlanInstance?.IS_ACTIVE}"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.CREATE_BY}">
    <li class="fieldcontain">
        <span id="CREATE_BY-label" class="property-label"><g:message code="pmuProcurPlan.CREATE_BY.label"
                                                                     default="CREATEBY"/></span>

        <span class="property-value" aria-labelledby="CREATE_BY-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="CREATE_BY"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.UPDATED_BY}">
    <li class="fieldcontain">
        <span id="UPDATED_BY-label" class="property-label"><g:message code="pmuProcurPlan.UPDATED_BY.label"
                                                                      default="UPDATEDBY"/></span>

        <span class="property-value" aria-labelledby="UPDATED_BY-label"><g:fieldValue
                bean="${pmuProcurPlanInstance}" field="UPDATED_BY"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.UPDATE_DATE}">
    <li class="fieldcontain">
        <span id="UPDATE_DATE-label" class="property-label"><g:message code="pmuProcurPlan.UPDATE_DATE.label"
                                                                       default="UPDATEDATE"/></span>

        <span class="property-value" aria-labelledby="UPDATE_DATE-label"><g:formatDate
                date="${pmuProcurPlanInstance?.UPDATE_DATE}"/></span>

    </li>
</g:if>

<g:if test="${pmuProcurPlanInstance?.pmuProcurPlanWbs}">
    <li class="fieldcontain">
        <span id="pmuProcurPlanWbs-label" class="property-label"><g:message
                code="pmuProcurPlan.pmuProcurPlanWbs.label" default="Pmu Procur Plan Wbs"/></span>

        <g:each in="${pmuProcurPlanInstance.pmuProcurPlanWbs}" var="p">
            <span class="property-value" aria-labelledby="pmuProcurPlanWbs-label"><g:link
                    controller="pmuProcurPlanWbs" action="show"
                    id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
        </g:each>

    </li>
</g:if>

</ol>
<g:form>

    <fieldset class="buttons">
        <g:hiddenField name="id" value="${pmuProcurPlanInstance?.id}" />
        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${pmuProcurPlanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </fieldset>
</g:form>
</div>
</div>
</div>
</body>
</html>