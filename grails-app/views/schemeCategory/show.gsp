<%@ page import="planningbudget.Meeting" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'schemeCategory.label', default: 'SchemeCategory')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
%{--<a href="#show-schemeCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label"--}%
                                                                     %{--default="Skip to content&hellip;"/></a>--}%

%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        %{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>--}%
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label"--}%
                                                              %{--args="[entityName]"/></g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>


<div id="show-schemeCategory" class="content scaffold-show" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
    <h3><g:message code="default.show.label" args="[entityName]"/></h3>

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
        </div>
        <div class="panel-body">
    <ol class="property-list schemeCategory">

        <g:if test="${schemeCategoryInstance?.schemeCategoryName}">
            <li class="fieldcontain">
                <span id="schemeCategoryName-label" class="property-label"><g:message
                        code="schemeCategory.schemeCategoryName.label" default="Scheme Category Name"/></span>

                <span class="property-value" aria-labelledby="schemeCategoryName-label"><g:fieldValue
                        bean="${schemeCategoryInstance}" field="schemeCategoryName"/></span>

            </li>
        </g:if>

    </ol>

    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${schemeCategoryInstance?.id}"/>
            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${schemeCategoryInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
        </div>
        </div>
</div>
</body>
</html>
