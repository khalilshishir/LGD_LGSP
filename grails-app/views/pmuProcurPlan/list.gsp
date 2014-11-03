<%@ page import="comonclass.ProcPlanStatus; comonclass.ProcPlanType; lookUp.Lookup; lookUp.AllLookup; procurement.pmu.PmuProcPlan" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pmuProcurPlan.label', default: 'Procurement Plan')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>


</head>

<body>

<p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
    <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label"/></a>
    |
    <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message
            code="default.new.label" args="[entityName]"/></g:link></a>
</p>


<form id="create-wbs" method="POST" >
    <g:hiddenField name="id" class="hid" value="${pmuProcPlan?.id}" />

    <div aria-hidden="true" style="display: none;" class="modal" id="myModal11" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <a href="${g.createLink(controller: 'pmuProcurPlan')}" class="close" aria-hidden="true">&times;
                    </a>
                    <h4 class="modal-title">Add WBS</h4>
                </div>
                <div class="container"></div>

                <div class="modal-body">

                    <div class="col-xs-12" style="padding-bottom: 7px;padding-left: 27px">
                        <div class="col-xs-6">

                            <div >

                                <label>Start Date</label><br>
                                <div class="bfh-datepicker START_DATE"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcPlanWBS?.START_DATE)}" data-close="true" id="START_DATE" data-name="START_DATE"></div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="">
                                <label>End Date</label><br>
                                <div class="bfh-datepicker END_DATE"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcPlanWBS?.END_DATE)}" data-close="true" id="END_DATE"  data-name="END_DATE"></div>
                            </div>

                        </div>
                        <div class="col-xs-6">
                            <div class="">
                                <label for="TASK_NAME">Task Name</label><br>
                                <g:textField name="TASK_NAME" id="TASK_NAME" class="form-control TASK_NAME"/>
                            </div>
                        </div>

                        <div class="col-xs-6">
                            <div class="">
                                <label for="TASK_DETAILS">Task Details</label><br>
                                <g:textArea cols="3" rows="2" name="TASK_DETAILS" id="TASK_DETAILS" class="form-control TASK_DETAILS"/>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div>
                                <label for="TYPE">Type</label>
                                <g:select class="form-control TYPE" name="TYPE" id="TYPE" from="${ProcPlanType.values()}"/>
                            </div>

                        </div>
                        <div class="col-xs-6">
                            <div>
                                <label for="STATUS_TYPE">Status</label>

                                <g:select class="form-control STATUS_TYPE" id="STATUS_TYPE"  name="STATUS_TYPE" from="${ProcPlanStatus.values()}"/>
                            </div>

                        </div>

                    </div>

                    <div class="row" style="padding-left: 43px;padding-right: 32px">

                        <div class="col-sm-12">
                            <table style="table-layout: fixed;padding-left: 10px" id="data-list" class="dataListTable table table-bordered table-striped table-hover table-condensed dataTable">

                                <thead style="background-color: #31708f">
                                <tr>

                                    <th>Task name</th>
                                    <th>Task Details</th>
                                    <th>Type</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th>Status</th>
                                    <th>Add Rev</th>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>

                        </div>

                    </div>

                </div>

                <div class="modal-footer">
                    <a href="${g.createLink(controller: 'pmuProcurPlan')}" aria-hidden="true" class="btn btn-default">Close</a>
                    <button class="btn btn-success" name="save" value="add" type="submit" >Save WBS</button>

                </div>
            </div>
        </div>
    </div>
</form>
%{--====================Modal and list for  add Review=======================--}%
%{--<g:form controller="pmuProcurPlanReview" action="save" name="forget" >--}%
<form id="create-rev" method="POST" >

    <g:hiddenField name="wbsId" class="wbsId" value="${pmuProcPlanWBS?.id}" />

    <div class="modal" id="myModal12" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    %{--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--}%
                    <a href="${g.createLink(controller: 'pmuProcurPlan')}" class="close" aria-hidden="true">&times;
                    </a>
                    <h4 class="modal-title">Add Review</h4>
                </div>
                <div class="container"></div>
                <div class="modal-body">

                    <div class="col-xs-12" style="padding-bottom: 7px;padding-left: 27px">
                        <div class="col-xs-6">

                            <div >

                                <label>Planning Date</label><br>
                                <div class="bfh-datepicker planningDate" id="planningDate"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcPlanWBS?.planningDate)}" data-close="true" data-name="planningDate"></div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="">
                                <label>Received Date</label><br>
                                <div class="bfh-datepicker receivedDate" id="receivedDate"  data-date="${formatDate(format:'MM/dd/yyyy',date:pmuProcPlanWBS?.receivedDate)}" data-close="true" data-name="receivedDate"></div>
                            </div>

                        </div>
                        <div class="col-xs-6">
                            <div class="">
                                <label for="day">Day</label><br>
                                %{--<g:textField name="day" id="day" class="form-control"/>--}%
                                <g:field type="number" id="day" name="day" class="form-control day"/>
                            </div>
                        </div>

                        <div class="col-xs-6">
                            <div class="">
                                <label for="remarks">Remarks</label><br>
                                <g:textArea cols="3" rows="2" name="remarks" id="remarks" class="form-control remarks"/>
                            </div>
                        </div>


                    </div>
                    <div class="row" style="padding-left: 43px;padding-right: 32px">

                        <div class="col-sm-12">
                            <table style="table-layout: fixed;padding-left: 10px" id="data-list-2" class="dataListTable table table-bordered table-striped table-hover table-condensed dataTable">

                                <thead style="background-color: #31708f">
                                <tr>

                                    <th>Planning Date</th>
                                    <th>Received Date</th>
                                    <th>Day</th>
                                    <th>Remarks</th>

                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>

                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <a href="#" data-dismiss="modal" class="btn">Close</a>
                    %{--<a href="#" class="btn btn-primary">Save changes</a>--}%
                    %{--<button class="btn btn-success" id="submitbtn" type="submit" >Save changes</button>--}%
                    <button class="btn btn-success" name="save" value="add" type="submit" >Save Review</button>

                </div>
            </div>
        </div>
    </div>
