<%@ page import="fixedAsset.COMITY" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'COMITY.label', default: 'Committee')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message
            code="default.list.label" args="[entityName]"/></g:link></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message
            code="default.new.label" args="[entityName]"/></g:link></a>
</p>

<div id="show-COMITY" class="content scaffold-show" role="main">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]"/></h3>
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



        <div class="panel-body">
            <g:if test="${COMITYInstance?.COMITY_NAME}">
                <div class="col-xs-6">
                    <div class="form-group">
                        <li class="fieldcontain">
                            <span id="COMITY_NAME-label" class="property-label"><g:message
                                    code="COMITY.COMITY_NAME.label" default="Committee Name :"/></span>

                            <span class="property-value" aria-labelledby="COMITY_NAME-label"><g:fieldValue
                                    bean="${COMITYInstance}" field="COMITY_NAME"/></span>

                        </li>
                    </div>
                </div>
            </g:if>

            <g:if test="${COMITYInstance?.WORK_PURPOSE}">
                <div class="col-xs-6">
                    <div class="form-group">
                        <li class="fieldcontain">
                            <span id="WORK_PURPOSE-label" class="property-label"><g:message
                                    code="COMITY.WORK_PURPOSE.label" default="Work Purpose :"/></span>

                            <span class="property-value" aria-labelledby="WORK_PURPOSE-label"><g:fieldValue
                                    bean="${COMITYInstance}" field="WORK_PURPOSE"/></span>
                    </div>
                </div>
                </li>
            </g:if>

            <g:if test="${COMITYInstance?.DESCRIPTION}">
                <div class="col-xs-6">
                    <div class="form-group">
                        <li class="fieldcontain">
                            <span id="DESCRIPTION-label" class="property-label"><g:message
                                    code="COMITY.DESCRIPTION.label" default="Description :"/></span>

                            <span class="property-value" aria-labelledby="DESCRIPTION-label"><g:fieldValue
                                    bean="${COMITYInstance}" field="DESCRIPTION"/></span>

                        </li>
                    </div>
                </div>
            </g:if>

            <g:if test="${COMITYInstance?.START_DATE}">
                <div class="col-xs-6">
                    <div class="form-group">
                        <li class="fieldcontain">
                            <span id="START_DATE-label" class="property-label"><g:message code="COMITY.START_DATE.label"
                                                                                          default="Start Date :"/></span>

                            <span class="property-value" aria-labelledby="START_DATE-label"><g:formatDate
                                    date="${COMITYInstance?.START_DATE}"/></span>

                        </li>
                    </div>
                </div>
            </g:if>

            <g:if test="${COMITYInstance?.END_DATE}">
                <div class="col-xs-6">
                    <div class="form-group">
                        <li class="fieldcontain">
                            <span id="END_DATE-label" class="property-label"><g:message code="COMITY.END_DATE.label"
                                                                                        default="End Date :"/></span>

                            <span class="property-value" aria-labelledby="END_DATE-label"><g:formatDate
                                    date="${COMITYInstance?.END_DATE}"/></span>

                        </li>
                    </div>
                </div>
            </g:if>
            <g:if test="${COMITYInstance?.IS_ACTIVE}">
                <div class="col-xs-6">
                    <div class="form-group">
                        <li class="fieldcontain">
                            <span id="WORK_PURPOSE-label" class="property-label"><g:message
                                    code="COMITY.WORK_PURPOSE.label" default="Is Active :"/></span>

                            <g:checkBox disabled="" name="IS_ACTIVE" value="${COMITYInstance?.IS_ACTIVE}" />

                    </div>
                </div>
                </li>
            </g:if>


        </div>

        <div class="panel panel-info"style="margin: 10px;" >
            <div class="panel-heading">
                <h5 class="panel-title">Comity Members List</h5>
            </div>

            <div class="panel-body">
                <table id="detailList" style="width: 906px;">
                <tr>
                    <th>Stakeholder Name</th>
                    <th>Remarks</th>

                    <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
                    <g:each var="comityDtl" in="${COMITYInstance.comityDtl}" status="i">
                        <tr id="detail${i}" name="tr[${i}]" class="detail-div"
                            <g:if test="${hidden}">style="display:none;"</g:if>>
                            <td>
                                ${comityDtl?.STAKEHOLDER_ID?.STAKEHOLDER_NAME}
                            </td>
                            <td>
                                ${comityDtl?.REMARKS}
                            </td>


                        </tr>

                    </g:each>
                </table>
            </div>


        </div>
        <div class="panel-body">
            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${COMITYInstance?.id}"/>
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${COMITYInstance?.id}"><g:message
                            code="default.button.edit.label" default="Edit"/></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>

    </div>

</body>
</html>
