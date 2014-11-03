<%@ page import="planningbudget.BudgetIncomeDetailHead" %>

<div class="row" style="padding-left: 14px">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="budgetIncomeMasterHead">Income master head id</label>
            <span class="required-indicator">*</span>
            <g:select id="budgetIncomeMasterHead" noSelection="[null:'Select one']" name="budgetIncomeMasterHead.id" from="${planningbudget.BudgetIncomeMasterHead.list()}" optionKey="id" required="required" value="${budgetIncomeDetailHeadInstance?.budgetIncomeMasterHead?.id}"  class="form-control" />

            <!--<div class="bfh-datepicker" data-min="01/15/2013" data-close="true"></div>-->
        </div>
    </div><!--column-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="detailHeadCode">Income detail head id</label>
            <span class="required-indicator">*</span>
            <g:textField class="form-control" name="detailHeadCode" value="${budgetIncomeDetailHeadInstance?.detailHeadCode}"/>
        </div>
    </div><!--column-->
</div><!--row-->

<div class="row" style="padding-left: 14px">
    <div class="col-xs-12">
        <div class="form-group">
            <label for="detailHeadName">Income detail head name</label>
            <span class="required-indicator">*</span>
            <g:textField class="form-control" name="detailHeadName" value="${budgetIncomeDetailHeadInstance?.detailHeadName}" required="required" />

            <!--<div class="bfh-datepicker" data-min="01/15/2013" data-close="true"></div>-->
        </div>
    </div><!--column-->
</div>



%{--<div class="fieldcontain ${hasErrors(bean: budgetIncomeDetailHeadInstance, field: 'detailHeadName', 'error')} ">--}%
	%{--<label for="detailHeadName">--}%
		%{--<g:message code="budgetIncomeDetailHead.detailHeadName.label" default="Detail Head Name" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="detailHeadName" value="${budgetIncomeDetailHeadInstance?.detailHeadName}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: budgetIncomeDetailHeadInstance, field: 'budgetIncomeMasterHead', 'error')} required">--}%
	%{--<label for="budgetIncomeMasterHead">--}%
		%{--<g:message code="budgetIncomeDetailHead.budgetIncomeMasterHead.label" default="Budget Income Master Head" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="budgetIncomeMasterHead" name="budgetIncomeMasterHead.id" from="${planningbudget.BudgetIncomeMasterHead.list()}" optionKey="id" required="" value="${budgetIncomeDetailHeadInstance?.budgetIncomeMasterHead?.id}" class="many-to-one"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: budgetIncomeDetailHeadInstance, field: 'detailHeadCode', 'error')} ">--}%
	%{--<label for="detailHeadCode">--}%
		%{--<g:message code="budgetIncomeDetailHead.detailHeadCode.label" default="Detail Head Code" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textField name="detailHeadCode" value="${budgetIncomeDetailHeadInstance?.detailHeadCode}"/>--}%
%{--</div>--}%

