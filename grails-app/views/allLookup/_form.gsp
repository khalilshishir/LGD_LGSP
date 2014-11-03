<%@ page import="lookUp.AllLookup" %>





%{--<div class="fieldcontain ${hasErrors(bean: allLookupInstance, field: 'allLookup', 'error')} ">
	<label for="allLookup">
		<g:message code="allLookup.allLookup.label" default="All Lookup" />
		
	</label>
	<g:select name="allLookup" from="${lookUp.AllLookup.list()}" multiple="multiple" optionKey="id" size="5" value="${allLookupInstance?.allLookup*.id}" class="many-to-many"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: allLookupInstance, field: 'lookup_name', 'error')} ">
    <label for="lookup_name">
        <g:message code="allLookup.lookup_name.label" default="Lookupname" />

    </label>
    <g:textField name="lookup_name" maxlength="250" value="${allLookupInstance?.lookup_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: allLookupInstance, field: 'parentIdAllLookup', 'error')} required">
	<label for="parentIdAllLookup">
		<g:message code="allLookup.parentIdAllLookup.label" default="Parent Id All Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parentIdAllLookup" name="parentIdAllLookup.id" from="${lookUp.Lookup.list()}" optionKey="id" required="" value="${allLookupInstance?.parentIdAllLookup?.id}" class="many-to-one"/>
</div>--}%


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="lookup_name"><g:message code="allLookup.lookup_name.label" default="Lookup Name" /></label>
            <g:textField class="form-control" name="lookup_name" value="${allLookupInstance?.lookup_name}"/>
        </div>

    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="parentIdAllLookup"><g:message code="allLookup.parentIdAllLookup.label" default="Parent Id All Lookup" /></label>
            %{--<g:textField class="form-control" name="EMPLOYEE_NAME" value="${allLookupInstance?.EMPLOYEE_NAME}"/>--}%
            <g:select id="parentIdAllLookup" name="parentIdAllLookup.id" from="${lookUp.Lookup.list()}" optionKey="id" value="${allLookupInstance?.parentIdAllLookup?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

