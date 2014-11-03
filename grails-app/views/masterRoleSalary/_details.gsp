<script type="text/javascript">
    function setTotalAmount(id){
        var wages = id.replace(".WORK_DAY", ".SALARY"),
                TOTAL_AMOUNT = id.replace(".WORK_DAY", ".TOTAL_AMOUNT"),
                wagesAmount = document.getElementById(wages).value,
                workDay = document.getElementById(id).value,
                totalWages = wagesAmount * workDay;
        document.getElementById(TOTAL_AMOUNT).value = totalWages;
    }

    var childCount = ${masterRoleSalaryInstance?.masterRoleSalaryDetails?.size()} + 0;
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
        var htmlId = 'masterRoleSalaryDetails[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');

        clone.find("input[id$=LABOUR_NAME]").attr('id', htmlId + 'LABOUR_NAME').attr('name', htmlId + 'LABOUR_NAME');

        clone.find("input[id$=LABOUR_ADDRESS]").attr('id', htmlId + 'LABOUR_ADDRESS').attr('name', htmlId + 'LABOUR_ADDRESS');
        clone.find("input[id$=SALARY]").attr('id', htmlId + 'SALARY').attr('name', htmlId + 'SALARY');
        clone.find("input[id$=WORK_DAY]").attr('id', htmlId + 'WORK_DAY').attr('name', htmlId + 'WORK_DAY');
        clone.find("input[id$=TOTAL_AMOUNT]").attr('id', htmlId + 'TOTAL_AMOUNT').attr('name', htmlId + 'TOTAL_AMOUNT');
        clone.find("input[id$=COMMENTS]").attr('id', htmlId + 'COMMENTS').attr('name', htmlId + 'COMMENTS');

        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>

<div class="" style="border: solid 1px;border-radius: 5px">
    <table id="detailList" name="detailList" style=" border-radius:5px;table-layout: fixed" class="table table-bordered table-striped table-hover table-condensed">
        <tr><th>শ্রমিকের নাম</th><th>শ্রমিকের ঠিকানা</th><th>মজুরি</th><th>দিন/ পরিমাণ</th><th>মোট টাকা </th><th>মন্তব্য</th><th width="44px">কর্ম</th></tr>
        <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
        <g:each var="masterRoleSalaryDetails" in="${masterRoleSalaryInstance.masterRoleSalaryDetails}" status="i">
            <g:render template='detail' model="['masterRoleSalaryDetails':masterRoleSalaryDetails,'i':i]"/>
        </g:each>
    </table>
    <input type="button"  style="border: 2px solid" class="btn btn-info btn-md save" value="Add Detail" onclick="addChild();"/>
</div>


