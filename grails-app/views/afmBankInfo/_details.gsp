<%@ page import="accounts.AfmBankInfo;accounts.AfmBankBranch" %>

<%--
  Created by IntelliJ IDEA.
  User: Maruf
  Date: 1/15/13
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>

<script type="text/javascript">
    var childCount = ${afmBankInfoInstance?.afmBankBranch?.size()} + 0;
    //For date field (Showing Calendar) Start
    $('.dtl-dt').live('focus', function () {
        $(".dtl-dt").datepicker({ dateFormat: 'dd/mm/yy'});
    });
    //For date field (Showing Calendar) End

    $('.delButton').live('click', function() {
    //find the parent div
        var prnt = $(this).parents(".detail-div");
    //find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value', 'true');
    //hide the div
        prnt.hide();
    });


    //End Code for getting total value of drAmount and crAmount
    function addChild() {
    //debugger;
        var clone = $("#afmBankBranch_clone").clone();
        var htmlId = 'afmBankBranch[' + childCount +  '].';
        var fldId =  childCount ;
        var slNo=  childCount+1
        clone.find("input[id$=id]")
                .attr('id', htmlId + 'id')
                .attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]")
                .attr('id', htmlId + 'deleted')
                .attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]")
                .attr('id', htmlId + 'new')
                .attr('name', htmlId + 'new')
                .attr('value', 'true');
        clone.find("input[id$=branchName]").attr('id', fldId + 'branchName').attr('name', htmlId + 'branchName');
        clone.find("input[id$=address]").attr('id', fldId + 'address').attr('name', htmlId + 'address');
        clone.find("input[id$=accountNo]").attr('id', fldId + 'accountNo').attr('name', htmlId + 'accountNo');
        clone.find("input[id$=accountType]").attr('id', fldId + 'accountType').attr('name', htmlId + 'accountType');
        clone.find("input[id$=accountHeadName]").attr('id', fldId + 'accountHeadName').attr('name', htmlId + 'accountHeadName');
        clone.find("input[id$=accountCode]").attr('id', fldId + 'accountCode').attr('name', htmlId + 'accountCode');
        clone.attr('id', 'detail' + childCount);
        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }


    function autoAccountCode(fldId) {
        //  var fld=fldId
        // alert("fldId :"+fldId+'  '+fld)
        $('#'+fldId).autocomplete({
            source:'<g:createLink controller='afmChartOfAccounts'  action='autoAccountCode' />'
        });

    }

    function autoAccountHeadName(fldId) {
        //  var fld=fldId
        // alert("fldId :"+fldId+'  '+fld)
        $('#'+fldId).autocomplete({
            source:'<g:createLink controller='afmChartOfAccounts'  action='autoAccountHeadName' />'
        });

    }
</script>

<script type="text/javascript">
    var rowIndex;
    function rowNo(obj){
        rowIndex = obj.rowIndex;
    }

    function getAccountCode(obj){
        var accCodeVal = obj.value;
        var i = rowIndex-2;
        //  alert(i);
        if(!accCodeVal.length) {
            document.getElementById( i +'accountsHeadName').value = '';
        }
        else if(accCodeVal != null){
            $.ajax({

                type:'POST',
                url: '${request.contextPath}/afmChartOfAccounts/getAccHeadName',
                dataType:"JSON",
                data: '&accountCode=' + accCodeVal,
                success:function(response) {
                    var json = response;
                    if(json.message==null){

                    }else{
                        var data = json.message.split(":") ;
                        // document.getElementById('afmVoucherDetail['+ i +'].accountsHeadName').value = response["accountHeadName"] ;
                        document.getElementById(i +'accountsHeadName').value = data[1] ;
                    }


                },
                error:function(err) {

                }
            }) ;
        }
    }

    function getAccCodeByAccHeadName(obj){
        var accHeadNameVal = obj.value;
        var i = rowIndex-2;
         //alert("accHeadNameVal :"+accHeadNameVal);
        if(!accHeadNameVal.length) {
            document.getElementById( i +'accountCode').value = '';
        }
        else if(accHeadNameVal != null){

            $.ajax({

                type:'POST',
                url: '${request.contextPath}/afmChartOfAccounts/getAccCodeByAccHeadName',
                dataType:"JSON",
                data: '&accountHeadName=' + accHeadNameVal,
                success:function(response) {
                    var json = response;
                    if(json.message==null){

                    }else{
                        var data = json.message.split(":") ;
                        // document.getElementById('afmVoucherDetail['+ i +'].accountsHeadName').value = response["accountHeadName"] ;
                        document.getElementById(i +'accountCode').value = data[1] ;
                    }


                },
                error:function(err) {

                }
            }) ;
        }
    }

</script>


<div align="center">
<table id="detailList" style="border: 1px; width: 70%" >
    <tr style="background-color: #0188D1; font-family: arial;font-size: 12px; font-weight: bold; color: white; height: 25px;">
        <td style="padding-left: 5px;">Branch Name</td>
        <td>Address</td>
        <td>Account No</td>
        <td>Account Type</td>
        <td>Account Head Name</td>
        <td>Account Code</td>
        <td></td>
    </tr>
    <g:render template='detail' model="['afmBankBranch':null,'i':'_clone','hidden':true]"/>
    <g:each var="afmBankBranch" in="${afmBankBranchList}" status="i">
        <g:render template='detail' model="['afmBankBranch':afmBankBranch,'i':i]"/>
    </g:each>
</table>

</div>
<div style="margin-left: 48px;">
    <input align="right" type="button" value="Add Detail" onclick="addChild();" onmouseover="this.style.color = '#E6443C';this.style.cursor='pointer';" onmouseout="this.style.color = '#024697';this.style.cursor='pointer'"/>
</div>