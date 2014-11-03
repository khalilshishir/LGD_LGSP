<%@ page import="hrms.HrPayscale; accounts.AfmBankBranch; accounts.AfmBankInfo; hrms.HrLookup; hrms.HrLookupType; hrms.HrEmployee" %>
<script type="text/javascript">
    $(document).ready(function () {
        $("#joiningDate").datepicker({ dateFormat: 'dd/mm/yy'});
        //$("#confirmationDate").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#regularationDate").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#serviceEndDate").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#lastIncrementDate").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#nextIncrementDate").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#dateOfBirth").datepicker({ dateFormat: 'dd/mm/yy'});
        $("#contractExpiredDate").datepicker({ dateFormat: 'dd/mm/yy'});
        //alert(document.getElementById('totalLeaveWithoutPayDays').value);
        getServiceLengthOnLoad();

        // ****************************************************************
        /*var serviceYear = document.getElementById('totalServiceYear').value;
        var serviceMonth = document.getElementById('totalServiceMonth').value;
        var serviceDay = document.getElementById('totalServiceDay').value;

        document.getElementById('serviceLengthYY').value = serviceYear;
        document.getElementById('serviceLengthMM').value = serviceMonth;
        document.getElementById('serviceLengthDD').value = serviceDay;*/
        // ****************************************************************
    });




    function getMonths() {
        var joinDate = $('#joiningDate').val().split("/");
        var  dateObj = new Date(joinDate[2]+"/"+joinDate[1]+"/"+joinDate[0]);
        dateObj.setMonth(dateObj.getMonth() + parseInt($("#probationaryPeriod").val()));
        $("#confirmationDate").val($.datepicker.formatDate('dd/mm/yy',dateObj));
        $("#confirmationDate2").val($.datepicker.formatDate('dd/mm/yy',dateObj));
    }


    // start service length calculation excluding leave without pay year/Month/Days onloading
    function getServiceLengthOnLoad()
    {
    var totalLwpDays = document.getElementById('totalLeaveWithoutPayDays').value;
    //alert('totalLwpDays : '+totalLwpDays);
    var lwpYear = Math.floor(totalLwpDays/365);
    //alert('lwpYear : '+lwpYear);
    var lwpMonth = Math.floor(totalLwpDays%365/30);
    //alert('lwpMonth : '+lwpMonth);
    var lwpDays = parseInt((totalLwpDays%365/30)*30) - parseInt(Math.floor((totalLwpDays%365)/30)*30);
    //alert('lwpDays : '+lwpDays);

    var v_yy = document.getElementById('totalServiceYear').value;
    //alert('v_yy : '+v_yy);
    var v_mm = document.getElementById('totalServiceMonth').value;
    //alert('v_mm : '+v_mm);
    var noOfDays = document.getElementById('totalServiceDay').value;
    //alert('noOfDays : '+noOfDays);

    // Start Two Year,Month,Days Subtraction
    var restOfDays,restOfMonth,restOfYear;
    if (parseInt(lwpDays) > parseInt(noOfDays) ) {
        noOfDays = 30 + parseInt(noOfDays);
        restOfDays = parseInt(noOfDays) - parseInt(lwpDays) ;
        //alert('restOfDays : '+restOfDays);
        lwpMonth = parseInt(lwpMonth) + 1;
        //alert('lwpMonth : '+lwpMonth);
        if(parseInt(lwpMonth)  > parseInt(v_mm)) {
            v_mm = 12+ parseInt(v_mm);
            restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
            restOfYear = parseInt(v_yy) - (parseInt(lwpYear) + 1);
        }
        else {
            restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
            restOfYear = parseInt(v_yy) - parseInt(lwpYear);
        }
    }
    else {
        //alert('smaller');
        restOfDays = parseInt(noOfDays) - parseInt(lwpDays) ;
        if(parseInt(lwpMonth)  > parseInt(v_mm)) {
            v_mm = 12+ parseInt(v_mm);
            restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
            restOfYear = parseInt(v_yy) - (parseInt(lwpYear) + 1);
        }
        else {
            restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
            restOfYear = parseInt(v_yy) - parseInt(lwpYear);
        }

    }

    $("#serviceLengthYY").val(restOfYear);
    $("#serviceLengthMM").val(restOfMonth);
    $("#serviceLengthDD").val(restOfDays);

  }
    // end service length calculation excluding leave without pay year/Month/Days  onloading



    %{----- start calculation employee's service length -----}%
            function getEmpServiceLength()
            {
                // start leave without pay service length calculation
                var totalLwpDays = document.getElementById('totalLeaveWithoutPayDays').value;
                //alert('totalLwpDays : '+totalLwpDays);
                var lwpYear = Math.floor(totalLwpDays/365);
                //alert('lwpYear : '+lwpYear);
                var lwpMonth = Math.floor(totalLwpDays%365/30);
                //alert('lwpMonth : '+lwpMonth);
                var lwpDays = parseInt((totalLwpDays%365/30)*30) - parseInt(Math.floor((totalLwpDays%365)/30)*30);
                //alert('lwpDays : '+lwpDays);
                // end leave without pay service length calculation

                var employeeIdNo = document.getElementById('id').value;
                //alert('employeeIdNo : '+employeeIdNo);
                var employeeCardNo = document.getElementById('cardNo').value;
                //alert('employeeCardNo : '+employeeCardNo);
                var joiningDate = document.getElementById('joiningDate').value;
                //alert('joiningDate : '+joiningDate);
                var serviceEndDate = document.getElementById('serviceEndDate').value;
                //alert('serviceEndDate : '+serviceEndDate);

                $.ajax({
                    type:'POST',
                    url: '${request.contextPath}/HrEmployee/getEmpTotalServiceLength',
                    dataType:"JSON",
                    data:'employeeCardNo='+employeeCardNo+'&joiningDate='+joiningDate+'&serviceEndDate='+serviceEndDate+'&employeeIdNo='+employeeIdNo,
                    success:function(response) {
                        //var json = JSON.parse(response);
                        var json =  response;
                        //alert(json.message);
                        var data = json.message.split(':');
                        //document.getElementById('totalServiceYear').value = data[0];
                        //document.getElementById('totalServiceMonth').value = data[1];
                        //document.getElementById('totalServiceDay').value = data[2];

                        //document.getElementById('serviceLengthYY').value = data[0];
                        //document.getElementById('serviceLengthMM').value = data[1];
                        //document.getElementById('serviceLengthDD').value = data[2];

                        // start service length calculation excluding leave without pay year/Month/Days
                        var totalLwpDays = document.getElementById('totalLeaveWithoutPayDays').value;
                        //alert('totalLwpDays : '+totalLwpDays);
                        var lwpYear = Math.floor(totalLwpDays/365);
                        //alert('lwpYear : '+lwpYear);
                        var lwpMonth = Math.floor(totalLwpDays%365/30);
                        //alert('lwpMonth : '+lwpMonth);
                        var lwpDays = parseInt((totalLwpDays%365/30)*30) - parseInt(Math.floor((totalLwpDays%365)/30)*30);
                        //alert('lwpDays : '+lwpDays);

                        var v_yy = data[0];
                        //alert('v_yy : '+v_yy);
                        var v_mm = data[1];
                        //alert('v_mm : '+v_mm);
                        var noOfDays = data[2];
                        //alert('noOfDays : '+noOfDays);

                        // Start Two Year,Month,Days Subtraction
                        var restOfDays,restOfMonth,restOfYear;
                        if (parseInt(lwpDays) > parseInt(noOfDays) ) {
                            noOfDays = 30 + parseInt(noOfDays);
                            restOfDays = parseInt(noOfDays) - parseInt(lwpDays) ;
                            //alert('restOfDays : '+restOfDays);
                            lwpMonth = parseInt(lwpMonth) + 1;
                            //alert('lwpMonth : '+lwpMonth);
                            if(parseInt(lwpMonth)  > parseInt(v_mm)) {
                                v_mm = 12 + parseInt(v_mm);
                                restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
                                restOfYear = parseInt(v_yy) - (parseInt(lwpYear) + 1);
                            }
                            else {
                                restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
                                restOfYear = parseInt(v_yy) - parseInt(lwpYear);
                            }
                        }
                        else {
                            //alert('smaller');
                            restOfDays = parseInt(noOfDays) - parseInt(lwpDays) ;
                            if(parseInt(lwpMonth)  > parseInt(v_mm)) {
                                v_mm = 12+ parseInt(v_mm);
                                restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
                                restOfYear = parseInt(v_yy) - (parseInt(lwpYear) + 1);
                            }
                            else {
                                restOfMonth = parseInt(v_mm) - parseInt(lwpMonth);
                                restOfYear = parseInt(v_yy) - parseInt(lwpYear);
                            }

                        }
                        // End Two Year,Month,Days Subtraction
                        $("#serviceLengthYY").val(restOfYear);
                        $("#serviceLengthMM").val(restOfMonth);
                        $("#serviceLengthDD").val(restOfDays);
                        // end service length calculation excluding leave without pay year/Month/Days

                    },
                    error:function(err) {
                        //  alert(err);
                    }
                }) ;
            }



    function chk_address_box() {
        if($("#checkAddress").is(':checked')){
            $("#perRoadNo").attr("value",$("#preRoadNo").val());
            $("#perHouseNo").attr("value",$("#preHouseNo").val());
            $("#perBlockNo").attr("value",$("#preBlockNo").val());
            $("#perPostCode").attr("value",$("#prePostCode").val());
            $("#perCity").attr("value",$("#preCity").val());
            $("#perThana").attr("value",$("#preThana").val());
            $("#perDistrict").attr("value",$("#preDistrict").val());
        }
        else{
            $("#perRoadNo").attr("value","");
            $("#perHouseNo").attr("value","");
            $("#perBlockNo").attr("value","");
            $("#perPostCode").attr("value","");
            $("#perCity").attr("value","");
            $("#perThana").attr("value","");
            $("#perDistrict").attr("value","");
        }
    }

    // get branch information from a bank
    function getBranchName() {
        var bankId =  $("#bankId").val();
        //alert(bankId);
        $.ajax({
            type:"POST",
            url:'${request.contextPath}/HrEmployee/getBranchName',
            dataType:'JSON',
            data: 'bankId='+bankId,
            success:function(data) {
                var json = eval("(" + data.message + ")");
                var ddl = $("#branchId");
                ddl.empty();
                ddl.append("<option value=''>-Select One-</option>");
                jQuery.each(json, function() {
                    ddl.append("<option value='" + this.id + "'>" + this.value + "</option>");
                });

            },
            error:function(err) {
                alert(err);
            }
        });
    }


    function numbersOnly(myfield, e, dec)
    {
        var key;
        var keychar;
        if (window.event)
            key = window.event.keyCode;
        else if (e)
            key = e.which;
        else
            return true;
        keychar = String.fromCharCode(key);

        if ((key==null) || (key==0) || (key==8) ||
                (key==9) || (key==13) || (key==27) )
            return true;

        else if ((("0123456789").indexOf(keychar) > -1))
            return true;

        else if (dec && (keychar == "."))
        {
            myfield.form.elements[dec].focus();
            return false;
        }
        else
            return false;
    }


            function numberAndSlashOnly(e)
            {
                var key;
                var keychar;

                if (window.event)
                    key = window.event.keyCode;
                else if (e)
                    key = e.which;
                else
                    return true;
                keychar = String.fromCharCode(key);
                keychar = keychar.toLowerCase();

        // control keys
                if ((key==null) || (key==0) || (key==8) ||
                        (key==9) || (key==13) || (key==27) )
                    return true;

        // alphas and numbers
                else if ((("0123456789/").indexOf(keychar) > -1))
                    return true;
                else
                    return false;
            }


    function showHide(sendObjId,idStr)
    {
        //alert("sendObjId "+sendObjId+" || idStr "+idStr);
        var subStr=idStr.split(":")

        var sendObjValue=document.getElementById(sendObjId).value;

        for(var i=0;i<subStr.length;i++ ){

            if(sendObjId=="paymentTypeIdHrLookup"){

                if(sendObjValue=="1346") {

                    document.getElementById(subStr[i]).style.display='block';
                    document.getElementById('bankAcNo').required=true;
                    document.getElementById('bankId').required=true;
                   // document.getElementById('branchId').required=true;
                }
                else {

                    document.getElementById(subStr[i]).style.display='none';
                    document.getElementById('bankAcNo').required=false;
                    document.getElementById('bankId').required=false;
                  //  document.getElementById('branchId').required=false;
                }
            }
            /*else{


            }*/
        }


    }
</script>




<script type="text/javascript">

    function getDepartmentName(fldId)
    {
        $('#'+fldId).autocomplete({
            source:'<g:createLink controller='HrDepartment' action='autoDepartmentName'/>'
        });
    }

    function getDesignationName(fldId)
    {
        $('#'+fldId).autocomplete({
            source:'<g:createLink controller='HrDesignation' action='autoDesignationName'/>'
        });
    }

    function getEmployeeName(fldId)
    {
        $('#'+fldId).autocomplete({
            source:'<g:createLink controller='hrEmployee' action='autoEmployeeName'/>'
        });
    }


    function getEmployeeCardNo(fldId)
    {
        $('#'+fldId).autocomplete({
            source:'<g:createLink controller='hrEmployee' action='autoEmployeeCardNo'/>'
        });
    }

    function getEmployeeDetail(val) {
        // alert("val "+val)
        var autoData = val;

        if(autoData!=''){
            $.ajax({
                type:'POST',
                url:'${request.contextPath}/hrEmployee/getEmployeeDetail',
                dataType:"JSON",
                data:'&autoData=' + autoData,
                success:function (response) {
                    var outputStr=response.message
                  //  alert("outputStr  "+outputStr)
                    var str=outputStr.split(":")
                    var departmentName=str[0]
                    var designationName=str[1]
                    var repEmployeeId=str[2]
                    var repCardNo=str[3]

                    // document.getElementById('departmentLbl').innerHTML= "Department:"
                    document.getElementById('departmentFld').innerHTML= departmentName
                   // document.getElementById('designationLbl').innerHTML= "Designation:"
                    document.getElementById('designationFld').innerHTML= designationName
                    document.getElementById('repEmployeeId').value= repEmployeeId
                    document.getElementById('repCardNo').value= repCardNo
                },
                error:function (err) {
                    alert("failure");
                }
            });
        }
    }
    function getEmployeeDetailByCardNo(val) {
        // alert("val "+val)
        var autoData = val;

        if(autoData!=''){
            $.ajax({
                type:'POST',
                url:'${request.contextPath}/hrEmployee/getEmployeeDetailByCardNo',
                dataType:"JSON",
                data:'&autoData=' + autoData,
                success:function (response) {
                    var outputStr=response.message
                  //  alert("outputStr  "+outputStr)
                    var str=outputStr.split(":")
                    var departmentName=str[0]
                    var designationName=str[1]
                    var repEmployeeId=str[2]
                    var employeeName=str[3]

                    // document.getElementById('departmentLbl').innerHTML= "Department:"
                    document.getElementById('departmentFld').innerHTML= departmentName
                   // document.getElementById('designationLbl').innerHTML= "Designation:"
                    document.getElementById('designationFld').innerHTML= designationName
                    document.getElementById('repEmployeeId').value= repEmployeeId
                    document.getElementById('repEmployeeName').value= employeeName
                },
                error:function (err) {
                    alert("failure");
                }
            });
        }
    }
</script>


<SCRIPT type="text/javascript">
    /* code to run on page load Start*/
    function addLoadEvent(func) {
        var oldonload = window.onload;
        if (typeof window.onload != 'function') {
            window.onload = func;
        } else {
            window.onload = function() {
                if (oldonload) {
                    oldonload();
                }
                func();
            }
        }
    }
    addLoadEvent(function() {
        /* more code to run on page load */

        checkValue('officeInTime');
        checkValue('officeOutTime');

       // showHide('paymentTypeIdHrLookup','bankAcNo_lbl:bankAcNo_fld:bankId_lbl:bankId_fld:branchId_lbl:branchId_fld');
        showHide('paymentTypeIdHrLookup','bankAcNo_lbl:bankAcNo_fld:bankId_lbl:bankId_fld');




    });
    /* code to run on page load  End*/

    function checkValue(fldId) {
        // alert('val '+val);
       var val=document.getElementById(fldId).value;
        if(fldId=='officeInTime'){
            if(val==null || val==''){
                document.getElementById(fldId).value='8:30'
            }
        }
        if(fldId='officeOutTime'){
            if(val==null || val==''){
                document.getElementById(fldId).value='17:00'
            }
        }
    }

    function showHideTr(fld1Id,fld2Id,fld3Id) {    //showHideTr('employeeTypeIdHrLookup','contractExpiredDateLbl','contractExpiredDateFld');
        // alert('val '+val);
       var val=document.getElementById(fld1Id).value;
        if(val=='395'){
            document.getElementById(fld2Id).style.display='block';
            document.getElementById(fld3Id).style.display='block';
        }
        else{
            document.getElementById(fld2Id).style.display='none';
            document.getElementById(fld3Id).style.display='none';
        }
    }

</SCRIPT>


%{------------------------ office information --------------------------------------------}%
<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
<h2>Employee's Information</h2>

<table class="promint_block">
    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">
<div class="col-xs-4">
    <div class="form-group">
        <label for="cardNo"><g:message code="hrEmployee.cardNo.label" default="Employee's ID" /></label>
    <g:if test="${hrEmployeeInstance?.cardNo}">
    <g:textField id="cardNo" name="cardNo" required="" maxlength="25" value="${hrEmployeeInstance?.cardNo}"
                 style="text-align: center;font-weight: bold;" class="form-control"/>
    </g:if>
    <g:else>
    <g:textField id="cardNo" name="cardNo" required="" maxlength="25" value="" style="text-align: center;font-weight: bold;" class="form-control"/>
    </g:else>
    </div>
</div>


<div class="col-xs-4">
    <div class="form-group">
        <label for="employeeName"><g:message code="hrEmployee.employeeName.label" default="Employee's Name" /></label>
        <g:textField id="employeeName" name="employeeName" required="" value="${hrEmployeeInstance?.employeeName}"
                     class="form-control" style="font-weight: bold;"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="joiningDate"><g:message code="hrEmployee.joiningDate.label" default="Date of Joining" /></label>
        <g:textField id="joiningDate" name="joiningDate" required=""
                     value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.joiningDate != null?hrEmployeeInstance?.joiningDate:new Date())}"
                     style="text-align: center;" class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="personalFileNo"><g:message code="hrEmployee.personalFileNo.label" default="Personal File No" /></label>
        <g:textField id="personalFileNo" name="personalFileNo" value="${fieldValue(bean: hrEmployeeInstance, field: 'personalFileNo')}"
                     style="text-align: center;" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="probationaryPeriod"><g:message code="hrEmployee.probationaryPeriod.label" default="Probationary Period(Months)" /></label>
        <g:textField id="probationaryPeriod" name="probationaryPeriod"  value="${hrEmployeeInstance?.probationaryPeriod != null?hrEmployeeInstance?.probationaryPeriod:0}" style="text-align: center;"
                     onchange="getMonths();" onkeyup="getMonths();" required="" onKeyPress="return numbersOnly(this, event)" class="form-control-half"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="noticePeriod"><g:message code="hrEmployee.noticePeriod.label" default="Notice Period(Months)" /></label>
        <g:textField id="noticePeriod" name="noticePeriod"  value="${hrEmployeeInstance?.noticePeriod != null?hrEmployeeInstance.noticePeriod:0}" required=""
                     style="text-align: center;" onKeyPress="return numbersOnly(this, event)" class="form-control-half"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="confirmationDate2"><g:message code="hrEmployee.confirmationDate2.label" default="Confirmation Date" /></label>
        <g:textField id="confirmationDate2" name="confirmationDate2" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.confirmationDate != null?hrEmployeeInstance?.confirmationDate:null)}"
                     style="text-align: center;" readonly="readonly"  required="" onKeyPress="return numberAndSlashOnly(event)" onblur="getMonths();" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="joiningDesignationIdHrDesignation"><g:message code="hrEmployee.joiningDesignationIdHrDesignation.label" default="Joining Designation" /></label>
        <g:textField id="joiningDesignationIdHrDesignation" name="joiningDesignationIdHrDesignation"
                     value="${hrEmployeeInstance?.joiningDesignationIdHrDesignation}" onclick="getDesignationName(this.id)" required="" class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="designationIdHrDesignation"><g:message code="hrEmployee.designationIdHrDesignation.label" default="Current Designation" /></label>
        <g:textField id="designationIdHrDesignation" name="designationIdHrDesignation"
                     value="${hrEmployeeInstance?.designationIdHrDesignation}" onclick="getDesignationName(this.id)" required="" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="departmentIdHrDepartment"><g:message code="hrEmployee.departmentIdHrDepartment.label" default="Department" /></label>
        <g:textField id="departmentIdHrDepartment" name="departmentIdHrDepartment"
                     value="${hrEmployeeInstance?.departmentIdHrDepartment}" onclick="getDepartmentName(this.id)" required="" class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="serviceEndDate"><g:message code="hrEmployee.serviceEndDate.label" default="Separation Date" /></label>
        <g:textField id="serviceEndDate" name="serviceEndDate" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.serviceEndDate)}"
                     style="text-align: center;" onkeyup="getEmpServiceLength();" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="tin"><g:message code="hrEmployee.tin.label" default="TIN Number" /></label>
        <g:textField id="tin" name="tin" value="${hrEmployeeInstance?.tin}" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="tinCircle"><g:message code="hrEmployee.tinCircle.label" default="TAX Circle" /></label>
        <g:textField id="tinCircle" name="tinCircle" value="${hrEmployeeInstance?.tinCircle}"  class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="regularationDate"><g:message code="hrEmployee.regularationDate.label" default="Date of Resignation" /></label>
        <g:textField id="regularationDate" name="regularationDate"
                     value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.regularationDate != null?hrEmployeeInstance?.regularationDate:null)}"
                     style="text-align: center;width: 120px;" class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="employeeTypeIdHrLookup"><g:message code="hrEmployee.employeeTypeIdHrLookup.label" default="Type of Employment" /></label>
        <g:select id="employeeTypeIdHrLookup"  name="employeeTypeIdHrLookup.id" onchange="showHideTr('employeeTypeIdHrLookup','contractExpiredDateLbl','contractExpiredDateFld');
        check_InputField('employeeTypeIdHrLookup','contractExpiredDate','Please provide data for Contract Expires/ed on.');" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('EMPLOYEE TYPE'))}" optionKey="id"
                  value="${hrEmployeeInstance?.employeeTypeIdHrLookup?.id}" required=""  noSelection="['':'-Select One-']"  class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="currentGrade"><g:message code="hrEmployee.currentGrade.label" default="Current Grade" /></label>
        <g:if test="${hrEmployeeInstance?.hrEmployeePayStructure?.payScaleId == null}">
            <g:textField id="currentGrade" name="currentGrade" value="" readonly="readonly" class="form-control"/>
        </g:if>
        <g:else>
            <g:textField id="currentGrade" name="currentGrade" value="${HrPayscale.findById(hrEmployeeInstance?.hrEmployeePayStructure?.payScaleId)}"
                         readonly="readonly" class="form-control"/>
        </g:else>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="contractExpiredDate"><g:message code="hrEmployee.contractExpiredDate.label" default="Contract Expires/ed on" /></label>
        <g:textField id="contractExpiredDate" name="contractExpiredDate" onblur="check_InputField('employeeTypeIdHrLookup','contractExpiredDate','Please provide data for Contract Expires/ed on.');"
                     onkeyup="check_InputField('employeeTypeIdHrLookup','contractExpiredDate','Please provide data for Contract Expires/ed on.');"
                     onabort="check_InputField('employeeTypeIdHrLookup','contractExpiredDate','Please provide data for Contract Expires/ed on.');"
                     value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.contractExpiredDate != null?hrEmployeeInstance?.contractExpiredDate:null)}"
                     style="text-align: center;width: 120px;" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="resignationType"><g:message code="hrEmployee.resignationType.label" default="Resignation Type" /></label>
        <g:select id="resignationType" name="resignationType" from="${['Resigned','Terminated','Suspended','Dismissed','Death']}"
                  keys="['Resigned','Terminated','Suspended','Dismissed','Death']"
                  value="${hrEmployeeInstance?.resignationType}" noSelection="['':'-Select One-']" class="form-control" />
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="accountingInfoIdHrLookup"><g:message code="hrEmployee.accountingInfoIdHrLookup.label" default="Accounting Information" /></label>
        <select id="accountingInfoIdHrLookup" name="accountingInfoIdHrLookup.id" required="" class="form-control">
            <option value="" > -- Select -- </option>
            <g:each in="${accountingInfoIdList}" var="accountingInfo">
                <g:if test="${hrEmployeeInstance?.accountingInfoIdHrLookup?.id==accountingInfo.LOOKUP_ID}">
                    <option value="${accountingInfo.LOOKUP_ID}" selected="selected">${accountingInfo.LOOKUP_VALUE}</option>
                </g:if>
                <g:else>
                    <option value="${accountingInfo.LOOKUP_ID}">${accountingInfo.LOOKUP_VALUE}</option>
                </g:else>
            </g:each>
        </select>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="serviceLengthYYMMDD"><g:message code="hrEmployee.tinCircle.label" default="Service Length" /></label>    <br>
        <g:textField id="serviceLengthYY" name="serviceLengthYY" value="${serviceLengthYY?:0}" style="text-align: center;background-color: #e9e9e9;width: 16px; width: 20%;height: 34px;" readonly="readonly"  /> <span style="font-weight: normal;font-size: 12px;"> YY</span>
        <g:textField id="serviceLengthMM" name="serviceLengthMM" value="${serviceLengthMM?:0}" style="text-align: center;background-color: #e9e9e9;width: 16px; width: 20%;height: 34px;" readonly="readonly"  /><span style="font-weight: normal;font-size: 12px;"> MM</span>
        <g:textField id="serviceLengthDD" name="serviceLengthDD" value="${serviceLengthDD?:0}" style="text-align: center;background-color: #e9e9e9;width: 16px; width: 20%;height: 34px;" readonly="readonly"  /><span style="font-weight: normal;font-size: 12px;"> DD</span>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="employeeCategoryIdHrLookup"><g:message code="hrEmployee.employeeCategoryIdHrLookup.label" default="Employee Category" /></label>
        <select id="employeeCategoryIdHrLookup" name="employeeCategoryIdHrLookup.id" required="" class="form-control">
            <option value=""> -- Select -- </option>
            <g:each in="${employeeCategoryIdList}" var="employeeCategoryIdInfo">
                <g:if test="${hrEmployeeInstance?.employeeCategoryIdHrLookup?.id==employeeCategoryIdInfo.LOOKUP_ID}">
                    <option value="${employeeCategoryIdInfo.LOOKUP_ID}" selected="selected">${employeeCategoryIdInfo.LOOKUP_VALUE}</option>
                </g:if>
                <g:else>
                    <option value="${employeeCategoryIdInfo.LOOKUP_ID}">${employeeCategoryIdInfo.LOOKUP_VALUE}</option>
                </g:else>
            </g:each>
        </select>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="lastIncrementDate"><g:message code="hrEmployee.lastIncrementDate.label" default="Last Inc./Promo. Date" /></label>
        <g:textField id="lastIncrementDate" name="lastIncrementDate"
                     value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.lastIncrementDate != null?hrEmployeeInstance?.lastIncrementDate:null)}"
                     style="text-align: center;" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="nextIncrementDate"><g:message code="hrEmployee.nextIncrementDate.label" default="Next Inc./Promo. Date" /></label>
        <g:textField id="nextIncrementDate" name="nextIncrementDate"
                     value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.nextIncrementDate != null?hrEmployeeInstance?.nextIncrementDate:null)}"
                     style="text-align: center;" class="form-control"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="presentStatusIdHrLookup"><g:message code="hrEmployee.presentStatusIdHrLookup.label" default="Present Status" /></label>
        <g:select id="presentStatusIdHrLookup" name="presentStatusIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('EMPLOYEE STATUS'))}" optionKey="id"  required=""
                  value="${hrEmployeeInstance?.presentStatusIdHrLookup?.id}"  noSelection="['':'-Select One-']" class="form-control" />
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="paymentTypeIdHrLookup"><g:message code="hrEmployee.paymentTypeIdHrLookup.label" default="Payment Type" /></label>
        <g:select id="paymentTypeIdHrLookup" name="paymentTypeIdHrLookup.id" onchange="showHide(this.id,'bankAcNo_lbl:bankAcNo_fld:bankId_lbl:bankId_fld');" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('PAYMENT TYPE'))}" optionKey="id" required=""
                  value="${hrEmployeeInstance?.paymentTypeIdHrLookup?.id}"  noSelection="['':'-Select One-']" class="form-control"/>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label id="bankAcNo_lbl"><g:message code="hrEmployee.bankAcNo.label" default="A/C Number" /></label>
        <span id="bankAcNo_fld"><g:textField id="bankAcNo" name="bankAcNo" value="${hrEmployeeInstance?.bankAcNo}" required="" class="form-control"/></span>
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label id="bankId_lbl"><g:message code="hrEmployee.bankId.label" default="Bank Name" /></label>
       %{-- <label for="paymentTypeIdHrLookup"></label>--}%
        <span id="bankId_fld">
            <g:select id="bankId" name="bankId" from="${AfmBankInfo.list()}" optionKey="id" required="" optionValue="bankName"
                  value="${hrEmployeeInstance?.bankId}" noSelection="['':'-Select One-']" onchange="getBranchName();" class="form-control"/>
        </span>
    </div>
