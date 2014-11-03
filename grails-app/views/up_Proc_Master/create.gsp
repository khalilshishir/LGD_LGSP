<%@ page import="procurement.up.Up_Proc_Master" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="upprocurement">
    <g:set var="entityName" value="${message(code: 'up_Proc_Master.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />
    <title><g:message code="default.create.label/" default="তৈরি করুন " args="[entityName]" /></title>

    <script type="text/javascript">
        function setValueOnSchemeChange(schemeInfoId){
            loadProcurementTypeBySchemeInfo(schemeInfoId);
            setSchemeTypeGrantedAmountIsLabourAppointedOnSchemeChange(schemeInfoId);
        }
        function loadProcurementTypeBySchemeInfo(schemeInfoId){
            <g:remoteFunction controller="common" action="loadProcurementTypeBySchemeInfo" update="procurementType" params="'schemeInfoId='+schemeInfoId"/>
//                alert(schemeInfoId);
        }
        function setSchemeTypeGrantedAmountIsLabourAppointedOnSchemeChange(schemeInfoId) {
            <g:remoteFunction controller="common" action="loadSchemeTypeGrantedAmountIsLabourAppointedBySchemeInfo" update="schemeTypeGrantedAmounIsLabourAppointed" params="'schemeInfoId='+schemeInfoId" />
        }
    </script>
</head>
<body>
<p align="right" style="color:#666; font-size: 15px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 15px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
    |
    <a style="color:#666; font-size: 15px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="ইউনিয়ন পরিষদ ক্রয় লিস্ট" args="[entityName]" /></g:link></a>
</p>

<div id="create-up_Proc_Master" class="content scaffold-create" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.create.label/" default="তৈরি করুন - ইউনিয়ন পরিষদ ক্রয়" args="[entityName]"/></h3>
            <g:if test="${flash.message}">
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
            <g:hasErrors bean="${up_Proc_MasterInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${up_Proc_MasterInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
        </div>

        <div class="panel-body">
            <g:form action="save">
                <fieldset class="form">
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