</form>
%{--</g:form>--}%
%{--==============End Review==============================--}%


%{--============================table for planning==============--}%

<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
    <thead>
    <tr>

        <th>SL No</th>
        <th>Package No</th>
        <th>Contract Description</th>
        <th>Unit</th>
        <th>Qnt</th>
        <th>Estimated price</th>
        <th>Progress Status</th>
        <th>Add WBS</th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${pmuProcurPlanInstanceList}" status="i" var="pmuProcurPlanInstance">
        <tr>
            <td><g:link action="show" id="${pmuProcurPlanInstance?.id}">${pmuProcurPlanInstance?.SLNO}</g:link></td>
            <td>${pmuProcurPlanInstance?.PACKAGES_NO}</td>
            <td>${pmuProcurPlanInstance?.CONTRACT_DESCRIPTION}</td>
            <td>${pmuProcurPlanInstance?.UNIT}</td>
            <td>${pmuProcurPlanInstance?.QTY_NOS}</td>
            <td>${pmuProcurPlanInstance?.ESTIMATED_PRICE}</td>
            <td class="center">${pmuProcurPlanInstance?.pmuProcurPlanWbs.status ? pmuProcurPlanInstance?.pmuProcurPlanWbs.status :"No WBS Added Yet"}</td>

            <td class="actions ">
                <div class="btn-group">
                    <a class="addWbs btn btn-warning" id="addWBS" referenceId="${fieldValue(bean: pmuProcurPlanInstance, field: "id")}"
                       title="Create WPS"><i class="glyphicon glyphicon-pencil"></i>Add</a>

                </div>
            </td>

        </tr>
    </g:each>
    </tbody>
</table>
%{--============================End table for planning ==============--}%
<script type="application/javascript">
    $('.addWbs').click(function () {
        var control=this;
        var referenceId=$(control).attr('referenceId');
        $.ajax({
            type:"POST",
            url:"${createLink(controller: 'pmuProcurPlan', action: 'showone')}?id="+referenceId,
            dataType: "json",
            success: function (data)
            {
                $(".hid").val(data.pmuProcPlan.id);
                $.each(
                        data.dataReturn,function(idx,obj){
                            var rows = [];
                            rows.push(drawRow(obj));

                            $("#data-list").append(rows);

                        });

//                    $('#myModal1').modal('show');
                $('#myModal11').modal('show');
            },
            failure: function (data) {
            }
        });
        return false;
    });


    function drawRow(rowData)
    {
        var row = $("<tr />");
        row.append($("<td>" + rowData.task_name + "</td>"));
        row.append($("<td>" + rowData.task_details + "</td>"));
        row.append($("<td>" + rowData.type + "</td>"));
        row.append($("<td>" + rowData.start_date + "</td>"));
        row.append($("<td >" + rowData.end_date + "</td>"));
        row.append($("<td>" + rowData.status + "</td>"));
        row.append($("<td><a class='btn btn-primary' onclick='clicktest("+rowData.id+")' >Add</a></td>"));

        return row;
    }
    function clicktest(id){
        jQuery.ajax({
            type:"POST",
            url:"${createLink(controller: 'pmuProcPlanWbs', action: 'create')}?wbsid="+id,
            dataType: "json",
            success: function (data)
            {
                $(".wbsId").val(data.pmuWbs.id);
                $.each(
                        data.dataReturn,function(idx,obj){
                            var rows = [];
                            rows.push(rowInsert(obj));

                            $("#data-list-2").append(rows);
                        });

//                    $('#myModal1').modal('show');
                $('#myModal12').modal('show');
            },
            failure: function (data) {
            }
        });
    }

    function rowInsert(rowData)
    {
        var row = $("<tr />");
        row.append($("<td>" + rowData.planningDate + "</td>"));
        row.append($("<td>" + rowData.receivedDate + "</td>"));
        row.append($("<td>" + rowData.day + "</td>"));
        row.append($("<td>" + rowData.remarks + "</td>"));
        return row;
    }
