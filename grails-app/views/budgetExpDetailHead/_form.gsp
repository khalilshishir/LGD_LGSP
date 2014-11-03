<%@ page import="planningbudget.BudgetExpDetailHead" %>


<div class="row" style="padding-left: 14px">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="budgetExpenditureMasterHead">Expenditure master head</label>
            <span class="required-indicator">*</span>
            <g:select id="budgetExpenditureMasterHead" noSelection="[null:'Select one']" name="budgetExpenditureMasterHead.id" from="${planningbudget.BudgetExpenditureMasterHead.list()}" optionKey="id" required="required" value="${budgetExpenditureDetailHeadInstance?.budgetExpenditureMasterHead?.id}"  class="form-control" />
        </div>
    </div><!--column-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="detailHeadCode">Expenditure detail head id</label>
            <span class="required-indicator">*</span>
            <g:textField class="form-control" name="detailHeadCode" value="${budgetExpDetailHeadInstance?.detailHeadCode}"/>
        </div>
    </div><!--column-->
</div><!--row-->
<div class="row"  style="padding-left: 14px">
    <div class="col-xs-12">
        <div class="form-group">
            <label for="detailHeadName">Expenditure detail head name</label>
            <span class="required-indicator">*</span>
            <g:textField class="form-control" name="detailHeadName" value="${budgetExpDetailHeadInstance?.detailHeadName}" required="required"/>
            <!--<div class="bfh-datepicker" data-min="01/15/2013" data-close="true"></div>-->
        </div>
    </div><!--column-->
</div>



%{--<div class="fieldcontain ${hasErrors(bean: budgetExpDetailHeadInstance, field: 'detailHeadName', 'error')} ">--}%
%{--<label for="detailHeadName">--}%
%{--<g:message code="budgetExpDetailHead.detailHeadName.label" default="Detail Head Name" />--}%

%{--</label>--}%
%{--<g:textField name="detailHeadName" value="${budgetExpDetailHeadInstance?.detailHeadName}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: budgetExpDetailHeadInstance, field: 'budgetExpenditureMasterHead', 'error')} required">--}%
%{--<label for="budgetExpenditureMasterHead">--}%
%{--<g:message code="budgetExpDetailHead.budgetExpenditureMasterHead.label" default="Budget Expenditure Master Head" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select id="budgetExpenditureMasterHead" name="budgetExpenditureMasterHead.id" from="${budget.BudgetExpenditureMasterHead.list()}" optionKey="id" required="" value="${budgetExpDetailHeadInstance?.budgetExpenditureMasterHead?.id}" class="many-to-one"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: budgetExpDetailHeadInstance, field: 'detailHeadCode', 'error')} ">--}%
%{--<label for="detailHeadCode">--}%
%{--<g:message code="budgetExpDetailHead.detailHeadCode.label" default="Detail Head Code" />--}%
%{----}%
%{--</label>--}%
%{--<g:textField name="detailHeadCode" value="${budgetExpDetailHeadInstance?.detailHeadCode}"/>--}%
%{--</div>--}%



%{--<div class="fieldcontain ${hasErrors(bean: budgetExpDetailHeadInstance, field: 'detailHeadName', 'error')} ">--}%
	%{--<label for="detailHeadName">--}%
		%{--<g:message code="budgetExpDetailHead.detailHeadName.label" default="Detail Head Name" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="detailHeadName" value="${budgetExpDetailHeadInstance?.detailHeadName}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: budgetExpDetailHeadInstance, field: 'budgetExpenditureMasterHead', 'error')} required">--}%
	%{--<label for="budgetExpenditureMasterHead">--}%
		%{--<g:message code="budgetExpDetailHead.budgetExpenditureMasterHead.label" default="Budget Expenditure Master Head" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="budgetExpenditureMasterHead" name="budgetExpenditureMasterHead.id" from="${planningbudget.BudgetExpenditureMasterHead.list()}" optionKey="id" required="" value="${budgetExpDetailHeadInstance?.budgetExpenditureMasterHead?.id}" class="many-to-one"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: budgetExpDetailHeadInstance, field: 'detailHeadCode', 'error')} ">--}%
	%{--<label for="detailHeadCode">--}%
		%{--<g:message code="budgetExpDetailHead.detailHeadCode.label" default="Detail Head Code" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="detailHeadCode" value="${budgetExpDetailHeadInstance?.detailHeadCode}"/>--}%
%{--</div>--}%

