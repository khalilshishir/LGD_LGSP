
<%@ page import="hrms.HrCalendar" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrCalendar.label', default: 'Calendar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hrCalendar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		%{--<div id="show-hrCalendar" class="content scaffold-show" role="main">--}%
         <div id="wrapper">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>


        <g:form>
            <fieldset class="buttons">
                <g:hiddenField name="id" value="${hrCalendarInstance?.id}" />
                <g:link class="edit" action="edit" id="${hrCalendarInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
        </g:form>

			<ol class="property-list hrCalendar">
			
				<g:if test="${hrCalendarInstance?.calendarYear}">
				<li class="fieldcontain">
					<span id="calendarYear-label" class="property-label"><g:message code="hrCalendar.calendarYear.label" default="Calendar Year:" /></span>
					
						<span class="property-value" aria-labelledby="calendarYear-label">${hrCalendarInstance?.calendarYear}</span>
					
				</li>
				</g:if>
			
				<g:if test="${hrCalendarInstance?.startMonth}">
				<li class="fieldcontain">
					<span id="startMonth-label" class="property-label"><g:message code="hrCalendar.startMonth.label" default="Start Month:" /></span>
					
						<span class="property-value" aria-labelledby="startMonth-label"><g:formatDate format="dd/MM/yyyy" date="${hrCalendarInstance?.startMonth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrCalendarInstance?.endMonth}">
				<li class="fieldcontain">
					<span id="endMonth-label" class="property-label"><g:message code="hrCalendar.endMonth.label" default="End Month:" /></span>
					
						<span class="property-value" aria-labelledby="endMonth-label"><g:formatDate format="dd/MM/yyyy" date="${hrCalendarInstance?.endMonth}" /></span>
					
				</li>
				</g:if>
			
			</ol>


            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="common-list-table">
                <thead>
                <tr>
                    <th>Calendar Year</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Period Name</th>

                </tr>
                </thead>
                <tbody>
                <g:each in="${hrCalendarMonths}" var="l">
                    <tr>
                        <td class="list-align-center">${l?.calendarYear}</td>
                        <td class="list-align-center">${formatDate(format:'dd/MM/yyyy',date:l?.startDate)}</td>
                        <td class="list-align-center">${formatDate(format:'dd/MM/yyyy',date:l?.endDate)}</td>
                        <td class="list-align-center">${l?.periodName}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${hrCalendarInstance?.id}" />
					<g:link class="edit" action="edit" id="${hrCalendarInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
