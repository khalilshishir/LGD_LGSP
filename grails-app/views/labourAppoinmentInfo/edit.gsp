<%@ page import="procurement.up.communityprocurement.LabourAppoinmentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'labourAppoinmentInfo.label', default: 'লেবার অ্যাপয়েন্টমেন্ট ইনফো')}" />
		<title><g:message code="default.edit.label/" default="এডিট" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="লেবার অ্যাপয়েন্টমেন্ট ইনফো লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন লেবার অ্যাপয়েন্টমেন্ট ইনফো" args="[entityName]" /></g:link></a>

    </p>
    <div id="edit-division" class="content scaffold-edit" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.edit.label/" default="এডিট - লেবার অ্যাপয়েন্টমেন্ট ইনফো" args="[entityName]" /></h3>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${labourAppoinmentInfoInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${labourAppoinmentInfoInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>


            <div class="panel-body">

                <g:form method="post" >
                    <g:hiddenField name="id" value="${labourAppoinmentInfoInstance?.id}" />
                    <g:hiddenField name="version" value="${labourAppoinmentInfoInstance?.version}" />
                    <fieldset class="form" id="labourAppointmentInfoForm" name="labourAppointmentInfoForm">
                        <g:render template="form"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:actionSubmit class="save btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
