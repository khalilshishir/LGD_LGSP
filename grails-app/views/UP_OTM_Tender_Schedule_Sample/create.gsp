<%@ page import="procurement.up.otmprocurement.UP_OTM_Tender_Schedule_Sample" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'UP_OTM_Tender_Schedule_Sample.label', default: 'ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল')}" />
		<title><g:message code="default.create.label/" default="তৈরি করুন" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল লিস্ট" args="[entityName]" /></g:link></a>
    </p>

    <div id="create-up_Proc_Master" class="content scaffold-create" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.create.label/" default="ইউপি ও-টি-এম টেন্ডার শিডিউল স্যাম্পল" args="[entityName]"/></h3>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${UP_OTM_Tender_Schedule_SampleInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${UP_OTM_Tender_Schedule_SampleInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                    error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>

            <div class="panel-body">
                <g:form action="save">
                    <fieldset class="form" id="upOtmTenderScheduleSampleForm" name="upOtmTenderScheduleSampleForm">
                        <g:render template="form"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-primary btn-group-md save"
                                        value="${message(code: 'default.button.create.label', default: 'Create New')}"/>
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
