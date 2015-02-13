<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0040)add_login.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title><!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#cont1{
	position:absolute;
	}
</style>
<style type="text/css" media="print">
    .first{
        display:none;
    }
	.cont1{
        display:block;
	}
	#cont1{
        position:relative;
	}
	#inp_castomer_name{
        border:0px;
	}
	#notes{
        border:0px;
	}
	#button_approv{
        display:none;
	}
	#button_cancel{
        display:none;
	}
	#scale_span{
        display:none;
	}
</style>

<link rel="stylesheet" type="text/css" media="all" href="./styles/combobox.css">
<script language="javascript" type="text/javascript" src="./scripts/jquery.js"></script>
<script language="javascript" type="text/javascript" src="./scripts/jquery.combobox.js"></script>

<script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
<script src="./scripts/def_js.js" type="text/javascript"></script>
<script src="./scripts/drag_functions.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('#location_select').combobox({
            showOnMouseOver: false,
            hideOnMouseOut: false,
            autoComplete: true,
            maxVisibleOptions: 1000000,
            buttonText: '&nbsp;',
            callbackShowOptions: function(arr) {},
            callbackSelectOption: function(val) {}
        });

        $('#combobox_container_location_select .combobox_input').val('');
    });


</script>

</head>
<body cz-shortcut-listen="true">
<form name="btagform" action=""></form>
<div class="page-wrap">
<table class="first" summary="" width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top">
<td class="center">
<table class="top" summary="" width="760" cellpadding="0" cellspacing="0" border="0">
  <tbody>
 
  <tr valign="top">
  <td class="content">
   <div class="system">Management System</div>
      <div class="page_title">
      Add Cashiers
      </div>
      <br>
      <span class="tabs"><div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Define&nbsp;New Login&nbsp;</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div></span>
      
        <div class="box_tabs" style="position:relative; height: 550px !important; width:900px;" id="output">
            <div style="display:none; position:absolute; z-index:10; top:65px; left:220px;" id="loader_gif">
                <img src="./images/ajax-loader-transparent.gif" alt="">
            </div>
            <div style="position:absolute; width: 95%;">
                <script src="./scripts/cookie_check.js" type="text/javascript"></script>
                <script type="text/javascript">
                    // <!--
                    var reg = new RegExp(/^\d{6,14}$/);

                    function ValidateEmail(theinput) {

                        s = theinput.value;
                        if (s.search) {
                            return (s.search(new RegExp("^([-!#$%&'*+./0-9=?A-Z^_`a-z{|}~ ])+@([-!#$%&'*+/0-9=?A-Z^_`a-z{|}~ ]+\.)+[a-zA-Z]{2,4}$","gi"))>=0);
                        }
                        
                        if (s.indexOf) {
                            at_character = s.indexOf('@');
                            if (at_character <= 0 || at_character + 4 >s.length) {
                                return false;
                            }
                        }

                        if (s.length < 6) {
                            return false;
                        }
                        else {
                            return true;
                        }
                    }

                    function ValidateForm (theform) {
                        var reg_names = new RegExp(/^[a-zA-Z][a-zA-Z0-9-]*$/);
                        var reg_password = new RegExp(/^([A-z0-9]){6,10}$/);
                        theform.PhoneNumber.value = "";

                        var input = $('#combobox_container_location_select .combobox_hidden');
                        var input1 = $('#combobox_container_location_select .combobox_input');

                        var loc_string = input1.val();

                        if(theform.first_name.value=='')
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                            set_focus(theform.first_name);
                            return false;
                        }
                        else unset_focus(theform.first_name);

                        if (!reg_names.test(replace_spaces(theform.first_name)))
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                            set_focus(theform.first_name);
                            return false;
                        }
                        else unset_focus(theform.first_name);

                        if(theform.last_name.value=='')
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                            set_focus(theform.last_name);
                            return false;
                        }
                        else unset_focus(theform.last_name);

                        if (!reg_names.test(replace_spaces(theform.last_name)))
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                            set_focus(theform.last_name);
                            return false;
                        }
                        else unset_focus(theform.last_name);

                        if (typeof(loc_string)!='undefined' && loc_string == '') {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                            set_focus(input1.get(0));
                            return false;
                        }
                        else if (loc_string) {
                            unset_focus(input1.get(0));
                        }

                        //debugger;

                        if(theform.type[0])
                        {
                            if(theform.type.value == '')
                            {
                                document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                                set_focus(theform.type);
                                return false;
                            }
                            else unset_focus(theform.type);
                        }
                        if(theform.email.value!='')
                        {
                            if(!ValidateEmail(theform.email))
                            {
                                document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';
                                set_focus(theform.email);
                                return false;
                            }
                            else unset_focus(theform.email);
                        }

                        if(theform.mobile_number.value!='')
                        {
                            if(theform.phone_ext.value=='')
                            {
                                document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                                set_focus(theform.phone_ext);
                                return false;
                            }
                            else unset_focus(theform.phone_ext);

                            if (!reg.test(replace_spaces(theform.mobile_number)))
                            {
                                document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
                                set_focus(theform.mobile_number);
                                return false;
                            }
                            else unset_focus(theform.mobile_number);

                            if( theform.mobile_number.value.indexOf("0") == 0 )
                                theform.mobile_number.value = theform.mobile_number.value.substring(1,13);

                            theform.PhoneNumber.value = theform.phone_ext.value + theform.mobile_number.value;
                        }

                        if (theform.phone_ext){
                            /////////////////////saving country (phone_ext) in cookie///////////////////////////////
                            check_cookie();
                            if((ifcoockie_enabled) && GetCookie('country')!=1){
                                SetCookie('country',theform.phone_ext.value,'10');
                            }
                        }

                        /*if(theform.password.value=='')
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                            set_focus(theform.password);
                            return false;
                        }
                        else unset_focus(theform.password);

                        if(!reg_password.test(theform.password.value))
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The password supplied does not match the minimum complexity requirements. Error # 1021</div>';
                            set_focus(theform.password);
                            return false;
                        }
                        else unset_focus(theform.password);

                        if(theform.confirmPassword.value=='')
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                            set_focus(theform.confirm_password);
                            return false;
                        }
                        else unset_focus(theform.confirm_password);

                        if(theform.confirm_password.value!=theform.password.value)
                        {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The Passwords you type do not match. Error # 1022</div>';
                            set_focus(theform.confirm_password);
                            return false;
                        }
                        else unset_focus(theform.confirm_password);
                        */

                        if (theform.password.value != '') {
                            if (!(/^[0-9A-z]*$/.test(theform.password.value))) {
                                document.getElementById("error").innerHTML = '<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                                set_focus(theform.password);
                                return false;
                            }
                            else if (6 > theform.password.value.length || theform.password.value.length > 10) {
                                document.getElementById("error").innerHTML = '<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The password supplied does not match the minimum complexity requirements. Error # 1021</div>';
                                set_focus(theform.password);
                                return false;
                            }
                            else if (theform.password.value != theform.confirmPassword.value) {
                                document.getElementById("error").innerHTML = '<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The Passwords you type do not match. Error # 1022</div>';
                                set_focus(theform.confirmPassword);
                                return false;
                            }
                            else {
                                unset_focus(theform.password);
                                unset_focus(theform.confirmPassword);
                            }
                        }
                        else {
                            unset_focus(theform.password);
                            unset_focus(theform.confirmPassword);
                        }

                        var reset_arr=new Array('phone_ext','mobile_number','first_name','last_name','email','password','confirm_password','type');
                        reset_focus_gif(reset_arr);
                        document.getElementById('error').innerHTML='';
                        theform.notify_email.value=theform.email.value;
                        theform.notify_sms.value=theform.PhoneNumber.value;
                        document.getElementById('block_1').style.display='none';
                        document.getElementById('notification_block').style.display='block';
                        //set_action();
                        //return false;
                    }

                    function set_action()
                    {
                    //alert('hh');
                        var session='';
                        if(!document.cookie)
                            session='PHPSESSID=cdfdf714b3b1360612f2f831ce713804';
                        disable_submit_button();
                        //document.getElementById('output').innerHTML='<br />Your login details for the  system are as follows:<br /><br />Login: RadaAgent23<br /><br />Password: 2142<br /><br /><input type="button" value="Finish" onclick="location.href=\'logins_list.php\';" />';
                        var location_string = '';
                        var location_id = '0';
                        var input = $('#combobox_container_location_select .combobox_input');
                        var input1 = $('#combobox_container_location_select .combobox_hidden');
                        var loc_string = input.val();
                        var loc_id = input1.val();

                        if (loc_id == '') {
                            document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                            set_focus(input.get(0));
                            return false;
                        }
                        else if (loc_id && loc_string && (isNaN(loc_id) || loc_string == loc_id)) {
                            location_string = loc_id;
                        }
                        else if (loc_string && loc_id) {
                            location_id = loc_id;
                        }

                        //debugger;

                        sndReqAddLogin(document.agent_form.PhoneNumber.value,
                        document.agent_form.first_name.value,
                        document.agent_form.last_name.value,
                        location_string,
                        location_id,
                        document.agent_form.email.value,
                        document.agent_form.password.value,
                        document.agent_form.notify_email.value,
                        document.agent_form.notify_sms.value,
                        document.agent_form.notify_print.value,
                        document.agent_form.type.value,
                        '',
                        session);
                    }

                    //Toggle password fields
                    function togglePasswordFields(elm, inverse) {
                        var condition;
                        if (elm.checked) {
                            condition = (inverse) ? false : true;
                        }
                        else {
                            condition = (inverse) ? true : false;
                        }


                        if (condition === true) {
                            document.getElementById('passwordTR').style.display = 'table-row';
                            document.getElementById('confirmPasswordTR').style.display = 'table-row';
                        }
                        else {
                            document.getElementById('passwordTR').style.display = 'none';
                            document.getElementById('confirmPasswordTR').style.display = 'none';
                            document.getElementById('password').value = '';
                            document.getElementById('confirmPassword').value = '';
                        }
                    }

                    //-->
                    </script><span id="error"></span>
       <form class="form-horizontal" action="" method="post" name="agent_form" id="agent_form" onsubmit="return Notification_ValidateForm(this);">
       <input name="PhoneNumber" value="" type="hidden">
       
        <div class="form-group">
    <label for="first_name" class="col-sm-2 control-label">First Name*</label>
    <div class="col-sm-10">
     	<input type="text" class="field" value="" name="first_name" id="first_name"> <img src="./images/cmt_yes.gif" id="first_name_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="first_name_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
       <div class="form-group">
    <label for="last_name" class="col-sm-2 control-label">Last Name*</label>
    <div class="col-sm-10">
     	<input type="text" class="field" value="" name="last_name" id="last_name"> <img src="./images/cmt_yes.gif" id="last_name_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="last_name_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
        
    <div class="form-group">
    <label for="new_password" class="col-sm-2 control-label">Type*</label>
    <div class="col-sm-10">
     	<select id="type" name="type" class="field">
                    <option value="6">Cashier</option><option value="11">Limited Cashier</option>
                                </select>
                                &nbsp;
                                <img src="./images/cmt_h1_small.gif" height="13" width="13" border="0" title="Limited cashier is allowed to perform deposit and withdrawal transactions only" style="cursor:pointer;"> <img src="./images/cmt_yes.gif" id="type_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="type_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
    
       <div class="form-group">
    <label for="email" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
     	<input type="text" class="field" value="" name="email" id="email"> <img src="./images/cmt_yes.gif" id="email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="email_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
    
       <div class="form-group">
    <label for="phone_ext" class="col-sm-2 control-label">Country</label>
    <div class="col-sm-10">
     	<select name="phone_ext" id="phone_ext" class="field"><option value="">Select Your Country</option><option value="93">Afghanistan</option><option value="355">Albania</option><option value="213">Algeria</option><option value="684">American Samoa</option><option value="376">Andorra</option><option value="244">Angola</option><option value="1264">Anguilla</option><option value="672">Antarctica</option><option value="1268">Antigua</option><option value="54">Argentina</option><option value="374">Armenia</option><option value="297">Aruba</option><option value="247">Ascension</option><option value="61">Australia</option><option value="672">Australian External Territories</option><option value="43">Austria</option><option value="994">Azerbaijan</option><option value="1242">Bahamas</option><option value="973">Bahrain</option><option value="880">Bangladesh</option><option value="1246">Barbados</option><option value="1268">Barbuda</option><option value="375">Belarus</option><option value="32">Belgium</option><option value="501">Belize</option><option value="229">Benin</option><option value="1441">Bermuda</option><option value="975">Bhutan</option><option value="591">Bolivia</option><option value="387">Bosnia &amp; Herzegovina</option><option value="267">Botswana</option><option value="55">Brazil</option><option value="1284">British Virgin Islands</option><option value="673">Brunei Darussalam</option><option value="359">Bulgaria</option><option value="226">Burkina Faso</option><option value="257">Burundi</option><option value="855">Cambodia</option><option value="237">Cameroon</option><option value="1">Canada</option><option value="238">Cape Verde Islands</option><option value="1345">Cayman Islands</option><option value="236">Central African Republic</option><option value="235">Chad</option><option value="64">Chatham Island (New Zealand)</option><option value="56">Chile</option><option value="86">China (PRC)</option><option value="618">Christmas Island</option><option value="61">Cocos-Keeling Islands</option><option value="57">Colombia</option><option value="269">Comoros</option><option value="242">Congo</option><option value="243">Congo, Dem.Republic</option><option value="682">Cook Islands</option><option value="506">Costa Rica</option><option value="385">Croatia</option><option value="53">Cuba</option><option value="5399">Cuba (Guantanamo Bay)</option><option value="599">Curacao</option><option value="357">Cyprus</option><option value="420">Czech Republic</option><option value="45">Denmark</option><option value="246">Diego Garcia</option><option value="253">Djibouti</option><option value="1767">Dominica</option><option value="1809">Dominican Republic</option><option value="670">East Timor</option><option value="56">Easter Island</option><option value="593">Ecuador</option><option value="20">Egypt</option><option value="503">El Salvador</option><option value="240">Equatorial Guinea</option><option value="291">Eritrea</option><option value="372">Estonia</option><option value="251">Ethiopia</option><option value="500">Falkland Islands (Malvinas)</option><option value="298">Faroe Islands</option><option value="679">Fiji Islands</option><option value="358">Finland</option><option value="33">France</option><option value="596">French Antilles</option><option value="594">French Guiana</option><option value="689">French Polynesia</option><option value="241">Gabonese Republic</option><option value="220">Gambia</option><option value="995">Georgia</option><option value="49">Germany</option><option value="233">Ghana</option><option value="350">Gibraltar</option><option value="8818">Globalstar</option><option value="30">Greece</option><option value="299">Greenland</option><option value="1473">Grenada</option><option value="590">Guadeloupe</option><option value="1671">Guam</option><option value="5399">Guantanamo Bay</option><option value="502">Guatemala</option><option value="245">Guinea-Bissau</option><option value="224">Guinea</option><option value="592">Guyana</option><option value="509">Haiti</option><option value="504">Honduras</option><option value="852">Hong Kong</option><option value="36">Hungary</option><option value="354">Iceland</option><option value="91">India</option><option value="62">Indonesia</option><option value="98">Iran</option><option value="964">Iraq</option><option value="353">Ireland</option><option value="39">Italy</option><option value="225">Ivory Coast</option><option value="1876">Jamaica</option><option value="81">Japan</option><option value="962">Jordan</option><option value="7">Kazakhstan</option><option value="254">Kenya</option><option value="686">Kiribati</option><option value="850">Korea (North)</option><option value="82">Korea (South)</option><option value="965">Kuwait</option><option value="996">Kyrgyz Republic</option><option value="856">Laos</option><option value="371">Latvia</option><option value="961">Lebanon</option><option value="266">Lesotho</option><option value="231">Liberia</option><option value="218">Libya</option><option value="423">Liechtenstein</option><option value="370">Lithuania</option><option value="352">Luxembourg</option><option value="853">Macao</option><option value="389">Macedonia</option><option value="261">Madagascar</option><option value="265">Malawi</option><option value="60">Malaysia</option><option value="960">Maldives</option><option value="223">Mali Republic</option><option value="356">Malta</option><option value="692">Marshall Islands</option><option value="596">Martinique</option><option value="222">Mauritania</option><option value="230">Mauritius</option><option value="269">Mayotte Island</option><option value="52">Mexico</option><option value="972">Micronesia</option><option value="1808">Midway Island</option><option value="373">Moldova</option><option value="377">Monaco</option><option value="976">Mongolia</option><option value="1664">Montserrat</option><option value="212">Morocco</option><option value="258">Mozambique</option><option value="95">Myanmar</option><option value="264">Namibia</option><option value="674">Nauru</option><option value="977">Nepal</option><option value="31">Netherlands</option><option value="599">Netherlands Antilles</option><option value="1869">Nevis</option><option value="687">New Caledonia</option><option value="64">New Zealand</option><option value="505">Nicaragua</option><option value="227">Niger</option><option value="234">Nigeria</option><option value="683">Niue</option><option value="672">Norfolk Island</option><option value="1670">Northern Marianas Islands</option><option value="47">Norway</option><option value="968">Oman</option><option value="92">Pakistan</option><option value="680">Palau</option><option value="970">Palestinian Settlements</option><option value="507">Panama</option><option value="675">Papua New Guinea</option><option value="595">Paraguay</option><option value="51">Peru</option><option value="63">Philippines</option><option value="48">Poland</option><option value="351">Portugal</option><option value="1787">Puerto Rico</option><option value="974">Qatar</option><option value="40">Romania</option><option value="7">Russia</option><option value="250">Rwandese Republic</option><option value="290">St. Helena</option><option value="1869">St. Kitts/Nevis</option><option value="1758">St. Lucia</option><option value="508">St. Pierre &amp; Miquelon</option><option value="1784">St. Vincent &amp; Grenadines</option><option value="378">San Marino</option><option value="966">Saudi Arabia</option><option value="221">Senegal</option><option value="381">Serbia and Montenegro</option><option value="248">Seychelles Republic</option><option value="232">Sierra Leone</option><option value="65">Singapore</option><option value="421">Slovak Republic</option><option value="386">Slovenia</option><option value="677">Solomon Islands</option><option value="252">Somali Democratic Republic</option><option value="27">South Africa</option><option value="34">Spain</option><option value="94">Sri Lanka</option><option value="249">Sudan</option><option value="597">Suriname</option><option value="268">Swaziland</option><option value="46">Sweden</option><option value="41">Switzerland</option><option value="963">Syria</option><option value="886">Taiwan</option><option value="992">Tajikistan</option><option value="255">Tanzania</option><option value="66">Thailand</option><option value="228">Togolese Republic</option><option value="690">Tokelau</option><option value="676">Tonga Islands</option><option value="1868">Trinidad &amp; Tobago</option><option value="216">Tunisia</option><option value="90">Turkey</option><option value="993">Turkmenistan</option><option value="1649">Turks and Caicos Islands</option><option value="688">Tuvalu</option><option value="256">Uganda</option><option value="380">Ukraine</option><option value="971">United Arab Emirates</option><option value="44">United Kingdom</option><option value="1340">US Virgin Islands</option><option value="598">Uruguay</option><option value="998">Uzbekistan</option><option value="678">Vanuatu</option><option value="379">Vatican City</option><option value="58">Venezuela</option><option value="84">Vietnam</option><option value="808">Wake Island</option><option value="681">Wallis and Futuna Islands</option><option value="685">Western Samoa</option><option value="967">Yemen</option><option value="260">Zambia</option><option value="255">Zanzibar</option><option value="263">Zimbabwe</option></select> <img src="./images/cmt_yes.gif" id="phone_ext_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="phone_ext_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
    
       <div class="form-group">
    <label for="mobile_number" class="col-sm-2 control-label">Mobile Number</label>
    <div class="col-sm-10">
     	<input type="text" class="field" value="" name="mobile_number" id="mobile_number"> <img src="./images/cmt_yes.gif" id="mobile_number_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="mobile_number_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number not including country code.</i></font>
    </div>
  </div>
  
    
  <div class="form-group">
    <label for="checkbox" class="col-sm-2 control-label">Auto-generated Password</label>
    <div class="col-sm-10">
     	<input type="checkbox" class="field" checked="checked" value="0" name="autoPassword" id="autoPassword" onclick="togglePasswordFields(this, true)">
    </div>
  </div>
  
  
  <table>
  <tbody>
  <tr id="passwordTR" style="display: table-row;">
  <td>
   <div class="form-group">
    <label for="password" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
     	<input type="text" class="field" value="" name="password" id="password"> <img src="./images/cmt_yes.gif" id="password_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="password_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  </td>
  </tr>
  
  <tr id="confirmPasswordTR" style="display: table-row;">
  <td>
   <div class="form-group">
    <label for="password" class="col-sm-2 control-label">Confirm Password</label>
    <div class="col-sm-10">
     	<input type="text" class="field" value="" name="confirmPassword" id="confirmPassword"> <img src="./images/cmt_yes.gif" id="confirmPassword_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="confirmPassword_gif_no" width="13" height="13" alt="" style="display:none;">
                <br>
                <font style="font-size: 11px;"><em><strong>Note:</strong> 6-10 alphanumeric characters. If empty, the password will be generated automaticaly</em></font>
    </div>
  </div>
  </td>
  </tr>
  
  </tbody>
  </table>
  
     <div class="form-group" style="padding-left: 80px;">
  <input type="button" class="button" value=" < Back " onclick="location.href='${pageContext.request.contextPath}/deletePlayers';">
 <input type="button" class="button" value="  Submit  " onclick="return ValidateForm(document.getElementById('agent_form'));">
  </div>
  
  <font style="font-size:11px;"><i>* Indicates mandatory field.</i></font> 
       
    
	<script type="text/javascript">
	// <!--
	var reg = new RegExp(/^\d{6,18}$/);
	function go_back()
	{
		if(document.getElementById("block_2"))
			document.getElementById("block_2").style.display='block';
		else if(document.getElementById("block_1"))
			document.getElementById("block_1").style.display='block';
		document.getElementById("notification_block").style.display='none';			
	}
	function ValidateEmail(theinput)
	{
		
		s=theinput.value
		if(s.search)
		{
			return (s.search(new RegExp("^([-!#$%&'*+./0-9=?A-Z^_`a-z{|}~ ])+@([-!#$%&'*+/0-9=?A-Z^_`a-z{|}~ ]+\.)+[a-zA-Z]{2,4}$","gi"))>=0)
		}
		if(s.indexOf)
		{
			at_character=s.indexOf('@')
			if(at_character<=0 || at_character+4>s.length)
				return false
		}
		if(s.length<6)
			return false
		else
			return true
	}
	
	function Notification_ValidateForm(theform)
	{
		if (document.getElementById('submit_button')) {
			if (document.getElementById('submit_button').disabled) {
				return false;
			}
		}
        var reset_arr=new Array('notify_sms','notify_email');
		reset_focus_gif(reset_arr);	
		
		if(theform.notify[0].checked==true)
   		{
   			if(theform.notify_email.value=='')
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter an E-mail address. Error # 1009</div>';
				set_focus(theform.notify_email);
				return false;
			}
			else unset_focus(theform.notify_email);
			
			if(!ValidateEmail(theform.notify_email))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';		
				set_focus(theform.notify_email); 
				return false;
			}
			else unset_focus(theform.notify_email);
   		}
   		if(theform.notify[1].checked==true)
   		{
   			if(theform.notify_sms.value=='')
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.notify_sms);
				return false;
			}
			else unset_focus(theform.notify_sms);
			
			if (!reg.test(replace_spaces(theform.notify_sms))) 
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.notify_sms);
			if(theform.notify[1].checked==true)
   		{
   			if(theform.notify_sms.value=='')
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.notify_sms);
				return false;
			}
			else unset_focus(theform.notify_sms);
			
			if (!reg.test(replace_spaces(theform.notify_sms))) 
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.notify_sms);
				return false;
			}
			else unset_focus(theform.notify_sms);
   		}	return false;
			}
			else unset_focus(theform.notify_sms);
   		}if(theform.notify[0].checked==false)
   			theform.notify_email.value='';
   		if(theform.notify[1].checked==false)
   			theform.notify_sms.value='';
   		if(theform.notify[2])
   		{
			if(theform.notify[2].checked==false)
   				theform.notify_print.value='false';
   			else theform.notify_print.value='true';
   		}
		reset_focus_gif(reset_arr);
		set_action();
		return false;
	}
	//-->
	</script>
	<input type="hidden" name="notify_print" id="notify_print" value="true">
	<table summary="" cellpadding="0" cellspacing="0" border="0" id="notification_block" style="display:none;">
		  <tbody><tr><td colspan="2">Send login details to:<br><br></td></tr>
          <tr>
            <td nowrap="nowrap"><input type="checkbox" value="notify_email" name="notify" id="notify" onclick="if(this.checked==true) document.agent_form.notify_email.disabled=false; else document.agent_form.notify_email.disabled=true;">E-mail address&nbsp;</td>
            <td><input type="text" class="field" value="" name="notify_email" id="notify_email" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_email_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          </tr>
          <tr><td colspan="2">&nbsp;</td></tr>
                <tr id="notify_sms_tr">
                    <td nowrap="nowrap"><input type="checkbox" value="notify_sms" name="notify" id="notify" onclick="if(this.checked==true) document.agent_form.notify_sms.disabled=false; else document.agent_form.notify_sms.disabled=true;">SMS to&nbsp;</td>
                    <td><input type="text" class="field" value="" name="notify_sms" id="notify_sms" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_sms_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_sms_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font></td>
                </tr>
         <tr><td colspan="2"><br><br></td></tr>
         <tr>
            <td></td>
            <td>&nbsp;<input type="button" class="button" name="back_button" id="back_button" value="  &lt; Back  " onclick="go_back();">&nbsp;<input type="submit" name="submit_button" id="submit_button" class="button" value="  Finish  "></td>
          </tr>
        </tbody></table>
     </form></div></div>
    </td>
  <td class="left" nowrap="nowrap" style="padding-left:15px;">
      <div class="welcome">
      
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'add_login\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/9/2015 13:54</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
	<input type="hidden" id="time_diff" value="9.0000">
	<form action="${pageContext.request.contextPath}/changePassword" style="margin:0px;" method="get"><input type="button" class="logout" value="Logout" onclick="location.href='logout.php'" style="cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="logout" style="width:120px;" value="Change Password"></form>	
	<script type="text/javascript">
			function RefreshTime(){
				var today = new Date();
				
				var hour = today.getHours() ;
				daylight = 0;
				var loc_tz = document.getElementById('time_diff').value;
				today.setMinutes(today.getMinutes() + Number(loc_tz)*60 + daylight*60 + today.getTimezoneOffset())
				
				if (hour < 10) { 
					hour = '0' + hour;
				}
				var minute = today.getMinutes();
				if (minute < 10) {
					minute = '0' + minute;
				}
				document.getElementById('gmt_time').innerHTML = today.toLocaleDateString() + ' ' + hour + ':' + minute;

				setTimeout('RefreshTime()', 1000);
			}
			 RefreshTime();
		</script>
	
      </div>
           <div class="menu"></div>
      <div class="menu">
      	<a onclick="if(document.getElementById('stations_submenu').style.display=='none') document.getElementById('stations_submenu').style.display='block'; else document.getElementById('stations_submenu').style.display='none';" href="#" class="leftmenu" >» Manage Stations</a>
      	<div id="stations_submenu" style="display:none;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/stationsList" class="leftsubmenu">» Manage Stations</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/deleteStations" class="leftsubmenu">» Delete Stations</a></div>
      	</div>
      </div>
      <div class="menu">
      	<a href="#" class="leftmenu" onclick="if(document.getElementById('players_submenu').style.display=='none') document.getElementById('players_submenu').style.display='block'; else document.getElementById('players_submenu').style.display='none';">» Manage Players Accounts</a>
      	<div id="players_submenu" style="display:none;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/playersList" class="leftsubmenu">» Manage Players</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/deletePlayers" class="leftsubmenu">» Delete Players</a></div>
      	</div>
      </div>
      <div class="menu"><a href="${pageContext.request.contextPath}/loginsList" class="leftmenu">» Manage Cashiers</a></div>
      <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('financial_reports').style.display=='none') document.getElementById('financial_reports').style.display='block'; else document.getElementById('financial_reports').style.display='none';">» Financial Reports</a>
      	<div id="financial_reports" style="display:block;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/commissionReport" class="leftsubmenu">» Commission Report</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/creditReport" class="leftsubmenu">» Credit Transfer</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/agentEarningReportByDay" class="leftsubmenu">» Casino Earnings Report</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/cashierReport" class="leftsubmenu">» Cashier Report</a></div>
      	</div>
      </div>
      <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('game_play_reports').style.display=='none') document.getElementById('game_play_reports').style.display='block'; else document.getElementById('game_play_reports').style.display='none';">» Game Play Reports</a>
      	<div id="game_play_reports" style="display:none;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/agentGameProfitabilityReport" class="leftsubmenu">» Profit by Game Type</a></div>
      	</div>
      </div>
      <div class="menu"><a href="${pageContext.request.contextPath}/manageSettings" class="leftmenu">» Manage My Settings</a></div>
      <div class="menu"><a href="${pageContext.request.contextPath}/contactUs" class="leftmenu">» Contact Us</a></div>
      <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('help_submenu').style.display=='none') document.getElementById('help_submenu').style.display='block'; else document.getElementById('help_submenu').style.display='none';">» Help</a>
      	<div id="help_submenu" style="display:none;">
			<div class="submenu"><a href="https://www.totalegame.net/help/en/WebHelp_AG/index.php" class="leftsubmenu" target="_blank">» Help</a></div>
			<div class="submenu"><a style="cursor:pointer;"  class="leftsubmenu">» Mobile game direct download<br>&nbsp;&nbsp;&nbsp;instructions</a></div>
		</div>
	  </div>
      <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
    </td>
  </tr>
