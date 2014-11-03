<%@ page import="procurement.pmu.PmuProcPlan" %>


<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<div class="container">
    <div class="row">
                     <div class="col-md-12">
                         <form id="create-form" method="POST" >
                             <g:hiddenField name="id" value="${pmuProWps?.id}" />
                             Assign person: <input type="text" name="Assign_person" id="Assign_person" />
                             Test details: <input type="text" name="Test_details" id="Test_details" />
                             Test name: <input type="text" name="Test_name" id="Test_name" />
                             type: <input type="text" name="type" id="type" />
                             <button class="btn btn-info" name="save" value="add" type="submit" />
                         </form>
                     </div>
    </div>

</div>
    <div class="row">
                   <div class="col-sm-1"></div>
                   <div class="col-sm-10">
                       <table  id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed dataTable">
                       <thead>
                       <tr>
                           <th>Assign person</th>
                           <th> Test details</th>
                           <th> Test name</th>
                           <th>type</th>
                           <th>Action</th>
                       </tr>
                       </thead>
                           <tbody>
                           <g:each in="${PmuProcurPlanReviewInstanceList}" status="i" var="wbs">
                           <tr>

                               <td>${wbs.Assign_person}</td>
                               <td>${wbs.Test_details}</td>
                               <td>${wbs.Test_name}</td>
                               %{--<td>${wbs.type}</td>--}%
                               %{--<td class="actions ">--}%
                                   %{--<div class="btn-group">--}%
                                       %{--<a class="btn btn-warning"--}%
                                          %{--href="${g.createLink(controller: 'pmuProcurPlan', action: 'showtwo', params: [id: PmuProcurPlanWbsInstanceList?.id])}"--}%
                                          %{--title="Create WPS"><i class="glyphicon glyphicon-pencil"></i></a>--}%
                                   %{--</div>--}%
                               %{--</td>--}%
                           %{--</tr>--}%
                           </g:each>
                           </tbody>
                       </table>

                   </div>
                   <div class="col-sm-1"></div>
    </div>
%{--<div class="row">--}%
               %{--<div class="col-sm-2">--}%

               %{--</div>--}%
                %{--<div class="col-sm-8">--}%
                    %{--<table  id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed dataTable">--}%

                        %{--<tr>--}%

                            %{--<th>Assign person</th>--}%
                            %{--<th> Test details</th>--}%
                            %{--<th> Test name</th>--}%
                            %{--<th>type</th>--}%
                        %{--</tr>--}%
                        %{--<tbody>--}%
                        %{--<g:each in="${PmuProcurPlanWbsInstanceList}" status="i" var="PmuProcurPlanWbsInstance">--}%
                            %{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%

                                %{--<td><g:link action="showone" id="${PmuProcurPlanWbsInstance.id}">--}%
                                    %{--${fieldValue(bean: PmuProcurPlanWbsInstance, field: "Assign_person")}</g:link></td>--}%


                                %{--<td>${fieldValue(bean: PmuProcurPlanWbsInstance, field: "Test_details")}</td>--}%
                                %{--<td>${fieldValue(bean: PmuProcurPlanWbsInstance, field: "Test_name")}</td>--}%
                                %{--<td>${fieldValue(bean: PmuProcurPlanWbsInstance, field: "Test_name")}</td>--}%

                                %{--<td><g:formatDate date="${PmuProcurPlanWbsInstance.Test_name}" /></td>--}%

                                %{--<td>${fieldValue(bean: pmuProcurPlanWbs, field: "Test_name")}</td>--}%

                                %{--<td><g:formatDate date="${pmuProcurPlanWbs.UPDATED_DATE}" /></td>--}%

                            %{--</tr>--}%
                        %{--</g:each>--}%
                        %{--</tbody>--}%
                    %{--</table>--}%
               %{--</div>--}%
                 %{--<div class="col-sm-2">--}%

               %{--</div>--}%
%{--</div>--}%
<script type="application/javascript">


    jQuery(function () {
        $('#create-form').validate({
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
                    url: "${createLink(controller: 'pmuProcurPlanReview', action: 'save')}",

                    type: 'post',
                    dataType: "json",
                    data: $("#create-form").serialize(),
                    success: function (data) {
//                            alert(data.isError);
//                            alert(data.obj.assign_person);

                        $('#example').prepend("<tr><td>"+data.obj.assign_person+ "</td><td>" + data.obj.test_details + "</td><td>" + data.obj.test_name + "</td><td>" + data.obj.type + "</td></tr>");
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





    });


</script>
%{--<script type="text/javascript">--}%
    %{--$('#example > tr').each(function() {--}%
        %{--var postData = {--}%
            %{--'Assign_person':$(this).find('#Assign_person').val(),--}%
            %{--'Test_details':$(this).find('#Test_details').val()--}%
            %{--'Test_name':$(this).find('#Test_name').val()--}%
            %{--'type':$(this).find('#type').val()--}%
   %{--};--}%
        %{--$.ajax({--}%
            %{--type: "POST",--}%
%{--//            cache: false,--}%
            %{--url:  "${createLink(controller: 'pmuProcurPlanWbs', action: 'save')}",--}%
            %{--data: postData ,--}%
            %{--success: success--}%
        %{--});--}%
    %{--});--}%
%{--</script>--}%

</body>


</html>