<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.acl.AclClass" %>



<div class="fieldcontain ${hasErrors(bean: aclClassInstance, field: 'className', 'error')} required">
	<label for="className">
		<g:message code="aclClass.className.label" default="Class Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="className" cols="40" rows="5" maxlength="255" required="" value="${aclClassInstance?.className}"/>
</div>

