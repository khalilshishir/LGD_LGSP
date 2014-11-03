
<%@ page import="fixedAsset.STAKEHOLDER" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'STAKEHOLDER.label', default: 'STAKEHOLDER')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-STAKEHOLDER" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code=" Home"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Stake Holder" args="[entityName]" /></g:link></a>
        </p>

		<div id="list-STAKEHOLDER" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="Stake Holder list" args="[entityName]" /></h3>
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
			<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="STAKEHOLDER_NAME" title="${message(code: 'STAKEHOLDER.STAKEHOLDER_NAME.label', default: 'Name')}" />
					
						<g:sortableColumn property="STAKEHOLDER_ADDRESS" title="${message(code: 'STAKEHOLDER.STAKEHOLDER_ADDRESS.label', default: 'Address')}" />
					
						<g:sortableColumn property="EMAIL" title="${message(code: 'STAKEHOLDER.EMAIL.label', default: 'EMAIL')}" />
					
						<th><g:message code="STAKEHOLDER.DIVISION_ID.label" default="Division Name" /></th>
					
						<th><g:message code="STAKEHOLDER.DISTRICT_ID.label" default="District Name" /></th>
					
						<th><g:message code="STAKEHOLDER.UPAZILLA_ID.label" default="Upzila Name" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${STAKEHOLDERInstanceList}" status="i" var="STAKEHOLDERInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${STAKEHOLDERInstance.id}">${fieldValue(bean: STAKEHOLDERInstance, field: "STAKEHOLDER_NAME")}</g:link></td>
					
						<td>${fieldValue(bean: STAKEHOLDERInstance, field: "STAKEHOLDER_ADDRESS")}</td>
					
						<td>${fieldValue(bean: STAKEHOLDERInstance, field: "EMAIL")}</td>
					
						<td>${fieldValue(bean: STAKEHOLDERInstance, field: "DIVISION_ID")}</td>
					
						<td>${fieldValue(bean: STAKEHOLDERInstance, field: "DISTRICT_ID")}</td>
					
						<td>${fieldValue(bean: STAKEHOLDERInstance, field: "UPAZILLA_ID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${STAKEHOLDERInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
