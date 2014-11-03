
<%@ page import="hrms.HrLookup" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrLookup.label', default: 'Lookup')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <g:javascript src="jquery-1.8.3.js"></g:javascript>
        <script type="text/javascript">
            function getLookupValue(fldId) {

                // alert("Employee")
                $('#' + fldId).autocomplete({
                    source:'<g:createLink controller='hrLookup' action='getLookupValue'/>'
                });
            }
        </script>
	</head>
	<body>
		<a href="#list-hrLookup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		%{--<div id="list-hrLookup" class="content scaffold-list" role="main">--}%
        <div id="wrapper">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

        %{--Add Search option contents--}%
            <div id="search-div" style="width: 80%;">
                <g:form id="search" name="search" action="search">
                    <span><strong>Lookup Type:</strong></span>
                    <g:select id="hrLookupType" name="hrLookupType" noSelection="['':'Select one']"
                              from="${hrms.HrLookupType.list()}" value="${params.hrLookupType}" optionKey="id"  class="many-to-one"/>
                    <span><strong>Lookup :</strong></span>
                    <g:textField id="lookupValue" name="lookupValue" value="${params.lookupValue}" onfocus="getLookupValue(this.id);" onkeyup="getLookupValue(this.id);" class="search-div-input"/>

                    %{--<span class="buttons">--}%
                        <g:submitButton class="search-button" name="searchbtn" value="Search"/>
                    %{--</span>--}%
                </g:form>
            </div>
            %{--Add Search option contents--}%


            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="common-list-table">
				<thead>
					<tr>
					    <th>Lookup Value</th>
						%{--<g:sortableColumn property="lookupValue" title="${message(code: 'hrLookup.lookupValue.label', default: 'Lookup Value')}" />--}%
                        <th>Lookup Type</th>
                        %{--<g:message code="hrLookup.hrLookupTypeIdLookupType.label" default="Lookup Type" />--}%
                        <th>Is Active?</th>
                        %{--<g:sortableColumn property="isActive" title="${message(code: 'hrLookup.isActive.label', default: 'Is Active')}" />--}%
					

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hrLookupInstanceList}" status="i" var="hrLookupInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${hrLookupInstance.id}">${fieldValue(bean: hrLookupInstance, field: "lookupValue")}</g:link></td>

                        %{--<td>${fieldValue(bean: hrLookupInstance, field: "lookupValue")}</td>--}%

                        <td>${fieldValue(bean: hrLookupInstance, field: "hrLookupTypeIdLookupType")}</td>

                        <td class="list-align-center">${hrLookupInstance?.isActive ==true?'Active':'Inactive'}</td>
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hrLookupInstanceTotal}" params="${[hrLookupType: params.hrLookupType,lookupValue: params.lookupValue]}"/>
			</div>
		</div>
	</body>
</html>
