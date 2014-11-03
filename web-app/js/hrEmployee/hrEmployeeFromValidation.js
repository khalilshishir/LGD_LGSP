/**
 * Created by Kazi Mohammad Marufur Rashid.
 * User: kmmrashid
 * Mobile :+8801914567891
 * Email :maruf.rashid.du@gmail.com
 * Date: 4/23/13
 * Time: 12:08 PM
 * To change this template use File | Settings | File Templates.
 */

function verifyForm(){
    var contractExpiredDate = check_InputField('employeeTypeIdHrLookup','contractExpiredDate','Please provide data for Contract Expires/ed on.');

    /*if(contractExpiredDate == false  ){
        alert("false : Page will not submit...");
        return false;
    }*/
    if(contractExpiredDate == false  ){
       // alert("false : Page will not submit...");
        return false;
    }
    else{
      //  alert("true : Page will submit...");
        return true;
    }
}



function check_InputField(div1_id,div2_id,msg_str){

    var div1Val = document.getElementById(div1_id).value;
    var val = document.getElementById(div2_id).value.toString().trim();
   // alert(div1Val+" - "+val);
    if(div1Val=='395'){
        if(val == 'null' || val ==''){
            document.getElementById('msgDIv1Id').innerHTML = msg_str;
            document.getElementById('msgDIv2Id').innerHTML = msg_str;
            return false;
        }

        else if(val != 'null' ){

            if(div2_id=='contractExpiredDate'){
                document.getElementById('msgDIv1Id').innerHTML = " ";
                document.getElementById('msgDIv2Id').innerHTML = " ";
                return true;
            }
        }
    }else{
        document.getElementById('msgDIv1Id').innerHTML = " ";
        document.getElementById('msgDIv2Id').innerHTML = " ";
        return true;
    }

}

function setFldValue(){      //'employeeTypeIdHrLookup','contractExpiredDate'

    document.getElementById('contractExpiredDate').value="FawValue";
    document.getElementById('msgDIv1Id').innerHTML = " ";
    document.getElementById('msgDIv2Id').innerHTML = " ";
    return true;
}
