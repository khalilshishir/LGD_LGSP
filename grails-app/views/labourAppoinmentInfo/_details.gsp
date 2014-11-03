<script type="text/javascript">
    function setTotalAmount(id){
             var LABOUR_AMOUNT = id.replace(".PER_WORK_DAY_RATE", ".LABOUR_AMOUNT"),
                 WORK_DAY_TOTAL_AMOUNT = id.replace(".PER_WORK_DAY_RATE", ".WORK_DAY_TOTAL_AMOUNT"),
                 labourWorkDay = document.getElementById(LABOUR_AMOUNT).value,
                 perWorkDayRate = document.getElementById(id).value,
                 workDayTotalAmount = labourWorkDay * perWorkDayRate;
             document.getElementById(WORK_DAY_TOTAL_AMOUNT).value = workDayTotalAmount;
    }

    var childCount = ${labourAppoinmentInfoInstance?.labourAppoinmentInfoDetails?.size()} + 0;
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
        var htmlId = 'labourAppoinmentInfoDetails[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');

        clone.find("input[id$=WORK_DETAILS]").attr('id', htmlId + 'WORK_DETAILS').attr('name', htmlId + 'WORK_DETAILS');
        clone.find("input[id$=WORK_RATE]").attr('id', htmlId + 'WORK_RATE').attr('name', htmlId + 'WORK_RATE');

        clone.find("input[id$=WORK_AMOUNT]").attr('id', htmlId + 'WORK_AMOUNT').attr('name', htmlId + 'WORK_AMOUNT');
        clone.find("input[id$=LABOUR_AMOUNT]").attr('id', htmlId + 'LABOUR_AMOUNT').attr('name', htmlId + 'LABOUR_AMOUNT');
        clone.find("input[id$=LABOUR_WORK_DAY]").attr('id', htmlId + 'LABOUR_WORK_DAY').attr('name', htmlId + 'LABOUR_WORK_DAY');
        clone.find("input[id$=PER_WORK_DAY_RATE]").attr('id', htmlId + 'PER_WORK_DAY_RATE').attr('name', htmlId + 'PER_WORK_DAY_RATE');
        clone.find("input[id$=WORK_DAY_TOTAL_AMOUNT]").attr('id', htmlId + 'WORK_DAY_TOTAL_AMOUNT').attr('name', htmlId + 'WORK_DAY_TOTAL_AMOUNT');
        clone.find("input[id$=COMMENTS]").attr('id', htmlId + 'COMMENTS').attr('name', htmlId + 'COMMENTS');

        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>
%{--<table id="detailList" class="table table-bordered table-striped table-hover table-condensed">--}%
%{--<table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">--}%
<div class="" style="border: solid 1px;border-radius: 5px">
<table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
    <tr><th>কাজের বর্ণনা</th><th>কাজের একক</th><th>কাজের পরিমান</th><th>প্রয়োজনীয় জনবল / শ্রমদিবস</th><th>প্রতি শ্রমদিবসের মজুরি হার</th><th>শ্রমদিবস বাবদ মোট খরচ</th><th>মন্তব্য</th><th width="44px">কর্ম</th></tr>
    <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
    <g:each var="labourAppoinmentInfoDetails" in="${labourAppoinmentInfoInstance.labourAppoinmentInfoDetails}" status="i">
        <g:render template='detail' model="['labourAppoinmentInfoDetails':labourAppoinmentInfoDetails,'i':i]"/>
    </g:each>
</table>
<input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Add Detail" onclick="addChild();"/>
</div>
