<%@ page import="hrms.HrSchool" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'hrSchool.label', default: 'School')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-hrSchool" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="wrapper">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <div id="search-div">
        <g:form id="search" name="search" action="search">
            <span><strong>School:</strong></span>
        %{--<td class="search-text"><strong>Department:</strong></td>--}%
            <g:textField id="schoolName" name="schoolName" value="${params.schoolName}" class="search-div-input"/>
        %{--<span class="buttons">--}%
            <g:submitButton class="search-button" name="SearchButton" value="Search"/>
        %{-- </span>--}%
        </g:form>
    </div>

    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="common-list-table">
        <thead>
        <tr>

            <g:sortableColumn property="schoolName"
                              title="${message(code: 'hrSchool.schoolName.label', default: 'School Name')}"/>

            <g:sortableColumn property="shortName"
                              title="${message(code: 'hrSchool.shortName.label', default: 'Short Name')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${hrSchoolInstanceList}" status="i" var="hrSchoolInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${hrSchoolInstance.id}">${fieldValue(bean: hrSchoolInstance, field: "schoolName")}</g:link></td>

                <td>${fieldValue(bean: hrSchoolInstance, field: "shortName")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${hrSchoolInstanceTotal}" params="${[schoolName: params.schoolName]}"/>
    </div>
</div>
</body>
</html>
