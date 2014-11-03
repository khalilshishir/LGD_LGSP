<%@ page import="hrms.HrLookupType; hrms.HrLookup" %>
<%--
  Created by IntelliJ IDEA.
  User: kcbarmon
  Date: 3/25/13
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>

<script type="text/javascript">

    var childCountProfExperience = ${hrEmployeeInstance?.hrEmpProfExperiences?.size()} + 0;

    ;$('.dtl-dt').live('focus', function () {
        $(".dtl-dt").datepicker({ dateFormat: 'dd/mm/yy'});
    });

    $('.sDate').live('focus', function () {
        $('.sDate').datepicker({ dateFormat: 'dd/mm/yy'});
    });

    $('.eDate').live('focus', function () {
        $('.eDate').datepicker({ dateFormat: 'dd/mm/yy'});
    });

    $('.delButton').live('click', function() {
//find the parent div
        var prnt = $(this).parents(".detail-div");
//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value','true');
//hide the div
        prnt.hide();
        // childCountProfExperience--;
    });


    function addHrEmpProExp() {
        //       debugger;
//       alert('kcb');
        var clone = $("#dt_hrEmpProfExp_clone").clone();
        var htmlId = 'hrEmpProfExperiences['+childCountProfExperience+'].';
        var displayItemId = 'hrEmpProfExperiences' + childCountProfExperience;
        var slNo =  childCountProfExperience+1;

        clone.find("input[id$=id]")
                .attr('id',htmlId + 'id')
                .attr('name',htmlId + 'id');
        clone.find("input[id$=deleted]")
                .attr('id',htmlId + 'deleted')
                .attr('name',htmlId + 'deleted');
        clone.find("input[id$=new]")
                .attr('id',htmlId + 'new')
                .attr('name',htmlId + 'new')
                .attr('value', 'true');

        clone.find("input[id$=slno]").attr('id',displayItemId + 'slno').attr('name',htmlId + 'slno').attr('value',slNo);
        clone.find("input[id$=companyName]").attr('id',htmlId + 'companyName').attr('name',htmlId + 'companyName');
        clone.find("input[id$=companyAddress]").attr('id',htmlId + 'companyAddress').attr('name',htmlId + 'companyAddress');
        clone.find("input[id$=fromdate]").attr('id',displayItemId + 'fromdate').attr('name',htmlId + 'fromdate');
        clone.find("input[id$=todate]").attr('id',displayItemId + 'todate').attr('name',htmlId + 'todate');
        clone.find("input[id$=duration]").attr('id',displayItemId + 'duration').attr('name',htmlId + 'duration').attr('value','0');
        clone.attr('id', 'hrEmpProfExperiences'+childCountProfExperience);
        document.getElementById('slno').value = slNo;
        //$("#slno").val(slNo);
        $("#dt_hrEmpProExpList").append(clone);
        clone.show();
        childCountProfExperience++;
        clone.find('input[id$=fromdate]').removeClass('hasDatepicker').datepicker({ dateFormat: 'dd/mm/yy'});
        clone.find('input[id$=todate]').removeClass('hasDatepicker').datepicker({ dateFormat: 'dd/mm/yy'});
    }
</script>

<script type="text/javascript">
    function getDays()
    {
        $('.sDate').live('change',function() {
            var startingDate= $(this).closest("tr").find(".sDate").attr("id");
            var startDate = $("#"+startingDate).val().split("/");
            var dateFrom = new Date(startDate[2],(startDate[1]-1),startDate[0]);

            var endingDate= $(this).closest("tr").find(".eDate").attr("id");
            var endDate = $("#"+endingDate).val().split("/");
            var dateTo = new Date(endDate[2],(endDate[1]-1),endDate[0]);

            var totalDaysId = $(this).closest("tr").find(".totalDays").attr("id");
            var oneDay = 1000*60*60*24;

            $("#"+totalDaysId).val(
                    Math.ceil((dateTo.getTime() - dateFrom.getTime())/(oneDay))+1
            );

        });

        $('.eDate').live('change',function() {
            var startingDate= $(this).closest("tr").find(".sDate").attr("id");
            var startDate = $("#"+startingDate).val().split("/");
            var dateFrom = new Date(startDate[2],(startDate[1]-1),startDate[0]);

            var endingDate= $(this).closest("tr").find(".eDate").attr("id");
            var endDate = $("#"+endingDate).val().split("/");
            var dateTo = new Date(endDate[2],(endDate[1]-1),endDate[0]);

            var totalDaysId = $(this).closest("tr").find(".totalDays").attr("id");
            var oneDay = 1000*60*60*24;

            $("#"+totalDaysId).val(
                    Math.ceil((dateTo.getTime() - dateFrom.getTime())/(oneDay))+1
            );

        });
    }
