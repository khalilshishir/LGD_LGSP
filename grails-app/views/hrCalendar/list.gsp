
<%@ page import="hrms.HrCalendar" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrCalendar.label', default: 'Calendar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hrCalendar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

			</ul>
		</div>
		%{--<div id="list-hrCalendar" class="content scaffold-list" role="main">--}%
         <div id="wrapper">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

    %{--Add Search option contents--}%
        <div id="search-div">
            <g:form id="search" name="search" action="search">
                <span><strong>Calendar Year:</strong></span>
                <g:select id="hrCalendar" name="hrCalendar" noSelection="['':'Select one']"
                          from="${hrms.HrCalendar.list()}" value="${params.hrPayscale}" optionKey="id"  optionValue="calendarYear" class="many-to-one"/>
            %{--<span class="buttons">--}%
                <g:submitButton class="search-button" name="searchbtn" value="Search"/>
            %{--</span>--}%
            </g:form>
        </div>
        %{--Add Search option contents--}%


            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="common-list-table">
				<thead>
					<tr>
					   <th>Calendar Year</th>
						%{--<g:sortableColumn property="calendarYear" title="${message(code: 'hrCalendar.calendarYear.label', default: 'Calendar Year')}" />--}%
                        <th>Start Month</th>
						%{--<g:sortableColumn property="startMonth" title="${message(code: 'hrCalendar.startMonth.label', default: 'Start Month')}" />--}%
                        <th>End Month</th>
						%{--<g:sortableColumn property="endMonth" title="${message(code: 'hrCalendar.endMonth.label', default: 'End Month')}" />--}%
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hrCalendarInstanceList}" status="i" var="hrCalendarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td class="list-align-center"><g:link action="show" id="${hrCalendarInstance.id}">${hrCalendarInstance?.calendarYear}</g:link></td>
					
						<td class="list-align-center"><g:formatDate format="dd/MM/yyyy" date="${hrCalendarInstance.startMonth}" /></td>
					
						<td class="list-align-center"><g:formatDate format="dd/MM/yyyy" date="${hrCalendarInstance.endMonth}" /></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hrCalendarInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
