<%@ page import="integration.LawBranchTwo" %>
<div class="form-group">
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">নথি নং  </label>
                <g:textField name="documentNo" required="" value="${lawBranchTwoInstance?.documentNo}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">প্পত্র  প্রাপ্তির  তারিখ</label>
                <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:lawBranchTwoInstance?.receiveDate)}" data-close="true" data-name="receiveDate"></div>
            </div>
        </div><!--end-->
    </div><!--end row-->
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">মতামতের বিষয়</label>
                <g:textField name="subject" value="${lawBranchTwoInstance?.subject}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1"> অত্র শাখৃা  গ্রৃহীত পদক্ষেপ </label>
                <g:textField name="departmentActivity" value="${lawBranchTwoInstance?.departmentActivity}" class="form-control"/>
            </div>
        </div><!--end-->
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">নিস্পতির  তারিখ</label>
                <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:lawBranchTwoInstance?.endingDate)}" data-close="true" data-name="endingDate"></div>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">মন্তব্য</label>
                <g:textField name="comments" value="${lawBranchTwoInstance?.comments}" class="form-control"/>

            </div>
        </div><!--end-->
    </div>



%{--</div><!--end-->--}%





</div>