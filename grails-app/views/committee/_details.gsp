<script type="text/javascript">
    var childCount = ${committeeInstance?.committeeMember?.size()} + 0;
    $('.delButton').live('click', function() {
//find the parent div
        var prnt = $(this).parents(".detail-div");
//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value', 'true');
//hide the div
        prnt.hide();
    });
    function addChild() {
//debugger;
        var clone = $("#detail_clone").clone();
        var htmlId = 'committeeMember[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');

        clone.find("input[id$=MEMBER_NAME]").attr('id', htmlId + 'MEMBER_NAME').attr('name', htmlId + 'MEMBER_NAME');

        clone.find("select[id$=MEMBER_DESIGNATION]").attr('id', htmlId + 'MEMBER_DESIGNATION').attr('name', htmlId + 'MEMBER_DESIGNATION');
//        clone.find("input[id$=MEMBER_DESIGNATION]").attr('id', htmlId + 'MEMBER_DESIGNATION').attr('name', htmlId + 'MEMBER_DESIGNATION');
        clone.find("input[id$=MEMBER_ADDRESS]").attr('id', htmlId + 'MEMBER_ADDRESS').attr('name', htmlId + 'MEMBER_ADDRESS');
        clone.find("input[id$=MOBILE_NO]").attr('id', htmlId + 'MOBILE_NO').attr('name', htmlId + 'MOBILE_NO');
        clone.find("input[id$=EMAIL_ADDRESS]").attr('id', htmlId + 'EMAIL_ADDRESS').attr('name', htmlId + 'EMAIL_ADDRESS');
        clone.find("input[id$=NATIONAL_ID_CARD_NO]").attr('id', htmlId + 'NATIONAL_ID_CARD_NO').attr('name', htmlId + 'NATIONAL_ID_CARD_NO');

        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>
<table id="detailList">
    <tr><th></th><th>Member Name</th><th>Designation</th><th>Address</th><th>Mobile</th><th>Email</th><th>National ID</th></tr>
    <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
    <g:each var="committeeMember" in="${committeeInstance.committeeMember}" status="i">
        <g:render template='detail' model="['committeeMember':committeeMember,'i':i]"/>
    </g:each>
</table>
<input type="button" value="Add Detail" onclick="addChild();"/>