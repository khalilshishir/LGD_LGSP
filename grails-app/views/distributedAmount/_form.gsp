<%@ page import="grantmanagement.DistributedAmount" %>
<script src="${resource(dir: 'js',file: 'jquery-1.8.0.min.js')}"></script>
<script src = "${resource(dir: 'js', file: 'jquery.blockUI.js')}"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){

    });
    function GetAllocatedAmount(fiyId){
        $.ajax({
            url: "${request.contextPath}/DistributedAmount/GetAllocatedAmountByFiscalYear",
            type: "POST",
            data: "fiy_id=" + fiyId,
            async: false,
            success: function (response) {
                $("#allocatedAmount").val(response);
                $("#allocatedAmount").attr("disabled", "disabled");
                $("#hdAllocatedAmt").val(response);
            },
            error: function (xhr, textStatus, errorThrown) {
                alert("Plz input amount for selected fiscal year");
            }
        });
    }
    function GetUnionPorishod(){
        $.ajax({
            url: "${request.contextPath}/DistributedAmount/GetNoOfUnionPorishod",
            type: "POST",
            async: false,
            success: function (response) {
                $("#noOfUnionPorishod").val(response);
            },
            error: function (xhr, textStatus, errorThrown) {
                alert("Plz input amount for selected fiscal year");
            }
        });
    }
    function GetBBGAmount(){
        var totalAmt=$("#allocatedAmount option:selected").text();

        var noOfUnionPorishod=$("#noOfUnionPorishod").val();

        var bbgAMount=parseFloat(totalAmt/noOfUnionPorishod).toFixed(2);

        $('.bbg').each(function(){
            $(this).val(bbgAMount);

        });
    }
    function GetPBGAmount(){
        $('.pbg').each(function(){
            var pbgId=$(this).attr('id');

            var temp=pbgId.replace(/\D/g,'');
            var perValue=$("#per"+temp).text();
            var bbgValue=$("#amtBBG"+temp).val();

            var pbgValue=(parseFloat(bbgValue)*parseFloat(perValue)/100).toFixed(2);

            $(this).val(pbgValue);

        });
    }

    function GetTotalAmount(){
        $('.total').each(function(){
            var pbgId=$(this).attr('id');

            var temp=pbgId.replace(/\D/g,'');

            var bbgValue=$("#amtBBG"+temp).val();
            var pbgValue=$("#amtPBG"+temp).val();

            var totalAmt=(parseFloat(bbgValue)+parseFloat(pbgValue)).toFixed(2);

            $(this).val(totalAmt);
        });
    }

    jQuery(document).on("change","#fiscalYear",function(){
        $.blockUI();
        $("#allocatedAmount").val("0");
        var fiyId=$(this).val();
        if(fiyId>0) {
            GetAllocatedAmount(fiyId);
            GetUnionPorishod();
            GetBBGAmount();
            GetPBGAmount();
            GetTotalAmount();
        }
        $.unblockUI();
    });
</script>
<div class="col-xs-4">
    <div class="form-group">
        <label for="fiscalYear">
            <g:message code="distributedAmount.fiscalYear.label" default="Fiscal Year" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="fiscalYear" name="fiscalYear.id" noSelection="[null:'select one']" from="${planningbudget.FiscalYear.list()}" optionKey="id" required="" value="${distributedAmountInstance?.fiscalYear?.id}" class="many-to-one form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="unionPorishod">
            <g:message code="distributedAmount.fiscalYear.label" default="No Of Union Parishad" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField name="noOfUnionPorishod" id="noOfUnionPorishod" value="" readonly="readonly" class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="allocatedAmount">
            <g:message code="distributedAmount.allocatedAmount.label" default="Allocated Amount" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="allocatedAmount" readonly="readonly" name="allocatedAmount.id" noSelection="[null:'Select One']" from="${grantmanagement.AllocatedAmount.list()}" optionKey="id" required="" value="${distributedAmountInstance?.allocatedAmount?.id}" class="many-to-one form-control"/>
        <g:hiddenField name="hdAllocatedAmt" id="hdAllocateAmt" value=""/>
    </div>
</div>
<div class="col-xs-2">
    <div class="form-group">
        <label for="measureCategory">
            <g:message code="distributedAmount.measureCategory.label" default="Measure Category" />
            <span class="required-indicator">*</span>
        </label>
    </div>
</div>
<div class="col-xs-2">
    <div class="form-group">
        <label for="amountBBG">
            <g:message code="distributedAmount.amountBBG.label" default="Amount BBG" />
            <span class="required-indicator">*</span>
        </label>
    </div>
</div>
<div class="col-xs-2">
    <div class="form-group">
        <label for="measureCategory">
            <g:message code="distributedAmount.measureCategory.label" default="PBG Percentage" />
            <span class="required-indicator">*</span>
        </label>
    </div>
</div>
<div class="col-xs-2">
    <div class="form-group">
        <label for="amountPBG">
            <g:message code="distributedAmount.amountPBG.label" default="Amount PBG" />
            <span class="required-indicator">*</span>
        </label>
    </div>
</div>
<div class="col-xs-2">
    <div class="form-group">
        <label for="totalAmount">
            <g:message code="distributedAmount.totalAmount.label" default="Total Amount" />
            <span class="required-indicator">*</span>
        </label>
    </div>
</div>
<div class="col-xs-2">
    <div class="form-group">
        <label for="totalAmount">&nbsp;
        </label>
    </div>
</div>
<g:each in="${grantmanagement.PerformanceMeasureCategory.list().sort{it.id}}" var="performanceMeasure" status="i">
    <div class="col-xs-2">
        <div class="form-group">
                <g:hiddenField name="${'hdCatId'+i}" id="${'hdCatId'+i}" value="${performanceMeasure?.id}"/>
                <label>${performanceMeasure?.categoryName}</label>
        </div>
    </div>
    <div class="col-xs-2">
        <div class="form-group">

            <g:field type="number" class="form-control bbg" name="${'amtBBG'+i}" id="${'amtBBG'+i}" value="${fieldValue(bean: distributedAmountInstance, field: 'amountBBG')}" required=""/>
        </div>
    </div>
    <div class="col-xs-2">
        <div class="form-group">

            <g:if test="${i==3}">
                <label class="per" id="${'per'+i}">30%</label>
            </g:if>
            <g:elseif test="${i==2}">
                <label class="per" id="${'per'+i}">20%</label>
            </g:elseif>
            <g:elseif test="${i==1}">
                <label class="per" id="${'per'+i}">10%</label>
            </g:elseif>
            <g:else>
                <label class="per" id="${'per'+i}">0%</label>
            </g:else>
        </div>
    </div>
    <div class="col-xs-2">
        <div class="form-group">
            <g:field type="number" class="form-control pbg" name="${'amtPBG'+i}" id="${'amtPBG'+i}" value="${fieldValue(bean: distributedAmountInstance, field: 'amountPBG')}" required=""/>
        </div>
    </div>
    <div class="col-xs-2">
        <div class="form-group">
            <g:field type="number" class="form-control total" name="${'totalAmt'+i}" id="${'totalAmt'+i}" value="${fieldValue(bean: distributedAmountInstance, field: 'totalAmount')}" required=""/>
        </div>
    </div>
    <div class="col-xs-2">
        <div class="form-group">
          <label>&nbsp;</label>
        </div>
    </div>
    <div class="col-xs-2">
        <div class="form-group">
            <label>&nbsp;</label>
        </div>
    </div>
</g:each>
