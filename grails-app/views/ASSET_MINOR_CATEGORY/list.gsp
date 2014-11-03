
<%@ page import="fixedAsset.ASSET_MINOR_CATEGORY" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_MINOR_CATEGORY.label', default: 'ASSET_MINOR_CATEGORY')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-ASSET_MINOR_CATEGORY" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
        <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
            <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code=" Home"/></a>
            |
            <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Minor Asset" args="[entityName]" /></g:link></a>
        </p>

		<div id="list-ASSET_MINOR_CATEGORY" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="Minor Asset list" args="[entityName]" /></h3>
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
					
						<th><g:message code="ASSET_MINOR_CATEGORY.ASSET_MAJOR_CATEGORY_ID.label" default="Category" /></th>
					
						<g:sortableColumn property="MINOR_CATEGORY_NAME" title="${message(code: 'ASSET_MINOR_CATEGORY.MINOR_CATEGORY_NAME.label', default: 'Category Name')}" />
					
						<g:sortableColumn property="DESCRIPTION" title="${message(code: 'ASSET_MINOR_CATEGORY.DESCRIPTION.label', default: 'Description')}" />
					
						<g:sortableColumn property="REMARKS" title="${message(code: 'ASSET_MINOR_CATEGORY.REMARKS.label', default: 'Remarks')}" />
					
						%{--<g:sortableColumn property="ID" title="${message(code: 'ASSET_MINOR_CATEGORY.ID.label', default: 'ID')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ASSET_MINOR_CATEGORYInstanceList}" status="i" var="ASSET_MINOR_CATEGORYInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ASSET_MINOR_CATEGORYInstance.id}">${fieldValue(bean: ASSET_MINOR_CATEGORYInstance, field: "ASSET_MAJOR_CATEGORY_ID")}</g:link></td>
					
						<td>${fieldValue(bean: ASSET_MINOR_CATEGORYInstance, field: "MINOR_CATEGORY_NAME")}</td>
					
						<td>${fieldValue(bean: ASSET_MINOR_CATEGORYInstance, field: "DESCRIPTION")}</td>
					
						<td>${fieldValue(bean: ASSET_MINOR_CATEGORYInstance, field: "REMARKS")}</td>
					
						%{--<td>${fieldValue(bean: ASSET_MINOR_CATEGORYInstance, field: "ID")}</td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ASSET_MINOR_CATEGORYInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
