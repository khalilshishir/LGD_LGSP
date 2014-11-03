<%@ page import="hrms.HrEmployee;hrms.HrPayscaleDetail; hrms.HrPayscale; hrms.HrEmployeePayStructure" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrEmployee.label', default: 'Employee')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>

        <g:javascript src="jquery-1.8.3.js"></g:javascript>
        <g:javascript src="ui/jquery-ui.js"></g:javascript>
        <g:javascript src="hrEmployee/hrEmployeeFromValidation.js"></g:javascript>

        <script>
            $(function() {
                $("#tabs").tabs();
            });
        </script>

        <script>
            $(function() {
                $("#tabsHr").tabs();
            });
        </script>

	</head>
	<body>



    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>

    </p>

    <div id="edit-hrEmployee" class="content scaffold-edit" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h3>
                <g:if test="${flash.message}">
                    <div class="message" role="status" >${flash.message}</div>
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

                <g:form method="post" >

                    <fieldset class="form">
                        <g:hiddenField name="id" value="${hrEmployeeInstance?.id}" />
                        <g:hiddenField name="version" value="${hrEmployeeInstance?.version}" />

                    %{------ tab page add ---------}%

                    %{------ tab page add for all page shows ---------}%
                       %{-- <g:if test="${userRole?.get(0).equals(loginUser?.role)}">--}%
                            <div id="tabs">

                                <ul>
                                    <li><a href="#tabs-1">Personal Information</a></li>
                                    <li><a href="#tabs-2">Others Information</a></li>
                                    <li><a href="#tabs-3">Monthly Payable Salary</a></li>
                                    <li><a href="#tabs-4">Photograph</a></li>
                                </ul>


                                %{--<div id="tabs-1">--}%%{--Personal--}%%{--
                                <g:if test="${loginUser?.role.equals("HR_UPDATE")}">
                                    <g:render template="formDisable"/>
                                </g:if>
                                <g:else>
                                    <g:render template="formPrv"/>
                                </g:else>
                                </div>--}%

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

                                <div id="tabs-3">   %{---- employee payStructure--}%
                                   <g:render template="dt_hrEmpPayInfo"/>

                                </div>

                                <div id="tabs-4">   %{----- employee picture--}%
                                   <g:render template="employeeImageEdit"/>
                                </div>

                            </div>
                        %{--</g:if>

                    --}%%{----- only for HR Information Update Tag Pages ----------}%%{--
                    --}%%{--<g:if test="${userRole?.get(1).equals(loginUser?.role)}">--}%%{--
                        <g:else>
                            <div id="tabsHr">
                                <ul>
                                    <li><a href="#tabs-5">Personal Information</a></li>
                                    <li><a href="#tabs-6">Others Information</a></li>
                                    <li><a href="#tabs-7">Photograph</a></li>
                                </ul>


                                <div id="tabs-5">--}%%{--Personal--}%%{--
                                <g:if test="${loginUser?.role.equals("HR_UPDATE")}">
                                    <g:render template="formDisable"/>
                                </g:if>
                                <g:else>
                                    <g:render template="form"/>
                                </g:else>
                                </div>

                                <div id="tabs-6">--}%%{--Education & Training--}%%{--
                                <g:render template="dt_hrEmpEducation"/>
                                <g:render template="dt_hrEmpPorfQual"/>
                                <g:render template="dt_hrEmpPorfExp"/>
                                <g:render template="dt_hrEmployeeTraining"/>
                                <g:render template="dt_hrEmpPublication"/>
                                <g:render template="dt_hrEmployeeReference"/>
                                </div>

                                <div id="tabs-7">   --}%%{----- employee picture--}%%{--
                                <g:render template="employeeImageEdit"/>
                                </div>

                            </div>
                        </g:else>--}%


                    %{------ tab page add ---------}%



                    </fieldset>
                    <fieldset class="buttons">
                        <g:actionSubmit class="save btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>




















