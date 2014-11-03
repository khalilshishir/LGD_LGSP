
<%@ page import="procurement.up.otmprocurement.UpOtmProcurement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upOtmProcurement.label', default: 'UpOtmProcurement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>

    <div id="list-upOtmProcurement" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label/" default="লিস্ট - ইউনিয়ন পরিষদ ক্রয়" args="[entityName]" /></h3>
            </div>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
            <thead>

            <tr>

                <th><g:message code="upOtmProcurement.schemeInfo.label" default="schemeInfo" /></th>

            </tr>
            </thead>
            <tbody>
            <g:each in="${upOtmProcurementInstanceList}" status="i" var="upDirectProcurementInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show" id="${upOtmProcurementInstanceList.id}">${fieldValue(bean: upOtmProcurementInstanceList, field: "schemeInfo")}</g:link></td>

                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
    </body>
</html>





		%{--<a href="#list-upOtmProcurement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		%{--<div id="list-upOtmProcurement" class="content scaffold-list" role="main">--}%
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<table>--}%
				%{--<thead>--}%
					%{--<tr>--}%
					%{----}%
						%{--<th><g:message code="upOtmProcurement.schemeInfo.label" default="Scheme Info" /></th>--}%
					%{----}%
					%{--</tr>--}%
				%{--</thead>--}%
				%{--<tbody>--}%
				%{--<g:each in="${upOtmProcurementInstanceList}" status="i" var="upOtmProcurementInstance">--}%
					%{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
					%{----}%
						%{--<td><g:link action="show" id="${upOtmProcurementInstance.id}">${fieldValue(bean: upOtmProcurementInstance, field: "schemeInfo")}</g:link></td>--}%
					%{----}%
					%{--</tr>--}%
				%{--</g:each>--}%
				%{--</tbody>--}%
			%{--</table>--}%
			%{--<div class="pagination">--}%
				%{--<g:paginate total="${upOtmProcurementInstanceTotal}" />--}%
			%{--</div>--}%
		%{--</div>--}%
	%{--</body>--}%
%{--</html>--}%
