<%@ page import="lookUp.Lookup" %>



%{--<div class="fieldcontain ${hasErrors(bean: lookupInstance, field: 'type_name', 'error')} ">
	<label for="type_name">
		<g:message code="lookup.type_name.label" default="Typename" />
		
	</label>
	<g:textField name="type_name" maxlength="250" value="${lookupInstance?.type_name}"/>
</div>--}%


<div class="row">
    <div class="col-xs-6" style="padding-left: 10px">
        <div class="form-group">
            <label for="type_name"><g:message code="lookup.type_name.label" default="Type Name" /></label>
            <g:textField class="form-control" name="type_name" value="${lookupInstance?.type_name}"/>
        </div>
    </div>
</div>