%{--


		<a href="#edit-hrEmployee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				--}%%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%%{--
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-hrEmployee" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${hrEmployeeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${hrEmployeeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form  method="post" onsubmit="return verifyForm();" enctype="multipart/form-data">

                <fieldset class="buttons">
                    <div style="float: left;">
                    <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <g:actionSubmit class="delete" action="delete"  value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="setFldValue();return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'); " />
                    </div>

                    <div id="msgDIv1Id" style="float: left; font-family: arial; font-size: 12px; font-weight: bold; color: red; padding-top: 3px;  ">

                    </div>
                </fieldset>

				<g:hiddenField name="id" value="${hrEmployeeInstance?.id}" />
				<g:hiddenField name="version" value="${hrEmployeeInstance?.version}" />

            --}%%{------ tab page add ---------}%%{--

            --}%%{------ tab page add for all page shows ---------}%%{--
                <g:if test="${userRole?.get(0).equals(loginUser?.role)}">
                    <div id="tabs">

                        <ul>
                            <li><a href="#tabs-1">Personal Information</a></li>
                            <li><a href="#tabs-2">Others Information</a></li>
                            <li><a href="#tabs-3">Monthly Payable Salary</a></li>
                            <li><a href="#tabs-4">Photograph</a></li>
                        </ul>


                        <div id="tabs-1">--}%%{--Personal--}%%{--
                            <g:if test="${loginUser?.role.equals("HR_UPDATE")}">
                                <g:render template="formDisable"/>
                            </g:if>
                            <g:else>
                                <g:render template="form"/>
                            </g:else>
                        </div>

                        <div id="tabs-2">--}%%{--Education & Training--}%%{--
                        <g:render template="dt_hrEmpEducation"/>
                        <g:render template="dt_hrEmpPorfQual"/>
                        <g:render template="dt_hrEmpPorfExp"/>
                        <g:render template="dt_hrEmployeeTraining"/>
                        <g:render template="dt_hrEmpPublication"/>
                        <g:render template="dt_hrEmployeeReference"/>
                        </div>

                        <div id="tabs-3">   --}%%{---- employee payStructure--}%%{--
                            <g:render template="dt_hrEmpPayInfo"/>
                        </div>

                        <div id="tabs-4">   --}%%{----- employee picture--}%%{--
                            <g:render template="employeeImageEdit"/>
                        </div>

                    </div>
                </g:if>

            --}%%{----- only for HR Information Update Tag Pages ----------}%%{--
                --}%%{--<g:if test="${userRole?.get(1).equals(loginUser?.role)}">--}%%{--
                <g:else>
                    <div id="tabsHr">
                        <ul>
                            <li><a href="#tabs-5">Personal Information</a></li>
                            <li><a href="#tabs-6">Others Information</a></li>
                            <li><a href="#tabs-7">Photograph</a></li>
                        </ul>


                        <div id="tabs-5">--}%%{--Personal--}%%{--
                        <g:if test="${loginUser?.role.equals("HR_UPDATE")}">
                            <g:render template="formDisable"/>
                        </g:if>
                        <g:else>
                            <g:render template="form"/>
                        </g:else>
                        </div>

                        <div id="tabs-6">--}%%{--Education & Training--}%%{--
                        <g:render template="dt_hrEmpEducation"/>
                        <g:render template="dt_hrEmpPorfQual"/>
                        <g:render template="dt_hrEmpPorfExp"/>
                        <g:render template="dt_hrEmployeeTraining"/>
                        <g:render template="dt_hrEmpPublication"/>
                        <g:render template="dt_hrEmployeeReference"/>
                        </div>

                        <div id="tabs-7">   --}%%{----- employee picture--}%%{--
                            <g:render template="employeeImageEdit"/>
                        </div>

                    </div>
                </g:else>

                --}%%{--<div id="tabs">
                    <ul>
                        <li><a href="#tabs-1">Personal Information</a></li>
                        <li><a href="#tabs-2">Others Information</a></li>
                        <li><a href="#tabs-3">Monthly Payable Salary</a></li>
                        <li><a href="#tabs-4">Photograph</a></li>
                    </ul>

                    <div id="tabs-1">--}%%{----}%%{--Personal--}%%{----}%%{--
                    <g:render template="form"/>
                    </div>

                    <div id="tabs-2">--}%%{----}%%{--Education & Training--}%%{----}%%{--
                    <g:render template="dt_hrEmpEducation"/>
                    <g:render template="dt_hrEmpPorfQual"/>
                    <g:render template="dt_hrEmpPorfExp"/>
                    <g:render template="dt_hrEmployeeTraining"/>
                    <g:render template="dt_hrEmpPublication"/>
                    <g:render template="dt_hrEmployeeReference"/>
                    </div>

                    <div id="tabs-3">
                     <g:render template="dt_hrEmpPayInfo"/>
                    </div>

                    <div id="tabs-4">
                        <g:render template="employeeImageEdit"/>
                    </div>

                </div>--}%%{--
            --}%%{------ tab page add ---------}%%{--

				--}%%{--<fieldset class="form">
					<g:render template="form"/>
				</fieldset>--}%%{--
				<fieldset class="buttons">
                    <div style="float: left;">
                        <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="setFldValue();return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </div>

                    <div id="msgDIv2Id" style="float: left; font-family: arial; font-size: 12px; font-weight: bold; color: red; padding-top: 3px; ">

                    </div>
				</fieldset>
			</g:form>
		</div>--}%
	</body>
</html>
