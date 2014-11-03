<%@ page import="hrms.HrCalendar" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'hrCalendar.label', default: 'Calendar')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-hrCalendar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        <li><g:link class="list" action="processCalender">Hr Process Calender List</g:link></li>
    </ul>
</div>
<div id="create-hrCalendar" class="content scaffold-create" role="main">
    <h1>Edit Hr Process Calender</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${hrCalendarInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${hrCalendarInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form method="post" >
        <fieldset class="buttons">
            <g:actionSubmit class="save" action="processCalenderUpdate" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            %{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
        </fieldset>
        <g:hiddenField name="id" value="${hrCalendarInstance?.id}" />
        <g:hiddenField name="version" value="${hrCalendarInstance?.version}" />
        <fieldset class="form">
            <g:render template="processCalenderForm"/>
        </fieldset>
        <fieldset class="buttons">
            <g:actionSubmit class="save" action="processCalenderUpdate" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            %{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
        </fieldset>
    </g:form>
</div>
</body>
</html>