</div>

%{--<div class="col-xs-4">
    <div class="form-group">
        <label for="school">
            <g:message code="hrDepartment.school.label" default="School Name" />
            <span class="required-school">*</span>
        </label>
        <g:select class="form-control" id="school" name="school.id" from="${HrSchool.list()}" optionKey="id" optionValue="schoolName" noSelection="${['': 'Select One']}" required="" value="${hrDepartmentInstance?.school?.id}"/>
    </div>
</div>--}%
        </td>
    </tr>
</table>
</div>


<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <h2>Office Time</h2>

    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="officeInTime"><g:message code="hrEmployee.officeInTime.label" default="Office in Time" /></label>
                        <g:textField id="officeInTime" name="officeInTime" onblur="checkValue(this.id)"
                                     value="${hrEmployeeInstance?.officeInTime}" class="form-control"/>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="officeOutTime"><g:message code="hrEmployee.officeOutTime.label" default="Office out Time" /></label>
                        <g:textField name="officeOutTime" id="officeOutTime" onblur="checkValue(this.id)" maxlength="50"
                                     value="${hrEmployeeInstance?.officeOutTime}" class="form-control"/>
                    </div>
                </div>


                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="repEmployeeName"><g:message code="hrEmployee.repEmployeeName.label" default="Reporting Officer's Name" /></label>
                        <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                            <g:textField id="repEmployeeName" name="repEmployeeName" style="font-weight: bold;" onkeyup="getEmployeeName(this.id);getEmployeeDetail(this.value)"
                                         onblur="getEmployeeDetail(this.value)" value="${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)}" class="form-control"/>
                        </g:if>
                        <g:else>
                            <g:textField id="repEmployeeName" name="repEmployeeName" style="font-weight: bold;" onkeyup="getEmployeeName(this.id);getEmployeeDetail(this.value)"
                                         onblur="getEmployeeDetail(this.value)" value="" class="form-control"/>
                        </g:else>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="repCardNo"><g:message code="hrEmployee.repCardNo.label" default="Reporting Officer's ID" /></label>
                        <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                            <g:textField id="repCardNo" name="repCardNo" style="font-weight: bold;" onkeyup="getEmployeeCardNo(this.id);getEmployeeDetailByCardNo(this.value)"
                                         onblur="getEmployeeDetailByCardNo(this.value)" value="${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)?.cardNo}" class="form-control"/>
                        </g:if>
                        <g:else>
                            <g:textField id="repCardNo" name="repCardNo" style="font-weight: bold;" onkeyup="getEmployeeCardNo(this.id);getEmployeeDetailByCardNo(this.value)"
                                         onblur="getEmployeeDetailByCardNo(this.value)" value="" class="form-control"/>
                        </g:else>
                    </div>
                </div>


                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="departmentName"><g:message code="hrEmployee.repEmployeeName.label" default="Department" /></label>
                        <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                            <g:textField id="departmentName" name="departmentName"  style="font-weight: bold;" readonly="readonly"
                                         value="${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)?.departmentIdHrDepartment?.departmentName}" class="form-control"/>
                        </g:if>
                        <g:else>
                            <g:textField id="departmentName" name="departmentName"  style="font-weight: bold;" readonly="readonly"
                                         value="" class="form-control"/>
                        </g:else>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="designationName"><g:message code="hrEmployee.repEmployeeName.label" default="Designation" /></label>
                        <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                            <g:textField id="designationName" name="designationName"  style="font-weight: bold;"  readonly="readonly"
                                         value="${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)?.designationIdHrDesignation?.designationName}" class="form-control"/>

                        </g:if>
                        <g:else>
                            <g:textField id="designationName" name="designationName"  style="font-weight: bold;"  readonly="readonly"
                                         value="" class="form-control"/>
                        </g:else>
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="otAllow"><g:message code="hrEmployee.otAllow.label" default="Overtime Allowance" /></label>
                        <br>
                        <g:if test="${params.action=='create'}">
                            <g:radioGroup name="otAllow" id="otAllow"
                                          labels="['Yes','No']"
                                          values="[1,0]" value="0">
                                ${it.radio}${it.label}
                            </g:radioGroup>
                        </g:if>
                        <g:else>
                            <g:radioGroup  name="otAllow" id="otAllow"
                                           labels="['Yes','No']"
                                           values="[1,0]" value="${hrEmployeeInstance?.otAllow}">
                                ${it.radio}${it.label}&nbsp;
                            </g:radioGroup>
                        </g:else>
                    </div>
                </div>

            </td>
        </tr>
    </table>