</script>


<script type="application/javascript">


    jQuery(function () {
        $('#create-wbs').validate({
            errorElement: 'span',
            errorClass: 'help-block',
            focusInvalid: false,
            rules: {
                name: {
                    required: true,
                    maxlength: 200
                }

            },
            errorPlacement: function(error, element) {

            },

            highlight: function (e) {
                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
            },
            success: function (e) {
                $(e).closest('.form-group').removeClass('has-error').addClass('has-info');
                $(e).remove();
            },
            submitHandler: function (form) {
                $.ajax({
                    url: "${createLink(controller: 'pmuProcPlanWbs', action: 'save')}",
                    type: 'post',
                    dataType: "json",
                    data: $("#create-wbs").serialize(),
                    success: function (data) {
//                            alert(data.isError);
//                            alert(data.obj.assign_person);


//                                  $('#example').prepend("<tr><td>"+data.obj.assign_person+"</td><td>" + data.obj.test_details +"</td><td>" + data.obj.test_name +"</td><td>" + data.obj.type +"</td><td><a class='btn btn-info'></a></td><td></tr>");
//                                  $('#example').prepend("<tr><td>"+data.obj.assign_person+"</td><td>" + data.obj.test_details +"</td><td>" + data.obj.test_name +"</td><td>" + data.obj.type +"</td><td>"+data.obj.id+"</td></tr>");
                        $('#data-list').prepend("<tr><td>"+data.obj.taskName+"</td><td>" + data.obj.taskDetails +"</td><td>" + data.obj.type +"</td><td>" + data.startDate +"</td><td>" + data.endDate +"</td><td>" + data.obj.status +"</td><td><a class='btn btn-primary' onclick='clicktest("+data.obj.id+")' >Add</a></td></tr>");
                        clearForm();
////                       data.message

//
//                            $('#studentList').append("<tr><td>"+ data.studentList[i].id +">"+ data.studentList[i].studentName +"</option>");
////                            alert(data.studentList[i].studentName);
//

                    },
                    failure: function (data) {
                    }
                })
            }
        });
        $('#create-rev').validate({
            errorElement: 'span',
            errorClass: 'help-block',
            focusInvalid: false,
            rules: {
                name: {
                    required: true,
                    maxlength: 200
                }

            },
            errorPlacement: function(error, element) {

            },

            highlight: function (e) {
                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
            },
            success: function (e) {
                $(e).closest('.form-group').removeClass('has-error').addClass('has-info');
                $(e).remove();
            },
            submitHandler: function (form) {
                $.ajax({
                    url: "${createLink(controller: 'pmuProcPlanReview', action: 'save')}",
                    type: 'post',
                    dataType: "json",
                    data: $("#create-rev").serialize(),
                    success: function (data) {
//                            alert(data.isError);
//                            alert(data.obj.assign_person);


//                                  $('#example').prepend("<tr><td>"+data.obj.assign_person+"</td><td>" + data.obj.test_details +"</td><td>" + data.obj.test_name +"</td><td>" + data.obj.type +"</td><td><a class='btn btn-info'></a></td><td></tr>");
//                                  $('#example').prepend("<tr><td>"+data.obj.assign_person+"</td><td>" + data.obj.test_details +"</td><td>" + data.obj.test_name +"</td><td>" + data.obj.type +"</td><td>"+data.obj.id+"</td></tr>");
                        $('#data-list-2').prepend("<tr><td>"+data.planningDate+"</td><td>" + data.receivedDate +"</td><td>" + data.obj.day +"</td><td>" + data.obj.remarks +"</td></tr>");
                        clearForm();
////                       data.message

//
//                            $('#studentList').append("<tr><td>"+ data.studentList[i].id +">"+ data.studentList[i].studentName +"</option>");
////                            alert(data.studentList[i].studentName);
//

                    },
                    failure: function (data) {
                    }
                })
            }
        });

        function clearForm(){
            $('#START_DATE').val(" ");
            $('#END_DATE').val(" ");
            $('#TASK_NAME').val(" ");
            $('#TASK_DETAILS').val(" ");
            $('#TYPE').val(" ");
            $('#STATUS_TYPE').val(" ");
            $('#planningDate').val(" ");
            $('#receivedDate').val(" ");
            $('#day').val(" ");
            $('#remarks').val(" ");

        }



    });


</script>


<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>


%{--===================== modal=============================--}%

</body>
</html>
