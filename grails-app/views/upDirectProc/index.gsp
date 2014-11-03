<%@ page import="settings.SchemeInfo; settings.Division" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'upDirectProc.label', default: 'up Direct Procurement')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
    <style>
    .label_cl {
        margin: 0;padding: 0;
        font-size: 13px;

        width:140px;

    }
        .values {
            font-size: 15px;
            color:#0e90d2;
        }
    </style>
    <script type="text/javascript">
        function loadSchemeInfo(schemeInfoId){
      <g:remoteFunction controller="upDirectProc" action="loadSchemeInfo"  update="schemeTypeGrantedAmounIsLabourAppointed" params="'schemeInfoId='+schemeInfoId"/>

        }

    </script>
</head>
<body>

<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
</p>
<div id="create-division" class="content scaffold-create" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h3>
            <g:if test="${flash.message}">
                <div  class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${upDirectProcInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${upDirectProcInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
        </div>


        <div class="panel-body">

            <g:form action="save" >
                <fieldset class="form">
                    <div class="panel-body">
                        <g:form action="save">
                            %{--<fieldset class="form">--}%
                                %{--<g:render template="form"/>--}%
                            %{--</fieldset>--}%
                         <div class="row">
                            <div class="col-xs-12">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="SCHEME_INFO"><g:message code="up_Proc_Master.SCHEME_INFO.label" default="স্কীম সমূহ" /></label>
                                        %{--<g:select id="SCHEME_INFO" name="SCHEME_INFO.id" from="${settings.SchemeInfo.list()}" optionKey="id" optionValue="NAME" required="" value="${up_Proc_MasterInstance?.SCHEME_INFO?.id}" class="form-control" onchange="loadProcurementTypeBySchemeInfo(this.value)" noSelection="['': 'Select One']"/>--}%
                                        <g:select id="SCHEME_INFO" name="SCHEME_INFO.id" from="${SchemeInfo.list()}" optionKey="id" optionValue="NAME" required="" value="${upDirectProcInstance?.SCHEME_INFO?.id}" class="form-control" onchange="loadSchemeInfo(this.value)" noSelection="['': 'Select One']"/>
                                    </div>
                                </div>
                                <div class="col-md-3"></div>

                                <div id="schemeTypeGrantedAmounIsLabourAppointed">
                                    <div class="col-xs-12">
                                        %{--<div class="col-xs-3">
                                            <div class="form-group">
                                                <label for="location"><g:message code="up_Proc_Master.Committee.label" default="স্কীমের ধরণ" /></label>
                                                <g:textField id="location" name="location"  class="form-control" readonly="" />
                                            </div>
                                        </div>
                                        <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="location"><g:message code="up_Proc_Master.Committee.label" default="অবস্থান" /></label>
                                               <g:textField id="location" name="location"  class="form-control" readonly="" />
                                           </div>
                                       </div>

                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="grantedAmount"><g:message code="up_Proc_Master.Committee.label" default="আনুমানিক মূল্য" /></label>
                                               <g:field type="number" id="grantedAmount" name="grantedAmount"  class="form-control" readonly="" />
                                           </div>
                                       </div>

                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="grantedAmount"><g:message code="up_Proc_Master.Committee.label" default="অনুমোদিত মূল্য" /></label>
                                               <g:field type="number" id="grantedAmount" name="grantedAmount"  class="form-control" readonly="" />
                                           </div>
                                       </div>

                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="স্কীমের ক্রয়ের   ধরণ" /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="স্কীম শুরুর তারিখ" /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="দায়িত্ববান ব্যক্তি " /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="মহিলা কর্তৃক বাছাইকৃত কিনা" /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="অরথ-বছ্র" /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="ইউনিয়ন পরিষদ  কর্তৃক অনুমোদিত কিনা" /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="বি জি সি সি  কর্তৃক অনুমোদিত কিনা" /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="স্কীমের প্রকৃতি " /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>
                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="schemeType"><g:message code="up_Proc_Master.Committee.label" default="Indicative Ceiling" /></label>
                                               <g:textField id="schemeType" name="schemeType" value="${procurementType}"  class="form-control" readonly="" />
                                           </div>
                                       </div>

                                       <div class="col-xs-3">
                                           <div class="form-group">
                                               <label for="isLabourAppointed"><g:message code="up_Proc_Master.Committee.label" default="শ্রমিক নিয়োজিত কিনা ?"/></label>
                                               <g:textField id="isLabourAppointed" name="isLabourAppointed" class="form-control" readonly=""/>
                                           </div>
                                       </div>--}%
                                   </div>

                            </div>
                             </div>

                         </div>

                        </g:form>
                    </div>

                </fieldset>

            </g:form>
        </div>
    </div>
</div>

</body>
</html>