</script>
<style type="text/css">

.myTable th {  border:#999 1px solid; background:#E8E8E8 ; text-align: center; }

</style>

%{--<div style="width: 995px;">--}%
%{--<div id="wrapper">--}%
<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">

    <table id="dt_hrEmpProExpList" width="100%" border="0" cellspacing="0" cellpadding="0" class="common-list-table">

        <tr class="myTable">
            <th>SL NO</th>
            <th>Company Name</th>
            <th>Company Address</th>
            <th>From Date</th>
            <th>To Date</th>
            <th>Duration(Days)</th>
        </tr>

        <tr id="dt_hrEmpProfExp_clone" name="detail_clone" class="detail-div" style="display:none;">
            <td>
                <g:hiddenField name='hrEmpProfExperiences_clone.id' value='${hrEmpProfExperience?.id}'/>
                <g:hiddenField name='hrEmpProfExperiences_clone.deleted' value='false'/>
                <g:hiddenField name='hrEmpProfExperiences_clone.new' value="${hrEmpProfExperience?.id == null?'true':'false'}"/>
                <g:textField name='hrEmpProfExperiences_clone.slno' id="slno" value='${hrEmpProfExperience?.slno}' style="text-align: center;" class='form-control'/>
            </td>

            <td><g:textField name='hrEmpProfExperiences_clone.companyName'  value='${hrEmpProfExperience?.companyName}' class='form-control'/></td>

            <td><g:textField name='hrEmpProfExperiences_clone.companyAddress' value='${hrEmpProfExperience?.companyAddress}' class='form-control'/></td>

            <td><g:textField name='hrEmpProfExperiences_clone.fromdate' id="fromdate" value='${formatDate(format:'dd/MM/yyyy',date:hrEmpProfExperience?.fromdate)}' style="text-align: center;"  onchange="getDays();" class='form-control'/></td>

            <td><g:textField name='hrEmpProfExperiences_clone.todate' id="todate" value='${formatDate(format: 'dd/MM/yyyy',date:hrEmpProfExperience?.todate)}' style="text-align: center;"  onchange="getDays();" class='form-control'/></td>

            <td><g:textField name='hrEmpProfExperiences_clone.duration' id="duration" value='${hrEmpProfExperience?.duration}'  style="text-align: center;" class='form-control'/></td>


            <td><span class='delButton' id='delButton${i}' name='hrEmpProfExperiences_clone.delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

        </tr>


        <g:each var="hrEmpProfExperience" in="${hrEmpProfExperiences}" status="i">
            <tr id="dt_hrEmpProfExp${i}" name="detail[${i}]" class="detail-div">
                <td>
                    <g:hiddenField name='hrEmpProfExperiences[${i}].id' value='${hrEmpProfExperience?.id}'/>
                    <g:hiddenField name='hrEmpProfExperiences[${i}].deleted' value='false'/>
                    <g:hiddenField name='hrEmpProfExperiences[${i}].new' value="${hrEmpProfExperience?.id == null?'true':'false'}"/>
                    <g:textField name='hrEmpProfExperiences[${i}].slno' id="hrEmpProfExperiences${i}slno" value='${hrEmpProfExperience?.slno}' style="text-align: center;" class='form-control'/>
                </td>

                <td><g:textField name='hrEmpProfExperiences[${i}].companyName' value='${hrEmpProfExperience?.companyName}' class='form-control'/></td>

                <td><g:textField name='hrEmpProfExperiences[${i}].companyAddress' value='${hrEmpProfExperience?.companyAddress}' class='form-control'/></td>

                <td><g:textField name='hrEmpProfExperiences[${i}].fromdate' id="hrEmpProfExperiences${i}fromdate" value='${formatDate(format:'dd/MM/yyyy',date:hrEmpProfExperience?.fromdate)}' style="text-align: center;"  onchange="getDays();" class='form-control'/></td>

                <td><g:textField name='hrEmpProfExperiences[${i}].todate' id="hrEmpProfExperiences${i}todate" value='${formatDate(format: 'dd/MM/yyyy',date:hrEmpProfExperience?.todate)}' style="text-align: center;" onchange="getDays();" class='form-control'/></td>

                <td><g:textField name='hrEmpProfExperiences[${i}].duration' id="hrEmpProfExperiences${i}duration" value='${hrEmpProfExperience?.duration}'  style="text-align: center;" class='form-control'/></td>

                <td><span class='delButton' id='delButton${i}' name='hrEmpProfExperiences[${i}].delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

            </tr>
        </g:each>

    </table>

    <input  type="button"  value="Add Professional Experience" onclick="addHrEmpProExp();" class="btn-primary btn-sm"/>
</div>
<br/>



