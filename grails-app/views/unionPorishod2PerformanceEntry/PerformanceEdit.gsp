<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 24/9/2014
  Time: 10:50 AM
--%>

<%@ page import="grantmanagement.PerformanceOrgType; grantmanagement.OrganiztionType" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>
        Union Parishad2 Performance Edit
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
    function CalculateTotalMark(){
        var sum=0;
        $('.mark').each(function(){
            var mark=$(this).val();
            if(mark=="")
                mark="0"
            sum=sum+parseInt(mark);
        });
        $("#txtSum").val(sum);
    }
    jQuery(document).on('keyup','.mark',function(){
        CalculateTotalMark();
    });
    jQuery(document).ready(function(){
        $("#district").attr("disabled","disabled");
        $("#division").attr("disabled","disabled");
        $("#upazila").attr("disabled","disabled");
        $("#division").attr("disabled","disabled");
        $("#unionParishad").attr("disabled","disabled");
        $("#fiscalYear").attr("disabled","disabled");
        CalculateTotalMark();
    });

</script>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="ZillaParishodPerformanceList">Zilla Parishod Performance List</g:link></a>
    %{--|--}%
    %{--<a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="ZillaPorisodPerformanceEntry">Zilla Parishod Performance New</g:link></a>--}%
</p>
<g:form action="PerformanceEntryUpdate">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3>Union Parishad2 Performance Edit</h3>
        </div>
        <div class="panel-body">



            <fieldset >
                <div class="row" style="padding-left: 15px">

                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="division">বিভাগ</label>
                            <span class="required-indicator">*</span>
                            <g:select class="form-control" name="division" id="division" noSelection="[null:'Select One']" optionKey="id"  from="${settings.Division.list().sort()}" value="${union?.division?.id}"></g:select>
                            </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="district">জেলা</label>
                            <span class="required-indicator">*</span>
                            <g:select class="form-control" name="district" id="district" noSelection="[null:'Select One']" optionKey="id" from="${settings.District.list().sort()}" value="${union?.district?.id}"></g:select>
                            %{--<g:select class="form-control" name="district" id="district" noSelection="[null:'Select One']" optionKey="id" from="${settings.District.list().sort()}"></g:select>--}%
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="upazila">উপজেলা</label>
                            <span class="required-indicator">*</span>
                            <g:select class="form-control" id="upazila" name="upazila" noSelection="[null:'Select One']" from="${settings.Upazila.list()}" optionKey="id" required="required" value="${union?.upazila?.id}"/>
                            %{--<g:select class="form-control" id="upazila" name="upazila" noSelection="[null:'Select One']" from="${settings.Upazila.list()}" optionKey="id" required="required"/>--}%
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="unionParishad">ইউনিয়ন</label>
                            <span class="required-indicator">*</span>
                            <g:select class="form-control" id="unionParishad" name="unionParishad" noSelection="[null:'Select One']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required" value="${union?.id}"/>
                            <g:hiddenField name="hdunion" id="hdunion" value="${union?.id}"/>

                            %{--<g:select class="form-control" id="unionParishad" name="unionParishad" noSelection="[null:'Select One']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required"/>--}%
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="fiscalYear">অর্থ বছর</label>
                            <span class="required-indicator">*</span>
                            <g:select class="form-control" name="fiscalYear" id="fiscalYear" noSelection="[null:'Select One']" optionKey="id" from="${planningbudget.FiscalYear.list().sort()}" value="${fiscalYr?.id}"></g:select>
                            <g:hiddenField name="hdfiscalYear" id="hdfiscalYear" value="${fiscalYr?.id}"/>

                            %{--<g:select class="form-control" name="fiscalYear" id="fiscalYear" noSelection="[null:'Select One']" optionKey="id" from="${planningbudget.FiscalYear.list().sort()}"></g:select>--}%
                        </div>
                    </div>
                </div>
            </fieldset>



            %{--<fieldset>--}%
                %{--<table>--}%
                    %{--<tr>--}%
                        %{--<td>--}%
                            %{--বিভাগ--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select name="division" id="division" noSelection="[null:'Select']" optionKey="id"  from="${settings.Division.list().sort()}" value="${union?.division?.id}"></g:select>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--জেলা--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select name="district" id="district" noSelection="[null:'Select']" optionKey="id" from="${settings.District.list().sort()}" value="${union?.district?.id}"></g:select>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--উপজেলা--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select id="upazila" name="upazila" noSelection="[null:'Select']" from="${settings.Upazila.list()}" optionKey="id" required="required"  class="many-to-one" value="${union?.upazila?.id}"/>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--ইউনিয়ন--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select id="unionParishad" name="unionParishad" noSelection="[null:'Select']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required"  class="many-to-one" value="${union?.id}"/>--}%
                            %{--<g:hiddenField name="hdunion" id="hdunion" value="${union?.id}"/>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--অর্থ বছর--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select name="fiscalYear" id="fiscalYear" noSelection="[null:'Select']" optionKey="id" from="${planningbudget.FiscalYear.list().sort()}" value="${fiscalYr?.id}"></g:select>--}%
                            %{--<g:hiddenField name="hdfiscalYear" id="hdfiscalYear" value="${fiscalYr?.id}"/>--}%
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
                                    <label for="${'txtMark-'+performanceIndicator?.id}">
                                        %{--<g:message code="zillaPorishodPerformanceEntry.obtainMark.label" default="Obtain Mark" />--}%
                                        <span class="required-indicator">*</span>
                                    </label>
                                    <g:textField class="mark" name="${'txtMark-'+performanceIndicator?.id}" required="required" id="${'txtMark-'+performanceIndicator?.id}" value="${grantmanagement.UnionPorishod2PerformanceEntry.findByOrganiztionTypeAndUnionParishadAndFiscalYearAndPerformanceIndicatorAndMarkDstributionIsNull(PerformanceOrgType.findByKeyword("Union2"),union,fiscalYr,performanceIndicator)?.obtainMark}"/>
                                    <g:hiddenField name="${'hdId-'+performanceIndicator?.id}" id="${'hdId-'+performanceIndicator?.id}" value="${grantmanagement.UnionPorishod2PerformanceEntry.findByOrganiztionTypeAndUnionParishadAndFiscalYearAndPerformanceIndicatorAndMarkDstributionIsNull(PerformanceOrgType.findByKeyword("Union2"),union,fiscalYr,performanceIndicator)?.id}"/>
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
                            <input style="background-color:#fff0f5" disabled="" type="text" id="txtSum" name="txtSum"/>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </fieldset>


            <fieldset style="margin-top: 10px">
                <g:submitButton class="btn btn-primary btn-sm save" name="Update" value="${message(code: 'default.button.update.label', default: 'Update')}"  />
                %{--<g:link class="btn btn-primary btn-sm save" action="PerformanceEdit" params="[union:union.id, fiscalYr:fiscalYr.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
                %{--<g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
            </fieldset>
            %{--<g:submitButton name="Update" class="save btn btn-primary btn-sm" value="${message(code: 'default.button.update.label', default: 'Update')}"  />--}%
        </div>
    </div>
</g:form>
</body>
</html>