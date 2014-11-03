<%@ page import="fixedAsset.COMITY" %>


<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'COMITY_NAME', 'error')} ">
            <label for="COMITY_NAME">
                <g:message code="COMITY.COMITY_NAME.label" default="Committee Name"/>

            </label>
            <g:textField required="" class="form-control" name="COMITY_NAME" value="${COMITYInstance?.COMITY_NAME}"/>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'WORK_PURPOSE', 'error')} ">
            <label for="WORK_PURPOSE">
                <g:message code="COMITY.WORK_PURPOSE.label" default="Work Purpose"/>

            </label>
            <g:textField required="" class="form-control" name="WORK_PURPOSE" value="${COMITYInstance?.WORK_PURPOSE}"/>
        </div>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'DESCRIPTION', 'error')} ">
            <label for="DESCRIPTION">
                <g:message code="COMITY.DESCRIPTION.label" default="Description"/>

            </label>
            <g:textField required="" class="form-control" name="DESCRIPTION" value="${COMITYInstance?.DESCRIPTION}"/>
        </div>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'START_DATE', 'error')} ">
            <label for="START_DATE">
                <g:message code="COMITY.START_DATE.label" default="Start Date"/>

            </label>
            %{--<g:datePicker name="START_DATE" precision="day"  value="${COMITYInstance?.START_DATE}" default="none" noSelection="['': '']" />--}%
            <div class="bfh-datepicker"
                 data-date="${formatDate(format: 'MM/dd/yyyy', date: COMITYInstance?.START_DATE)}" data-close="true"
                 data-name="START_DATE"></div>

        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'END_DATE', 'error')} ">
            <label for="END_DATE">
                <g:message code="COMITY.END_DATE.label" default="End Date"/>

            </label>
            %{--<g:datePicker name="END_DATE" precision="day"  value="${COMITYInstance?.END_DATE}" default="none" noSelection="['': '']" />--}%
            <div class="bfh-datepicker" data-date="${formatDate(format: 'MM/dd/yyyy', date: COMITYInstance?.END_DATE)}"
                 data-close="true" data-name="END_DATE"></div>

        </div>
    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
        <label for="IS_ACTIVE">
            <g:message code="ASSET_BOOK.IS_ACTIVE.label" default="Active" />

        </label>
        <g:checkBox name="IS_ACTIVE" value="${COMITYInstance?.IS_ACTIVE}" />
    </div>
</div>
%{--<div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'CREATED_BY', 'error')} ">
	<label for="CREATED_BY">
		<g:message code="COMITY.CREATED_BY.label" default="CREATEDBY" />
		
	</label>
	<g:field name="CREATED_BY" type="number" value="${COMITYInstance.CREATED_BY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="COMITY.CREATED_DATE.label" default="CREATEDDATE" />
		
	</label>
	<g:datePicker name="CREATED_DATE" precision="day"  value="${COMITYInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'comityDtl', 'error')} ">
	<label for="comityDtl">
		<g:message code="COMITY.comityDtl.label" default="Comity Dtl" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${COMITYInstance?.comityDtl?}" var="c">
    <li><g:link controller="COMITY_DTL" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="COMITY_DTL" action="create" params="['COMITY.id': COMITYInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'COMITY_DTL.label', default: 'COMITY_DTL')])}</g:link>
</li>
</ul>

</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: COMITYInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="COMITY.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${COMITYInstance.ID}" required=""/>
</div>--}%


        %{--<div class="panel panel-info">
            <div class="panel-heading">
                <h5 class="panel-title">Comity Members List</h5>
            </div>--}%
            %{--<div class="panel-body">--}%

                <div class="col-xs-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h5 class="panel-title">Comity Members List</h5>
                        </div>
            <ul class="one-to-many">
                <div class="panel-body">
                <fieldset>
                <g:render template="details"/>
                </fieldset>
                </div>
            </ul>
            </div>
            </div>
        %{--</div>--}%





