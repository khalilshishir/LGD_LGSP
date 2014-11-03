<%@ page import="hrms.HrLookupType; hrms.HrLookup" %>
<%--
  Created by IntelliJ IDEA.
  User: kcbarmon
  Date: 3/25/13
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>

<script type="text/javascript">

    var childCountEdu = ${hrEmployeeInstance?.hrEmpAcademicQualifications?.size()} + 0;

    function row1(obj) {
        rowIndex = obj.rowIndex;
    }

    $(document).ready(function () {

        if (childCountEdu != 0) {
            for (var i = 0; i < childCountEdu; i++) {

                if($('#'+i+"isDivGpa").is(':checked')){
                    $('#'+i+'division').attr("disabled","disabled");
                    $('#'+i+'division').attr("value","");
                    $('#'+i+'cgpa').removeAttr("disabled");
                }
                else{
                    $('#'+i+'division').removeAttr("disabled");
                    $('#'+i+'cgpa').attr("disabled","disabled");
                    $('#'+i+'cgpa').attr("value","");
                }

            }
        }
    });




    $('.delButton').live('click', function() {
//find the parent div
        var prnt = $(this).parents(".detail-div");
//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value','true');
//hide the div
        prnt.hide();
       // childCountEdu--;
    });

    var rowIndex;
    function addHrCrEmpEdu() {
 //       debugger;
//       alert('kcb');
        var clone = $("#dt_hrEmpEducation_clone").clone();
        var htmlId = 'hrEmpAcademicQualifications['+childCountEdu+'].';
        var displayItemId = 'hrEmpAcademicQualifications' + childCountEdu;
        var fldId =  childCountEdu ;
        var slNo =  childCountEdu+1;

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
        clone.find("select[id$=examinationIdHrLookup]").attr('id',htmlId + 'examinationIdHrLookup').attr('name',htmlId + 'examinationIdHrLookup');
        clone.find("select[id$=examGroupIdHrLookup]").attr('id',htmlId + 'examGroupIdHrLookup').attr('name',htmlId + 'examGroupIdHrLookup');
        clone.find("select[id$=boardIdHrLookup]").attr('id',htmlId + 'boardIdHrLookup').attr('name',htmlId + 'boardIdHrLookup');
        clone.find("input[id$=passingYear]").attr('id',htmlId + 'passingYear').attr('name',htmlId + 'passingYear');
        clone.find("input[id$=isDivGpa]").attr('id',fldId + 'isDivGpa').attr('name',htmlId + 'isDivGpa');
        clone.find("input[id$=division]").attr('id',fldId + 'division').attr('name',htmlId + 'division');
        clone.find("input[id$=cgpa]").attr('id',fldId + 'cgpa').attr('name',htmlId + 'cgpa').attr('disabled','disabled');

        clone.attr('id', 'hrEmpAcademicQualifications'+childCountEdu);
        document.getElementById('slno').value = slNo;
        //$("#slno").val(slNo);
        $("#dt_hrEmpEduList").append(clone);
        clone.show();
        childCountEdu++;
    }

    function getCheckBox() {

        var i = rowIndex - 2;

        if($('#'+i+"isDivGpa").is(':checked')){
            $('#'+i+'division').attr("disabled","disabled");
            $('#'+i+'division').attr("value","");
            $('#'+i+'cgpa').removeAttr("disabled");
        }
        else{
            $('#'+i+'division').removeAttr("disabled");
            $('#'+i+'cgpa').attr("disabled","disabled");
            $('#'+i+'cgpa').attr("value","");
        }
    }





</script>

<style type="text/css">

