<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 23/9/2014
  Time: 6:08 PM
--%>

<%@ page import="grantmanagement.PerformanceOrgType; grantmanagement.OrganiztionType" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>
        Union Parishod2 Performens show
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

    <script src="${resource(dir: 'js', file: 'jquery-1.8.0.min.js.js')}"></script>

    <script type="text/javascript">
        jQuery(document).ready(function(){
            CalculateTotalMark();
        });
        function CalculateTotalMark(){

            var sum=0;
            $('.mark').each(function(){
                var mark=$(this).text();

                if(mark=="")
                    mark="0"
                sum=sum+parseInt(mark);
            });
            $("#lblSum").text(sum);
        }
    </script>


    <div class="panel panel-info">
        <div class="panel-heading">
            <h3>Union Parishod2 Performance Show</h3>
        </div>
        <div class="panel-body">
            <fieldset >
                <div class="row" style="padding-left: 15px">
                    <table border="2px" width="98%">
                        <thead bgcolor="#fff0f5">
                            <th width="20%">
                                বিভাগ
                            </th>
                            <th width="20%">
                                জেলা
                            </th>
                            <th width="20%">
                                উপজেলা
                            </th>
                            <th width="20%">
                                ইউনিয়ন
                            </th>
                            <th width="20%">
                                অর্থ বছর
                            </th>
                        </thead>

                        <tr>
                            <td style="padding-left: 10px">
                                ${union.division}
                            </td>
                            <td style="padding-left: 10px">
                                ${union.district}
                            </td>
                            <td style="padding-left: 10px">
                                ${union.upazila}
                            </td>
                            <td style="padding-left: 10px">
                                ${union.UP_NAME}
                            </td>
                            <td style="padding-left: 10px">
                                ${fiscalYr}
                            </td>
                        </tr>
                    </table>
                </div>
            </fieldset>


            %{--<fieldset>--}%
                %{--<table>--}%
                    %{--<tr>--}%
                        %{--<td>--}%
                            %{--বিভাগ--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--${union.division}--}%
                        %{--</td>--}%
                    %{--</tr>--}%
                    %{--<tr>--}%
                        %{--<td>--}%
                            %{--জেলা--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--${union.district}--}%
                        %{--</td>--}%
                    %{--</tr>--}%
                    %{--<tr>--}%
                        %{--<td>--}%
                            %{--উপজেলা--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--${union.upazila}--}%
                        %{--</td>--}%
                    %{--</tr>--}%
                    %{--<tr>--}%
                        %{--<td>--}%
                            %{--ইউনিয়ন--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--${union.UP_NAME}--}%
                        %{--</td>--}%
                    %{--</tr>--}%
                    %{--<tr>--}%
                        %{--<td>--}%
                            %{--অর্থ বছর--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--${fiscalYr}--}%
                        %{--</td>--}%
                    %{--</tr>--}%
                %{--</table>--}%
            %{--</fieldset>--}%


            <fieldset>
                <legend class="panel-heading">Appendix 1 : Basic set of Performance Indicators - Measures and Scoring (nation wide use)</legend>
                <table border="2">
                    <thead bgcolor="#fff0f5">

                    <th>Performance Area</th>
                    <th>Performance Measure/Indicator</th>
                    <th>Points To Earn</th>
                    <th>Means Of Verification</th>
                    <th>Score</th>

                    </thead>
                    <tbody>
                    <g:set var="counter" value="${0}" />
                    <g:set var="coun" value="${0}"/>
                    <g:each in="${lstPerformanceHead}" var="performanceHead" status="k">
                        <g:set var="counter" value="${counter+performanceHead?.mark}"></g:set>
                        <tr>

                            <td colspan="5" bgcolor="#f0f8ff">
                                ${performanceHead.slNo +'.'+performanceHead.headName+'( maximum points: '+performanceHead.mark+')'}
                            </td>
                            <td>

                            </td>
                        </tr>
                        <g:each in="${grantmanagement.PerformanceIndicator.findAllByPerformanceHead(performanceHead).sort{it.slNo}}" status="j" var="performanceIndicator">
                            <tr>
                                <td>${performanceHead?.slNo+'.'+performanceIndicator?.slNo}</td>
                                <td>${performanceIndicator?.performanceMeasure}</td>
                                <g:if test="${performanceIndicator?.mark==0}">
                                    <td>
                                        <g:each in="${grantmanagement.MarkDstribution.findAllByPerformanceIndicator(performanceIndicator).sort{it.slNo}}" var="markDistribution">
                                            ${markDistribution?.rules+':'+markDistribution?.mark+'points'}
                                            <br/>
                                        </g:each>

                                    </td>
                                </g:if>
                                <g:else>
                                    <td>${performanceIndicator?.mark}</td>
                                </g:else>
                                <td>${performanceIndicator?.meansOfVerification}</td>
                                <td>
                                    <label class="mark">
                                    ${grantmanagement.UnionPorishod2PerformanceEntry.findByOrganiztionTypeAndUnionParishadAndFiscalYearAndPerformanceIndicator(PerformanceOrgType.findByKeyword("Union2"),union,fiscalYr,performanceIndicator)?.obtainMark ?:0}</label>
                                    %{--<g:set var="coun" value="${coun+grantmanagement.UnionPorishod2PerformanceEntry.findByOrganiztionTypeAndUnionParishadAndFiscalYearAndPerformanceIndicator(PerformanceOrgType.findByKeyword("Union2"),union,fiscalYr,performanceIndicator)?.obtainMark?:0}"></g:set>--}%
                                </td>
                            </tr>

                        </g:each>
                    </g:each>
                    <tr bgcolor="#fff0f5">
                        <td colspan="2" style="text-align: right;">
                            Total Maximum Score:
                        </td>
                        <td>
                            ${counter}
                        </td>
                        <td></td>
                        <td>
                            %{--<input type="text" id="txtSum" name="txtSum"/>--}%
                            <label id="lblSum" name="lblSum"/>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </fieldset>

            %{--<g:submitButton name="create" class="save btn-primary btn-sm" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
            <fieldset style="margin-top: 10px">
                <g:link class="btn btn-primary btn-sm save" action="PerformanceEdit" params="[union:union.id, fiscalYr:fiscalYr.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                %{--<g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
            </fieldset>

        </div>
    </div>
</body>
</html>