</div>


<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
<h2>Personal Information</h2>
<table class="promint_block">
    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="fatherName"><g:message code="hrEmployee.fatherName.label" default="Father's Name" /></label>
                    <g:textField id="fatherName" name="fatherName" value="${hrEmployeeInstance?.fatherName}" class="form-control" />
                </div>
            </div>

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="motherName"><g:message code="hrEmployee.motherName.label" default="Mother's Name" /></label>
                    <g:textField id="motherName" name="motherName" value="${hrEmployeeInstance?.motherName}"  class="form-control" />
                </div>
            </div>

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="spouseName"><g:message code="hrEmployee.spouseName.label" default="Spouse Name" /></label>
                    <g:textField id="spouseName" name="spouseName" value="${hrEmployeeInstance?.spouseName}"  class="form-control" />
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="nationalityIdHrLookup"><g:message code="hrEmployee.nationalityIdHrLookup.label" default="Nationality" /></label>
                    <g:select id="nationalityIdHrLookup" name="nationalityIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('NATIONALITY'))}"
                              optionKey="id"  value="${hrEmployeeInstance?.nationalityIdHrLookup?.id}"  noSelection="['null':'-Select One-']" class="form-control"/>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="genderIdHrLookup"><g:message code="hrEmployee.genderIdHrLookup.label" default="Sex" /></label>
                    <g:select id="genderIdHrLookup" name="genderIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('GENDER'))}"
                              optionKey="id"  value="${hrEmployeeInstance?.genderIdHrLookup?.id}"  noSelection="['null':'-Select One-']" class="form-control"/>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="dateOfBirth"><g:message code="hrEmployee.dateOfBirth.label" default="Date of Birth" /></label>
                    <g:textField id="dateOfBirth" name="dateOfBirth"  value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.dateOfBirth != null?hrEmployeeInstance?.dateOfBirth:null)}"
                                 style="text-align: center;"  class="form-control" />
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="birthPlace"><g:message code="hrEmployee.birthPlace.label" default="Birth Place" /></label>
                    <g:textField id="birthPlace" name="birthPlace" value="${hrEmployeeInstance?.birthPlace}"
                                   class="form-control" />
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="identificationMarks"><g:message code="hrEmployee.identificationMarks.label" default="Identification Marks" /></label>
                    <g:textField id="identificationMarks" name="identificationMarks" value="${hrEmployeeInstance?.identificationMarks}"
                                   class="form-control" />
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="religionNameIdHrLookup"><g:message code="hrEmployee.religionNameIdHrLookup.label" default="Religion" /></label>
                    <g:select id="religionNameIdHrLookup" name="religionNameIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('RELIGION'))}"
                              optionKey="id" required="" value="${hrEmployeeInstance?.religionNameIdHrLookup?.id}"  noSelection="['null':'-Select One-']" class="form-control"/>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="bloodGroupIdHrLookup"><g:message code="hrEmployee.bloodGroupIdHrLookup.label" default="Blood Group" /></label>
                    <g:select id="bloodGroupIdHrLookup" name="bloodGroupIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('BLOOD GROUP'))}"
                              optionKey="id" required="" value="${hrEmployeeInstance?.bloodGroupIdHrLookup?.id}"  noSelection="['null':'-Select One-']" class="form-control"/>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="nationalId"><g:message code="hrEmployee.nationalId.label" default="National ID" /></label>
                    <g:textField id="nationalId" name="nationalId" maxlength="50" value="${hrEmployeeInstance?.nationalId}"  class="form-control" />
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="passportNo"><g:message code="hrEmployee.passportNo.label" default="Passport No" /></label>
                    <g:textField id="passportNo" name="passportNo" maxlength="50" value="${hrEmployeeInstance?.passportNo}"  class="form-control" />
                </div>
            </div>

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="drivingLicienceNo"><g:message code="hrEmployee.drivingLicienceNo.label" default="Driving License No" /></label>
                    <g:textField id="drivingLicienceNo" name="drivingLicienceNo" maxlength="50" value="${hrEmployeeInstance?.drivingLicienceNo}"
                                 class="form-control" style="font-weight: bold;"/>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="maritalStatusHrLookup"><g:message code="hrEmployee.maritalStatusHrLookup.label" default="Marital Status" /></label>
                    <g:select id="maritalStatusHrLookup" name="maritalStatusHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('MARITAL STATUS'))}" optionKey="id"
                              required="" value="${hrEmployeeInstance?.maritalStatusHrLookup?.id}"  noSelection="['null':'-Select One-']" class="form-control"/>
                </div>
            </div>

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="noOfChildren"><g:message code="hrEmployee.noOfChildren.label" default="No of Child" /></label>
                    <g:textField id="noOfChildren" name="noOfChildren"  value="${fieldValue(bean: hrEmployeeInstance, field: 'noOfChildren')}" style="text-align: center;" class="form-control"/>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="noOfChildren"><g:message code="hrEmployee.noOfChildren.label" default="Male Child" /></label>
                    <g:textField id="maleChildren" name="maleChildren"  value="${fieldValue(bean: hrEmployeeInstance, field: 'maleChildren')}" style="text-align: center;" class="form-control-half"/>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="femaleChildren"><g:message code="hrEmployee.femaleChildren.label" default="Female Child" /></label>
                    <g:textField id="femaleChildren" name="femaleChildren"  value="${fieldValue(bean: hrEmployeeInstance, field: 'femaleChildren')}" style="text-align: center;" class="form-control-half"/>
                </div>
            </div>





      </td>
    </tr>
