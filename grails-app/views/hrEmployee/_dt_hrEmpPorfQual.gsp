<%@ page import="hrms.HrLookupType; hrms.HrLookup" %>
<%--
  Created by IntelliJ IDEA.
  User: kcbarmon
  Date: 3/25/13
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>

<script type="text/javascript">

    var childCountProfQualification = ${hrEmployeeInstance?.hrEmpProfQualifications?.size()} + 0;


    $('.delButton').live('click', function() {
//find the parent div
        var prnt = $(this).parents(".detail-div");
//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value','true');
//hide the div
        prnt.hide();
        // childCountProfQualification--;
    });


    function addHrEmpProQual() {
        //       debugger;
//       alert('kcb');
        var clone = $("#dt_hrEmpProfQual_clone").clone();
        var htmlId = 'hrEmpProfQualifications['+childCountProfQualification+'].';
        var displayItemId = 'hrEmpProfQualifications' + childCountProfQualification;
        var slNo =  childCountProfQualification+1;

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
        clone.find("select[id$=degreeIdHrLookup]").attr('id',htmlId + 'degreeIdHrLookup').attr('name',htmlId + 'degreeIdHrLookup');
        clone.find("select[id$=instituteNameIdHrLookup]").attr('id',htmlId + 'instituteNameIdHrLookup').attr('name',htmlId + 'instituteNameIdHrLookup');
        clone.find("input[id$=passingYear]").attr('id',htmlId + 'passingYear').attr('name',htmlId + 'passingYear');
        clone.find("input[id$=remarks]").attr('id',htmlId + 'remarks').attr('name',htmlId + 'remarks');
        clone.attr('id', 'hrEmpProfQualifications'+childCountProfQualification);
        document.getElementById('slno').value = slNo;
        //$("#slno").val(slNo);
        $("#dt_hrEmpProQualList").append(clone);
        clone.show();
        childCountProfQualification++;
    }
</script>

<style type="text/css">

.myTable th {  border:#999 1px solid; background:#E8E8E8 ; text-align: center; }

</style>
%{--<div style="width: 995px;">--}%
%{--<div id="wrapper">--}%
<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">

    <table id="dt_hrEmpProQualList" width="100%" border="0" cellspacing="0" cellpadding="0" class="common-list-table">

        <tr class="myTable">
            <th>SL NO</th>
            <th>Degree</th>
            <th>Institute Name</th>
            <th>Passing Year</th>
            <th>Remarks</th>
        </tr>

        <tr id="dt_hrEmpProfQual_clone" name="detail_clone" class="detail-div" style="display:none;">
            <td>
                <g:hiddenField name='hrEmpProfQualifications_clone.id' value='${hrEmpProfQualification?.id}'/>
                <g:hiddenField name='hrEmpProfQualifications_clone.deleted' value='false'/>
                <g:hiddenField name='hrEmpProfQualifications_clone.new' value="${hrEmpProfQualification?.id == null?'true':'false'}"/>
                <g:textField name='hrEmpProfQualifications_clone.slno' value='${hrEmpProfQualification?.slno}' style="text-align: center;" class='form-control'/>
            </td>

            <td>
                <g:select name="hrEmpProfQualifications_clone.degreeIdHrLookup"
                          from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('PROFESSIONAL DEGREE'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpProfQualification?.degreeIdHrLookup?.id}" noSelection="['null':'-Select One-']" class='form-control'/>
            </td>

            <td>
                <g:select name="hrEmpProfQualifications_clone.instituteNameIdHrLookup"
                          from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('PROFESSIONAL INSTITUTION'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpProfQualification?.instituteNameIdHrLookup?.id}" noSelection="['null':'-Select One-']" class='form-control'/>
            </td>

            <td><g:textField name='hrEmpProfQualifications_clone.passingYear' value='${hrEmpProfQualification?.passingYear}' style="text-align: center;" class='form-control'/></td>

            <td><g:textField name='hrEmpProfQualifications_clone.remarks' value='${hrEmpProfQualification?.remarks}' class="form-control"/></td>

            <td><span class='delButton' id='delButton${i}' name='hrEmpProfQualifications_clone.delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

        </tr>


        <g:each var="hrEmpProfQualification" in="${hrEmpProfQualifications}" status="i">
            <tr id="dt_hrEmpProfQual${i}" name="detail[${i}]" class="detail-div">
                <td>
                    <g:hiddenField name='hrEmpProfQualifications[${i}].id' value='${hrEmpProfQualification?.id}'/>
                    <g:hiddenField name='hrEmpProfQualifications[${i}].deleted' value='false'/>
                    <g:hiddenField name='hrEmpProfQualifications[${i}].new' value="${hrEmpProfQualification?.id == null?'true':'false'}"/>
                    <g:textField name='hrEmpProfQualifications[${i}].slno' value='${hrEmpProfQualification?.slno}' style="text-align: center;" class='form-control'/>
                </td>

                <td>
                    <g:select name="hrEmpProfQualifications[${i}].degreeIdHrLookup"
                              from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('PROFESSIONAL DEGREE'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpProfQualification?.degreeIdHrLookup?.id}" noSelection="['null':'-Select One-']" class='form-control'/>
                </td>

                <td>
                    <g:select name="hrEmpProfQualifications[${i}].instituteNameIdHrLookup"
                              from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('PROFESSIONAL INSTITUTION'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpProfQualification?.instituteNameIdHrLookup?.id}" noSelection="['null':'-Select One-']" class='form-control'/>
                </td>

                <td><g:textField name='hrEmpProfQualifications[${i}].passingYear' value='${hrEmpProfQualification?.passingYear}' style="text-align: center; " class='form-control'/></td>

                <td><g:textField name='hrEmpProfQualifications[${i}].remarks' value='${hrEmpProfQualification?.remarks}' class='form-control'/></td>

                <td><span class='delButton' id='delButton${i}' name='hrEmpProfQualifications[${i}].delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

            </tr>
        </g:each>

    </table>

    <input  type="button"  value="Add Professional Qualification" onclick="addHrEmpProQual();" class="btn-primary btn-sm"/>
</div>
<br/>



