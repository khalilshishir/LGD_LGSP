<%@ page import="integration.CaseInformation" %>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">মামলার নং.</label>

            %{--<input type="text" name="exampleInputEmail1" class="form-control" placeholder="Enter Case No">--}%
            <g:textField name="caseNo" value="${caseInformationInstance?.caseNo}" class="form-control"/>

        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">মামলার তারিখ</label>
            <!-- <div class="bfh-selectbox" data-name="selectbox2" data-value="12">
						                                                     <div data-value="1">package 1</div>
						                                                     <div data-value="2">package 2</div>
						                                                     <div data-value="3">package 3</div>

						                                                   </div> -->

            <div class="bfh-datepicker" name="caseDate" data-date="${formatDate(format:'MM/dd/yyyy',date:caseInformationInstance?.caseDate)}" data-min="01/15/2013" data-close="true"  data-name="caseDate" class="form-control"></div>
            <!-- <textarea class="form-control" id="ei" rows="3" placeholder="Enter financial power"></textarea> -->
            %{--<g:textField name="caseDate" value="${caseInformationInstance?.caseDate}" class="form-control"/>--}%

        </div>
    </div><!--end-->
</div><!--end row-->
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">আরজি প্রাপ্তির তারিখ</label>
            <!-- 		<div class="bfh-selectbox" data-name="selectbox2" data-value="12">
						                                                     <div data-value="1">Audit pack dist 1</div>
						                                                     <div data-value="2">Audit pack dist 2</div>
						                                                     <div data-value="3">Audit pack dist 3</div>

						                                                   </div> -->



            <div class="bfh-datepicker" name="receiveDate" data-date="${formatDate(format:'MM/dd/yyyy',date:caseInformationInstance?.receiveDate)}" data-min="01/15/2013" data-close="true"  data-name="receiveDate" class="form-control"></div>
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1"> নথি নং  </label>
            <!-- 	<div class="bfh-selectbox" data-name="selectbox2" data-value="12">
						                                                     <div data-value="1">Up 1</div>
						                                                     <div data-value="2">UP 2</div>
						                                                     <div data-value="3">Up 3</div>

						                                                   </div> -->

            %{--<input type="text" name="TRI_qualification" class="form-control" placeholder=" নথি নং  ">--}%
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
            <g:textField name="documentNo" value="${caseInformationInstance?.documentNo}" class="form-control"/>
        </div>
    </div><!--end-->
</div>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">মামলার বিষয় </label>

            %{--<input type="text" name="TRI_qualification" class="form-control" placeholder="মামলার বিষয় ">--}%
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
            <g:textField name="caseSubject" value="${caseInformationInstance?.caseSubject}" class="form-control"/>
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">আদালতের ধরণ </label>

            <g:select id="courtType" name="courtType.id" from="${integration.CourtType.list()}" optionKey="id" required="" value="${caseInformationInstance?.courtType?.id}" class="many-to-one" class="form-control"/>

            <!-- <textarea class="form-control" id="ei" rows="3" placeholder="Enter financial power"></textarea> -->

        </div>
    </div><!--end-->
</div>
<div class="row">
    %{--<div class="col-xs-6">--}%
        %{--<div class="form-group">--}%
            %{--<label for="exampleInputEmail1">আদালতের নাম</label>--}%
            %{--<!-- <div class="bfh-datepicker" data-min="01/15/2013" data-close="false"></div> -->--}%
            %{--<input type="text" name="TRI_qualification" class="form-control" placeholder="আদালতের নাম">--}%
            %{--<!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->--}%
        %{--</div>--}%
    %{--</div><!--end-->--}%
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">পক্ষসমূহ
            </label>
            <!-- <div class="bfh-datepicker" data-min="01/15/2013" data-close="false"></div> -->
            <g:textField name="partyName" value="${caseInformationInstance?.partyName}" class="form-control"/>
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
        </div>
    </div><!--end-->
