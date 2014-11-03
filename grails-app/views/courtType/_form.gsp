<%@ page import="integration.CourtType" %>

    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">আদালত নং </label>

                %{--<input type="text" name="exampleInputEmail1" class="form-control" placeholder="আদালত নং  ">--}%
                <g:textField name="courtNo" value="${courtTypeInstance?.courtNo}" class="form-control"/>
            </div>
        </div><!--end-->
        <div class="col-xs-6">
            <div class="form-group">
                <label for="exampleInputEmail1">আদালতের নাম</label>
                <!-- <div class="bfh-selectbox" data-name="selectbox2" data-value="12">
						                                                     <div data-value="1">package 1</div>
						                                                     <div data-value="2">package 2</div>
						                                                     <div data-value="3">package 3</div>

						                                                   </div> -->

                %{--<input type="text" name="exampleInputEmail1" class="form-control" placeholder="আদালতের নাম ">--}%
                <!-- <textarea class="form-control" id="ei" rows="3" placeholder="Enter financial power"></textarea> -->
                <g:textField name="courtName" value="${courtTypeInstance?.courtName}" class="form-control"/>
            </div>
        </div><!--end-->
    </div><!--end row-->


