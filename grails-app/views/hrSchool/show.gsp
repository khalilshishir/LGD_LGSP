<%@ page import="hrms.HrSchool" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'hrSchool.label', default: 'School')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-hrSchool" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="wrapper">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${hrSchoolInstance?.id}"/>
            <g:link class="edit" action="edit" id="${hrSchoolInstance?.id}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>

    <ol class="property-list hrSchool">

        <g:if test="${hrSchoolInstance?.schoolName}">
            <li class="fieldcontain">
                <span id="schoolName-label" class="property-label"><g:message code="hrSchool.schoolName.label"
                                                                              default="School Name: "/></span>

                <span class="property-value" aria-labelledby="schoolName-label"><g:fieldValue bean="${hrSchoolInstance}"
                                                                                              field="schoolName"/></span>

            </li>
        </g:if>

        <g:if test="${hrSchoolInstance?.shortName}">
            <li class="fieldcontain">
                <span id="shortName-label" class="property-label"><g:message code="hrSchool.shortName.label"
                                                                             default="Short Name: "/></span>

                <span class="property-value" aria-labelledby="shortName-label"><g:fieldValue bean="${hrSchoolInstance}"
                                                                                             field="shortName"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${hrSchoolInstance?.id}"/>
            <g:link class="edit" action="edit" id="${hrSchoolInstance?.id}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
