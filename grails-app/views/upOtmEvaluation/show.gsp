
<%@ page import="procurement.up.otmprocurement.UpOtmEvaluation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upOtmEvaluation.label', default: 'ইউপি ও-টি-এম ইভালুয়েশন')}" />
		<title><g:message code="default.show.label/" default="দেখান" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="ইউপি ও-টি-এম ইভালুয়েশন লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি ও-টি-এম ইভালুয়েশন" args="[entityName]" /></g:link></a>
    </p>
    <div id="show-upOtmEvaluation" class="content scaffold-show" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label/" default="দেখান - ইউপি ও-টি-এম ইভালুয়েশন" args="[entityName]" /></h3>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="panel-body">
			<ol class="property-list upOtmEvaluation">

                <g:if test="${upOtmEvaluationInstance?.UP_PROC_MASTER}">
                    <li class="fieldcontain">
                        <span id="UP_PROC_MASTER-label" class="property-label"><g:message code="upOtmEvaluation.UP_PROC_MASTER.label" default="ইউনিয়ন পরিষদ ক্রয় : " /></span>
                        <span class="property-value" aria-labelledby="UP_PROC_MASTER-label"><g:fieldValue bean="${upOtmEvaluationInstance}" field="UP_PROC_MASTER.SCHEME_INFO.NAME"/></span>
                    </li>
                </g:if>

                <g:if test="${upOtmEvaluationInstance?.TEC}">
                    <li class="fieldcontain">
                        <span id="TEC-label" class="property-label"><g:message code="upOtmEvaluation.TEC.label" default="দরপত্র মূল্যায়ন কমিটি : " /></span>
                        <span class="property-value" aria-labelledby="TEC-label"><g:fieldValue bean="${upOtmEvaluationInstance}" field="TEC"/></span>
                    </li>
                </g:if>
			
				<g:if test="${upOtmEvaluationInstance?.EVALUATION_DATE}">
				<li class="fieldcontain">
					<span id="EVALUATION_DATE-label" class="property-label"><g:message code="upOtmEvaluation.EVALUATION_DATE.label" default="মূল্যায়ন তারিখ : " /></span>
					
						<span class="property-value" aria-labelledby="EVALUATION_DATE-label"><g:formatDate date="${upOtmEvaluationInstance?.EVALUATION_DATE}" format="yyyy-MM-dd" /></span>
					
				</li>
				</g:if>
			
			</ol>
                <g:form>
                    <fieldset class="buttons">
                        <g:hiddenField name="id" value="${upOtmEvaluationInstance?.id}" />
                        <g:link class="edit btn btn-primary btn-sm" action="edit" id="${upOtmEvaluationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
