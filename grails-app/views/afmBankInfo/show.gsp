
<%@ page import="accounts.AfmBankInfo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'afmBankInfo.label', default: 'Bank Information')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        <style type="text/css">

        .myTable { width:100%; border-collapse:collapse;  }

        .myTable td { padding:8px; border:#999 1px solid; }


        .myTable tr:nth-child(even) { /*(even) or (2n 0)*/

            background: #FFFFFF;
        }
        .myTable tr:nth-child(odd) { /*(odd) or (2n 1)*/

            background: #EAF4FF;
        }
        </style>
	</head>
	<body>
		<a href="#show-afmBankInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>

				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

    %{--New Design Start --}%
    %{--Maruf Str --}%

    <div id="show-afmBankInfo" class="content scaffold-show myDiv" role="main">
        <div class="inner-wrapper">

            <div align="center">
                <div class="page-title-block">
                    <div align="center" class="myHeader site-title" style="width: 100%">
                        <h1><g:message code="default.show.label" args="[entityName]" /></h1>
                    </div>

                    <div class="clear"></div>

                </div>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
   %{--Maruf End--}%
                <ol class="property-list afmBankInfo">
                    <table style="width: 40%; ">
                        <g:if test="${afmBankInfoInstance?.bankName}">
                            <tr>
                                <td align="right" style="width: 100px;">
                                   <g:message code="afmBankInfo.bankName.label" default="Bank Name" />
                                </td>
                                <td>
                                    :
                                </td>
                                <td>
                                    <span class="property-value" aria-labelledby="bankName-label"><g:fieldValue bean="${afmBankInfoInstance}" field="bankName"/></span>
                                </td>
                            </tr>
                        </g:if>
                     </table>
                </ol>
            </div>


            <div align="center">
                <table id="detailList" style="border: 1px; width: 70%" class="myTable">
                    <tr class="" style="background-color: #0188D1; font-family: arial;font-size: 12px; font-weight: bold; color: white; height: 25px;">
                        <td style="padding-left: 5px;">Branch Name</td>
                        <td>Address</td>
                        <td>Account No</td>
                        <td style="padding-left: 5px;">Account Type</td>
                        <td style="padding-left: 5px;">Account Head Name</td>
                        <td style="padding-left: 5px;">Account Code</td>
                    </tr>
                    <g:each in="${afmBankBranchList}" var="v">
                        <tr style="padding: 10px;">
                            <td style="padding-left: 5px;">${v?.branchName}</td>
                            <td>${v?.address}</td>
                            <td>${v?.accountNo}</td>
                            <td style="padding-left: 5px;">${v?.accountType}</td>
                            <td style="padding-left: 5px;">${v?.afmChartOfAccounts?.accountHeadName}</td>
                            <td style="padding-left: 5px;">${v?.afmChartOfAccounts?.accountCode}</td>
                        </tr>
                    </g:each>
                </table>
            </div>


            <g:form>
                <fieldset style="margin-top: 11.5%; " class="buttons myFieldSet">
                    <g:hiddenField name="id" value="${afmBankInfoInstance?.id}"/>
                    <g:link class="edit" action="edit" id="${afmBankInfoInstance?.id}"><g:message
                            code="default.button.edit.label" default="Edit"/></g:link>
                    <g:actionSubmit class="delete" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>
    %{--New Design End--}%


	</body>
</html>