.myTable th {  border:#999 1px solid; background:#E8E8E8 ; text-align: center; }

</style>


%{--<div style="width: 995px;">--}%
%{--<div id="wrapper">--}%
%{--<div style="width: 990px; background: #fff; padding: 2px;border: 1px solid #ccc;">--}%
<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">

    <table id="dt_hrEmpEduList" width="100%" border="0" cellspacing="0" cellpadding="0" class="common-list-table ">

        <tr class="myTable">
            <th >SL NO</th>
            <th>Name of Examination</th>
            <th>Group</th>
            <th>Board/University</th>
            <th>Passing Year</th>
            <th>Is CGPA?</th>
            <th>Division/Class</th>
            <th>CGPA</th>
        </tr>

        <tr id="dt_hrEmpEducation_clone" name="detail_clone" class="detail-div" style="display:none;" onclick="row1(this);">
            <td>
                <g:hiddenField name='hrEmpAcademicQualifications_clone.id' value='${hrEmpAcademicQualification?.id}'/>
                <g:hiddenField name='hrEmpAcademicQualifications_clone.deleted' value='false'/>
                <g:hiddenField name='hrEmpAcademicQualifications_clone.new' value="${hrEmpAcademicQualification?.id == null?'true':'false'}"/>
                <g:textField name='hrEmpAcademicQualifications_clone.slno' value='${hrEmpAcademicQualification?.slno}' style="text-align: center;" class="form-control"/>
            </td>

           <td>
            <g:select name="hrEmpAcademicQualifications_clone.examinationIdHrLookup"
             from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('ACADEMIC EXAMINATION'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpAcademicQualification?.examinationIdHrLookup?.id}" noSelection="['null':'-Select One-']" class="form-control"/>
             </td>

            <td>
                <g:select name="hrEmpAcademicQualifications_clone.examGroupIdHrLookup"
                from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('ACADEMIC GROUP'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpAcademicQualification?.examGroupIdHrLookup?.id}" noSelection="['null':'-Select One-']" class="form-control"/>
            </td>

            <td>
                <g:select name="hrEmpAcademicQualifications_clone.boardIdHrLookup"
                from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('ACADEMIC BOARD'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpAcademicQualification?.boardIdHrLookup?.id}" noSelection="['null':'-Select One-']" class="form-control"/>
            </td>

            <td><g:textField name='hrEmpAcademicQualifications_clone.passingYear' value='${hrEmpAcademicQualification?.passingYear}' style="text-align: center;" class="form-control"/></td>

            <td class="list-align-center"><g:checkBox name='hrEmpAcademicQualifications_clone.isDivGpa'  value='${hrEmpAcademicQualification?.isDivGpa}' onchange="getCheckBox();" class="form-control"/></td>

            <td><g:textField name='hrEmpAcademicQualifications_clone.division'  value='${hrEmpAcademicQualification?.division}' style="text-align: center;" class="form-control"/></td>

            <td><g:textField name='hrEmpAcademicQualifications_clone.cgpa'  value='${hrEmpAcademicQualification?.cgpa}' style="text-align: center;" class="form-control"/></td>


            <td><span class='delButton' id='delButton${i}' name='hrEmpAcademicQualifications_clone.delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

        </tr>


        <g:each var="hrEmpAcademicQualification" in="${hrEmpAcademicQualifications}" status="i">
            <tr id="dt_hrEmpEducation${i}" name="detail[${i}]" class="detail-div" onclick="row1(this);">
                <td>
                    <g:hiddenField name='hrEmpAcademicQualifications[${i}].id' value='${hrEmpAcademicQualification?.id}'/>
                    <g:hiddenField name='hrEmpAcademicQualifications[${i}].deleted' value='false'/>
                    <g:hiddenField name='hrEmpAcademicQualifications[${i}].new' value="${hrEmpAcademicQualification?.id == null?'true':'false'}"/>
                    <g:textField name='hrEmpAcademicQualifications[${i}].slno' value='${hrEmpAcademicQualification?.slno}' style="text-align: center;width: 40px;"/>
                </td>

              <td>
                  <g:select name="hrEmpAcademicQualifications[${i}].examinationIdHrLookup"
                  from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('ACADEMIC EXAMINATION'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpAcademicQualification?.examinationIdHrLookup?.id}" noSelection="['null':'-Select One-']"/>
                </td>

                <td>
                    <g:select name="hrEmpAcademicQualifications[${i}].examGroupIdHrLookup"
                              from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('ACADEMIC GROUP'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpAcademicQualification?.examGroupIdHrLookup?.id}" noSelection="['null':'-Select One-']"/>
                </td>

                <td>
                    <g:select name="hrEmpAcademicQualifications[${i}].boardIdHrLookup"
                              from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('ACADEMIC BOARD'))}" optionKey="id" optionValue="lookupValue" value="${hrEmpAcademicQualification?.boardIdHrLookup?.id}" noSelection="['null':'-Select One-']"/>
                </td>

                <td><g:textField name='hrEmpAcademicQualifications[${i}].passingYear' value='${hrEmpAcademicQualification?.passingYear}' style="text-align: center;width: 60px;"/></td>

                <td class="list-align-center"><g:checkBox name='hrEmpAcademicQualifications[${i}].isDivGpa' id='${i}isDivGpa' value='${hrEmpAcademicQualification?.isDivGpa}' style="text-align: center;" onchange="getCheckBox();"/></td>

                <td><g:textField name='hrEmpAcademicQualifications[${i}].division' id='${i}division' value='${hrEmpAcademicQualification?.division}' style="text-align: center;width: 60px;"/></td>

                <td style="width: 80px;"><g:textField name='hrEmpAcademicQualifications[${i}].cgpa' id='${i}cgpa' value='${hrEmpAcademicQualification?.cgpa}' style="text-align: center;width: 60px;"/></td>

                <td><span class='delButton' id='delButton${i}' name='hrEmpAcademicQualifications[${i}].delButton' ><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span></td>

            </tr>
        </g:each>

    </table>

    <input  type="button"  value="Add Educational Information" onclick="addHrCrEmpEdu();" class="btn-primary btn-sm"/>
</div>
<br/>


