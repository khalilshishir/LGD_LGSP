
<%@ page import="hrms.HrLookupType" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrLookupType.label', default: 'Lookup Type')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

        <g:javascript src="jquery-1.8.3.js"></g:javascript>
        <script type="text/javascript">
            function getLookupType(fldId) {

                    // alert("Employee")
                    $('#' + fldId).autocomplete({
                        source:'<g:createLink controller='hrLookupType' action='getLookupType'/>'
                    });
                }
        </script>
	</head>
	<body>


    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
    <div id="list-hrLookupType" class="content scaffold-list" role="main">
        %{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status" style="font-family: arial, helvetica, verdana, sans-serif;font-weight: bold; color: #008000;margin: 1%;">${flash.message}</div>
        </g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed" >
            <thead>
            <tr>
                <g:sortableColumn property="lookupType"
                                  title="${message(code: 'hrLookupType.lookupType.label', default: 'Lookup Type')}"/>

                <g:sortableColumn property="isActive"
                                  title="${message(code: 'isActive.shortName.label', default: 'Active Status')}"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${hrLookupTypeInstanceList}" status="i" var="hrLookupTypeInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td><g:link action="show" id="${hrLookupTypeInstance.id}">${fieldValue(bean: hrLookupTypeInstance, field: "lookupType")}</g:link></td>
                    <td class="list-align-center">${hrLookupTypeInstance?.isActive == true?'Active':'Inactive'}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

	</body>
</html>
