<%@ page import="access_control.Role" %>

    %{--<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'authority', 'error')} required">--}%
        %{--<label for="authority">--}%
            %{--<g:message code="role.authority.label" default="Authority" />--}%
            %{--<span class="required-indicator">*</span>--}%
        %{--</label>--}%
        %{--<g:textField name="authority" required="" value="${roleInstance?.authority}"/>--}%
    %{--</div>--}%

    <div class="col-xs-4">
        <div class="form-group">
            <label for="authority">
                <g:message code="role.authority.label" default="Authority*" />
            </label>
            <g:textField class="form-control" name="authority" required="" value="${roleInstance?.authority}"/>
        </div>
    </div>