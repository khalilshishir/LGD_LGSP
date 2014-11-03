
<%@ page import="hrms.HrLookupType" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrLookupType.label', default: 'Lookup Type')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        <style type="text/css">

        .myTable { width:100%; border-collapse:collapse;  }

        .myTable td { padding:8px; border:#999 1px solid; }
        .myTable th { padding:8px; border:#999 1px solid; background:#D9EDF7 ; }


        .myTable tr:nth-child(even) { /*(even) or (2n 0)*/

            background: #FFFFFF;
        }
        .myTable tr:nth-child(odd) { /*(odd) or (2n 1)*/

            background: #EAF4FF;
        }
        </style>
	</head>
	<body>


    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
    <div id="show-hrLookupType" class="content scaffold-show" role="main">
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
                <ol class="property-list hrLookupType">

                    <g:if test="${hrLookupTypeInstance?.lookupType}">
                        <li class="fieldcontain">
                            <span id="lookupType1-label" class="property-label">
                                <g:message code="hrLookupType.lookupType.label" default="Lookup Type : "/>
                            </span>
                            <span class="property-value" aria-labelledby="lookupType-label">
                                <g:fieldValue bean="${hrLookupTypeInstance}" field="lookupType"/>
                            </span>
                        </li>
                    </g:if>
                    <g:if test="${hrLookupTypeInstance?.isActive}">
                        <li class="fieldcontain">
                            <span id="isActive1-label" class="property-label">
                                <g:message code="hrLookupType.isActive.label" default="Active Status : "/>
                            </span>
                            <span class="property-value" aria-labelledby="isActive-label">
                                %{--<g:formatBoolean boolean="${hrLookupTypeInstance?.isActive}" />--}%
                                ${hrLookupTypeInstance?.isActive == true?'Active':'Inactive'}
                            </span>
                        </li>
                    </g:if>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0"  class="myTable">
                        <thead>
                        <tr  >

                            <th><g:message code="hrlookups.lookupValue.label" default="lookup Value"/></th>
                            <th><g:message code="hrlookups.isActive.label" default="Active Status"/></th>


                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${hrLookupList}" var="l">
                            <tr>

                                <td>${l?.lookupValue}</td>
                                <td>${l?.isActive == true?'Active':'Inactive'}</td>


                            </tr>
                        </g:each>
                        </tbody>
                    </table>

                    <li class="fieldcontain" style="margin-bottom: 1%">
                    </li>



                </ol>

                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${hrLookupTypeInstance?.id}"/>
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${hrLookupTypeInstance?.id}"><g:message code="default.button.edit.label"
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
