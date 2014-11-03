<%@ page import="grantmanagement.PerformanceOrgType" %>


<div class="col-xs-6">
    <div class="form-group">
        <label for="orgName">Organization Name</label>
        <span class="required-indicator">*</span>
        <g:textField class="form-control" name="orgName" value="${performanceOrgTypeInstance?.orgName}"/>
    </div>
</div>


%{--<div class="fieldcontain ${hasErrors(bean: performanceOrgTypeInstance, field: 'orgName', 'error')} required">--}%
	%{--<label for="orgName">--}%
		%{--<g:message code="performanceOrgType.orgName.label" default="Org Name" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="orgName" required="" value="${performanceOrgTypeInstance?.orgName}"/>--}%
%{--</div>--}%

<div class="col-xs-6">
    <div class="form-group">
        <label for="keyword">Keyword</label>
        <span class="required-indicator">*</span>
        <g:textField class="form-control" name="keyword" value="${performanceOrgTypeInstance?.keyword}"/>
    </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: performanceOrgTypeInstance, field: 'keyword', 'error')} ">--}%
	%{--<label for="keyword">--}%
		%{--<g:message code="performanceOrgType.keyword.label" default="Keyword" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="keyword" value="${performanceOrgTypeInstance?.keyword}"/>--}%
%{--</div>--}%

