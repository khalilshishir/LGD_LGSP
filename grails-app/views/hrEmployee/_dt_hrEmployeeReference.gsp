<%@ page import="hrms.HrLookupType; hrms.HrLookup" %>
<%--
  Created by IntelliJ IDEA.
  User: kcbarmon
  Date: 3/25/13
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>

<script type="text/javascript">

    var childCountEmpRef = ${hrEmployeeInstance?.hrEmployeeReferences?.size()} + 0;

    $('.delButton').live('click', function() {
//find the parent div
        var prnt = $(this).parents(".detail-div");
//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value','true');
//hide the div
        prnt.hide();
        // childCountEmpRef--;
    });


    function addHrEmpReference() {
        //       debugger;
//       alert('kcb');
        var clone = $("#dt_hrEmployeeReference_clone").clone();
        var htmlId = 'hrEmployeeReferences['+childCountEmpRef+'].';
        var displayItemId = 'hrEmployeeReferences' + childCountEmpRef;
        var slNo =  childCountEmpRef+1;

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
        clone.find("input[id$=referenceName]").attr('id',htmlId + 'referenceName').attr('name',htmlId + 'referenceName');
        clone.find("input[id$=identiee]").attr('id',htmlId + 'identiee').attr('name',htmlId + 'identiee');
        clone.find("input[id$=addressName]").attr('id',htmlId + 'addressName').attr('name',htmlId + 'addressName');
        clone.find("input[id$=contactNo]").attr('id',htmlId + 'contactNo').attr('name',htmlId + 'contactNo');
        clone.attr('id', 'hrEmployeeReferences'+childCountEmpRef);
        document.getElementById('slno').value = slNo;
        //$("#slno").val(slNo);
        $("#dt_hrEmpRefList").append(clone);
        clone.show();
        childCountEmpRef++;
    }
</script>
<style type="text/css">

.myTable th {  border:#999 1px solid; background:#E8E8E8 ; text-align: center; }

</style>

%{--<div style="width: 995px;">--}%
%{--<div id="wrapper">--}%
<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">

    <table id="dt_hrEmpRefList" width="100%" border="0" cellspacing="0" cellpadding="0" class="common-list-table">

        <tr class="myTable">
            <th>SL NO</th>
            <th>Name of Refer</th>
            <th>Relationship</th>
            <th>Address</th>
            <th>Contact No.</th>
        </tr>

        <tr id="dt_hrEmployeeReference_clone" name="detail_clone" class="detail-div" style="display:none;">
            <td>
                <g:hiddenField name='hrEmployeeReferences_clone.id' value='${hrEmployeeReference?.id}'/>
                <g:hiddenField name='hrEmployeeReferences_clone.deleted' value='false'/>
                <g:hiddenField name='hrEmployeeReferences_clone.new' value="${hrEmployeeReference?.id == null?'true':'false'}"/>
                <g:textField name='hrEmployeeReferences_clone.slno' value='${hrEmployeeReference?.slno}' style="text-align: center;" class='form-control'/>
            </td>

            <td><g:textField name='hrEmployeeReferences_clone.referenceName' value='${hrEmployeeReference?.referenceName}' class='form-control'/></td>

            <td><g:textField name='hrEmployeeReferences_clone.identiee' value='${hrEmployeeReference?.identiee}' class='form-control'/></td>

            <td><g:textField name='hrEmployeeReferences_clone.addressName' value='${hrEmployeeReference?.addressName}'  class='form-control'/></td>

            <td><g:textField name='hrEmployeeReferences_clone.contactNo' value='${hrEmployeeReference?.contactNo}' class='form-control'/></td>


            <td><span class='delButton' id='delButton${i}' name='hrEmployeeReferences_clone.delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

        </tr>


        <g:each var="hrEmployeeReference" in="${hrEmployeeReferences}" status="i">
            <tr id="dt_hrEmployeeReference${i}" name="detail[${i}]" class="detail-div">
                <td>
                    <g:hiddenField name='hrEmployeeReferences[${i}].id' value='${hrEmployeeReference?.id}'/>
                    <g:hiddenField name='hrEmployeeReferences[${i}].deleted' value='false'/>
                    <g:hiddenField name='hrEmployeeReferences[${i}].new' value="${hrEmployeeReference?.id == null?'true':'false'}"/>
                    <g:textField name='hrEmployeeReferences[${i}].slno' value='${hrEmployeeReference?.slno}' style="text-align: center;" class='form-control'/>
                </td>

                <td><g:textField name='hrEmployeeReferences[${i}].referenceName' value='${hrEmployeeReference?.referenceName}'  class='form-control'/></td>

                <td><g:textField name='hrEmployeeReferences[${i}].identiee' value='${hrEmployeeReference?.identiee}' class='form-control'/></td>

                <td><g:textField name='hrEmployeeReferences[${i}].addressName' value='${hrEmployeeReference?.addressName}'  class='form-control'/></td>

                <td><g:textField name='hrEmployeeReferences[${i}].contactNo' value='${hrEmployeeReference?.contactNo}'  class='form-control'/></td>

                <td><span class='delButton' id='delButton${i}' name='hrEmployeeReferences[${i}].delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

            </tr>
        </g:each>

    </table>

    <input  type="button"  value="Add Reference" onclick="addHrEmpReference();" class="btn-primary btn-sm"/>
</div>


