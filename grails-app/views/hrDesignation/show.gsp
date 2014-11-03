
<%@ page import="hrms.HrDesignation" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrDesignation.label', default: 'Designation')}" />
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
    <div id="show-hrDesignation" class="content scaffold-show" role="main">
        %{--<h1><g:message code="default.show.label" args="[entityName]"/></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status" style="font-family: arial, helvetica, verdana, sans-serif;font-weight: bold; color: #008000;margin: 1%;">
                    ${flash.message}
                </div>
            </g:if>


            <div class="panel-body">
                <ol class="property-list hrDesignation">

                    <g:if test="${hrDesignationInstance?.designationName}">
                        <li class="fieldcontain">
                            <span id="designationName1-label" class="property-label">
                                <g:message code="hrDesignation.designationName.label" default="Designation Name : "/>
                            </span>
                            <span class="property-value" aria-labelledby="designationName-label">
                                <g:fieldValue bean="${hrDesignationInstance}" field="designationName"/>
                            </span>
                        </li>
                    </g:if>
                    <g:if test="${hrDesignationInstance?.shortName}">
                        <li class="fieldcontain">
                            <span id="shortName1-label" class="property-label">
                                <g:message code="hrDesignation.shortName.label" default="Short Name : "/>
                            </span>
                            <span class="property-value" aria-labelledby="shortName-label">
                                <g:fieldValue bean="${hrDesignationInstance}" field="shortName"/>
                            </span>
                        </li>
                    </g:if>
                    <g:if test="${hrDesignationInstance?.sortOrder}">
                        <li class="fieldcontain">
                            <span id="sortOrder1-label" class="property-label">
                                <g:message code="hrDesignation.sortOrder.label" default="Sort Order : "/>
                            </span>
                            <span class="property-value" aria-labelledby="sortOrder-label">
                                <g:fieldValue bean="${hrDesignationInstance}" field="sortOrder"/>
                            </span>
                        </li>
                    </g:if>


                    <li class="fieldcontain">
                        <span id="isActive1-label" class="property-label">
                            <g:message code="hrDesignation.departmentName.label" default="Active Status : "/>
                        </span>
                        <span class="property-value" aria-labelledby="isActive-label">
                            <g:if test="${hrDesignationInstance?.isActive==true}">
                                Yes
                            </g:if>
                            <g:elseif test="${hrDesignationInstance?.isActive==false}">
                                No
                            </g:elseif>
                            <g:else>

                            </g:else>
                        </span>
                    </li>

                    <li class="fieldcontain" style="margin-bottom: 1%">
                    </li>

                </ol>

                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${hrDesignationInstance?.id}"/>
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${hrDesignationInstance?.id}"><g:message code="default.button.edit.label"
                                                                                                                              default="Edit"/></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete"
                                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </fieldset>
                </g:form>
            </div>
        </div>


	</body>
</html>