</tbody></table>
<img src="./images/cmt_null.gif" width="760" height="1" alt=""><br>
<div ></div>

</td>
</tr>
</tbody></table></div><footer class="site-footer footer">
  Copyright 2015 APS Group Philippines Inc.
</footer>
<form action="https://www.totalegame.net/table2csv.php" name="export_form" method="post">
<input type="hidden" name="csv_content">
</form>
<script type="text/javascript">

function strip_HTML_tags(HTML)
{
	text = HTML;
	re = new RegExp("<.*?>","g"); 
	text = text.replace(re," ");
	re = new RegExp("\\\\s{2,}","g");
	text = text.replace(re," ");
	return text;
}

function export_csv(id1, id2, id3){
	var output="";
	var table = new Array();
	if (id1!='')
		table[1]=document.getElementById(id1);
	if (id2!='')
		table[2]=document.getElementById(id2);
	if (id3!='')
		table[3]=document.getElementById(id3);
	for (i=1;i<=table.length-1;i++){
//		alert(table[i]);
		if(table[i].tagName=="TABLE"){
			for(j=0;j<table[i].rows.length;j++){
				row="";
				for(k=0;k<table[i].rows[j].cells.length;k++){

//					if(!get_table(table[i].rows[j].cells[k])){
						cell_content=strip_HTML_tags(table[i].rows[j].cells[k].innerHTML);
						//cell_content=table[i].rows[j].cells[k].innerHTML;
						row=row+'"'+cell_content.replace(/&nbsp;/g," ")+'"'+",";
//					}
				}
//				if(row.search('/\w/')!=-1)	
					output=output+row+"\n";
			}
			output=output+"\n\n\n";
		}
	}
	document.forms["export_form"].csv_content.value=output;
	document.forms["export_form"].submit();
}
</script>

<div id="combobox_overlay"></div></body></html>