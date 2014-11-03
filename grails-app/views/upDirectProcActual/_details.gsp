<script type="text/javascript">
    var childCount = ${upDirectProcActualInstance?.upDirectProcActualDetails?.size()} + 0;
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
        var htmlId = 'upDirectProcurementActualDetails[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');

        clone.find("input[id$=GOODS_ID]").attr('id', htmlId + 'GOODS_ID').attr('name', htmlId + 'GOODS_ID');

        clone.find("input[id$=GOODS_NAME]").attr('id', htmlId + 'GOODS_NAME').attr('name', htmlId + 'GOODS_NAME');
        clone.find("input[id$=GOODS_DETAILS]").attr('id', htmlId + 'GOODS_DETAILS').attr('name', htmlId + 'GOODS_DETAILS');
        clone.find("input[id$=RATE]").attr('id', htmlId + 'RATE').attr('name', htmlId + 'RATE');
        clone.find("input[id$=AMOUNT]").attr('id', htmlId + 'AMOUNT').attr('name', htmlId + 'AMOUNT');

        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>
<input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Add Detail" onclick="addChild();"/>

%{--<table id="detailList" class="table table-bordered table-striped table-hover table-condensed">--}%
<table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
    <tr><th>GOODS ID</th><th>GOODS NAME</th><th>GOODS DETAILS</th><th>RATE</th><th>Amount</th></tr>
    <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
    <g:each var="upDirectProcActualDetails" in="${upDirectProcActualInstance.upDirectProcActualDetails}" status="i">
        <g:render template='detail' model="['upDirectProcActualDetails':upDirectProcActualDetails,'i':i]"/>
    </g:each>
</table>
