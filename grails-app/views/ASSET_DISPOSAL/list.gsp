
<%@ page import="fixedAsset.ASSET_DISPOSAL" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_DISPOSAL.label', default: 'Asset Disposal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-ASSET_DISPOSAL" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-ASSET_DISPOSAL" class="content scaffold-list" role="main">
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
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">

				<thead>
					<tr>
					
						<th><g:message code="ASSET_DISPOSAL.COMITY_ID.label" default="Committee Name" /></th>
					
						<g:sortableColumn property="NAME" title="${message(code: 'ASSET_DISPOSAL.NAME.label', default: 'Disposal Name')}" />
					
						<th><g:message code="ASSET_DISPOSAL.ASSET_BOOK_ID.label" default="Asset Name" /></th>
					
						<g:sortableColumn property="SUBMISSION_DATE" title="${message(code: 'ASSET_DISPOSAL.SUBMISSION_DATE.label', default: 'Submission Name')}" />
					
						<g:sortableColumn property="ACCOUNT_HEAD" title="${message(code: 'ASSET_DISPOSAL.ACCOUNT_HEAD.label', default: 'Account Head')}" />
					
						<g:sortableColumn property="AMOUNT" title="${message(code: 'ASSET_DISPOSAL.AMOUNT.label', default: 'Amount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ASSET_DISPOSALInstanceList}" status="i" var="ASSET_DISPOSALInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ASSET_DISPOSALInstance.id}">${fieldValue(bean: ASSET_DISPOSALInstance, field: "COMITY_ID")}</g:link></td>
					
						<td>${fieldValue(bean: ASSET_DISPOSALInstance, field: "NAME")}</td>
					
						<td>${fieldValue(bean: ASSET_DISPOSALInstance, field: "ASSET_BOOK_ID")}</td>
					
						<td><g:formatDate date="${ASSET_DISPOSALInstance.SUBMISSION_DATE}" /></td>
					
						<td>${fieldValue(bean: ASSET_DISPOSALInstance, field: "ACCOUNT_HEAD")}</td>
					
						<td>${fieldValue(bean: ASSET_DISPOSALInstance, field: "AMOUNT")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ASSET_DISPOSALInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
