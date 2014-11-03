
<%@ page import="monitoring.INSPECTION" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'INSPECTION.label', default: 'Inspection')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-INSPECTION" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-INSPECTION" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="BANK_SOMONNOI" title="${message(code: 'INSPECTION.BANK_SOMONNOI.label', default: 'BANKSOMONNOI')}" />
					
						<g:sortableColumn property="BANK_SOMONNOI_NO" title="${message(code: 'INSPECTION.BANK_SOMONNOI_NO.label', default: 'BANKSOMONNOINO')}" />
					
						<g:sortableColumn property="BANK_SOMONNOI_YES" title="${message(code: 'INSPECTION.BANK_SOMONNOI_YES.label', default: 'BANKSOMONNOIYES')}" />
					
						<g:sortableColumn property="BGB_AMOUNT" title="${message(code: 'INSPECTION.BGB_AMOUNT.label', default: 'BGBAMOUNT')}" />
					
						<g:sortableColumn property="BGCC_JACHAI" title="${message(code: 'INSPECTION.BGCC_JACHAI.label', default: 'BGCCJACHAI')}" />
					
						<g:sortableColumn property="BGCC_JACHAI_NO" title="${message(code: 'INSPECTION.BGCC_JACHAI_NO.label', default: 'BGCCJACHAINO')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${INSPECTIONInstanceList}" status="i" var="INSPECTIONInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${INSPECTIONInstance.id}">${fieldValue(bean: INSPECTIONInstance, field: "BANK_SOMONNOI")}</g:link></td>
					
						<td><g:formatBoolean boolean="${INSPECTIONInstance.BANK_SOMONNOI_NO}" /></td>
					
						<td><g:formatBoolean boolean="${INSPECTIONInstance.BANK_SOMONNOI_YES}" /></td>
					
						<td>${fieldValue(bean: INSPECTIONInstance, field: "BGB_AMOUNT")}</td>
					
						<td>${fieldValue(bean: INSPECTIONInstance, field: "BGCC_JACHAI")}</td>
					
						<td><g:formatBoolean boolean="${INSPECTIONInstance.BGCC_JACHAI_NO}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${INSPECTIONInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
