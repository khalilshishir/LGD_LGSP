
<%@ page import="procurement.up.otmprocurement.IFT" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'IFT.label', default: 'আই-এফ-টি')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন আই-এফ-টি" args="[entityName]" /></g:link></a>
    </p>
    <div id="list-IFT" class="content scaffold-list" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label/" default="আই-এফ-টি লিস্ট" args="[entityName]" /></h3>
            </div>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
            <thead>
            <tr>
						<g:sortableColumn property="UP_PROC_MASTER" title="${message(code: 'IFT.UP_PROC_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />

                        <g:sortableColumn property="IFT_NUMBER" title="${message(code: 'IFT.IFT_NUMBER.label', default: 'আই এফ টি নাম্বার')}" />

						<g:sortableColumn property="LAST_CONTACT_DATE" title="${message(code: 'IFT.LAST_CONTACT_DATE.label', default: 'যোগাযোগের শেষ তারিখ')}" />
					
						<g:sortableColumn property="SUB_LAST_DATE" title="${message(code: 'IFT.SUB_LAST_DATE.label', default: 'দাখিলের শেষ তারিখ')}" />
					
						<g:sortableColumn property="SUB_LAST_TIME" title="${message(code: 'IFT.SUB_LAST_TIME.label', default: 'দাখিলের শেষ সময়')}" />
					
						<g:sortableColumn property="CREATED_DATE" title="${message(code: 'IFT.CREATED_DATE.label', default: 'আই এফ টি  তারিখ')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${IFTInstanceList}" status="i" var="IFTInstance">
					<tr>
					
						<td><g:link action="show" id="${IFTInstance.id}">${fieldValue(bean: IFTInstance, field: "UP_PROC_MASTER.SCHEME_INFO.NAME")}</g:link></td>

                        <td>${fieldValue(bean: IFTInstance, field: "IFT_NUMBER")}</td>
					
						<td><g:formatDate date="${IFTInstance.LAST_CONTACT_DATE}" format="yyyy-MM-dd"/></td>
					
						<td><g:formatDate date="${IFTInstance.SUB_LAST_DATE}" format="yyyy-MM-dd"/></td>
					
						<td>${fieldValue(bean: IFTInstance, field: "SUB_LAST_TIME")}</td>

                        <td><g:formatDate date="${IFTInstance.CREATED_DATE}" format="yyyy-MM-dd"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
