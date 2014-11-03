<%@ page import="grantmanagement.PerformanceHead" %>





<div class="col-xs-6">
    <div class="form-group">
        %{--<label for="organiztionType">Organization type</label>--}%
        %{--<span class="required-indicator">*</span>--}%
        %{--<g:select id="budgetIncomeMasterHead" noSelection="[null:'Select one']" name="organiztionType.id" from="${grantmanagement.OrganiztionType?.values()}" optionKey="id" required="required" value="${performanceHeadInstance?.organiztionType?.name()}" class="form-control" />--}%
        %{--<g:select name="organiztionType.id" from="${grantmanagement.PerformanceOrgType.list()}" noSelection="[null:'select one']" optionKey="id" optionValue="orgName" required="" value="${performanceHeadInstance?.organiztionType}" class="form-control"/>--}%
        <label for="organiztionType">
            <g:message code="performanceHead.organiztionType.label" default="Organiztion Type" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="organiztionType" name="organiztionType.id" from="${grantmanagement.PerformanceOrgType.list()}" noSelection="[null:'Select One']" optionKey="id" optionValue="orgName" required="" value="${performanceHeadInstance?.organiztionType?.id}" class="many-to-one form-control"/>

    </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: performanceHeadInstance, field: 'organiztionType', 'error')} required">--}%
%{--<label for="organiztionType">--}%
%{--<g:message code="performanceHead.organiztionType.label" default="Organiztion Type" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select name="organiztionType" from="${grantmanagement.OrganiztionType?.values()}" noSelection="[null:'select one']" keys="${grantmanagement.OrganiztionType.values()*.name()}" required="" value="${performanceHeadInstance?.organiztionType?.name()}"/>--}%
%{--</div>--}%



<div class="col-xs-6">
    <div class="form-group">
        <label for="slNo">SL No</label>
        <span class="required-indicator">*</span>
        %{--<g:select id="budgetIncomeMasterHead" noSelection="[null:'Select one']" name="budgetIncomeMasterHead.id" from="${planningbudget.BudgetIncomeMasterHead.list()}" optionKey="id" required="required" value="${budgetIncomeDetailHeadInstance?.budgetIncomeMasterHead?.id}"  class="form-control" />--}%
        <g:field name="slNo" type="number" value="${performanceHeadInstance.slNo}" required="required" class="form-control"/>
    </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: performanceHeadInstance, field: 'slNo', 'error')} required">--}%
%{--<label for="slNo">--}%
%{--<g:message code="performanceHead.slNo.label" default="Sl No" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:field name="slNo" type="number" value="${performanceHeadInstance.slNo}" required=""/>--}%
%{--</div>--}%


<div class="col-xs-6">
    <div class="form-group">
        <label for="headName">Head Name</label>
        <span class="required-indicator">*</span>
        <g:textField class="form-control" name="headName" value="${performanceHeadInstance?.headName}"/>
    </div>
</div>



%{--<div class="fieldcontain ${hasErrors(bean: performanceHeadInstance, field: 'headName', 'error')} required">--}%
%{--<label for="headName">--}%
%{--<g:message code="performanceHead.headName.label" default="Head Name" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:textField name="headName" required="" value="${performanceHeadInstance?.headName}"/>--}%
%{--</div>--}%


<div class="col-xs-6">
    <div class="form-group">
        <label for="mark">Mark</label>
        <span class="required-indicator">*</span>
        <g:field name="mark" type="number" value="${performanceHeadInstance.mark}" required="required" class="form-control"/>
    </div>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: performanceHeadInstance, field: 'mark', 'error')} required">--}%
%{--<label for="mark">--}%
%{--<g:message code="performanceHead.mark.label" default="Mark" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:field name="mark" type="number" value="${performanceHeadInstance.mark}" required=""/>--}%
%{--</div>--}%


