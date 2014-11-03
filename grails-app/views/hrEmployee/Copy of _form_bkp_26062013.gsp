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
        //alert(document.getElementById('totalLeaveWithoutPayDays').value);
        getServiceLength();

    });

    function getMonths() {
        var joinDate = $('#joiningDate').val().split("/");
        var  dateObj = new Date(joinDate[2]+"/"+joinDate[1]+"/"+joinDate[0]);
        dateObj.setMonth(dateObj.getMonth() + parseInt($("#probationaryPeriod").val()));
        $("#confirmationDate").val($.datepicker.formatDate('dd/mm/yy',dateObj));
        $("#confirmationDate2").val($.datepicker.formatDate('dd/mm/yy',dateObj));
    }

    function getServiceLength() {
       //debugger;

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

        var joiningDate = $('#joiningDate').val().split("/");
        var serviceEndDate = $('#serviceEndDate').val().split("/");
        var joinDate=new Date(joiningDate[2],(joiningDate[1]-1),joiningDate[0]);
        var servEndDate=new Date(serviceEndDate[2],(serviceEndDate[1]-1),serviceEndDate[0]);

        var currentDate = new Date();
        currentDate.setHours(00);
        currentDate.setMinutes(00);
        currentDate.setSeconds(00);

        var oneDay=1000*60*60*24;

        if(servEndDate > currentDate && servEndDate != null) {
        var allMonths = servEndDate.getMonth() - joinDate.getMonth() + (12 * (servEndDate.getFullYear() - joinDate.getFullYear()));
        //alert('allMonths : '+allMonths);
        var v_yy =  Math.floor(allMonths/12);
        //alert('v_yy : '+v_yy);
        //var restOfYear = Math.abs(v_yy - lwpYear);
        //alert('restOfYear : '+restOfYear);

        var v_mm = allMonths%12;
        //alert('v_mm : '+v_mm);
        //var restOfMonth = Math.abs(v_mm - lwpMonth);
        //alert('restOfMonth : '+restOfMonth);
        var v_dd = v_yy*12+v_mm;
        //var joinMonth = new Date(joinDate);
        var noOfDays = Math.abs(Math.ceil((new Date(servEndDate).getTime() - new Date(joinDate.setMonth(joinDate.getMonth()+v_dd)).getTime())/oneDay)+1);
        //alert('noOfDays : '+noOfDays);
        //var restOfDays = Math.abs(noOfDays - lwpDays);
        //alert('restOfDays : '+restOfDays);

            // Start Two Year,Month,Days Subtraction
            if (lwpDays > noOfDays ) {
                noOfDays = 30 + noOfDays;
                var restOfDays = noOfDays - lwpDays ;
                lwpMonth = lwpDays + 1;
                if(lwpMonth  > v_mm) {
                    v_mm = 12+ v_mm;
                    var restOfMonth = v_mm - lwpMonth;
                    var restOfYear = v_yy - (lwpYear + 1);
                }
                else {
                    var restOfMonth = v_mm - lwpMonth;
                    var restOfYear = v_yy - lwpYear;
                }
            }
            else {
                var restOfDays = noOfDays - lwpDays ;
                if(lwpMonth  > v_mm) {
                    v_mm = 12+ v_mm;
                    var restOfMonth = v_mm - lwpMonth;
                    var restOfYear = v_yy - (lwpYear + 1);
                }
                else {
                    var restOfMonth = v_mm - lwpMonth;
                    var restOfYear = v_yy - lwpYear;
                }

            }
            // End Two Year,Month,Days Subtraction


        var lengthOfService = restOfYear+" Yrs,"+restOfMonth+" Months,"+restOfDays+" Days";
        //$("#serviceLength").val(lengthOfService);
        $("#serviceLengthYY").val(restOfYear);
        $("#serviceLengthMM").val(restOfMonth);
        $("#serviceLengthDD").val(restOfDays);
        }
        else {
            var allMonths2 = currentDate.getMonth() - joinDate.getMonth() + (12 * (currentDate.getFullYear() - joinDate.getFullYear()));
            var v_yy2 =  Math.floor(allMonths2/12);
            //var restOfYear2 = Math.abs(v_yy2 - lwpYear);
            //alert('restOfYear2 : '+restOfYear2);
            var v_mm2 = allMonths2%12;
            //var restOfMonth2 = Math.abs(v_mm2 - lwpMonth);
            //alert('restOfMonth2 : '+restOfMonth2);
            var v_dd2 = v_yy2*12+v_mm2;
            //var joinMonth2 = new Date(joinDate);
            var noOfDays2 = Math.abs(Math.ceil((new Date(currentDate).getTime() - new Date(joinDate.setMonth(joinDate.getMonth()+v_dd2)).getTime())/oneDay)+1);
            //var restOfDays2 = Math.abs(noOfDays2 - lwpDays);
            //alert('restOfDays2 : '+restOfDays2);

            // Start Two Year,Month,Days Subtraction
            if (lwpDays > noOfDays2 ) {
                noOfDays2 = 30 + noOfDays2;
                var restOfDays2 = noOfDays2 - lwpDays ;
                lwpMonth = lwpDays + 1;
                if(lwpMonth  > v_mm2) {
                    v_mm2 = 12+ v_mm2;
                    var restOfMonth2 = v_mm2 - lwpMonth;
                    var restOfYear2 = v_yy2 - (lwpYear + 1);
                }
                else {
                    var restOfMonth2 = v_mm2 - lwpMonth;
                    var restOfYear2 = v_yy2 - lwpYear;
                }
            }
            else {
                var restOfDays2 = noOfDays2 - lwpDays ;
                if(lwpMonth  > v_mm2) {
                    v_mm2 = 12+ v_mm2;
                    var restOfMonth2 = v_mm2 - lwpMonth;
                    var restOfYear2 = v_yy2 - (lwpYear + 1);
                }
                else {
                    var restOfMonth2 = v_mm2 - lwpMonth;
                    var restOfYear2 = v_yy2 - lwpYear;
                }

            }
            // End Two Year,Month,Days Subtraction


            var lengthOfService2 = restOfYear2+" Yrs,"+restOfMonth2+" Months,"+restOfDays2+" Days";
            //$("#serviceLength").val(lengthOfService2);
            $("#serviceLengthYY").val(restOfYear2);
            $("#serviceLengthMM").val(restOfMonth2);
            $("#serviceLengthDD").val(restOfDays2);
        }
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
         var subStr=idStr.split(":")

        var sendObjValue=document.getElementById(sendObjId).value;

        for(var i=0;i<subStr.length;i++ ){

            if(sendObjId=="paymentTypeIdHrLookup"){

                if(sendObjValue=="1346") {

                    document.getElementById(subStr[i]).style.display='block';
                    document.getElementById('bankAcNo').required=true;
                    document.getElementById('bankId').required=true;
                    document.getElementById('branchId').required=true;
                }
                else {
                    document.getElementById(subStr[i]).style.display='none';
                    document.getElementById('bankAcNo').required=false;
                    document.getElementById('bankId').required=false;
                    document.getElementById('branchId').required=false;
                }
            }
            /*else{


            }*/
        }


    }



