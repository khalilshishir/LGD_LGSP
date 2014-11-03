<%--
  Created by IntelliJ IDEA.
  User: mahye
  Date: 9/22/14
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'ASSET_BOOK.label', default: 'Disposed Asset')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
%{--<a href="#list-ASSET_BOOK" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--</ul>--}%
%{--</div>--}%
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code=" Home"/></a>
    %{--|--}%
    %{--<a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="New Asset Book" args="[entityName]" /></g:link></a>--}%
</p>
<div id="list-ASSET_BOOK" class="content scaffold-list" role="main">
    %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
        </div>
    </div>
    %{--<g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>--}%
    <script>
        $(document).ready(function(){
            $("#a").fadeOut(8000);
        });
    </script>
    <g:if test="${flash.message}">
        <div class="panel-body">
            <div id="a" class="alert alert-success" role="alert">
                <div class="message" role="status">
                    <h3 class="panel-title">${flash.message}</h3>
                </div>
            </div>
        </div>
    </g:if>
    <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
        <thead>
        <tr>

            <g:sortableColumn property="ASSET_NAME" title="${message(code: 'ASSET_BOOK.ASSET_NAME.label', default: 'Asset Name')}" />

            <g:sortableColumn property="ASSET_DESCRIPTION" title="${message(code: 'ASSET_BOOK.ASSET_DESCRIPTION.label', default: ' Description')}" />

            <g:sortableColumn property="ASSET_LIFE_CYCLE" title="${message(code: 'ASSET_BOOK.ASSET_LIFE_CYCLE.label', default: ' Life Cycle')}" />

            <g:sortableColumn property="ASSET_NUMBER" title="${message(code: 'ASSET_BOOK.ASSET_NUMBER.label', default: ' Number')}" />

            <g:sortableColumn property="ASSET_RECEIVE_ID" title="${message(code: 'ASSET_BOOK.ASSET_RECEIVE_ID.label', default: 'Receive id')}" />

            <th><g:message code="ASSET_BOOK.ASSET_STATUS.label" default="Asset Status" /></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${ASSET_BOOKInstanceList}" status="i" var="ASSET_BOOKInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${ASSET_BOOKInstance.id}">${fieldValue(bean: ASSET_BOOKInstance, field: "ASSET_NAME")}</g:link></td>

                <td>${fieldValue(bean: ASSET_BOOKInstance, field: "ASSET_DESCRIPTION")}</td>

                <td>${fieldValue(bean: ASSET_BOOKInstance, field: "ASSET_LIFE_CYCLE")}</td>

                <td>${fieldValue(bean: ASSET_BOOKInstance, field: "ASSET_NUMBER")}</td>

                <td>${fieldValue(bean: ASSET_BOOKInstance, field: "ASSET_RECEIVE_ID")}</td>

                <td>${fieldValue(bean: ASSET_BOOKInstance, field: "ASSET_STATUS")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${ASSET_BOOKInstanceTotal}" />
    </div>
</div>
</body>
</html>
