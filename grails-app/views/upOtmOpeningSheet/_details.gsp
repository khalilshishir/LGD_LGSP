<script type="text/javascript">
    var childCount = ${upOtmOpeningSheetInstance?.upOtmOpeningSheetDetails?.size()} + 0;
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
        var htmlId = 'upOtmOpeningSheetDetails[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');

        clone.find("input[id$=VENDOR_NAME]").attr('id', htmlId + 'VENDOR_NAME').attr('name', htmlId + 'VENDOR_NAME');

        clone.find("input[id$=PRICE]").attr('id', htmlId + 'PRICE').attr('name', htmlId + 'PRICE');
        clone.find("input[id$=COMMENTS]").attr('id', htmlId + 'COMMENTS').attr('name', htmlId + 'COMMENTS');

        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>
<input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Add Detail" onclick="addChild();"/>


<div class="" style="border: solid 1px;border-radius: 5px">
    <table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
    <tr><th>বিক্রেতার নাম</th><th>মূল্য</th><th>মন্তব্য</th><th width="44px">কর্ম</th></tr>
    <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
    <g:each var="upOtmOpeningSheetDetails" in="${upOtmOpeningSheetInstance.upOtmOpeningSheetDetails}" status="i" >
        <g:render template='detail' model="['upOtmOpeningSheetDetails':upOtmOpeningSheetDetails,'i':i]"/>
    </g:each>
</table>
</div>