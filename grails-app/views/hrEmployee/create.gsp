<%@ page import="hrms.HrEmployee" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrEmployee.label', default: 'Employee')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>

        <g:javascript src="jquery-1.8.3.js"></g:javascript>
        <g:javascript src="ui/jquery-ui.js"></g:javascript>
        <g:javascript src="hrEmployee/hrEmployeeFromValidation.js"></g:javascript>

        <script>
            $(function() {
                $("#tabs").tabs();
            });
        </script>

        %{--<script>
            $(function() {
                $("#tabsHr").tabs();
            });
        </script>--}%


	</head>
	<body>


    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
    </p>

    <div id="create-hrEmployee" class="content scaffold-create" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h3>
                <g:if test="${flash.message}">
                    <div  class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${hrEmployeeInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${hrEmployeeInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>


            <div class="panel-body">

                <g:form action="save" >
                    <fieldset class="form">

                        %{------ tab page add for all page shows ---------}%
                        %{--       <g:if test="${userRole.get(0).equals(loginUser?.role)}">--}%
                        <div id="tabs">

                            <ul>
                                <li><a href="#tabs-1">Personal Information</a></li>
                                <li><a href="#tabs-2">Others Information</a></li>
                                <li><a href="#tabs-3">Monthly Payable Salary</a></li>
                                <li><a href="#tabs-4">Photograph</a></li>

                            </ul>

                            <div id="tabs-1">%{--Personal--}%
                                <g:render template="form"/>
                            </div>

                            <div id="tabs-2">%{--Education & Training--}%
                                <g:render template="dt_hrEmpEducation"/>
                                <g:render template="dt_hrEmpPorfQual"/>
                                <g:render template="dt_hrEmpPorfExp"/>
                                <g:render template="dt_hrEmployeeTraining"/>
                                <g:render template="dt_hrEmpPublication"/>
                                <g:render template="dt_hrEmployeeReference"/>
                            </div>

                            <div id="tabs-3">
                                 <g:render template="dt_hrEmpPayInfoSetup"/>
                            </div>

                            <div id="tabs-4">
                                <g:render template="employeeImageSetup"/>
                            </div>
                        </div>
                        %{--</g:if>--}%

                        %{----- only for HR Information Update Tag Pages -----}%
                        %{-- <g:else>
                             <div id="tabsHr">
                                 <ul>
                                     <li><a href="#tabs-5">Personal Information</a></li>
                                     <li><a href="#tabs-6">Others Information</a></li>
                                     <li><a href="#tabs-7">Photograph</a></li>
                                 </ul>


                                 <div id="tabs-5">--}%%{--Personal--}%%{--
                                 <g:render template="form"/>
                                 </div>

                                 <div id="tabs-6">--}%%{--Education & Training--}%%{--
                                 <g:render template="dt_hrEmpEducation"/>
                                 <g:render template="dt_hrEmpPorfQual"/>
                                 <g:render template="dt_hrEmpPorfExp"/>
                                 <g:render template="dt_hrEmployeeTraining"/>
                                 <g:render template="dt_hrEmpPublication"/>
                                 <g:render template="dt_hrEmployeeReference"/>
                                 </div>

                                 <div id="tabs-7">
                                     <g:render template="employeeImageSetup"/>
                                 </div>

                             </div>
                         </g:else>--}%

                        %{------ tab page add ---------}%

                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>


















		%{--<a href="#create-hrEmployee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				--}%%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%%{--
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-hrEmployee" class="content scaffold-create" role="main_hrms">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status" style="font-family:arial; font-weight:bold; font-size: 14px; color: red;">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${hrEmployeeInstance}">
			<ul class="errors" role="alert" style="font-family:arial; font-weight:bold; font-size: 14px; color: red;">
				<g:eachError bean="${hrEmployeeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form  action="save" onsubmit="return verifyForm();" enctype="multipart/form-data">

                <fieldset class="buttons">
                  <div style="float: left;">
                      <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                  </div>
                  <div id="msgDIv1Id" style="float: left; font-family: arial; font-size: 12px; font-weight: bold; color: red; padding-top: 3px; ">

                  </div>

                </fieldset>

                 --}%%{------ tab page add for all page shows ---------}%%{--
                 --}%%{--       <g:if test="${userRole.get(0).equals(loginUser?.role)}">--}%%{--
                    <div id="tabs">

                        <ul>
                            <li><a href="#tabs-1">Personal Information</a></li>
                            <li><a href="#tabs-2">Others Information</a></li>
                            <li><a href="#tabs-3">Monthly Payable Salary</a></li>
                            <li><a href="#tabs-4">Photograph</a></li>
                        </ul>


                        <div id="tabs-1">--}%%{--Personal--}%%{--
                        <g:render template="form"/>
                        </div>

                        <div id="tabs-2">--}%%{--Education & Training--}%%{--
                        <g:render template="dt_hrEmpEducation"/>
                        <g:render template="dt_hrEmpPorfQual"/>
                        <g:render template="dt_hrEmpPorfExp"/>
                        <g:render template="dt_hrEmployeeTraining"/>
                        <g:render template="dt_hrEmpPublication"/>
                        <g:render template="dt_hrEmployeeReference"/>
                        </div>

                        <div id="tabs-3">
                            <g:render template="dt_hrEmpPayInfoSetup"/>
                        </div>

                        <div id="tabs-4">
                            <g:render template="employeeImageSetup"/>
                        </div>

                    </div>
                    --}%%{--</g:if>--}%%{--

                --}%%{----- only for HR Information Update Tag Pages -----}%%{--
               --}%%{-- <g:else>
                    <div id="tabsHr">
                        <ul>
                            <li><a href="#tabs-5">Personal Information</a></li>
                            <li><a href="#tabs-6">Others Information</a></li>
                            <li><a href="#tabs-7">Photograph</a></li>
                        </ul>


                        <div id="tabs-5">--}%%{----}%%{--Personal--}%%{----}%%{--
                        <g:render template="form"/>
                        </div>

                        <div id="tabs-6">--}%%{----}%%{--Education & Training--}%%{----}%%{--
                        <g:render template="dt_hrEmpEducation"/>
                        <g:render template="dt_hrEmpPorfQual"/>
                        <g:render template="dt_hrEmpPorfExp"/>
                        <g:render template="dt_hrEmployeeTraining"/>
                        <g:render template="dt_hrEmpPublication"/>
                        <g:render template="dt_hrEmployeeReference"/>
                        </div>

                        <div id="tabs-7">
                            <g:render template="employeeImageSetup"/>
                        </div>

                    </div>
                </g:else>--}%%{--

            --}%%{------ tab page add ---------}%%{--


				--}%%{--<fieldset class="form">
					<g:render template="form"/>
				</fieldset>--}%%{--
				<fieldset class="buttons">
                    <div style="float: left;">
                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </div>
                    <div id="msgDIv2Id" style="float: left; font-family: arial; font-size: 12px; font-weight: bold; color: red; padding-top: 3px; ">

                    </div>
				</fieldset>
			</g:form>
		</div>--}%
	</body>
</html>
