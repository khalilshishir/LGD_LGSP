
<%@ page import="audit.UpManagementLetter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upManagementLetter.label', default: 'UpManagementLetter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-upManagementLetter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="list-upManagementLetter" class="content scaffold-list" role="main">
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
                </div>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>

						<g:sortableColumn property="AUDIT_PACKAGE_ID" title="${message(code: 'upManagementLetter.AUDIT_PACKAGE_ID.label', default: 'AUDIT PACKAGE NAME')}" />
                        <g:sortableColumn property="LETTER_SUBJECT" title="${message(code: 'upManagementLetter.LETTER_SUBJECT.label', default: 'LETTER SUBJECT')}" />
                        <g:sortableColumn property="LETTER_SUBJECT_BN" title="${message(code: 'upManagementLetter.LETTER_SUBJECT_BN.label', default: 'চিঠির বিষয়')}" />
					
						<g:sortableColumn property="LETTER_DESCRIPTION" title="${message(code: 'upManagementLetter.LETTER_DESCRIPTION.label', default: 'LETTER DESCRIPTION')}" />
                        <g:sortableColumn property="LETTER_DESCRIPTION_BN" title="${message(code: 'upManagementLetter.LETTER_DESCRIPTION_BN.label', default: 'চিঠির বিবরণ')}" />
					
						<g:sortableColumn property="IFROM_DATE" title="${message(code: 'upManagementLetter.IFROM_DATE.label', default: 'FROM DATE')}" />
					
						<g:sortableColumn property="ITO_DATE" title="${message(code: 'upManagementLetter.ITO_DATE.label', default: 'TO DATE')}" />


					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upManagementLetterInstanceList}" status="i" var="upManagementLetterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" id="${upManagementLetterInstance.id}">${fieldValue(bean: upManagementLetterInstance, field: "auditPackage.AUDIT_PACK_NAME")}</g:link></td>
                        <td>${fieldValue(bean: upManagementLetterInstance, field: "LETTER_SUBJECT")}</td>

                        <td>${fieldValue(bean: upManagementLetterInstance, field: "LETTER_SUBJECT_BN")}</td>

                        <td>${fieldValue(bean: upManagementLetterInstance, field: "LETTER_DESCRIPTION")}</td>

                        <td>${fieldValue(bean: upManagementLetterInstance, field: "LETTER_DESCRIPTION_BN")}</td>
					
						<td><g:formatDate date="${upManagementLetterInstance.IFROM_DATE}" /></td>
					
						<td><g:formatDate date="${upManagementLetterInstance.ITO_DATE}" /></td>
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${upManagementLetterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
