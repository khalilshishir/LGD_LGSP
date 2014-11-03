
<%@ page import="planningbudget.Meeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meetingLevel.label', default: 'MeetingLevel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-meetingLevel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
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
		<div id="list-meetingLevel" class="content scaffold-list" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
			<h3><g:message code="default.list.label" args="[entityName]" /></h3>
                    </div>
                </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>
					
						<g:sortableColumn property="levelName" title="${message(code: 'meetingLevel.levelName.label', default: 'Level Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${meetingLevelInstanceList}" status="i" var="meetingLevelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${meetingLevelInstance.id}">${fieldValue(bean: meetingLevelInstance, field: "levelName")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${meetingLevelInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
