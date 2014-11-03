<%--
  Created by IntelliJ IDEA.
  User: Rowshon Chowdhoury
  Date: 10/15/14
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">

    %{--Hye Edited--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'app_style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'ddsmoothmenu.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'ddsmoothmenu-v.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-combined.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-formhelpers.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom_bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrapValidator.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'datepicker.css')}" type="text/css">
    %{--Hye Edited End--}%

    <g:layoutHead/>
    %{--<r:layoutResources />--}%
    %{--<link href="${resource(dir: 'js', file: 'jquery.min.js')}" type="text/javascript">--}%
    %{--<script type="text/javascript" src="js/jquery.min.js"></script>--}%

    %{--hye edited for data table--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.dataTables.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.bootgrid.css')}" type="text/css">
    %{--<r:script>

            jQuery(document).ready(function () {
                $('#example').dataTable();

            });

        </r:script>--}%
    <g:javascript src="jquery.min.js"></g:javascript>

    <script type="text/javascript">
        $(document).ready(function(){
        });
    </script>
    <script src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>

    <script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.bootgrid.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>




    <script type="text/javascript">
        jQuery(document).ready(function () {
            $('#example').dataTable();

        });

    </script>

    %{-- <script type="text/javascript">
         jQuery(document).ready(function(){
             $("#grid-basic").bootgrid();
         });
     </script>--}%


</head>
<body>
<div class="container">
    <span>
        <g:link controller="${params.controller}" action="${params.action}" params="[lang:'en']">
            English
        </g:link>
    </span>&nbsp

    <span>
        <g:link controller="${params.controller}" action="${params.action}" params="[lang:'bn ']">
            বাংলা
        </g:link>
    </span>
</div>
%{--<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>--}%
<g:render template="/content/header"/>
<div class="container">
    <g:render template="/content/upAssetLeftMenu"/>
    <div class="col-xs-9">
        <g:layoutBody/>
    </div>
</div>


<div class="container">

    <g:render template="/content/footer"/>
</div>
<script src="${resource(dir: 'js', file: 'bootstrapValidator.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap-formhelpers.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap-datepicker.js')}"></script>

%{--<r:layoutResources/>--}%


%{--<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>--}%

</body>
</html>
