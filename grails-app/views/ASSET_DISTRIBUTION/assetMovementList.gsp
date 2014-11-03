<%--
  Created by IntelliJ IDEA.
  User: mahye
  Date: 9/16/14
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'ASSET_DISTRIBUTION.label', default: 'Asset Movement')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
%{--<a href="#list-ASSET_DISTRIBUTION" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>--}%
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
</p>
<div id="list-ASSET_DISTRIBUTION" class="content scaffold-list" role="main">
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
<table class="table table-striped">
    %{--<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">--}%
        <thead>
        <tr>

            <th><g:message code="ASSET_DISTRIBUTION.STAKEHOLDER_ID.label" default="Stakeholder Name"/></th>

            <th><g:message code="ASSET_DISTRIBUTION.ASSET_BOOK_ID.label" default="Asset name" /></th>

            <g:sortableColumn property="DESCRIPTION" title="${message(code: 'ASSET_DISTRIBUTION.DESCRIPTION.label', default: 'Description')}" />

            <th><g:message code="ASSET_DISTRIBUTION.LOCATION_ID.label" default="Location" /></th>

            %{--<g:sortableColumn property="REMARKS" title="${message(code: 'ASSET_DISTRIBUTION.REMARKS.label', default: 'Remarks')}" />--}%

            <g:sortableColumn property="ASSIGN_DATE" title="${message(code: 'ASSET_DISTRIBUTION.ASSIGN_DATE.label', default: 'Assign Date')}" />
            <th>Action</th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${ASSET_DISTRIBUTIONInstanceList}" status="i" var="ASSET_DISTRIBUTIONInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${ASSET_DISTRIBUTIONInstance.id}">${fieldValue(bean: ASSET_DISTRIBUTIONInstance, field: "STAKEHOLDER_ID")}</g:link></td>

                <td>${fieldValue(bean: ASSET_DISTRIBUTIONInstance, field: "ASSET_BOOK_ID")}</td>

                <td>${fieldValue(bean: ASSET_DISTRIBUTIONInstance, field: "DESCRIPTION")}</td>

                <td>${fieldValue(bean: ASSET_DISTRIBUTIONInstance, field: "LOCATION_ID")}</td>

                %{--<td>${fieldValue(bean: ASSET_DISTRIBUTIONInstance, field: "REMARKS")}</td>--}%

                <td><g:formatDate format="dd/MM/yyyy" date="${ASSET_DISTRIBUTIONInstance.ASSIGN_DATE}" /></td>
                <td>
                    <g:link class="edit btn btn-primary btn-sm" action="move" id="${ASSET_DISTRIBUTIONInstance?.id}">Move</g:link>
                </td>

            </tr>
        </g:each>
        </tbody>
    </table>
    %{--<div class="pagination">
                 <g:paginate total="${ASSET_DISTRIBUTIONInstanceTotal}" />
             </div>--}%
</div>
</body>
</html>