</table>
</div>


<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <h2>Present Address</h2>
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="preRoadNo"><g:message code="hrEmployee.preRoadNo.label" default="Road No" /></label>
                        <g:textField id="preRoadNo" name="preRoadNo" value="${hrEmployeeInstance?.preRoadNo}" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="preHouseNo"><g:message code="hrEmployee.preHouseNo.label" default="House No" /></label>
                        <g:textField id="preHouseNo" name="preHouseNo" value="${hrEmployeeInstance?.preHouseNo}"  class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="preBlockNo"><g:message code="hrEmployee.preBlockNo.label" default="Block No" /></label>
                        <g:textField id="preBlockNo" name="preBlockNo" value="${hrEmployeeInstance?.preBlockNo}"  class="form-control" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="prePostCode"><g:message code="hrEmployee.prePostCode.label" default="Post Code" /></label>
                        <g:textField id="prePostCode" name="prePostCode" value="${hrEmployeeInstance?.prePostCode}" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="preCity"><g:message code="hrEmployee.preCity.label" default="City/Village" /></label>
                        <g:textField id="preCity" name="preCity" value="${hrEmployeeInstance?.preCity}"  class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="preThana"><g:message code="hrEmployee.preThana.label" default="Police Station" /></label>
                        <g:textField id="preThana" name="preThana" value="${hrEmployeeInstance?.preThana}"  class="form-control" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="preDistrict"><g:message code="hrEmployee.preDistrict.label" default="District" /></label>
                        <g:textField id="preDistrict" name="preDistrict" value="${hrEmployeeInstance?.preDistrict}"  class="form-control" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="checkAddress"><g:message code="hrEmployee.checkAddress.label" default="Same Address?" /></label>
                        <g:checkBox id="checkAddress" name="checkAddress" onchange="chk_address_box();"/>
                    </div>
                </div>


            </td>
        </tr>
    </table>
