<%@ page import="integration.LgedAuditInfo" %>
<script type="text/javascript">
    $(document).ready(function(){
//        alert("suor"); quanPresent quanOutstanding amtPresent
    });
    $(document).on('keyup','.quanGeneral',function(){
        var sum=0;
        $('.quanGeneral').each(function(){
            var value=$(this).val();
            if(value=="")
            value="0";
            sum=sum+parseInt(value);

        });
        $("#totalNoOfGeneralComplain").val(sum);
        SumQunatity();
    });
    $(document).on('keyup','.quanPresent',function(){
        var sum=0;
        $('.quanPresent').each(function(){
            var value=$(this).val();
            if(value=="")
                value="0";
            sum=sum+parseInt(value);

        });
        $("#totalNoOfPresentComplain").val(sum);
        SumQunatity();
    });
    $(document).on('keyup','.quanOutstanding',function(){
        var sum=0;
        $('.quanOutstanding').each(function(){
            var value=$(this).val();
            if(value=="")
                value="0";
            sum=sum+parseInt(value);

        });
        $("#totalNoOfOutstandingComplain").val(sum);
        SumQunatity();
    });

    $(document).on('keyup','.amtGeneral',function(){
        var sum=0;
        $('.amtGeneral').each(function(){
            var value=$(this).val();
            if(value=="")
                value="0";
            sum=sum+parseInt(value);

        });
        $("#totalAmountOfGeneralComplain").val(sum);
        SumAmt();
    });

    $(document).on('keyup','.amtPresent',function(){
        var sum=0;
        $('.amtPresent').each(function(){
            var value=$(this).val();
            if(value=="")
                value="0";
            sum=sum+parseInt(value);

        });
        $("#totalAmountOfPresentComplain").val(sum);
        SumAmt();
    });

    $(document).on('keyup','.amtOutstanding',function(){
        var sum=0;
        $('.amtOutstanding').each(function(){
            var value=$(this).val();
            if(value=="")
                value="0";
            sum=sum+parseInt(value);

        });
        $("#totalAmountOfOutstandingComplain").val(sum);
        SumAmt();
    });

    function SumQunatity(){
        var sumGeneral=$("#totalNoOfGeneralComplain").val();
        var sumPresent=$("#totalNoOfPresentComplain").val();
        var sumOutstanding=$("#totalNoOfOutstandingComplain").val();
        if(sumGeneral=="")
        sumGeneral="0";
        if(sumPresent=="")
        sumPresent="0";
        if(sumOutstanding=="")
        sumOutstanding="0";
        var sum=parseInt(sumGeneral)+parseInt(sumPresent)+parseInt(sumOutstanding);
        $("#totalNoOfAllComplain").val(sum);

    }

    function SumAmt(){
        var sumGeneral=$("#totalAmountOfGeneralComplain").val();
        var sumPresent=$("#totalAmountOfPresentComplain").val();
        var sumOutstanding=$("#totalAmountOfOutstandingComplain").val();
        if(sumGeneral=="")
            sumGeneral="0";
        if(sumPresent=="")
            sumPresent="0";
        if(sumOutstanding=="")
            sumOutstanding="0";
        var sum=parseInt(sumGeneral)+parseInt(sumPresent)+parseInt(sumOutstanding);
        $("#totalAmountOfAllComplain").val(sum);
    }

</script>

<fieldset>
<legend></legend>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংস্থার নাম</label>
                <g:select id="lgedOffice" name="lgedOffice.id" noSelection="[null:' ']" from="${integration.LgedOffice.list()}" optionKey="id" required="required" value="${lgedAuditInfoInstance?.lgedOffice?.id}" class="many-to-one form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">অডিট</label>
                <g:select id="auditFirm" name="auditFirm.id" noSelection="[null:' ']" from="${audit.AuditFirm.list()}" optionKey="id" optionValue="AUDIT_FIRM_NAME" required="required" value="${lgedAuditInfoInstance?.auditFirm?.id}" class="many-to-one form-control"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">আপত্তির তারিখ</label>
                %{--<g:datePicker name="complainDate" precision="day"  value="${lgedAuditInfoInstance?.complainDate}" class="form-control" />--}%
                <div class="bfh-datepicker" name="complainDate" data-date="${formatDate(format:'MM/dd/yyyy',date:lgedAuditInfoInstance?.complainDate)}" data-min="01/15/2013" data-close="true" data-name="complainDate" class="form-control"></div>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">অনুচ্ছেদ নম্বর</label>
                <g:textField name="sectionNumber" required="" value="${lgedAuditInfoInstance?.sectionNumber}" class="form-control"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">নিরীক্ষা প্রতিবেদনের শিরোনাম</label>
                %{--<g:datePicker name="complainDate" precision="day"  value="${lgedAuditInfoInstance?.complainDate}" class="form-control" />--}%
                <g:textField name="auditInfoName" required="" value="${lgedAuditInfoInstance?.auditInfoName}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকার পরিমাণ</label>
                <g:field name="amount" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'amount')}" required="required" class="form-control"/>
            </div>
        </div><!--end-->
    </div>
