<%@ page import="planningbudget.Meeting" %>



%{--<div class="fieldcontain ${hasErrors(bean: meetingLevelInstance, field: 'levelName', 'error')} ">--}%
	%{--<label for="levelName">--}%
		%{--<g:message code="meetingLevel.levelName.label" default="Level Name" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="levelName" value="${meetingLevelInstance?.levelName}"/>--}%
%{--</div>--}%
<div class="col-xs-6">
    <div class="form-group">
        <label for="levelName"><g:message code="meetingLevel.levelName.label" default="Name" /></label>
        <g:textField class="form-control" name="levelName" value="${meetingLevelInstance?.levelName}"/>
    </div>
</div>

