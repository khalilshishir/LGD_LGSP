<%@ page import="hrms.HrLookupType; hrms.HrLookup" %>
<%--
  Created by IntelliJ IDEA.
  User: kcbarmon
  Date: 3/25/13
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>

<script type="text/javascript">

    var childCountEmpPublication = ${hrEmployeeInstance?.hrEmpPublications?.size()} + 0;

    $('.delButton').live('click', function() {
//find the parent div
        var prnt = $(this).parents(".detail-div");
//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value','true');
//hide the div
        prnt.hide();
        // childCountEmpPublication--;
    });


    function addHrEmpPublication() {
        //       debugger;
//       alert('kcb');
        var clone = $("#dt_hrEmpPublication_clone").clone();
        var htmlId = 'hrEmpPublications['+childCountEmpPublication+'].';
        var displayItemId = 'hrEmpPublications' + childCountEmpPublication;
        var slNo =  childCountEmpPublication+1;

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

        clone.find("input[id$=slno]").attr('id',htmlId + 'slno').attr('name',htmlId + 'slno').attr('value',slNo);
        clone.find("input[id$=publicationTitle]").attr('id',htmlId + 'publicationTitle').attr('name',htmlId + 'publicationTitle');
        clone.find("input[id$=subjectName]").attr('id',htmlId + 'subjectName').attr('name',htmlId + 'subjectName');
        clone.find("input[id$=yearName]").attr('id',htmlId + 'yearName').attr('name',htmlId + 'yearName');
        clone.attr('id', 'hrEmpPublications'+childCountEmpPublication);
        document.getElementById('slno').value = slNo;
        //$("#slno").val(slNo);
        $("#dt_hrEmpPublicationList").append(clone);
        clone.show();
        childCountEmpPublication++;
    }
</script>
<style type="text/css">

.myTable th {  border:#999 1px solid; background:#E8E8E8 ; text-align: center; }

</style>

%{--<div style="width: 995px;">--}%
%{--<div id="wrapper">--}%
<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">

    <table id="dt_hrEmpPublicationList" width="100%" border="0" cellspacing="0" cellpadding="0" class="common-list-table">

        <tr class="myTable">
            <th>SL No</th>
            <th>Publication Title</th>
            <th>Subject</th>
            <th>Year</th>
        </tr>

        <tr id="dt_hrEmpPublication_clone" name="detail_clone" class="detail-div" style="display:none;">
            <td>
                <g:hiddenField name='hrEmpPublications_clone.id' value='${hrEmpPublication?.id}'/>
                <g:hiddenField name='hrEmpPublications_clone.deleted' value='false'/>
                <g:hiddenField name='hrEmpPublications_clone.new' value="${hrEmpPublication?.id == null?'true':'false'}"/>
                <g:textField name='hrEmpPublications_clone.slno' value='${hrEmpPublication?.slno}' style="text-align: center;" class='form-control'/>
            </td>

            <td><g:textField name='hrEmpPublications_clone.publicationTitle' value='${hrEmpPublication?.publicationTitle}'  class='form-control'/></td>

            <td><g:textField name='hrEmpPublications_clone.subjectName' value='${hrEmpPublication?.subjectName}' class='form-control'/></td>

            <td><g:textField name='hrEmpPublications_clone.yearName' value='${hrEmpPublication?.yearName}' style="text-align: center;" class='form-control'/></td>


            <td><span class='delButton' id='delButton${i}' name='hrEmpPublications_clone.delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

        </tr>


        <g:each var="hrEmpPublication" in="${hrEmpPublications}" status="i">
            <tr id="dt_hrEmpPublication${i}" name="detail[${i}]" class="detail-div">
                <td>
                    <g:hiddenField name='hrEmpPublications[${i}].id' value='${hrEmpPublication?.id}'/>
                    <g:hiddenField name='hrEmpPublications[${i}].deleted' value='false'/>
                    <g:hiddenField name='hrEmpPublications[${i}].new' value="${hrEmpPublication?.id == null?'true':'false'}"/>
                    <g:textField name='hrEmpPublications[${i}].slno' value='${hrEmpPublication?.slno}' style="text-align: center;" class='form-control'/>
                </td>

                <td><g:textField name='hrEmpPublications[${i}].publicationTitle' value='${hrEmpPublication?.publicationTitle}' class='form-control'/></td>

                <td><g:textField name='hrEmpPublications[${i}].subjectName' value='${hrEmpPublication?.subjectName}' class='form-control'/></td>

                <td><g:textField name='hrEmpPublications[${i}].yearName' value='${hrEmpPublication?.yearName}' style="text-align: center;" class='form-control'/></td>

                <td><span class='delButton' id='delButton${i}' name='hrEmpPublications[${i}].delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

            </tr>
        </g:each>

    </table>

    <input  type="button"  value="Add Publication" onclick="addHrEmpPublication();" class="btn-primary btn-sm"/>
</div>
<br/>

