<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 18/9/2014
  Time: 11:28 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>
        Zilla Parisod Performance Show
    </title>

    <style>
        table{
            border-color: #31b0d5;
        }
        th {
            border-color: #31b0d5;
            text-align: center;
            font-size: 15px
        }
        tr {
            border-color: #31b0d5
        }
        td {
            border-color: #31b0d5
        }
    </style>


</head>

<body>
%{--<a href="#show-district" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--</ul>--}%
%{--</div>--}%
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="ZillaParishodPerformanceList">Zilla Parishod Performance List</g:link></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="ZillaPorisodPerformanceEntry">Zilla Parishod Performance New</g:link></a>
</p>
<div id="show-district" class="content scaffold-show" role="main">
    %{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="Zilla Porishod Performance Show" args="[entityName]" /></h3>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="panel-body">
            <ol class="property-list district">
                <g:if test="${district?.division}">
                    <li class="fieldcontain">
                        <span id="division-label" class="property-label"><g:message code="district.division.label" default="Division : " /></span>

                        <span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${district?.division?.id}">${district?.division?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>
                <g:if test="${district}">
                    <li class="fieldcontain">
                        <span id="district-label" class="property-label"><g:message code="district.division.label" default="District : " /></span>

                        <span class="property-value" aria-labelledby="division-label"><g:link controller="district" action="show" id="${district?.id}">${district?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>
                <g:if test="${fiscalYr}">
                    <li class="fieldcontain">
                        <span id="fiscalYr-label" class="property-label"><g:message code="district.division.label" default="Fiscal Year : " /></span>

                        <span class="property-value" aria-labelledby="division-label"><g:link controller="fiscalYr" action="show" id="${fiscalYr?.id}">${fiscalYr?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>
                %{--<g:each in="${lstPerformanceHead}" var="performanceHead" status="i">--}%


                    <fieldset style="margin-top: 10px">
                        <table border="2" width="100%">
                            <tr bgcolor="#fff0f5">
                                <th>ক্রঃ নং</th>
                                <th>বিবরণ</th>
                                <th>নম্বর</th>
                                <th>নম্বর বিতরণ পদ্ধতি</th>
                                <th>নম্বর</th>
                                %{--<th>&nbsp;</th>--}%
                                <th>প্রাপ্ত নম্বর</th>
                            </tr>
                            <g:set var="counter" value="${0}" />
                            <g:set var="totalObtainMark" value="${0}"/>
                            <g:each in="${lstPerformanceHead}" var="performanceHead" status="i">
                                <g:set var="counter" value="${counter+performanceHead?.mark}"></g:set>

                                <tr bgcolor="#f0f8ff" style="font-size: 15px">
                                    <td>${performanceHead?.slNo}</td>
                                    <td>
                                        ${performanceHead?.headName}
                                    </td>
                                    <td>
                                        ${performanceHead?.mark}
                                    </td>
                                    <td colspan="2"></td>
                                    %{--<td>--}%

                                    %{--</td>--}%
                                    <td>

                                    </td>
                                </tr>

                                <g:each in="${grantmanagement.PerformanceIndicator.findAllByPerformanceHead(performanceHead).sort{it.slNo}}" var="performanceIndicator" status="j">

                                    <tr>
                                        <td>

                                        </td>
                                        <td>
                                            ${performanceIndicator?.slNo+" )  "+performanceIndicator?.indicatorName}
                                        </td>
                                        <td>
                                            ${performanceIndicator?.mark}
                                        </td>
                                        <td>

                                            <table>
                                            <g:each in="${grantmanagement.MarkDstribution.findAllByPerformanceIndicatorAndPerformanceHead(performanceIndicator,performanceHead).sort{it.slNo}}" var="markDistribution" status="k">
                                                <tr>
                                                    <td>
                                                        ${markDistribution?.rules}
                                                    </td>
                                                </tr>
                                            </g:each>
                                            </table>

                                        </td>
                                        <td>
                                            <table>
                                                <g:each in="${grantmanagement.MarkDstribution.findAllByPerformanceIndicatorAndPerformanceHead(performanceIndicator,performanceHead).sort{it.slNo}}" var="markDistribution" status="k">

                                                    <tr>
                                                        <td>${markDistribution?.mark}</td>
                                                    </tr>
                                                </g:each>
                                            </table>
                                        </td>

                                        <td>
                                            ${grantmanagement.ZillaPorishodPerformanceEntry.findByPerformanceIndicatorAndUnionParishadIsNullAndDistrictAndFiscalYear(performanceIndicator,district,fiscalYr)?.obtainMark}
                                            %{--${grantmanagement.ZillaPorishodPerformanceEntry.findByPerformanceIndicatorAndDistrictAndFiscalYearAndUnionParishadIsEmpty(performanceIndicator,district,fiscalYr)?.obtainMark}--}%
                                            <g:set var="totalObtainMark" value="${totalObtainMark+grantmanagement.ZillaPorishodPerformanceEntry.findByPerformanceIndicatorAndUnionParishadIsNullAndDistrictAndFiscalYear(performanceIndicator,district,fiscalYr)?.obtainMark}"></g:set>
                                            <g:hiddenField name="${'hd-'+performanceIndicator?.id}" value="" id="${'hd-'+performanceIndicator?.id}"></g:hiddenField>
                                        </td>
                                    </tr>
                                </g:each>
                            </g:each>
                            <tr bgcolor="#fff0f5" style="font-size: 15px">
                                <td colspan="2" align="center">
                                    সর্বমোট
                                </td>
                                <td>
                                    ${counter}
                                </td>
                                <td colspan="2">
                                    মোট প্রাপ্ত নম্বর(অংকে)
                                </td>
                                <td>
                                    ${totalObtainMark}
                                    %{--<g:textField name="txtSum" id="txtSum"></g:textField>--}%

                                </td>
                            </tr>
                        </table>
                    </fieldset>
                %{--</g:each>--}%
            </ol>
            <g:form>
                %{--<fieldset class="buttons">--}%
                    %{--<g:hiddenField name="id" value="${districtInstance?.id}" />--}%

                    %{--<g:link class="edit btn btn-primary btn-sm" action="ZillaPorishodPerformanceEdit" params="[zila:district.id,fiscalYr:fiscalYr.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
                    %{--<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                %{--</fieldset>--}%

                <fieldset style="margin-top: 10px">
                    <g:link class="btn btn-primary btn-sm save" action="ZillaPorishodPerformanceEdit" params="[zila:district.id,fiscalYr:fiscalYr.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    %{--<g:link class="btn btn-primary btn-sm save" action="PerformanceEdit" params="[union:union.id, fiscalYr:fiscalYr.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
                    %{--<g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                </fieldset>
            </g:form>
        </div>
    </div>
</div>

</body>
</html>