</div>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <h2>Present Address</h2>
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="perRoadNo"><g:message code="hrEmployee.perRoadNo.label" default="Road No" /></label>
                        <g:textField id="perRoadNo" name="perRoadNo" value="${hrEmployeeInstance?.perRoadNo}" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="perHouseNo"><g:message code="hrEmployee.perHouseNo.label" default="House No" /></label>
                        <g:textField id="perHouseNo" name="perHouseNo" value="${hrEmployeeInstance?.perHouseNo}"  class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="perBlockNo"><g:message code="hrEmployee.perBlockNo.label" default="Block No" /></label>
                        <g:textField id="perBlockNo" name="perBlockNo" value="${hrEmployeeInstance?.perBlockNo}"  class="form-control" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="perPostCode"><g:message code="hrEmployee.perPostCode.label" default="Post Code" /></label>
                        <g:textField id="perPostCode" name="perPostCode" value="${hrEmployeeInstance?.perPostCode}" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="perCity"><g:message code="hrEmployee.perCity.label" default="City/Village" /></label>
                        <g:textField id="perCity" name="perCity" value="${hrEmployeeInstance?.perCity}"  class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="perThana"><g:message code="hrEmployee.perThana.label" default="Police Station" /></label>
                        <g:textField id="perThana" name="perThana" value="${hrEmployeeInstance?.perThana}"  class="form-control" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="perDistrict"><g:message code="hrEmployee.perDistrict.label" default="District" /></label>
                        <g:textField id="perDistrict" name="perDistrict" value="${hrEmployeeInstance?.perDistrict}"  class="form-control" />
                    </div>
                </div>



            </td>
        </tr>
    </table>
 </div>