</fieldset>
<fieldset>
    <legend>আপত্তির সংখ্যা</legend>
    <div class="row">
        <div class="col-xs-12">
            <h3>সাধারণ</h3>
        </div>
    </div>
    <div class="row">
            <div class="col-xs-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">সংখ্যা</label>
                    <g:field name="generalNoOfGeneralComplain" type="number" value="${lgedAuditInfoInstance.generalNoOfGeneralComplain}" class="form-control quanGeneral"/>
                </div>
            </div><!--end-->
            <div class="col-xs-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">টাকা</label>
                    <g:field type="number" name="generalAmountOfGeneralComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'generalAmountOfGeneralComplain')}" class="form-control amtGeneral"/>
                </div>
            </div><!--end-->
        </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>অগ্রিম</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="advanceNoOfGeneralComplain" type="number" value="${lgedAuditInfoInstance.advanceNoOfGeneralComplain}" class="form-control quanGeneral"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field name="advanceAmountOfGeneralComplain" type="number" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'advanceAmountOfGeneralComplain')}" class="form-control amtGeneral"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>রিপোর্ট ভুক্ত</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="reportedNoOfGeneralComplain" type="number" value="${lgedAuditInfoInstance.reportedNoOfGeneralComplain}" class="form-control quanGeneral"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="reportedAmountOfGeneralComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'reportedAmountOfGeneralComplain')}" class="form-control amtGeneral"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>মোট আপত্তি</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="totalNoOfGeneralComplain" type="number" value="${lgedAuditInfoInstance.totalNoOfGeneralComplain}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="totalAmountOfGeneralComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'totalAmountOfGeneralComplain')}" class="form-control"/>
            </div>
        </div><!--end-->
    </div>
</fieldset>
<fieldset>
    <legend>হালসনে নিস্পত্তি সংখ্যা</legend>
    <div class="row">
        <div class="col-xs-12">
            <h3>সাধারণ</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="generalNoOfPresentComplain" type="number" value="${lgedAuditInfoInstance.generalNoOfPresentComplain}" class="form-control quanPresent"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="generalAmountOfPresentComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'generalAmountOfPresentComplain')}" class="form-control amtPresent"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>অগ্রিম</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="advanceNoOfPresentComplain" type="number" value="${lgedAuditInfoInstance.advanceNoOfPresentComplain}" class="form-control quanPresent"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field name="advanceAmountOfPresentComplain" type="number" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'advanceAmountOfPresentComplain')}" class="form-control amtPresent"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>রিপোর্ট ভুক্ত</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="reportedNoOfPresentComplain" type="number" value="${lgedAuditInfoInstance.reportedNoOfPresentComplain}" class="form-control quanPresent"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="reportedAmountOfPresentComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'reportedAmountOfPresentComplain')}" class="form-control amtPresent"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>মোট আপত্তি</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="totalNoOfPresentComplain" type="number" value="${lgedAuditInfoInstance.totalNoOfPresentComplain}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="totalAmountOfPresentComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'totalAmountOfPresentComplain')}" class="form-control"/>
            </div>
        </div><!--end-->
    </div>
</fieldset>
<fieldset>
    <legend>অনিষ্পন্ন আপত্তির সংখ্যা</legend>
    <div class="row">
        <div class="col-xs-12">
            <h3>সাধারণ</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="generalNoOfOutstandingComplain" type="number" value="${lgedAuditInfoInstance.generalNoOfOutstandingComplain}" class="form-control quanOutstanding"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="generalAmountOfOutstandingComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'generalAmountOfOutstandingComplain')}" class="form-control amtOutstanding"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>অগ্রিম</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="advanceNoOfOutstandingComplain" type="number" value="${lgedAuditInfoInstance.advanceNoOfOutstandingComplain}" class="form-control quanOutstanding"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field name="advanceAmountOfOutstandingComplain" type="number" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'advanceAmountOfOutstandingComplain')}" class="form-control amtOutstanding"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>রিপোর্ট ভুক্ত</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="reportedNoOfOutstandingComplain" type="number" value="${lgedAuditInfoInstance.reportedNoOfOutstandingComplain}" class="form-control quanOutstanding"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="reportedAmountOfOutstandingComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'reportedAmountOfOutstandingComplain')}" class="form-control amtOutstanding"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h3>মোট আপত্তি</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="totalNoOfOutstandingComplain" type="number" value="${lgedAuditInfoInstance.totalNoOfOutstandingComplain}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="totalAmountOfOutstandingComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'totalAmountOfOutstandingComplain')}" class="form-control"/>
            </div>
        </div><!--end-->
    </div>
</fieldset>
<fieldset>
    <legend>মোট</legend>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">সংখ্যা</label>
                <g:field name="totalNoOfAllComplain" type="number" value="${lgedAuditInfoInstance.totalNoOfAllComplain}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">টাকা</label>
                <g:field type="number" name="totalAmountOfAllComplain" value="${fieldValue(bean: lgedAuditInfoInstance, field: 'totalAmountOfAllComplain')}" class="form-control"/>
            </div>
        </div><!--end-->
    </div>
</fieldset>
<fieldset>
    <legend></legend>
        <div class="row">
            <div class="col-xs-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">৭/১৫ দিন; ১/৩/৬ মাস থেকে ১ বছর পর্যন্ত</label>
                    <g:textField name="moreThanOneYear" value="${lgedAuditInfoInstance?.moreThanOneYear}" class="form-control"/>
                </div>
            </div><!--end-->
            <div class="col-xs-6">
                <div class="form-group">
                    <label for="exampleInputEmail1">১ বছরের অধিক</label>
                    <g:textField name="lessThanOneYear" value="${lgedAuditInfoInstance?.lessThanOneYear}" class="form-control"/>
                </div>
            </div><!--end-->
        </div>

</fieldset>