
<%@ page import="accounts.AfmBankInfo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'afmBankInfo.label', default: 'Bank Information')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <style type="text/css">

        .myTable { width:100%; border-collapse:collapse;  }

        .myTable td { padding:8px; border:#999 1px solid; }


       /* .myTable tr:nth-child(even) { *//*(even) or (2n 0)*//*

            background: #FFFFFF;
        }
        .myTable tr:nth-child(odd) { *//*(odd) or (2n 1)*//*

            background: #EAF4FF;
        }*/
        </style>
	</head>
	<body>
		<a href="#list-afmBankInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>



    %{--New Design Start--}%

    <div align="center" id="list-afmBankInfo" class="content scaffold-list myDiv" role="main">
        <div class="inner-wrapper">

            <div class="page-title-block">
                <div class="myHeader site-title">
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                </div>
                <div class="clear"></div>
            </div>

            <br/>
            <g:if test="${flash.message == "already exist in database"}">
                <div>

                </div>
            </g:if>
            <g:elseif test="${flash.message != null}">
                <div class="message" role="status">${flash.message}</div>
            </g:elseif>


            <br/>

            <table style="width: 41%; " class="myTable">
                <thead>
                <tr style="height: 25px;">

                    <g:sortableColumn property="slNo" title="${message(code: 'afmBankInfo.bankName.label', default: 'SL. No.')}" />
                    <g:sortableColumn property="bankName" title="${message(code: 'afmBankInfo.bankName.label', default: 'Bank Name')}" />

                </tr>
                </thead>
                <tbody>
                <% int m=1;%>
                <g:each in="${afmBankInfoInstanceList}" status="i" var="afmBankInfoInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td ><center><g:link action="show" id="${afmBankInfoInstance.id}"><%=m%></g:link></center></td>
                        <td ><center><g:link action="show" id="${afmBankInfoInstance.id}">${fieldValue(bean: afmBankInfoInstance, field: "bankName")}</g:link></center></td>

                    </tr>
                    <% m++;%>
                </g:each>
                </tbody>
            </table>

            <br/>
            <div class="pagination">
                <g:paginate total="${afmBankInfoInstanceTotal}" />
            </div>
            <br/>
        </div>
    </div>

    %{--New Design End--}%


	</body>
</html>