%{--</div>--}%
%{--<div class="row">--}%
    %{--<div class="col-xs-6">--}%
        %{--<div class="form-group">--}%
            %{--<label for="exampleInputEmail1">আইন শাখৃহে গ্রৃহীত কর্মকাণ্ড--}%
            %{--</label>--}%
            %{--<!-- <div class="bfh-datepicker" data-min="01/15/2013" data-close="false"></div> -->--}%
            %{--<input type="text" name="TRI_qualification" class="form-control" placeholder="আইন শাখৃহে গ্রৃহীত কর্মকাণ্ড">--}%
            %{--<!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->--}%
        %{--</div>--}%
    %{--</div><!--end-->--}%
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">আইন শাখৃহে গ্রৃহীত কর্মকাণ্ড
            </label>
            <!-- <div class="bfh-datepicker" data-min="01/15/2013" data-close="false"></div> -->
            <g:textField name="lawActivity" value="${caseInformationInstance?.lawActivity}" class="form-control"/>
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
        </div>
    </div><!--end-->

</div>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">সংশ্লিষ্ট দপ্তর / সংস্থা গ্রৃহীত পদক্ষেপ</label>
            <!-- 		<div class="bfh-selectbox" data-name="selectbox2" data-value="12">
						                                                     <div data-value="1">Audit pack dist 1</div>
						                                                     <div data-value="2">Audit pack dist 2</div>
						                                                     <div data-value="3">Audit pack dist 3</div>

						                                                   </div> -->

            <g:textField name="departmentActivity" value="${caseInformationInstance?.departmentActivity}" class="form-control"/>
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1"> অত্র বিভাগীয় সংশ্লিষ্ট প্রশাসনিক শাখার পদক্ষেপ</label>
            <!-- 	<div class="bfh-selectbox" data-name="selectbox2" data-value="12">
						                                                     <div data-value="1">Up 1</div>
						                                                     <div data-value="2">UP 2</div>
						                                                     <div data-value="3">Up 3</div>

						                                                   </div> -->

            <g:textField name="administrativeActivity" value="${caseInformationInstance?.administrativeActivity}" class="form-control"/>
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
        </div>
    </div><!--end-->

</div><!--end-->
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">সলিসিটর উইং এ জবাব প্রেরণের তারিখ</label>
            <!-- 		<div class="bfh-selectbox" data-name="selectbox2" data-value="12">
						                                                     <div data-value="1">Audit pack dist 1</div>
						                                                     <div data-value="2">Audit pack dist 2</div>
						                                                     <div data-value="3">Audit pack dist 3</div>

						                                                   </div> -->

            %{--<div class="bfh-datepicker" data-min="01/15/2013" data-close="false"></div>--}%
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->

            <div class="bfh-datepicker" name="answerDate" data-date="${formatDate(format:'MM/dd/yyyy',date:caseInformationInstance?.answerDate)}" data-min="01/15/2013" data-close="true"  data-name="answerDate" class="form-control"></div>
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1"> মামলার পরবর্তী শুনানির তারিখ </label>

            <div class="bfh-datepicker" name="hearingDate" data-date="${formatDate(format:'MM/dd/yyyy',date:caseInformationInstance?.hearingDate)}" data-min="01/15/2013" data-close="true"  data-name="hearingDate" class="form-control"></div>
        </div>
    </div><!--end-->

</div>
<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1">মামলার সর্বশেষ অবস্থা</label>


            <g:textField name="lastSituation" value="${caseInformationInstance?.lastSituation}" class="form-control"/>
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
        </div>
    </div><!--end-->
    <div class="col-xs-6">
        <div class="form-group">
            <label for="exampleInputEmail1"> মন্তব্য</label>


            <g:textField name="comments" value="${caseInformationInstance?.comments}" class="form-control"/>
            <!-- <textarea class="form-control" id="eip" rows="3" placeholder="Enter Conclusion"></textarea> -->
        </div>
    </div><!--end-->

</div><!--end-->