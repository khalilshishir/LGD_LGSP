
<%@ page import="procurement.up.Up_Proc_Master" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'up_Proc_Master.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />
		<title><g:message code="default.show.label/" default="দেখান" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="ইউনিয়ন পরিষদ ক্রয় - লিস্ট" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="ইউনিয়ন পরিষদ ক্রয় - তৈরি করুন" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-up_Proc_Master" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label/" default="দেখান - ইউনিয়ন পরিষদ ক্রয়" args="[entityName]" /></h3>
            </div>
			<g:if test="${flash.message}">
			%{--<div class="message" role="status">${flash.message}</div>--}%
                <script>
                    $(document).ready(function(){
                        $.bootstrapGrowl("${flash.message}", {
                            ele: 'body', // which element to append to
                            type: 'info', // (null, 'info', 'danger', 'success')
                            offset: {from: 'top', amount: 20}, // 'top', or 'bottom'
                            align: 'right', // ('left', 'right', or 'center')
                            width: 400, // (integer, or 'auto')
                            delay: 4000, // Time while the message will be displayed. It's not equivalent to the *demo* timeOut!
                            allow_dismiss: true, // If true then will display a cross to close the popup.
                            stackup_spacing: 10 // spacing between consecutively stacked growls.

                        });


                    });
                </script>
            </g:if>
            <div class="panel-body">
			<ol class="property-list up_Proc_Master">
			
				<g:if test="${up_Proc_MasterInstance?.DETAILS}">
				<li class="fieldcontain">
					<span id="DETAILS-label" class="property-label"><g:message code="up_Proc_Master.DETAILS.label" default="বর্ণনা : " /></span>
					
						<span class="property-value" aria-labelledby="DETAILS-label"><g:fieldValue bean="${up_Proc_MasterInstance}" field="DETAILS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${up_Proc_MasterInstance?.SCHEME_INFO}">
				<li class="fieldcontain">
					<span id="SCHEME_INFO-label" class="property-label"><g:message code="up_Proc_Master.SCHEME_INFO.label" default="প্রকল্প তথ্য : " /></span>
					
						<span class="property-value" aria-labelledby="SCHEME_INFO-label"><g:fieldValue bean="${up_Proc_MasterInstance}"  field="SCHEME_INFO.NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${up_Proc_MasterInstance?.COMMITTEE}">
				<li class="fieldcontain">
					<span id="COMMITTEE-label" class="property-label"><g:message code="up_Proc_Master.COMMITTEE.label" default="কমিটি : " /></span>
					
						<span class="property-value" aria-labelledby="COMMITTEE-label"><g:fieldValue bean="${up_Proc_MasterInstance}"  field="COMMITTEE.COMMITTEE_NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${up_Proc_MasterInstance?.procurementType}">
				<li class="fieldcontain">
					<span id="PROCUREMENT_TYPE-label" class="property-label"><g:message code="up_Proc_Master.PROCUREMENT_TYPE.label" default="ক্রয়ের ধরণ : " /></span>
					
						<span class="property-value" aria-labelledby="PROCUREMENT_TYPE-label"><g:fieldValue bean="${up_Proc_MasterInstance}"  field="procurementType"/></span>
					
				</li>
				</g:if>

			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${up_Proc_MasterInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${up_Proc_MasterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message/', default: 'আপনি কি নিশ্চিত ?')}');" />
				</fieldset>
			</g:form>
            </div>
        </div>
		</div>
	</body>
</html>
