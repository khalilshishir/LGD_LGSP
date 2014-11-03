<%@ page import="planningbudget.SchemeApprovalStatus" %>

    <div class="row" style="padding-left: 15px">

        <div class="col-xs-6 ${hasErrors(bean: schemeApprovalStatusInstance, field: 'keyWard', 'error')} ">
            <div class="form-group">
                <label for="keyWard">
                    <g:message code="schemeApprovalStatus.keyWard.label" default="Key Ward" />
                </label>
                <span class="required-indicator">*</span>
                <g:textField class="form-control" name="keyWard" required="" value="${schemeApprovalStatusInstance?.keyWard}"/>
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: schemeApprovalStatusInstance, field: 'keyWard', 'error')} ">--}%
            %{--<label for="keyWard">--}%
                %{--<g:message code="schemeApprovalStatus.keyWard.label" default="Key Ward" />--}%
                %{----}%
            %{--</label>--}%
            %{--<g:textField name="keyWard" value="${schemeApprovalStatusInstance?.keyWard}"/>--}%
        %{--</div>--}%

        <div class="col-xs-6 ${hasErrors(bean: schemeApprovalStatusInstance, field: 'statusName', 'error')} ">
            <div class="form-group">
                <label for="statusName">
                    <g:message code="schemeApprovalStatus.statusName.label" default="Status Name" />
                </label>
                <span class="required-indicator">*</span>
                <g:textField class="form-control" name="statusName" required="" value="${schemeApprovalStatusInstance?.statusName}"/>
            </div>
        </div>

        %{--<div class="fieldcontain ${hasErrors(bean: schemeApprovalStatusInstance, field: 'statusName', 'error')} ">--}%
            %{--<label for="statusName">--}%
                %{--<g:message code="schemeApprovalStatus.statusName.label" default="Status Name" />--}%
                %{----}%
            %{--</label>--}%
            %{--<g:textField name="statusName" value="${schemeApprovalStatusInstance?.statusName}"/>--}%
        %{--</div>--}%

    </div>