</script>

<script>
    function getEmployeeName(fldId) {
        $('#'+fldId).autocomplete({
            source:'<g:createLink controller='hrEmployee' action='autoEmployeeName'/>'
        });
    }
    function getEmployeeCardNo(fldId) {
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

        showHide('paymentTypeIdHrLookup','bankAcNo_lbl:bankAcNo_fld:bankId_lbl:bankId_fld:branchId_lbl:branchId_fld');




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

</SCRIPT>
%{------------------------ office information --------------------------------------------}%
%{--<div id="wrapper" style="border: 1px solid #ccc;">--}%
<div style="width: 990px; background: #fff; padding: 5px;border: 1px solid #ccc;">
<h2>Employee's Information</h2>
<table class="promint_block">

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Employee's ID:</td>
        <td class="employeeTd">
            <g:textField id="cardNo" name="cardNo" required="" maxlength="25" value="${hrEmployeeInstance?.cardNo}" style="text-align: center;font-weight: bold;" class="mid-size-input"/>
        </td>

        <td class="employeeTd">Employee's Name:</td>
        <td>
            <g:textField id="employeeName" name="employeeName" required="" value="${hrEmployeeInstance?.employeeName}" class="full-width-input" style="font-weight: bold;"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Date of Joining:</td>
        <td class="employeeTd">
            <g:textField id="joiningDate" name="joiningDate" required="" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.joiningDate != null?hrEmployeeInstance?.joiningDate:new Date())}" style="text-align: center;" onchange="getServiceLength();" class="mid-size-input"/>
        </td>

        <td class="employeeTd">Nature of Appointment:</td>
        <td>
            <g:select id="appointmentTypeIdHrLookup" name="appointmentTypeIdHrLookup.id" required="" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('APPOINTMENT TYPE'))}" optionKey="id"  value="${hrEmployeeInstance?.appointmentTypeIdHrLookup?.id}" class="many-to-one" noSelection="['':'-Select One-']"/>
        </td>
     </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Personal File No:</td>
        <td class="employeeTd">
            <g:textField id="personalFileNo" name="personalFileNo" value="${fieldValue(bean: hrEmployeeInstance, field: 'personalFileNo')}" style="text-align: center;" class="mid-size-input"/>
        </td>
        <td class="employeeTd">Probationary Period:</td>
        <td>
            <g:textField id="probationaryPeriod" name="probationaryPeriod"  value="${hrEmployeeInstance?.probationaryPeriod != null?hrEmployeeInstance?.probationaryPeriod:0}" style="text-align: center;" onchange="getMonths();" onkeyup="getMonths();" required="" onKeyPress="return numbersOnly(this, event)" class="tiny_sized_txt"/> <span style="font-weight: normal;">Months</span>
        </td>
      </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Notice Period(Months):</td>
        <td class="employeeTd">
            <g:textField id="noticePeriod" name="noticePeriod"  value="${hrEmployeeInstance?.noticePeriod != null?hrEmployeeInstance.noticePeriod:0}" required="" style="text-align: center;" onKeyPress="return numbersOnly(this, event)" class="tiny_sized_txt"/>
        </td>
        <td class="employeeTd">Confirmation Date:</td>
        <td>
            <g:textField id="confirmationDate2" name="confirmationDate2" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.confirmationDate != null?hrEmployeeInstance?.confirmationDate:null)}" style="text-align: center;"  required="" onKeyPress="return numberAndSlashOnly(event)" onblur="getMonths();" class="readonly-input"/>
        </td>

    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Joining Designation:</td>
        <td class="employeeTd">
            <g:select id="joiningDesignationIdHrDesignation" name="joiningDesignationIdHrDesignation.id" from="${hrms.HrDesignation.list()}" optionKey="id"  value="${hrEmployeeInstance?.joiningDesignationIdHrDesignation?.id}" class="many-to-one" required="" noSelection="['':'-Select One-']"/>
        </td>
        <td>Current Designation:</td>
        <td class="employeeTd">
            <g:select id="designationIdHrDesignation" name="designationIdHrDesignation.id" from="${hrms.HrDesignation.list()}" optionKey="id"  value="${hrEmployeeInstance?.designationIdHrDesignation?.id}" class="many-to-one" required=""  noSelection="['':'-Select One-']"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Department:</td>
        <td class="employeeTd">
            <g:select id="departmentIdHrDepartment" name="departmentIdHrDepartment.id" from="${hrms.HrDepartment.list()}" optionKey="id"  value="${hrEmployeeInstance?.departmentIdHrDepartment?.id}" class="many-to-one" required="" noSelection="['':'-Select One-']"/>
        </td>
        <td class="employeeTd">Separation Date:</td>
        <td>
            <g:textField id="serviceEndDate" name="serviceEndDate" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.serviceEndDate)}" style="text-align: center;" onchange="getServiceLength();" class="mid-size-input"/>
        </td>
       </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">TIN Number:</td>

        <td class="employeeTd">
            <g:textField id="tin" name="tin" value="${hrEmployeeInstance?.tin}" class="mid-size-input"/>
        </td>

        <td class="employeeTd">TAX Circle:</td>
        <td>
            <g:textField id="tinCircle" name="tinCircle" value="${hrEmployeeInstance?.tinCircle}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Date of Resignation:</td>
        <td class="employeeTd">
            %{--<g:textField id="paymentType" name="paymentType" value="${hrEmployeeInstance?.paymentType}"/>--}% %{--commented 13/02/2013--}%
            <g:textField id="regularationDate" name="regularationDate" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.regularationDate != null?hrEmployeeInstance?.regularationDate:null)}" style="text-align: center;width: 120px;"/>
            &nbsp;Resignation Type:
            <g:select id="resignationType" name="resignationType" from="${['Resigned','Terminated','Suspended','Dismissed','Death']}" keys="['Resigned','Terminated','Suspended','Dismissed','Death']" value="${hrEmployeeInstance?.resignationType}" noSelection="['':'-Select One-']"/>
        </td>
        <td class="employeeTd">Type of Employment:</td>
        <td>
            <g:select id="employeeTypeIdHrLookup" name="employeeTypeIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('EMPLOYEE TYPE'))}" optionKey="id"  value="${hrEmployeeInstance?.employeeTypeIdHrLookup?.id}" required="" class="many-to-one" noSelection="['':'-Select One-']"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Service Length:</td>
        <td class="employeeTd">
            %{--<g:textField id="serviceLength" name="serviceLength" value="${serviceLength?:0}" style="text-align: left;background-color: #dcdcdc;" readonly="readonly"/>--}%
            <g:textField id="serviceLengthYY" name="serviceLengthYY" value="${serviceLengthYY?:0}" style="text-align: center;background-color: #e9e9e9;width: 16px;" readonly="readonly"/><span style="font-weight: normal;font-size: 12px;"> YY</span>
            <g:textField id="serviceLengthMM" name="serviceLengthMM" value="${serviceLengthMM?:0}" style="text-align: center;background-color: #e9e9e9;width: 16px;" readonly="readonly"/><span style="font-weight: normal;font-size: 12px;"> MM</span>
            <g:textField id="serviceLengthDD" name="serviceLengthDD" value="${serviceLengthDD?:0}" style="text-align: center;background-color: #e9e9e9;width: 16px;" readonly="readonly"/><span style="font-weight: normal;font-size: 12px;"> DD</span>
        </td>
        <td>Payment Type:</td>
        <td class="employeeTd">
            <g:select id="paymentTypeIdHrLookup" name="paymentTypeIdHrLookup.id" onchange="showHide(this.id,'bankAcNo_lbl:bankAcNo_fld:bankId_lbl:bankId_fld:branchId_lbl:branchId_fld');" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('PAYMENT TYPE'))}" optionKey="id" required="" value="${hrEmployeeInstance?.paymentTypeIdHrLookup?.id}" class="many-to-one"  noSelection="['':'-Select One-']"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Present Status:</td>
        <td class="employeeTd">
            <g:select id="presentStatusIdHrLookup" name="presentStatusIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('EMPLOYEE STATUS'))}" optionKey="id"  required="" value="${hrEmployeeInstance?.presentStatusIdHrLookup?.id}" class="many-to-one" noSelection="['':'-Select One-']"/>
        </td>
        <td class="employeeTd" ><label id="bankAcNo_lbl">A/C Number:</label></td>
        <td >
            <span id="bankAcNo_fld"><g:textField id="bankAcNo" name="bankAcNo" value="${hrEmployeeInstance?.bankAcNo}" required="" class="mid-size-input"/></span>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Last Increment Date:</td>
        <td class="employeeTd">
            <g:textField id="lastIncrementDate" name="lastIncrementDate" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.lastIncrementDate != null?hrEmployeeInstance?.lastIncrementDate:null)}" style="text-align: center;" class="mid-size-input"/>
        </td>
        <td><label id="bankId_lbl">Bank Name:</label></td>
        <td class="employeeTd">
            %{--<g:textField id="bankName" name="bankName" value="${hrEmployeeInstance?.bankName}" class="full-width-input"/>--}%
            %{--<g:select id="bankId" name="bankId" from="${AfmBankInfo.list()}" optionKey="id" optionValue="bankName"  value="${hrEmployeeInstance?.bankId}" noSelection="['null':'-Select One-']"/>--}%
            %{--<g:if test="${hrEmployeeInstance?.bankId == null}">--}%
                <span id="bankId_fld"><g:select id="bankId" name="bankId" from="${AfmBankInfo.list()}" optionKey="id" required="" optionValue="bankName"  value="${hrEmployeeInstance?.bankId}" noSelection="['':'-Select One-']" onchange="getBranchName();"/></span>
            %{--</g:if>
            <g:else>
                <g:select id="bankId" name="bankId" from="${AfmBankInfo.findById(hrEmployeeInstance?.bankId)}" optionKey="id" optionValue="bankName"  value="${hrEmployeeInstance?.bankId}"/>
            </g:else>--}%
        </td>

    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Next Increment Date:</td>
        <td class="employeeTd">
            <g:textField id="nextIncrementDate" name="nextIncrementDate" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.nextIncrementDate != null?hrEmployeeInstance?.nextIncrementDate:null)}" style="text-align: center;" class="mid-size-input"/>
        </td>
        <td class="employeeTd">
            <label id="branchId_lbl">Branch Name:</label></td>
        <td>
            %{--<g:textField id="branchName" name="branchName" value="${hrEmployeeInstance?.branchName}" class="full-width-input"/>--}%

            <span id="branchId_fld">
            <g:if test="${hrEmployeeInstance?.branchId == null && hrEmployeeInstance?.bankId != null}">
            <g:select id="branchId" name="branchId" from="${AfmBankBranch.findAll("from AfmBankBranch where afmBankInfo.id=?", [Long.valueOf(hrEmployeeInstance?.bankId)])}" optionKey="id" optionValue="branchName"  required="" value="${hrEmployeeInstance?.branchId}" noSelection="['':'-Select One-']"/>
            </g:if>

            <g:if test="${hrEmployeeInstance?.branchId != null && hrEmployeeInstance?.bankId != null}">
                <g:select id="branchId" name="branchId" from="${AfmBankBranch.findAll("from AfmBankBranch where afmBankInfo.id=?", [Long.valueOf(hrEmployeeInstance?.bankId)])}" optionKey="id" optionValue="branchName"  required="" value="${hrEmployeeInstance?.branchId}" noSelection="['':'-Select One-']"/>
            </g:if>

            <g:if test="${hrEmployeeInstance?.branchId == null && hrEmployeeInstance?.bankId == null}">
                <g:select id="branchId" name="branchId" from="" optionKey="id" optionValue="branchName"  value="" required="" noSelection="['':'-Select One-']"/>
            </g:if>

           %{-- <g:else>
                <g:select id="branchId" name="branchId" from="${AfmBankBranch.findAll("from AfmBankBranch where afmBankInfo.id=?", [Long.valueOf(hrEmployeeInstance?.bankId)])}" optionKey="id" optionValue="branchName"  value="${hrEmployeeInstance?.branchId}" noSelection="['null':'-Select One-']"/>
            </g:else>--}%
            </span>
        </td>
    </tr>

    %{--<tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Salary Type:</td>
        <td class="employeeTd">
            <g:select id="salaryTypeIdHrLookup" name="salaryTypeIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('SALARY TYPE'))}" optionKey="id"  required="" value="${hrEmployeeInstance?.salaryTypeIdHrLookup?.id}" class="many-to-one" noSelection="['':'-Select One-']"/>
        </td>
        <td class="employeeTd"></td>
    </tr>--}%

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Current Grade:</td>
        <td class="employeeTd">
            %{--<g:if test="${params.action=='create'}">--}%
            <g:if test="${hrEmployeeInstance?.hrEmployeePayStructure?.payScaleId == null}">
            <g:textField id="currentGrade" name="currentGrade" value="" readonly="readonly" class="readonly-input"/>
            </g:if>
            <g:else>
                <g:textField id="currentGrade" name="currentGrade" value="${HrPayscale.findById(hrEmployeeInstance?.hrEmployeePayStructure?.payScaleId)}" readonly="readonly" class="readonly-input"/>
            </g:else>
        </td>
        <td class="employeeTd"></td>
    </tr>

