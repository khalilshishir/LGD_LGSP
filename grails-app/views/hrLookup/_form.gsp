<%@ page import="hrms.HrLookup" %>

<div id="wrapper">
    <table class="promint_block">
        <tr class="tdSpaceCompress">
            <td>Lookup Value:</td>
            <td>
                <g:textField id="lookupValue" name="lookupValue" required="" value="${hrLookupInstance?.lookupValue}" class="mid_sized_txt"/>
            </td>
        </tr>

        <tr>
            <td>Lookup Type:</td>
            <td>
                <g:select id="hrLookupTypeIdLookupType" name="hrLookupTypeIdLookupType.id" from="${hrms.HrLookupType.list()}" optionKey="id" required="" value="${hrLookupInstance?.hrLookupTypeIdLookupType?.id}" class="many-to-one"/>
            </td>
        </tr>

        <tr>
            <td>Is Active:</td>
            <td>
                <g:if test="${params.action=='create'}">
                    <g:checkBox name="isActive" checked="true"/>
                </g:if>
                <g:else>
                    <g:checkBox name="isActive"  value="${hrLookupInstance?.isActive}" checked="${hrLookupInstance?.isActive}"/>
                </g:else>
            </td>
        </tr>
    </table>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: hrLookupInstance, field: 'lookupValue', 'error')} ">
	<label for="lookupValue">
		<g:message code="hrLookup.lookupValue.label" default="Lookup Value" />
		
	</label>
	<g:textField name="lookupValue" value="${hrLookupInstance?.lookupValue}"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrLookupInstance, field: 'hrLookupTypeIdLookupType', 'error')} required">
    <label for="hrLookupTypeIdLookupType">
        <g:message code="hrLookup.hrLookupTypeIdLookupType.label" default="Lookup Type" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="hrLookupTypeIdLookupType" name="hrLookupTypeIdLookupType.id" from="${hrms.HrLookupType.list()}" optionKey="id" required="" value="${hrLookupInstance?.hrLookupTypeIdLookupType?.id}" class="many-to-one"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: hrLookupInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="hrLookup.isActive.label" default="Is Active" />
		
	</label>
    <g:if test="${params.action=='create'}">
        <g:checkBox name="isActive" checked="true"/>
    </g:if>
    <g:else>
        <g:checkBox name="isActive"  value="${hrLookupInstance?.isActive}" checked="${hrLookupInstance?.isActive}"/>
    </g:else>
</div>--}%



