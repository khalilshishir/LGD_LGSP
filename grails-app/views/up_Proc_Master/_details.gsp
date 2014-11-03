<script type="text/javascript">
    function setTotalAmount(id){
//        var rateField = id.replace(".AMOUNT", ".RATE"),
//                rateSelector = "#"+rateField,
//                rate = $(rateSelector).val();
//        alert(rate)

        var rateField = id.replace(".AMOUNT", ".RATE"),
            totalAmountField = id.replace(".AMOUNT", ".TOTAL_PRICE"),
            rate = document.getElementById(rateField).value,
            amount = document.getElementById(id).value,
            totalAmount = rate * amount;
            document.getElementById(totalAmountField).value = totalAmount;
    }

    var childCount = ${up_Proc_MasterInstance?.upDirectProcurementDetails?.size()} + 0;
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
        var htmlId = 'upDirectProcurementDetails[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');

        clone.find("input[id$=GOODS_ID]").attr('id', htmlId + 'GOODS_ID').attr('name', htmlId + 'GOODS_ID');

        clone.find("input[id$=GOODS_NAME]").attr('id', htmlId + 'GOODS_NAME').attr('name', htmlId + 'GOODS_NAME');
        clone.find("input[id$=GOODS_DETAILS]").attr('id', htmlId + 'GOODS_DETAILS').attr('name', htmlId + 'GOODS_DETAILS');
        clone.find("input[id$=RATE]").attr('id', htmlId + 'RATE').attr('name', htmlId + 'RATE');
        clone.find("input[id$=AMOUNT]").attr('id', htmlId + 'AMOUNT').attr('name', htmlId + 'AMOUNT');
        clone.find("input[id$=TOTAL_PRICE]").attr('id', htmlId + 'TOTAL_PRICE').attr('name', htmlId + 'TOTAL_PRICE');

        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>
<div class="" style="border: solid 1px;border-radius: 5px">
    <table  style=" border-radius:5px;table-layout: fixed" id="detailList" class="table table-bordered table-striped table-hover table-condensed">
        %{--<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">--}%
        <tr><th>আইটেম আইডি</th><th>আইটেম নাম</th><th>আইটেম বর্ণনা</th><th>দর</th><th>পরিমান</th><th>মোট পরিমান</th><th width="44px">কর্ম</th></tr>
        <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
        <g:each var="upDirectProcurementDetails" in="${up_Proc_MasterInstance.upDirectProcurementDetails}" status="i" >
            <g:render template='detail' model="['upDirectProcurementDetails':upDirectProcurementDetails,'i':i]"/>
        </g:each>
    </table>
    <input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Add Detail" onclick="addChild();"/>
</div>