</table>
</div>


<div style="width: 990px; background: #fff; padding: 5px;border: 1px solid #ccc;">
    <h2>Office Time</h2>
    <table class="promint_block">

        <tr class="captionSpaceFirst">
            <td style="width:45px;" class="captionSpaceFirst">Office in Time:</td>
            <td style="width:50px;"  class="employeeTd">
                <g:textField id="officeInTime" name="officeInTime" onblur="checkValue(this.id)" style="width:45px;" value="${hrEmployeeInstance?.officeInTime}" class="full-width-input"/>
            </td>
            <td style="width:65px;" >Office out Time:</td>
            <td  style="width:50px;" class="employeeTd">
                <g:textField name="officeOutTime" id="officeOutTime" onblur="checkValue(this.id)" maxlength="50" style="width:45px;" value="${hrEmployeeInstance?.officeOutTime}" class="mid-size-input"/>
            </td>
            <td style="width:110px;" >Overtime Allowance:</td>
            <td  style="width:132px;" class="employeeTd">
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
            </td>
        </tr>

        <tr class="captionSpaceFirst">
            <td colspan="2" style="width:45px;" class="captionSpaceFirst">Reporting Officer:</td>

            <td style="width:65px;" ><label id="repEmpIdLbl">Officer's Id:</label></td>
            <td  style="width:50px;" class="employeeTd">
                <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                    <g:textField id="repCardNo" name="repCardNo" style="width:150px;font-weight: bold;" onkeyup="getEmployeeCardNo(this.id);getEmployeeDetailByCardNo(this.value)" onblur="getEmployeeDetailByCardNo(this.value)" value="${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)?.cardNo}" class="full-width-input"/>
                </g:if>
                <g:else>
                    <g:textField id="repCardNo" name="repCardNo" style="width:150px;font-weight: bold;" onkeyup="getEmployeeCardNo(this.id);getEmployeeDetailByCardNo(this.value)" onblur="getEmployeeDetailByCardNo(this.value)" value="" class="full-width-input"/>
                </g:else>
            </td>
            <td style="width:65px;" >Officer's Name:</td>
            <td  style="width:132px;" class="employeeTd">
                %{-- <g:select id="repEmployeeId" name="repEmployeeId" from="${HrEmployee.list()}" optionKey="id" optionValue="employeeName"  value="${hrEmployeeInstance?.repEmployeeId}" noSelection="['':'-Select One-']" />--}%

                <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                    <g:textField id="repEmployeeName" name="repEmployeeName" style="width:205px;font-weight: bold;" onkeyup="getEmployeeName(this.id);getEmployeeDetail(this.value)" onblur="getEmployeeDetail(this.value)" value="${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)}" class="full-width-input"/>
                </g:if>
                <g:else>
                    <g:textField id="repEmployeeName" name="repEmployeeName" style="width:205px;font-weight: bold;" onkeyup="getEmployeeName(this.id);getEmployeeDetail(this.value)" onblur="getEmployeeDetail(this.value)" value="" class="full-width-input"/>
                </g:else>
            </td>
        </tr>
        <tr class="captionSpaceFirst">
            <td style="width:45px;" class="captionSpaceFirst"></td>
            <td style="width:50px;"  class="employeeTd">

            </td>
            <td style="width:65px;" ><label id="departmentLbl">Department:</label></td>
            <td  style="width:50px;" class="employeeTd">
                <span id="departmentFld">
                    <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                        ${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)?.departmentIdHrDepartment?.departmentName}
                    </g:if>
                    <g:else>

                    </g:else>
                </span>
            </td>
            <td style="width:65px;" ><label id="designationLbl">Designation:</label></td>
            <td  style="width:132px;" class="employeeTd">
                <span id="designationFld">
                    <g:if test="${hrEmployeeInstance?.repEmployeeId != null}">
                        ${HrEmployee.findById(hrEmployeeInstance?.repEmployeeId)?.designationIdHrDesignation?.designationName}
                    </g:if>
                    <g:else>

                    </g:else>
                </span>
                <g:hiddenField name="repEmployeeId" id="repEmployeeId" style="width:50px;" value="${hrEmployeeInstance?.repEmployeeId}" class="mid-size-input"/>
            </td>
        </tr>

    </table>

