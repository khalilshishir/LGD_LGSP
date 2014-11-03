<%--
  Created by IntelliJ IDEA.
  User: mahye
  Date: 9/17/14
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>


<script type="text/javascript">
    var childCount = ${COMITYInstance?.comityDtl?.size()} + 0;
    $('.delButton').live('click', function() {
//find the parent div
        var prnt = $(this).parents(".detail-div");
//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value', 'true');
//hide the div
        prnt.hide();
    });;
    function addChild() {
//debugger;
        var clone = $("#detail_clone").clone();
        var htmlId = 'comityDtl[' + childCount + '].';

        clone.find("input[id$=id]")
                .attr('id', htmlId + 'id')
                .attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]")
                .attr('id', htmlId + 'deleted')
                .attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]")
                .attr('id', htmlId + 'new')
                .attr('name', htmlId + 'new')
                .attr('value', 'true');
//        clone.find("input[id$=teacherName]").attr('id', htmlId + 'teacherName').attr('name', htmlId + 'teacherName');
        clone.find("select[id$=STAKEHOLDER_ID]").attr('id', htmlId + 'STAKEHOLDER_ID').attr('name', htmlId + 'STAKEHOLDER_ID');
        clone.find("input[id$=REMARKS]").attr('id', htmlId + 'REMARKS').attr('name', htmlId + 'REMARKS');
//        clone.find("input[id$=para]").attr('id', htmlId + 'para').attr('name', htmlId + 'para');

        /* clone.find("select[id$=sectorIdSector]").attr('id', htmlId + 'sectorIdSector').attr('name', htmlId + 'sectorIdSector');
         clone.find("select[id$=occupationIdOccupation]").attr('id', htmlId + 'occupationIdOccupation').attr('name', htmlId + 'occupationIdOccupation');
         clone.find("select[id$=levelIdLevel]").attr('id', htmlId + 'levelIdLevel').attr('name', htmlId + 'levelIdLevel');
         clone.find("select[id$=unitIdUnit]").attr('id', htmlId + 'unitIdUnit').attr('name', htmlId + 'unitIdUnit');
         clone.find("input[id$=recommendation]").attr('id', htmlId + 'recommendation').attr('name', htmlId + 'recommendation');
         clone.find("input[id$=remarks]").attr('id', htmlId + 'remarks').attr('name', htmlId + 'remarks');
         clone.find("input[id$=date]").attr('id', htmlId + 'date').attr('name', htmlId + 'date');
         clone.find("input[id$=evaluation]").attr('id', htmlId + 'evaluation').attr('name', htmlId + 'evaluation');*/
        clone.attr('id', 'detail' + childCount);
        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>




<table id="detailList" >
    <tr>
    <th>Stakeholder Name</th>
    <th>Remarks</th>
    <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
    <g:each var="comityDtl" in="${COMITYInstance.comityDtl}" status="i">
        <g:render template='detail' model="['comityDtl':comityDtl,'i':i]"/>
    </g:each>
</table>

<div class="ym-form">
    <div class="ym-fbox-button">
        <input type="button" class="ym-primary btn btn-warning btn-sm" style="margin: 5px;" value="Add More" onclick="addChild();"/>
        <g:hiddenField name='comityDtlTotal' value='${COMITYInstance?.comityDtl?.size()}'/>
    </div>
</div>
