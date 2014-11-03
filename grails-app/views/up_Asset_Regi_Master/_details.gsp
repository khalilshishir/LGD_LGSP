<script type="text/javascript">
//    function setTotalAmount(id){
////        var rateField = id.replace(".AMOUNT", ".RATE"),
////                rateSelector = "#"+rateField,
////                rate = $(rateSelector).val();
////        alert(rate)
//
//        var rateField = id.replace(".AMOUNT", ".RATE"),
//            totalAmountField = id.replace(".AMOUNT", ".TOTAL_PRICE"),
//            rate = document.getElementById(rateField).value,
//            amount = document.getElementById(id).value,
//            totalAmount = rate * amount;
//            document.getElementById(totalAmountField).value = totalAmount;
//    }

    var childCount = ${up_Asset_Regi_MasterInstance?.upAssetRegiDetails?.size()} + 0;
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
        var htmlId = 'upAssetRegiDetails[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');
//
        clone.find("select[id$=ASSET_NAME]").attr('id', htmlId + 'ASSET_NAME').attr('name', htmlId + 'ASSET_NAME');
//
        clone.find("input[id$=QUANTITY]").attr('id', htmlId + 'QUANTITY').attr('name', htmlId + 'QUANTITY');
//
       clone.find("input[id$=UNITS]").attr('id', htmlId + 'UNITS').attr('name', htmlId + 'UNITS');
       clone.find("input[id$=SOURCE_OF_FUND]").attr('id', htmlId + 'SOURCE_OF_FUND').attr('name', htmlId + 'SOURCE_OF_FUND');
      clone.find("input[id$=LAST_MAINTENANCE_DATE]").attr('id', htmlId + 'LAST_MAINTENANCE_DATE').attr('name', htmlId + 'LAST_MAINTENANCE_DATE');
        clone.find("input[id$=EXPENSES_AMOUNT]").attr('id', htmlId + 'EXPENSES_AMOUNT').attr('name', htmlId + 'EXPENSES_AMOUNT');
        clone.find("input[id$=MAINTENANCE_EXPENSES_FUND_SRC]").attr('id', htmlId + 'MAINTENANCE_EXPENSES_FUND_SRC').attr('name', htmlId + 'MAINTENANCE_EXPENSES_FUND_SRC');
        clone.find("select[id$=NEXT_MAINTENANCE_DATE]").attr('id', htmlId + 'NEXT_MAINTENANCE_DATE').attr('name', htmlId + 'NEXT_MAINTENANCE_DATE');
        clone.find("input[id$=COMMENTS]").attr('id', htmlId + 'COMMENTS').attr('name', htmlId + 'COMMENTS');
        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>
<div class="" style="border: solid 1px;border-radius: 5px;">
    <table  style=" border-radius:5px;table-layout: fixed" id="detailList" class="table table-bordered table-striped table-hover table-condensed">
    %{--<table  style=" border-radius:5px;table-layout: fixed" id="detailList" >--}%
        %{--<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">--}%
        <tr><th>সম্পদের নাম </th><th>Quantity</th><th>Units</th><th>Source Of Fund</th><th>Last Maintenance Date</th><th>Expenses Amount</th><th>Maintenance Expenses Fund source</th><th>Next Maintenance Date</th><th>Comments</th><th width="44px">কর্ম</th></tr>
        <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
        %{--IN attribute a thakse master class object variable and details class ar object variable jeta controller declear kora ase, var="upAssetRegiDetails" ata g tage ar name call kora hoy --}%
        <g:each var="upAssetRegiDetails" in="${up_Asset_Regi_MasterInstance.upAssetRegiDetails}" status="i" >
            %{-- model attribute ar 2 part g:each tage ar var  --}%
            <g:render template='detail' model="['upAssetRegiDetails':upAssetRegiDetails,'i':i]"/>
        </g:each>
    </table>
    <input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Add Detail" onclick="addChild();"/>
</div>