</div>



%{--<div id="wrapper" style="border: 1px solid #cccccc">--}%
<div style="width: 990px; background: #fff; padding: 5px;border: 1px solid #ccc;">
<h2>Personal Information</h2>
<table class="promint_block">

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Father's Name:</td>
        <td class="employeeTd">
            <g:textField id="fatherName" name="fatherName" value="${hrEmployeeInstance?.fatherName}" class="full-width-input"/>
        </td>
        <td>Passport No:</td>
        <td class="employeeTd">
            <g:textField name="passportNo" maxlength="50" value="${hrEmployeeInstance?.passportNo}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Mother's Name:</td>
        <td class="employeeTd">
            <g:textField id="motherName" name="motherName" value="${hrEmployeeInstance?.motherName}" class="full-width-input"/>
        </td>

        <td>Birth Place:</td>
        <td class="employeeTd">
            <g:textField id="birthPlace" name="birthPlace" value="${hrEmployeeInstance?.birthPlace}" class="mid-size-input"/>
        </td>
     </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Spouse Name:</td>
        <td class="employeeTd">
            <g:textField id="spouseName" name="spouseName" value="${hrEmployeeInstance?.spouseName}" class="full-width-input"/>
        </td>

        <td>Driving License No.:</td>
        <td class="employeeTd">
            <g:textField id="drivingLicienceNo" name="drivingLicienceNo" maxlength="50" value="${hrEmployeeInstance?.drivingLicienceNo}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Nationality:</td>
        <td class="employeeTd">
            <g:select id="nationalityIdHrLookup" name="nationalityIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('NATIONALITY'))}" optionKey="id"  value="${hrEmployeeInstance?.nationalityIdHrLookup?.id}"  noSelection="['null':'-Select One-']"/>
        </td>
        <td>Marital Status:</td>
        <td class="employeeTd">
            <g:select id="maritalStatusHrLookup" name="maritalStatusHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('MARITAL STATUS'))}" optionKey="id" required="" value="${hrEmployeeInstance?.maritalStatusHrLookup?.id}"  noSelection="['null':'-Select One-']"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Identification Marks:</td>
        <td class="employeeTd">
            <g:textField id="identificationMarks" name="identificationMarks" value="${hrEmployeeInstance?.identificationMarks}" class="mid-size-input"/>
        </td>
        <td>Date of Birth:</td>
        <td class="employeeTd">
            <g:textField id="dateOfBirth" name="dateOfBirth" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.dateOfBirth != null?hrEmployeeInstance?.dateOfBirth:null)}" style="text-align: center;" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Religion:</td>
        <td class="employeeTd">
            <g:select id="religionNameIdHrLookup" name="religionNameIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('RELIGION'))}" optionKey="id" required="" value="${hrEmployeeInstance?.religionNameIdHrLookup?.id}"  noSelection="['null':'-Select One-']"/>
        </td>
        <td>Blood Group:</td>
        <td class="employeeTd">
            <g:select id="bloodGroupIdHrLookup" name="bloodGroupIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('BLOOD GROUP'))}" optionKey="id" required="" value="${hrEmployeeInstance?.bloodGroupIdHrLookup?.id}"  noSelection="['null':'-Select One-']"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">National ID:</td>
        <td class="employeeTd">
            <g:textField id="nationalId" name="nationalId" maxlength="50" value="${hrEmployeeInstance?.nationalId}" class="mid-size-input"/>
        </td>
        <td>Sex:</td>
        <td class="employeeTd">
            <g:select id="genderIdHrLookup" name="genderIdHrLookup.id" from="${HrLookup.findAllByHrLookupTypeIdLookupType(HrLookupType.findByLookupType('GENDER'))}" optionKey="id"  value="${hrEmployeeInstance?.genderIdHrLookup?.id}"  noSelection="['null':'-Select One-']"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">No of Child:</td>
        <td class="employeeTd">
            <g:textField id="noOfChildren" name="noOfChildren"  value="${fieldValue(bean: hrEmployeeInstance, field: 'noOfChildren')}" style="text-align: center;" class="tiny_sized_txt"/>
        </td>

        <td>Male Child:</td>
        <td>
            <g:textField id="maleChildren" name="maleChildren"  value="${fieldValue(bean: hrEmployeeInstance, field: 'maleChildren')}" style="text-align: center;" class="tiny_sized_txt"/>
        &nbsp;Female Child:
            <g:textField id="femaleChildren" name="femaleChildren"  value="${fieldValue(bean: hrEmployeeInstance, field: 'femaleChildren')}" style="text-align: center;" class="tiny_sized_txt"/>
    </tr>


