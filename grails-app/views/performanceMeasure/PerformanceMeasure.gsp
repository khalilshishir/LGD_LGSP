<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 28/9/2014
  Time: 1:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.min.css')}">
    <script src="${resource(dir: 'js',file: 'jquery-1.8.0.min.js')}"></script>

    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
</head>
<style>
.DemoBS2{
    margin:20px;
}

</style>
<body>
<script src="${resource(dir: 'js', file: 'jquery-1.8.0.min.js.js')}"></script>
<script src = "${resource(dir: 'js', file: 'jquery.blockUI.js')}"></script>
<script type="text/javascript">
    $(document).ready(function(){
    });

    function GenerateCategoryUnionPporishod(upzId,fiyId){


        if(upzId>0 && fiyId>0){
            $.ajax({
                url: "${request.contextPath}/PerformanceMeasure/GenerateCategoryDetail",
                type: "POST",
                data: {upzId: upzId,fiyId:fiyId},
                async: false,
                success: function (response) {
                    $("#accordion").empty();
                    $("#accordion").append(response);
                },
                error: function (xhr, textStatus, errorThrown) {
                    alert("An internal error occurred! Please try again later.");
                }
            });
        }
    }
    $(document).on("change","#upazila",function(){
        $.blockUI("loading...");
        var upozilaId=$("#upazila").val();
        var fiscalYrId=$("#fiscalYear").val();

        GenerateCategoryUnionPporishod(upozilaId,fiscalYrId);
        $.unblockUI();
    });
    $(document).on("change","#fiscalYear",function(){
        $.blockUI("loading...");
        var upozilaId=$("#upazila").val();
        var fiscalYrId=$("#fiscalYear").val();

        GenerateCategoryUnionPporishod(upozilaId,fiscalYrId);
        $.unblockUI();
    });

</script>
<g:form action="PerformanceMeasureSave">
<fieldset>
    <table>
        <tr>
            <td>
                বিভাগ
            </td>
            <td>
                <g:select name="division" id="division" noSelection="[null:'Select']" optionKey="id"  from="${settings.Division.list().sort()}"></g:select>
            </td>
            <td>
                জেলা
            </td>
            <td>
                <g:select name="district" id="district" noSelection="[null:'Select']" optionKey="id" from="${settings.District.list().sort()}"></g:select>
            </td>
            <td>
                উপজেলা
            </td>
            <td>
                <g:select id="upazila" name="upazila" noSelection="[null:'Select']" from="${settings.Upazila.list()}" optionKey="id" required="required"  class="many-to-one"/>
            </td>
            %{--<td>--}%
                %{--ইউনিয়ন--}%
            %{--</td>--}%
            %{--<td>--}%
                %{--<g:select id="unionParishad" name="unionParishad" noSelection="[null:'Select']" from="${settings.UnionParishad.list()}" optionValue="UP_NAME" optionKey="id" required="required"  class="many-to-one"/>--}%
            %{--</td>--}%
            <td>
                অর্থ বছর
            </td>
            <td>
                <g:select name="fiscalYear" id="fiscalYear" noSelection="[null:'Select']" optionKey="id" from="${planningbudget.FiscalYear.list().sort()}"></g:select>
            </td>
        </tr>
    </table>
</fieldset>
<fieldset>
    <div class="DemoBS2">
        <div class="panel-group" id="accordion">

        </div>
    </div>
</fieldset>
<fieldset>
    <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"  />
</fieldset>
</g:form>

</body>
</html>