<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 21/9/2014
  Time: 2:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>
        Union Parishad Performance Edit
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
        $("#district").attr("disabled","disabled");
        $("#division").attr("disabled","disabled");
        $("#upazila").attr("disabled","disabled");
        $("#division").attr("disabled","disabled");
        $("#unionParishad").attr("disabled","disabled");
        $("#fiscalYear").attr("disabled","disabled");
        CalculateTotalMark();
    });
    jQuery(document).on("change",".morRadio",function(){
//        alert("enter");
//        alert($(this).val());
        var anem=$(this).attr('name');
//        alert(anem);
        var mark=$(this).val();
        var arrId=anem.split('-');
        $("#txt-"+arrId[1]).val(mark);
        var id=$(this).attr('id');
        var arrName=id.split('-');
        $("#hd-"+arrId[1]).val(arrName[1]);
        CalculateTotalMark();

    });

    jQuery(document).on("change",function(){
        CalculateTotalMark();
    });
    function CalculateTotalMark(){
        var sum=0;
        $('.marks').each(function(){
            var mark=$(this).val();
            if(mark=="")
                mark="0"
            sum=sum+parseInt(mark);
        });
        $("#txtSum").val(sum);
    }
</script>
<g:form action="UnionPorishodPerformanceUpdate">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3>Union Parishad Performance Edit</h3>
        </div>
        <div class="panel-body">


        <fieldset >
            <div class="row" style="padding-left: 15px">

                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="division">বিভাগ</label>
                        <span class="required-indicator">*</span>
                        <g:select class="form-control" name="division" id="division" noSelection="[null:'Select One']" optionKey="id"  from="${settings.Division.list().sort()}" value="${union?.division?.id}"></g:select>
                        <g:hiddenField name="hdDivision" id="hdDivision" value="${union?.division?.id}"></g:hiddenField>

                        %{--<g:select class="form-control" name="division" id="division" noSelection="[null:'Select One']" optionKey="id"  from="${settings.Division.list().sort()}" value="${union?.division?.id}"></g:select>--}%
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="district">জেলা</label>
                        <span class="required-indicator">*</span>
                        <g:select class="form-control" name="district" id="district" noSelection="[null:'Select One']" optionKey="id" from="${settings.District.list().sort()}" value="${union?.district?.id}"></g:select>
                        <g:hiddenField name="hdDistrict" id="hdDistrict" value="${union?.district?.id}"></g:hiddenField>

                        %{--<g:select class="form-control" name="district" id="district" noSelection="[null:'Select One']" optionKey="id" from="${settings.District.list().sort()}" value="${union?.district?.id}"></g:select>--}%
                        %{--<g:select class="form-control" name="district" id="district" noSelection="[null:'Select One']" optionKey="id" from="${settings.District.list().sort()}"></g:select>--}%
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="upazila">উপজেলা</label>
                        <span class="required-indicator">*</span>
                        <g:select class="form-control" id="upazila" name="upazila" noSelection="[null:'Select One']" from="${settings.Upazila.list()}" optionKey="id" required="required"  value="${union.upazila.id}"/>

                        %{--<g:select class="form-control" id="upazila" name="upazila" noSelection="[null:'Select One']" from="${settings.Upazila.list()}" optionKey="id" required="required" value="${union?.upazila?.id}"/>--}%
                        %{--<g:select class="form-control" id="upazila" name="upazila" noSelection="[null:'Select One']" from="${settings.Upazila.list()}" optionKey="id" required="required"/>--}%
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="unionParishad">ইউনিয়ন</label>
                        <span class="required-indicator">*</span>
                        <g:select class="form-control" id="unionParishad" name="unionParishad" noSelection="[null:'Select One']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required" value="${union.id}"/>
                        <g:hiddenField name="hdUnion" id="hdUnion" value="${union?.id}"></g:hiddenField>

                        %{--<g:select class="form-control" id="unionParishad" name="unionParishad" noSelection="[null:'Select One']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required" value="${union?.id}"/>--}%
                        %{--<g:hiddenField name="hdunion" id="hdunion" value="${union?.id}"/>--}%

                        %{--<g:select class="form-control" id="unionParishad" name="unionParishad" noSelection="[null:'Select One']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required"/>--}%
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="fiscalYear">অর্থ বছর</label>
                        <span class="required-indicator">*</span>
                        <g:select class="form-control" name="fiscalYear" id="fiscalYear" noSelection="[null:'Select One']" optionKey="id" from="${planningbudget.FiscalYear.list().sort()}" value="${fiscalYr?.id}"></g:select>
                        <g:hiddenField name="hdFiscalYr" id="hdFiscalYr" value="${fiscalYr?.id}"></g:hiddenField>


                        %{--<g:select class="form-control" name="fiscalYear" id="fiscalYear" noSelection="[null:'Select One']" optionKey="id" from="${planningbudget.FiscalYear.list().sort()}" value="${fiscalYr?.id}"></g:select>--}%
                        %{--<g:hiddenField name="hdfiscalYear" id="hdfiscalYear" value="${fiscalYr?.id}"/>--}%

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
                            %{--<g:hiddenField name="hdDivision" id="hdDivision" value="${union?.division?.id}"></g:hiddenField>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--জেলা--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select name="district" id="district" noSelection="[null:'Select']" optionKey="id" from="${settings.District.list().sort()}" value="${union?.district?.id}"></g:select>--}%
                            %{--<g:hiddenField name="hdDistrict" id="hdDistrict" value="${union?.district?.id}"></g:hiddenField>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--উপজেলা--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select id="upazila" name="upazila" noSelection="[null:'Select']" from="${settings.Upazila.list()}" optionKey="id" required="required"  class="many-to-one" value="${union.upazila.id}"/>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--ইউনিয়ন--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select id="unionParishad" name="unionParishad" noSelection="[null:'Select']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required"  class="many-to-one" value="${union.id}"/>--}%
                            %{--<g:hiddenField name="hdUnion" id="hdUnion" value="${union?.id}"></g:hiddenField>--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--অর্থ বছর--}%
                        %{--</td>--}%
                        %{--<td>--}%
                            %{--<g:select name="fiscalYear" id="fiscalYear" noSelection="[null:'Select']" optionKey="id" from="${planningbudget.FiscalYear.list().sort()}" value="${fiscalYr?.id}"></g:select>--}%
                            %{--<g:hiddenField name="hdFiscalYr" id="hdFiscalYr" value="${fiscalYr?.id}"></g:hiddenField>--}%
                        %{--</td>--}%
                    %{--</tr>--}%
                %{--</table>--}%
            %{--</fieldset>--}%




            <fieldset>
                <table border="2">
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
                    <g:each in="${lstPerformanceHead}" var="performanceHead" status="i">
                        <g:set var="counter" value="${counter+performanceHead?.mark}"></g:set>
                        <tr  bgcolor="#f0f8ff" style="font-size: 15px">
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
                                                    <g:radio class="morRadio" name="${'rdb-'+performanceIndicator?.id}" value="${markDistribution?.mark}" id="${'rdb-'+markDistribution?.id}"/>
                                                    <label>
                                                        ${markDistribution?.rules}
                                                    </label>

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
                                %{--<td>--}%
                                %{--<g:each in="${grantmanagement.MarkDstribution.findAllByPerformanceIndicatorAndPerformanceHead(performanceIndicator,performanceHead).sort{it.slNo}}" var="markDistribution" status="k">--}%
                                %{--<table>--}%
                                %{--<tr>--}%
                                %{--<td>--}%
                                %{--<g:radioGroup name="${'rdb-'+performanceIndicator?.id}" class="morRadio" id="${'rdb-'+performanceIndicator?.id}"--}%
                                %{--values="${markDistribution?.mark}">--}%
                                %{--<p> ${it.radio}</p>--}%
                                %{--</g:radioGroup>--}%
                                %{--</td>--}%
                                %{--</tr>--}%

                                %{--</table>--}%
                                %{--</g:each>--}%
                                %{--&nbsp;--}%
                                %{--</td>--}%
                                <td>
                                    <g:textField disabled="" name="${'txt-'+performanceIndicator?.id}" id="${'txt-'+performanceIndicator?.id}" value="${grantmanagement.ZillaPorishodPerformanceEntry.findByPerformanceIndicatorAndUnionParishadAndFiscalYear(performanceIndicator,union,fiscalYr)?.obtainMark}" class="marks"></g:textField>
                                    <g:hiddenField disabled="" name="${'hd-'+performanceIndicator?.id}" value="${grantmanagement.ZillaPorishodPerformanceEntry.findByPerformanceIndicatorAndUnionParishadAndFiscalYear(performanceIndicator,union,fiscalYr)?.markDstribution?.id}" id="${'hd-'+performanceIndicator?.id}"></g:hiddenField>
                                    <g:hiddenField disabled="" name="${'hdId-'+performanceIndicator?.id}" value="${grantmanagement.ZillaPorishodPerformanceEntry.findByPerformanceIndicatorAndUnionParishadAndFiscalYear(performanceIndicator,union,fiscalYr)?.id}" id="${'hdId-'+performanceIndicator?.id}"></g:hiddenField>
                                </td>
                            </tr>
                        </g:each>
                    </g:each>
                    <tr bgcolor="#fff0f5">
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
                            <g:textField style="background-color: #fff0f5" disabled="" name="txtSum" id="txtSum"></g:textField>

                        </td>
                    </tr>
                </table>
            </fieldset>


        <fieldset style="margin-top: 10px">
            <g:submitButton name="update" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.update.label', default: 'Update')}"  />
            %{--<g:submitButton class="btn btn-primary btn-sm save" name="Update" value="${message(code: 'default.button.update.label', default: 'Update')}"  />--}%
            %{--<g:link class="btn btn-primary btn-sm save" action="PerformanceEdit" params="[union:union.id, fiscalYr:fiscalYr.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
            %{--<g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
        </fieldset>
            %{--<g:link  class="save btn btn-primary btn-sm" action="ZillaPorishodPerformanceUpdate" params="[zila:district.id,division:division.id,fiscalYr:fiscalYr.id]" value="${message(code: 'default.button.update.label', default: 'Update')}" ><g:message code="default.button.update.label" default="Update" /></g:link>--}%
            %{--<g:submitButton name="update" class="save btn btn-primary btn-sm" value="${message(code: 'default.button.update.label', default: 'Update')}"  />--}%
        </div>
    </div>
</g:form>
</body>
</html>