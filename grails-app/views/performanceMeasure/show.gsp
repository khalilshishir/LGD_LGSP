<%@ page import="grantmanagement.PerformanceMeasure" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'performanceMeasure.label', default: 'PerformanceMeasure')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-performanceMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                         default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-performanceMeasure" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list performanceMeasure">

        <g:if test="${performanceMeasureInstance?.measureCategory}">
            <li class="fieldcontain">
                <span id="measureCategory-label" class="property-label"><g:message
                        code="performanceMeasure.measureCategory.label" default="Measure Category"/></span>

                <span class="property-value" aria-labelledby="measureCategory-label"><g:link
                        controller="performanceMeasureCategory" action="show"
                        id="${performanceMeasureInstance?.measureCategory?.id}">${performanceMeasureInstance?.measureCategory?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${performanceMeasureInstance?.unionParishad}">
            <li class="fieldcontain">
                <span id="unionParishad-label" class="property-label"><g:message
                        code="performanceMeasure.unionParishad.label" default="Union Parishad"/></span>

                <span class="property-value" aria-labelledby="unionParishad-label"><g:link controller="unionParishad"
                                                                                           action="show"
                                                                                           id="${performanceMeasureInstance?.unionParishad?.id}">${performanceMeasureInstance?.unionParishad?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${performanceMeasureInstance?.remark}">
            <li class="fieldcontain">
                <span id="remark-label" class="property-label"><g:message code="performanceMeasure.remark.label"
                                                                          default="Remark"/></span>

                <span class="property-value" aria-labelledby="remark-label"><g:fieldValue
                        bean="${performanceMeasureInstance}" field="remark"/></span>

            </li>
        </g:if>

        <g:if test="${performanceMeasureInstance?.fiscalYear}">
            <li class="fieldcontain">
                <span id="fiscalYear-label" class="property-label"><g:message code="performanceMeasure.fiscalYear.label"
                                                                              default="Fiscal Year"/></span>

                <span class="property-value" aria-labelledby="fiscalYear-label"><g:link controller="fiscalYear"
                                                                                        action="show"
                                                                                        id="${performanceMeasureInstance?.fiscalYear?.id}">${performanceMeasureInstance?.fiscalYear?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${performanceMeasureInstance?.upazila}">
            <li class="fieldcontain">
                <span id="upazila-label" class="property-label"><g:message code="performanceMeasure.upazila.label"
                                                                           default="Upazila"/></span>

                <span class="property-value" aria-labelledby="upazila-label"><g:link controller="upazila" action="show"
                                                                                     id="${performanceMeasureInstance?.upazila?.id}">${performanceMeasureInstance?.upazila?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${performanceMeasureInstance?.mark}">
            <li class="fieldcontain">
                <span id="mark-label" class="property-label"><g:message code="performanceMeasure.mark.label"
                                                                        default="Mark"/></span>

                <span class="property-value" aria-labelledby="mark-label"><g:fieldValue
                        bean="${performanceMeasureInstance}" field="mark"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${performanceMeasureInstance?.id}"/>
            <g:link class="edit" action="edit" id="${performanceMeasureInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