</table>
</div>

%{--<div id="wrapper" style="border: 1px solid #cccccc">--}%
<div style="width: 990px; background: #fff; padding: 5px;border: 1px solid #ccc;">
%{--<h2>Contact Information</h2>--}%
<h3>Present Address</h3>
<table class="promint_block">
    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Road No:</td>
        <td class="employeeTd">
            <g:textField id="preRoadNo" name="preRoadNo" value="${hrEmployeeInstance?.preRoadNo}" class="mid-size-input"/>
        </td>
        <td>House No:</td>
        <td class="employeeTd">
            <g:textField id="preHouseNo" name="preHouseNo" value="${hrEmployeeInstance?.preHouseNo}" class="mid-size-input"/>
        </td>
     </tr>
    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Block No:</td>
        <td class="employeeTd">
            <g:textField id="preBlockNo" name="preBlockNo" value="${hrEmployeeInstance?.preBlockNo}" class="mid-size-input"/>
        </td>
        <td>Post Code:</td>
        <td class="employeeTd">
            <g:textField id="prePostCode" name="prePostCode" value="${hrEmployeeInstance?.prePostCode}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">City/Village:</td>
        <td class="employeeTd">
            <g:textField id="preCity" name="preCity" value="${hrEmployeeInstance?.preCity}" class="mid-size-input"/>
        </td>
        <td>Police Station:</td>
        <td class="employeeTd">
            <g:textField id="preThana" name="preThana" value="${hrEmployeeInstance?.preThana}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">District:</td>
        <td class="employeeTd">
            <g:textField id="preDistrict" name="preDistrict" value="${hrEmployeeInstance?.preDistrict}" class="mid-size-input"/>
        </td>
        <td>Same Address?</td>
        <td>
            <g:checkBox id="checkAddress" name="checkAddress" onchange="chk_address_box();"/>
        </td>
    </tr>
