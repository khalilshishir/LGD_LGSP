
<%@ page import="hrms.HrEmployee" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'hrEmployee.label', default: 'Employee')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
    <script>
        function getEmployeeName(fldId) {
            $('#'+fldId).autocomplete({
                source:'<g:createLink controller='hrEmployee' action='autoEmployeeName'/>'
            });
        }
        function getEmployeeCardNo(fldId) {
            $('#'+fldId).autocomplete({
                source:'<g:createLink controller='hrEmployee' action='autoEmployeeCardNo'/>'
            });
        }
        function getEmployeeDetail(val) {
            // alert("val "+val)
            var autoData = val;

            if(autoData!=''){
                $.ajax({
                    type:'POST',
                    url:'${request.contextPath}/hrEmployee/getEmployeeDetail',
                    dataType:"JSON",
                    data:'&autoData=' + autoData,
                    success:function (response) {
                        var outputStr=response.message
                        //  alert("outputStr  "+outputStr)
                        var str=outputStr.split(":")
                        var departmentName=str[0]
                        var designationName=str[1]
                        var repEmployeeId=str[2]
                        var repCardNo=str[3]

                        // document.getElementById('departmentLbl').innerHTML= "Department:"
                       // document.getElementById('departmentFld').innerHTML= departmentName
                        // document.getElementById('designationLbl').innerHTML= "Designation:"
                       // document.getElementById('designationFld').innerHTML= designationName
                       // document.getElementById('repEmployeeId').value= repEmployeeId
                        document.getElementById('cardNo').value= repCardNo
                    },
                    error:function (err) {
                       // alert("failure");
                    }
                });
            }
        }
        function getEmployeeDetailByCardNo(val) {
            // alert("val "+val)
            var autoData = val;

            if(autoData!=''){
                $.ajax({
                    type:'POST',
                    url:'${request.contextPath}/hrEmployee/getEmployeeDetailByCardNo',
                    dataType:"JSON",
                    data:'&autoData=' + autoData,
                    success:function (response) {
                        var outputStr=response.message
                        //  alert("outputStr  "+outputStr)
                        var str=outputStr.split(":")
                        var departmentName=str[0]
                        var designationName=str[1]
                        var repEmployeeId=str[2]
                        var employeeName=str[3]

                        // document.getElementById('departmentLbl').innerHTML= "Department:"
                       // document.getElementById('departmentFld').innerHTML= departmentName
                        // document.getElementById('designationLbl').innerHTML= "Designation:"
                       // document.getElementById('designationFld').innerHTML= designationName
                        //document.getElementById('repEmployeeId').value= repEmployeeId
                        document.getElementById('employeeName').value= employeeName
                    },
                    error:function (err) {
                      //  alert("failure");
                    }
                });
            }
        }
    </script>
</head>
<body>

<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>
<div id="list-hrEmployee" class="content scaffold-list" role="main">
    %{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
        </div>
    </div>
    <g:if test="${flash.message}">
        <div class="message" role="status" style="font-family: arial, helvetica, verdana, sans-serif;font-weight: bold; color: #008000;margin: 1%;">${flash.message}</div>
    </g:if>
    <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed" >
        <thead>
        <tr>
            <g:sortableColumn property="cardNo"
                              title="${message(code: 'hrEmployee.cardNo.label', default: 'ID No')}"/>

            <g:sortableColumn property="employeeName"
                              title="${message(code: 'hrEmployee.employeeName.label', default: 'Name of Employee')}"/>

            <g:sortableColumn property="joiningDate"
                              title="${message(code: 'hrEmployee.joiningDate.label', default: 'Joining Date')}"/>

            <g:sortableColumn property="joiningDate"
                              title="${message(code: 'hrEmployee.isActive.label', default: 'Department')}"/>

            <g:sortableColumn property="sortOrder"
                              title="${message(code: 'hrEmployee.sortOrder.label', default: 'Designation')}"/>

            <td>Picture</td>
        </tr>
        </thead>
        <tbody>
        <g:each in="${hrEmployeeInstanceList}" status="i" var="hrEmployeeInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <g:if test="${!hrEmployeeInstance.cardNo.startsWith('P-')}">   %{-- P-7983 P-5016 P-4298--}%
                    <td>
                        <g:link action="show" id="${hrEmployeeInstance.id}">${fieldValue(bean: hrEmployeeInstance, field: "cardNo")}</g:link>
                    </td>

                    <td>${fieldValue(bean: hrEmployeeInstance, field: "employeeName")}</td>

                    <td class="list-align-center"><g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance.joiningDate}" /></td>

                    <td>${hrEmployeeInstance.departmentIdHrDepartment}</td>

                    <td>${hrEmployeeInstance.designationIdHrDesignation}</td>

                    <td><img src="../employeeImage/${hrEmployeeInstance.imageName}" width="20" height="20"/></td>
                </g:if>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>







</body>
</html>
