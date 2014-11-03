<%@ page import="procurement.up.communityprocurement.AdvanceAdjustment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'advanceAdjustment.label', default: 'অগ্রিম সমন্বয়')}" />
		<title><g:message code="default.create.label/" default="তৈরি করুন" args="[entityName]" /></title>
        <g:javascript plugin="jquery" library="jquery" src="jquery/jquery-1.8.0.js"/>
        <script>
        $(document).ready(function(){
            upProcMaster = $('#upProcMaster').val();
        })
            function loadValue(upProcMasterId) {
                upProcMaster = upProcMasterId
                <g:remoteFunction controller="common" action="loadValuesOnUpProcMasterChangeForAdvanceAdjustment" update="changingDiv" params="'upProcMasterId='+upProcMasterId" />
            }

//        function showModal(){
//            alert(111)
//        }
        </script>

        %{--show modal starts--}%
        <script type="application/javascript">
                function showModal() {
//       alert(upProcMaster)
                    var control=this;
                    var referenceId=$(control).attr('referenceId');
                    $.ajax({
                        type:"POST",
                        %{--url:"${createLink(controller: 'advanceAdjustment', action: 'showone')}?id="+referenceId,--}%
                        url:"${createLink(controller: 'advanceAdjustment', action: 'showone')}?id="+upProcMaster,
                        dataType: "json",
                        success: function (data)
                        {
                            $(".hid").val(data.advanceAdjustment.id);
                            $.each(
                                    data.dataReturn,function(idx,obj){
                                        var rows = [];
                                        rows.push(drawRow(obj));
                                        $("#data-list").append(rows);
                                    });
                            $('#previousAdvanceAdjustmentModal').modal('show');
                        },
                        failure: function (data) {
                        }
                    });
                    return false;
                };


            function drawRow(rowData)
            {
                var row = $("<tr />");
                row.append($("<td>" + rowData.adjustment_amount + "</td>"));
                row.append($("<td>" + rowData.payment_date + "</td>"));
                return row;
            }
        </script>
        %{--show modal ends--}%
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label/" default="অগ্রিম সমন্বয় লিস্ট" args="[entityName]" /></g:link></a>
    </p>
    <div id="create-division" class="content scaffold-create" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.create.label/" default="অগ্রিম সমন্বয়" args="[entityName]" /></h3>
                <g:if test="${flash.message}">
                    <div  class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${advanceAdjustmentInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${advanceAdjustmentInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>


            <div class="panel-body">
                <g:form action="save" >
                    <fieldset class="form" id="advanceAdjustmentForm" name="advanceAdjustmentForm">
                        <g:render template="form"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>


    %{--======================modal for showing previous advance adjustment --=========================--}%
    <form id="showPreviousAdvanceAdjustmentModal" method="POST">
        <g:hiddenField name="id" class="hid" value="${advanceAdjustmentInstance?.id}"/>

        <div aria-hidden="true" style="display: none;" class="modal" id="previousAdvanceAdjustmentModal" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <a onclick="$('#previousAdvanceAdjustmentModal').modal('hide');" class="close"
                           aria-hidden="true">&times;
                        </a>
                        <h4 class="modal-title">Show Previous Advance Adjustment</h4>
                    </div>

                    <div class="container"></div>

                    <div class="modal-body">

                        <div class="row" style="padding-left: 43px;padding-right: 32px">

                            <div class="col-sm-12">
                                <table style="table-layout: fixed;padding-left: 10px" id="data-list"
                                       class="dataListTable table table-bordered table-striped table-hover table-condensed dataTable">

                                    <thead style="background-color: #31708f">
                                    <tr>

                                        <th>Previous Advance Adjustment</th>
                                        <th>Adjustment Date</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        %{--<a href="${g.createLink(controller: 'advanceAdjustment')}" aria-hidden="true" class="btn btn-default" >Close</a>--}%
                        <a aria-hidden="true" class="btn btn-default"
                           onclick="$('#previousAdvanceAdjustmentModal').modal('hide');">Close</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
    </body>
</html>
