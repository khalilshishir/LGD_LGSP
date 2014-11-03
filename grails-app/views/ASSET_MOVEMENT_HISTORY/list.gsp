
<%@ page import="fixedAsset.ASSET_MOVEMENT_HISTORY" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_MOVEMENT_HISTORY.label', default: 'Asset Movement History')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-ASSET_MOVEMENT_HISTORY" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
       %{-- |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
   --}%
    </p>
		<div id="list-ASSET_MOVEMENT_HISTORY" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			%{--<table class="table table-striped">--}%
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">

				<thead>
					<tr>
					
						<th><g:message code="ASSET_MOVEMENT_HISTORY.OLD_STAKEHOLDER_ID.label" default="Old Stakeholder" /></th>
					
						<th><g:message code="ASSET_MOVEMENT_HISTORY.NEW_STAKEHOLDER_ID.label" default="New Stakeholder" /></th>
					
						<th><g:message code="ASSET_MOVEMENT_HISTORY.ASSET_BOOK_ID.label" default="Asset" /></th>
					
						<g:sortableColumn property="DESCRIPTION" title="${message(code: 'ASSET_MOVEMENT_HISTORY.DESCRIPTION.label', default: 'Description')}" />
					
						<th><g:message code="ASSET_MOVEMENT_HISTORY.OLD_LOCATION_ID.label" default="Old Location" /></th>
					
						<th><g:message code="ASSET_MOVEMENT_HISTORY.NEW_LOCATION_ID.label" default="New Location" /></th>
                        <th><g:message code="ASSET_MOVEMENT_HISTORY.ASSIGN_DATE.label" default="Assign Date" /></th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${ASSET_MOVEMENT_HISTORYInstanceList}" status="i" var="ASSET_MOVEMENT_HISTORYInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ASSET_MOVEMENT_HISTORYInstance.id}">${fieldValue(bean: ASSET_MOVEMENT_HISTORYInstance, field: "OLD_STAKEHOLDER_ID")}</g:link></td>
					
						<td>${fieldValue(bean: ASSET_MOVEMENT_HISTORYInstance, field: "NEW_STAKEHOLDER_ID")}</td>
					
						<td>${fieldValue(bean: ASSET_MOVEMENT_HISTORYInstance, field: "ASSET_BOOK_ID")}</td>
					
						<td>${fieldValue(bean: ASSET_MOVEMENT_HISTORYInstance, field: "DESCRIPTION")}</td>
					
						<td>${fieldValue(bean: ASSET_MOVEMENT_HISTORYInstance, field: "OLD_LOCATION_ID")}</td>
					
						<td>${fieldValue(bean: ASSET_MOVEMENT_HISTORYInstance, field: "NEW_LOCATION_ID")}</td>
                        <td>${fieldValue(bean: ASSET_MOVEMENT_HISTORYInstance, field: "ASSIGN_DATE")}</td>


					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ASSET_MOVEMENT_HISTORYInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
