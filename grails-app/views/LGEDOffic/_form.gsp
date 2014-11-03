<%@ page import="integration.LgedOffice" %>



<div class="fieldcontain ${hasErrors(bean: LGEDOfficInstance, field: 'lgedOfficName', 'error')} ">
	<label for="lgedOfficName">
		<g:message code="LGEDOffic.lgedOfficName.label" default="Lged Offic Name" />
		
	</label>
	<g:textField name="lgedOfficName" value="${LGEDOfficInstance?.lgedOfficName}"/>
</div>