</table>



<h3>Permanent Address</h3>
<table class="promint_block">

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Road No:</td>
        <td class="employeeTd">
            <g:textField id="perRoadNo" name="perRoadNo" value="${hrEmployeeInstance?.perRoadNo}" class="mid-size-input"/>
        </td>
        <td>House No:</td>
        <td class="employeeTd">
            <g:textField id="perHouseNo" name="perHouseNo" value="${hrEmployeeInstance?.perHouseNo}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Block No:</td>
        <td class="employeeTd">
            <g:textField id="perBlockNo" name="perBlockNo" value="${hrEmployeeInstance?.perBlockNo}" class="mid-size-input"/>
        </td>
        <td>Post Code:</td>
        <td class="employeeTd">
            <g:textField id="perPostCode" name="perPostCode" value="${hrEmployeeInstance?.perPostCode}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">City/Village:</td>
        <td class="employeeTd">
            <g:textField id="perCity" name="perCity" value="${hrEmployeeInstance?.perCity}" class="mid-size-input"/>
        </td>
        <td>Police Station:</td>
        <td class="employeeTd">
            <g:textField id="perThana" name="perThana" value="${hrEmployeeInstance?.perThana}" class="mid-size-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">District:</td>
        <td class="employeeTd">
            <g:textField id="perDistrict" name="perDistrict" value="${hrEmployeeInstance?.perDistrict}" class="mid-size-input"/>
        </td>
    </tr>

