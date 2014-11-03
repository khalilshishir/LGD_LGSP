
<%@ page import="fixedAsset.ASSET_MAJOR_CATEGORY" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_MAJOR_CATEGORY.label', default: 'Asset Major Category')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-ASSET_MAJOR_CATEGORY" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-ASSET_MAJOR_CATEGORY" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="MAJOR_CATEGORY_NAME" title="${message(code: 'ASSET_MAJOR_CATEGORY.MAJOR_CATEGORY_NAME.label', default: 'Major Category Name')}" />
					
						<g:sortableColumn property="DESCRIPTION" title="${message(code: 'ASSET_MAJOR_CATEGORY.DESCRIPTION.label', default: 'Description')}" />
					
						<g:sortableColumn property="REMARKS" title="${message(code: 'ASSET_MAJOR_CATEGORY.REMARKS.label', default: 'Remarks')}" />
					
						%{--<g:sortableColumn property="ID" title="${message(code: 'ASSET_MAJOR_CATEGORY.ID.label', default: 'ID')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ASSET_MAJOR_CATEGORYInstanceList}" status="i" var="ASSET_MAJOR_CATEGORYInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ASSET_MAJOR_CATEGORYInstance.id}">${fieldValue(bean: ASSET_MAJOR_CATEGORYInstance, field: "MAJOR_CATEGORY_NAME")}</g:link></td>
					
						<td>${fieldValue(bean: ASSET_MAJOR_CATEGORYInstance, field: "DESCRIPTION")}</td>
					
						<td>${fieldValue(bean: ASSET_MAJOR_CATEGORYInstance, field: "REMARKS")}</td>
					
						%{--<td>${fieldValue(bean: ASSET_MAJOR_CATEGORYInstance, field: "ID")}</td>--}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			%{--<div class="pagination">
				<g:paginate total="${ASSET_MAJOR_CATEGORYInstanceTotal}" />
			</div>--}%
		</div>
	</body>
</html>
