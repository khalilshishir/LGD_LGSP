<%@ page import="planningbudget.Meeting" %>



%{--<div class="fieldcontain ${hasErrors(bean: schemeCategoryInstance, field: 'schemeCategoryName', 'error')} ">--}%
    %{--<label for="schemeCategoryName">--}%
        %{--<g:message code="schemeCategory.schemeCategoryName.label" default="Scheme Category Name"/>--}%

    %{--</label>--}%
    %{--<g:textField name="schemeCategoryName" value="${schemeCategoryInstance?.schemeCategoryName}"/>--}%
%{--</div>--}%
<div class="col-xs-6">
    <div class="form-group ">
        <label for="schemeCategoryName">
        <g:message code="schemeCategory.schemeCategoryName.label" default="Name"/>

        </label>
        <g:textField class="form-control" name="schemeCategoryName" value="${schemeCategoryInstance?.schemeCategoryName}"/>
    </div>
</div>