</table>

<h3>Contact Number</h3>
<table class="promint_block">

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Mobile:</td>
        <td class="employeeTd">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <g:textField id="mobileNo" name="mobileNo" value="${hrEmployeeInstance?.mobileNo}" class="full-width-input"/>
        </td>
        <td>Residence Phone:</td>
        <td class="employeeTd">
            <g:textField id="tntNo" name="tntNo" value="${hrEmployeeInstance?.tntNo}" class="full-width-input"/>
        </td>
    </tr>

    <tr class="captionSpaceFirst">
        <td class="captionSpaceFirst">Fax:</td>
        <td class="employeeTd">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <g:textField id="faxNo" name="faxNo" value="${hrEmployeeInstance?.faxNo}" class="full-width-input"/>
        </td>
        <td>E-mail:</td>
        <td class="employeeTd">
            <g:textField id="emailId"  name="emailId" value="${hrEmployeeInstance?.emailId}" class="full-width-input"/>
        </td>
    </tr>

</table>
</div>

<g:hiddenField id="confirmationDate" name="confirmationDate" value="${formatDate(format:'dd/MM/yyyy',date:hrEmployeeInstance?.confirmationDate != null?hrEmployeeInstance?.confirmationDate:null)}" style="text-align: center;" readonly="readonly"/>

<g:hiddenField id="totalLeaveWithoutPayDays" name="totalLeaveWithoutPayDays" value="${totalLeaveWithoutPayDays}" style="text-align: center;"/>













































































































































