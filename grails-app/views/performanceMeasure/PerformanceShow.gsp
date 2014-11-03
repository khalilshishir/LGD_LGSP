<%--
  Created by IntelliJ IDEA.
  User: amahamud
  Date: 30/9/2014
  Time: 12:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>

    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.min.css')}">--}%
    %{--<script src="${resource(dir: 'js',file: 'jquery-1.8.0.min.js')}"></script>--}%

    %{--<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>--}%
    <link rel="stylesheet"
          href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>
<style>
.DemoBS2{
    margin:20px;
}

</style>

<body>
<script src="${resource(dir: 'js', file: 'jquery-1.8.0.min.js.js')}"></script>
<fieldset>
    <table>
        <tr>
            <td>
                বিভাগ
            </td>
            <td>
                ${upz.division}
            </td>
            <td>
                জেলা
            </td>
            <td>
                ${upz.district}
            </td>
            <td>
                উপজেলা
            </td>
            <td>
                ${upz}
            </td>

            <td>
                অর্থ বছর
            </td>
            <td>
                ${fiyr}
            </td>
        </tr>
    </table>
</fieldset>


<div class="panel-group" id="accordion">
<g:each in="${measureCategoryList}" var="measureCat" status="i">
    <div class="panel panel-success">

        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="${'#accordion'+i}">
                    ${measureCat?.categoryName}
                </a>
            </h4>
        </div>

        <div id="${'accordion'+i}" class="panel-collapse collapse">
            <div class="panel-body">
                <g:each in="${grantmanagement.PerformanceMeasure.findAllByMeasureCategory(measureCat)}" var="measure" status="j">
                    ${measure?.unionParishad.UP_NAME} &nbsp;${measure?.mark} <br/>
                </g:each>
            </div>
        </div>

    </div>

</g:each>
</div>


</body>
</html>