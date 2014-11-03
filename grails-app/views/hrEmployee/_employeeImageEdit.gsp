<%@ page import="hrms.HrEmployee" %>
<%--
  Created by IntelliJ IDEA.
  User: kcbarmon
  Date: 6/12/13
  Time: 1:16 PM
  To change this template use File | Settings | File Templates.
--%>
%{--<html>
<body>
<div id="wrapper">--}%

    <g:if test="${hrEmployeeInstance?.imageName}">
    <g:img dir="employeeImage" file="${hrEmployeeInstance?.imageName}"   style="border: solid 1px; "/>
    </g:if>
    <br/>
    <div style="width: 100%; background: #fff; padding: 5px;border: 1px solid #ccc;">
        Photo: <input type="file" id="imagePath" name="imagePath"/>
    </div>

%{--
</div>
</body>
</html>--}%
