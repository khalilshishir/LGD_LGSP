
<%@ page import="fixedAsset.LOCATION" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LOCATION.label', default: 'Location')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-LOCATION" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-LOCATION" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
            %{--<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>--}%
            <script>
                $(document).ready(function(){
                    $("#a").fadeOut(8000);
                });
            </script>
            <g:if test="${flash.message}">
                <div class="panel-body">
                    <div id="a" class="alert alert-success" role="alert">
                        <div class="message" role="status">
                            <h3 class="panel-title">${flash.message}</h3>
                        </div>
                    </div>
                </div>
            </g:if>
			%{--<table>--}%
        %{--<table class="table table-striped">--}%
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">

				<thead>
					<tr>
					
						<g:sortableColumn property="LOCATION_NAME" title="${message(code: 'LOCATION.LOCATION_NAME.label', default: 'Location name')}" />
					
						<g:sortableColumn property="LOCATION_ADDRESS" title="${message(code: 'LOCATION.LOCATION_ADDRESS.label', default: 'Address')}" />
					
						<th><g:message code="LOCATION.DIVISION_ID.label" default="Division" /></th>
					
						<th><g:message code="LOCATION.DISTRICT_ID.label" default="District" /></th>
					
						<th><g:message code="LOCATION.UPAZILLA_ID.label" default="Upazalla" /></th>
					
						<g:sortableColumn property="REMARKS" title="${message(code: 'LOCATION.REMARKS.label', default: 'Remarks')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LOCATIONInstanceList}" status="i" var="LOCATIONInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LOCATIONInstance.id}">${fieldValue(bean: LOCATIONInstance, field: "LOCATION_NAME")}</g:link></td>
					
						<td>${fieldValue(bean: LOCATIONInstance, field: "LOCATION_ADDRESS")}</td>
					
						<td>${fieldValue(bean: LOCATIONInstance, field: "DIVISION_ID")}</td>
					
						<td>${fieldValue(bean: LOCATIONInstance, field: "DISTRICT_ID")}</td>
					
						<td>${fieldValue(bean: LOCATIONInstance, field: "UPAZILLA_ID")}</td>
					
						<td>${fieldValue(bean: LOCATIONInstance, field: "REMARKS")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			%{--<div class="pagination">
				<g:paginate total="${LOCATIONInstanceTotal}" />
			</div>--}%
		</div>
	</body>
</html>
