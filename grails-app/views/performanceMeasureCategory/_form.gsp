<%@ page import="grantmanagement.PerformanceMeasureCategory" %>


<div class="col-xs-6">
    <div class="form-group">
        <label for="categoryName">Category Name</label>
        <span class="required-indicator">*</span>
        %{--<g:textField class="form-control" name="headName" value="${performanceHeadInstance?.headName}"/>--}%
        <g:textField name="categoryName" class="form-control" required="" value="${performanceMeasureCategoryInstance?.categoryName}"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="keyword">Keyword</label>
        <span class="required-indicator">*</span>
        <g:textField name="keyword" class="form-control" required="" value="${performanceMeasureCategoryInstance?.keyword}"/>
        %{--<g:textField name="categoryName" class="form-control" required="" value="${performanceMeasureCategoryInstance?.categoryName}"/>--}%
    </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: performanceMeasureCategoryInstance, field: 'categoryName', 'error')} required">--}%
	%{--<label for="categoryName">--}%
		%{--<g:message code="performanceMeasureCategory.categoryName.label" default="Category Name" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="categoryName" required="" value="${performanceMeasureCategoryInstance?.categoryName}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: performanceMeasureCategoryInstance, field: 'keyword', 'error')} required">--}%
	%{--<label for="keyword">--}%
		%{--<g:message code="performanceMeasureCategory.keyword.label" default="Keyword" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="keyword" required="" value="${performanceMeasureCategoryInstance?.keyword}"/>--}%
%{--</div>--}%

