
<%@ page import="audit.UpManagementLetter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'upManagementLetter.label', default: 'UpManagementLetter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-upManagementLetter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-upManagementLetter" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel-body">
			<ol class="property-list upManagementLetter">

                <g:if test="${upManagementLetterInstance?.auditPackage.AUDIT_PACK_NAME}">
                    <li class="fieldcontain">
                        <span id="AUDIT_PACK_NAME-label" class="property-label"><g:message code="auditPackage.AUDIT_PACK_NAME.label" default="AUDIT PACK. NAME" /></span>

                        <span class="property-value" aria-labelledby="AUDIT_PACK_NAME-label"><g:fieldValue bean="${upManagementLetterInstance}" field="auditPackage.AUDIT_PACK_NAME"/></span>

                    </li>
                </g:if>




                <g:if test="${upManagementLetterInstance?.LETTER_SUBJECT}">
                <li class="fieldcontain">
                    <span id="LETTER_SUBJECT-label" class="property-label"><g:message code="upManagementLetter.LETTER_SUBJECT.label" default="LETTER SUBJECT" /></span>

                    <span class="property-value" aria-labelledby="LETTER_SUBJECT-label"><g:fieldValue bean="${upManagementLetterInstance}" field="LETTER_SUBJECT"/></span>

                </li>
            </g:if>

                <g:if test="${upManagementLetterInstance?.LETTER_SUBJECT_BN}">
                    <li class="fieldcontain">
                        <span id="LETTER_SUBJECT_BN-label" class="property-label"><g:message code="upManagementLetter.LETTER_SUBJECT_BN.label" default="চিঠির বিষয় " /></span>

                        <span class="property-value" aria-labelledby="LETTER_SUBJECT_BN-label"><g:fieldValue bean="${upManagementLetterInstance}" field="LETTER_SUBJECT_BN"/></span>

                    </li>
                </g:if>

				<g:if test="${upManagementLetterInstance?.LETTER_DESCRIPTION}">
				<li class="fieldcontain">
					<span id="LETTER_DESCRIPTION-label" class="property-label"><g:message code="upManagementLetter.LETTER_DESCRIPTION.label" default="LETTER DESCRIPTION" /></span>
					
						<span class="property-value" aria-labelledby="LETTER_DESCRIPTION-label"><g:fieldValue bean="${upManagementLetterInstance}" field="LETTER_DESCRIPTION"/></span>
					
				</li>
				</g:if>


                <g:if test="${upManagementLetterInstance?.LETTER_DESCRIPTION_BN}">
                    <li class="fieldcontain">
                        <span id="LETTER_DESCRIPTION_BN-label" class="property-label"><g:message code="upManagementLetter.LETTER_DESCRIPTION_BN.label" default="চিঠির বিবরণ" /></span>

                        <span class="property-value" aria-labelledby="LETTER_DESCRIPTION_BN-label"><g:fieldValue bean="${upManagementLetterInstance}" field="LETTER_DESCRIPTION_BN"/></span>

                    </li>
                </g:if>
			
				<g:if test="${upManagementLetterInstance?.IFROM_DATE}">
				<li class="fieldcontain">
					<span id="IFROM_DATE-label" class="property-label"><g:message code="upManagementLetter.IFROM_DATE.label" default="FROM DATE" /></span>
					
						<span class="property-value" aria-labelledby="IFROM_DATE-label"><g:formatDate date="${upManagementLetterInstance?.IFROM_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${upManagementLetterInstance?.ITO_DATE}">
				<li class="fieldcontain">
					<span id="ITO_DATE-label" class="property-label"><g:message code="upManagementLetter.ITO_DATE.label" default="TO DATE" /></span>
					
						<span class="property-value" aria-labelledby="ITO_DATE-label"><g:formatDate date="${upManagementLetterInstance?.ITO_DATE}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${upManagementLetterInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${upManagementLetterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                </div>
		</div>
	</body>
</html>
