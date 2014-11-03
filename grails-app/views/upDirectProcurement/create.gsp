<%@ page import="procurement.up.directprocurement.UpDirectProcurement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upDirectProcurement.label', default: 'UpDirectProcurement')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
        <style>
            #schemeTypeGrantedAmounIsLabourAppointed{
                width: 792px;
            }
        </style>

        <script type="text/javascript">
            function setValueOnSchemeChange(schemeInfoId){
                setSchemeTypeGrantedAmountIsLabourAppointedOnSchemeChange(schemeInfoId);

            }

            function setSchemeTypeGrantedAmountIsLabourAppointedOnSchemeChange(schemeInfoId) {

                <g:remoteFunction controller="common" action="loadSchemeInfo" update="schemeTypeGrantedAmounIsLabourAppointed" params="'schemeInfoId='+schemeInfoId" />

            }
        </script>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 15px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 15px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 15px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="create-upDirectProcurement" class="content scaffold-create" role="main">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.create.label/" default="তৈরি করুন - ইউনিয়ন পরিষদ ক্রয়" args="[entityName]"/></h3>
                    <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${upDirectProcurementInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${upDirectProcurementInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                  </div>
                <div class="panel-body">

                            <g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />

                </fieldset>
			</g:form>
                    </div>
                </div>
		</div>
	</body>
</html>