<div style="width: 100%; height: 100%; background: #fff; padding: 1%;border: 1px solid #ccc;">
    <h2>Contact Number</h2>
    <table class="promint_block">
        <tr class="captionSpaceFirst">
            <td class="captionSpaceFirst">

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="mobileNo"><g:message code="hrEmployee.mobileNo.label" default="Mobile" /></label>
                        <g:textField id="mobileNo" name="mobileNo" value="${hrEmployeeInstance?.mobileNo}" class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="tntNo"><g:message code="hrEmployee.tntNo.label" default="Residence Phone" /></label>
                        <g:textField id="tntNo" name="tntNo" value="${hrEmployeeInstance?.tntNo}"  class="form-control" />
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="faxNo"><g:message code="hrEmployee.faxNo.label" default="Fax" /></label>
                        <g:textField id="faxNo" name="faxNo" value="${hrEmployeeInstance?.faxNo}"  class="form-control" />
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <label for="emailId"><g:message code="hrEmployee.emailId.label" default="E-mail" /></label>
                        <g:textField id="emailId"  name="emailId" value="${hrEmployeeInstance?.emailId}" class="form-control" />
                    </div>
                </div>

            </td>
        </tr>
    </table>
</div>
<g:hiddenField id="confirmationDate" name="confirmationDate" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.confirmationDate != null?hrEmployeeInstance?.confirmationDate:null)}" style="text-align: center;" readonly="readonly"/>

<g:hiddenField id="totalLeaveWithoutPayDays" name="totalLeaveWithoutPayDays" value="${totalLeaveWithoutPayDays}" style="text-align: center;"/>

<g:hiddenField id="totalServiceYear" name="totalServiceYear" value="${totalServiceYear}" style="text-align: center;"/>
<g:hiddenField id="totalServiceMonth" name="totalServiceMonth" value="${totalServiceMonth}" style="text-align: center;"/>
<g:hiddenField id="totalServiceDay" name="totalServiceDay" value="${totalServiceDay}" style="text-align: center;"/>

