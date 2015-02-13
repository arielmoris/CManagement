<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0047)register_account.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Client Management Tool</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">


<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
<style type="text/css" media="print">
				.first{
					display:none;
				}
				.cont1{
					display:block;
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
				</style>
</head>
<body cz-shortcut-listen="true">
<form name="btagform" action=""></form>
<!-- <script src="./images/post_form.js" type="text/javascript"></script>
<script src="./images/ajax_functions.js" type="text/javascript"></script>
<script src="./images/def_js.js" type="text/javascript"></script>
<script src="./images/drag_functions.js" type="text/javascript"></script>
 -->
<div id="container">
	<!-- window 1 -->
	<div id="wind1" class="wins">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start('wind1','cont1');">
			<tbody><tr>
				<td width="100%"></td>
				
				
				<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin()" title="close"></td>
			</tr>
		</tbody></table>
<span id="cont1" class="text">
<table width="100%">
		<tbody><tr>
      		<td id="print_content">
      		</td>
      	</tr>
</tbody></table>	
<table align="center" width="100%">
	<tbody><tr>
      					<td align="center">
      						<input type="button" class="button" value="Approve" onclick="window.print();closeWin();" id="button_approv">
      					</td>
      					<td>
      						<input type="button" class="button" value="Cancel" onclick="closeWin();" id="button_cancel">
      					</td>
      				</tr>
</tbody></table>
</span>		
	</div>
</div>
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
      Add Player
      </div>
      <br>
      <span class="tabs"><div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Register&nbsp;New Player&nbsp;</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div></span>
      <div class="box_tabs" id="output" style="position:relative; height: 480px !important; width:900px; overflow:auto;"><div style="display:none; position:absolute; z-index:10; top:150px; left:220px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;">
<script type="text/javascript" src="./scripts/date_validation.js"></script>
<script type="text/javascript" src="./scripts/cookie_check.js"></script>
<script type="text/javascript" src="./scripts/jquery.js"></script>
<script type="text/javascript">
// <!--
var session=''; 
if(!document.cookie)
	session='PHPSESSID=52c36376f540617efe8da2f299c833ca';


function ValidateEmail(theinput)
{	
	s=theinput.value
	if(s.search)
	{
		return (s.search(new RegExp("^([-!#$%&'*+./0-9=?A-Z^_`a-z{|}~ ])+@([-!#$%&'*+/0-9=?A-Z^_`a-z{|}~ ]+\\.)+[a-zA-Z]{2,4}$","gi"))>=0)
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

function ValidateFirst () {
    if ($("#poker").is(":checked")){
        if ($("#alias").val() == "" ) {
          document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
          return false;}
         display_loading_gif();
         $.ajax({
                url: "register_account.php",
                global: false,
                type: "POST",
                data: ({
                    check_alias: 1,
                    alias: $("#alias").val(),
                    gen_alias  : $("#auto_alias").is(":checked") ? 1 : 0      
                }),
                dataType: "text",
                success: function(response) {
                    document.getElementById("loader_gif").style.display = "none"; 
                    response == 'success' ? ValidateForm_2(document.getElementById('registration')) : alert(response);//document.getElementById("error").innerHTML='';
                }
            });}
    else ValidateForm_2(document.getElementById('registration'));
}

function ValidateForm_1(theform) {
	if (document.getElementById('block_1'))
		document.getElementById('block_1').style.display='none'; 
	if (document.getElementById('block_2'))
		document.getElementById('block_2').style.display='block';
	if(theform.isMobile.checked==true)
	{
		document.getElementById('mobile_star').style.display='inline'; 
		document.getElementById('country_star').style.display='inline';
		document.getElementById('show_settings').style.display='inline';		
	}else{
		document.getElementById('mobile_star').style.display='none'; 
		document.getElementById('country_star').style.display='none';
		document.getElementById('show_settings').style.display='none';
		document.getElementById('settings_block').style.display='none';		
	}
	OnCountryChange(theform.phone_ext)
}
function ValidateForm_2(theform) {
 var reg = new RegExp(/^\d{6,14}$/);
 var reg_names= new RegExp(/^[a-zA-Z][a-zA-Z0-9-]*$/);
 var reg_alias= new RegExp(/^[a-zA-Z0-9-]{4,12}$/);
 var reg_numbers= new RegExp(/^[0-9]*$/);
 //ValidateEmail(theform.email)
 var field = theform.phone_number;

if((theform.isMobile.checked==true) || (theform.phone_number.value!=''))
{
	 if (theform.phone_ext.value == "") {
	  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
	  set_focus(theform.phone_ext);
	  return false;
	 }
	 else unset_focus(theform.phone_ext);
		 
	 theform.country_name.value = theform.phone_ext[theform.phone_ext.selectedIndex].text;
	 
	 if (field.value != '' && !reg.test(replace_spaces(field))) {
	  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
	  set_focus(field);
	  return false;
	 }
	 else unset_focus(field);
	 
	
	 if( theform.phone_number.value.indexOf("0") == 0 )
	  theform.phone_number.value = theform.phone_number.value.substring(1,13);
	if (theform.phone_number.value != '') {
	  theform.PhoneNumber.value = theform.phone_ext.value + theform.phone_number.value;
	}
 }
 if(!OperatorValid)
 {
 	 document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
	 set_focus(theform.operators);
	 return false;
 }
 else
 	unset_focus(theform.operators);

 if(OperatorId==2)	{
	if(!ValidateEmail(theform.email))
	{
		document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';
		set_focus(theform.email); 
		return false;
	}
	else unset_focus(theform.email);		
}

 if (theform.phone_ext){
	/////////////////////saving country (phone_ext) in cookie/////////////////////////////// 
		check_cookie();
		if((ifcoockie_enabled) && GetCookie('country')!=1){
			SetCookie('country',theform.phone_ext.value,'10');
		}		
	}
 if(replace_spaces(theform.firstName) == ""){
  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  set_focus(theform.firstName);
  return false;
 }
 else unset_focus(theform.firstName);
 
if (!reg_names.test(replace_spaces(theform.firstName))) 
{
	document.getElementById("error").innerHTML='';
	set_focus(theform.firstName);
	return false;
}
else unset_focus(theform.firstName);
		
 if(replace_spaces(theform.lastName) == ""){
  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  set_focus(theform.lastName);
  return false;
 }
 else unset_focus(theform.lastName);
 
if (!reg_names.test(replace_spaces(theform.lastName))) 
{
	document.getElementById("error").innerHTML='';
	set_focus(theform.lastName);
	return false;
}
else unset_focus(theform.lastName);
		
if(theform.email.value != ""){
	if(!ValidateEmail(theform.email))
	{
		document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';		
		set_focus(theform.email); 
		return false;
	}
	else unset_focus(theform.email);
}

theform.dob.value = theform.month.value+'/'+theform.day.value+'/'+theform.year.value;
if (!validateDate(theform.day.value+'/'+theform.month.value+'/'+theform.year.value,'W','P'))
	{
		document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Date is Invalid or Out of Range. Error # 1015</div>';
		set_focus(theform.day);
		return false;
	}else{
		unset_focus(theform.day);
	}
//alert(theform.dob.value);
 if(replace_spaces(theform.dob) == ""){
  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  set_focus(theform.day);
  return false;
 }
 else unset_focus(theform.day);
 
 var objRegExp =  new RegExp(/^\d{1,2}(\/)\d{1,2}(\/)\d{4,4}$/);
 
 //check to see if in correct format
 if(!objRegExp.test(replace_spaces(theform.dob)))
 {
// alert('errrr');
  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The date should be in the following format mm/dd/yyyy Error # 1014</div>';
  set_focus(theform.day);
  return false;
 }
 else unset_focus(theform.day);
   
 if(theform.age_agree.checked == false){
  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  set_focus(theform.age_agree);
  return false;
 }
 else unset_focus(theform.age_agree);
 
 if(theform.poker && theform.poker.checked)
 {
	 if(theform.alias.value == '' || !reg_alias.test(theform.alias.value) || reg_numbers.test(theform.alias.value)){
	  document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';
	  set_focus(theform.alias);
	  return false;
	 }
	 else unset_focus(theform.alias);
 }
 
if((theform.isMobile.checked==true) && (theform.get_settings.checked==true))
{
	if(!theform.handset || theform.handset.value == ""){
  	document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  	set_focus(theform.handset);
  	return false;
 	}
 	else unset_focus(theform.handset);
 	
 	if(!theform.country || theform.country.value == ""){
  	document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  	set_focus(theform.country);
  	return false;
 	}
 	else unset_focus(theform.country);
 	
 	if(!theform.network || theform.network.value == ""){
  	document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  	set_focus(theform.network);
  	return false;
 	}
 	else unset_focus(theform.network);
 	
 	if(!theform.service || theform.service.value == ""){
  	document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
  	set_focus(theform.service);
  	return false;
 	}
 	else unset_focus(theform.service);
}

 var reset_arr=new Array('phone_ext','phone_number','firstName','lastName','day','age_agree','email','handset','country','network','service','alias');
 reset_focus_gif(reset_arr);
 document.getElementById('error').innerHTML='';
 theform.notify_email.value=theform.email.value;
 if(theform.notify_email.value!=''){
     theform.notify[0].checked = true;
     theform.notify_email.disabled = '';
  }
 
 theform.notify_sms.value=theform.PhoneNumber.value;
 document.getElementById('block_2').style.display='none';
  // If Show SMS block
 if(OperatorId==2)	{
  document.getElementById('notify_sms_tr').style.display='none';
  theform.notify[0].checked=true;
 }
 //else
 //document.getElementById('notify_sms_tr').style.display=''; 

document.getElementById('notification_block').style.display='block';
if (theform.email.value.replace(/^\s*|\s*$/,'') == '') {
	var checkedEmailAttribute = theform.notify.item(0).checked=false;
}
$.ajax({
            url: "register_account.php",
            global: false,
            type: "POST",
            data: ({
                chack_alias: $("#alias").val()
            }),
            dataType: "json",
            success: function(response) {
                alert(response);
            }
        });
 
// set_action(theform);
 return false;
}

function set_action()
{
theform=document.registration;

  var is_mobile='false';
  var language = 0;
  if(theform.isMobile.checked==true){
    language = theform.language.value;
  	is_mobile='true';}
  //alert(is_mobile);	
  var send_settings='false';
  var handset_name='';
  var handset_id=0;
  var country_id='';
  var service_id='';
  if(theform.get_settings.checked==true)
  {
  	send_settings='true';
  	handset_name=theform.handset[theform.handset.selectedIndex].text;
  	handset_id=theform.handset[theform.handset.selectedIndex].value;
  	country_id=theform.country.value;
  	service_id=theform.service.value;
  }
  
  var countryname=theform.phone_ext.options[theform.phone_ext.selectedIndex].text;
  countryname=countryname.toLowerCase();
  
  if(typeof(CountryIds[countryname])!="undefined")
  {
  	countryid=CountryIds[countryname];
  }
  else
  	countryid=(-1);
  
  var profile = -1;
  if(theform.betting_profile)
	profile = theform.betting_profile.value;

	var progressive='false';
	if(theform.progressive && theform.progressive.checked)
		progressive = 'true';
	
	var poker='false';
	var alias='';
    var auto_alias = 0;
	var currency_id = 0;
	currency_id1 = theform.currency_id1.value;
	if(theform.poker && theform.poker.checked)
	{
		poker = 'true';
		alias = theform.alias.value;
        if (theform.auto_alias && theform.auto_alias.checked) {
            auto_alias = 1;
        }
		currency_id = theform.currency_id.value;
	}
    
    var sports = 'false';
    var sports_currency_id = 0;
    if (theform.sports && theform.sports.checked) {
        sports = true;
        sports_currency_id = theform.sports_currency_id.value;
    }
		
 disable_submit_button();
 sndReqRegisterAccount2(theform.phone_ext.value,
 theform.PhoneNumber.value,
 theform.firstName.value,
 theform.lastName.value,
 theform.email.value,
 theform.Currency.value,
 theform.age_agree.value,
 theform.dob.value,
 is_mobile,
 send_settings,
 theform.notify_sms.value,
 theform.notify_email.value,
 handset_name,
 handset_id,
 country_id,
 service_id,
 session,
 theform.operators.options[theform.operators.selectedIndex].value,
 countryid,
 profile,
 progressive,
 poker,
 alias,
 auto_alias,
 currency_id,
 sports,
 sports_currency_id,
 currency_id1,
language);
}

function display_fields(fields_arr,display)
{
	for(i=0;i<fields_arr.length;i++)
		document.getElementById('tr_'+fields_arr[i]).style.display=display;
	if(display=='none')
		document.getElementById('error').innerHTML='';		
}
function check_selected_value(theselect)
{
	if(theselect.selectedIndex==0)
	{
		document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! You must select one of the options below. Error # 1011</div>';
		set_focus(theselect);
		return false;
	}
	else unset_focus(theselect);
	return true;
}
function onchange_phone_model(theselect)
{		
	var fields_arr=new Array('country','network','service'); 
	reset_focus_gif(fields_arr);
	display_fields(fields_arr,'none'); 
	if(check_selected_value(theselect))
		sndReqGetSelect('country',theselect[theselect.selectedIndex].text,'','',1028,session);
}

function onchange_country(theselect)
{
	var fields_arr=new Array('network','service'); 
	reset_focus_gif(fields_arr);
	display_fields(fields_arr,'none'); 	
	if(check_selected_value(theselect))
		sndReqGetSelect2('network',document.getElementById('handset')[document.getElementById('handset').selectedIndex].value, document.getElementById('handset')[document.getElementById('handset').selectedIndex].text,theselect.value,'',1029,session);
}

function onchange_network(theselect)
{
	var fields_arr = new Array('service');
	reset_focus_gif(fields_arr);
	display_fields(fields_arr,'none'); 	
	if(check_selected_value(theselect))
		sndReqGetSelect2('service',document.getElementById('handset')[document.getElementById('handset').selectedIndex].value,document.getElementById('handset')[document.getElementById('handset').selectedIndex].text,document.getElementById('country').value,theselect.value,1029,session);
}

function onchange_service(theselect)
{
	check_selected_value(theselect)
}
function reset_ota()
{
	var fields_arr=new Array('handset','country','network','service'); 
	reset_focus_gif(fields_arr);
	display_fields(fields_arr,'none'); 
    //document.getElementById('error').innerHTML='';
}
function swap_blocks(prev_block,next_block)
{
	if(document.getElementById(prev_block))
		document.getElementById(prev_block).style.display='none';
	if(document.getElementById(next_block))
		document.getElementById(next_block).style.display='block';
}

/* Network operators selection */
var OperatorValid = true;
var OperatorIsEmail = true;
var OperatorIsSMS = true;
var Operators = new Array();
var OperatorIds = new Array();
var CountryIds = new Array();
var OperatorId = -1;

function OnCountryChange(select_obj)
{   $('#mobile_pref').text('(+'+$(this+'option:selected').val()+') ');
	OperatorId = -1;
	OperatorValid = true;
	document.getElementById('network_operator_tr').style.display = "none";
	document.getElementById('note_email').innerHTML='';
	if(document.getElementById('registration').isMobile.checked==false) return;

	var country_name = select_obj.options[select_obj.selectedIndex].text.toLowerCase();
	
	select_operator = document.getElementById('operators');
	select_operator.options.length = 1;

	if((typeof(Operators[country_name])!="undefined") && Operators[country_name].length>0) // multiple operators for this country
	{
		OperatorValid = false;
		op_length = Operators[country_name].length;
		
		for(i=0; i<op_length; i++)
		{
			new_opt = document.createElement('option');
			new_opt.value = OperatorIds[country_name][i]
			new_opt.text = Operators[country_name][i];
			select_operator.options[select_operator.options.length]=new_opt;
		}
		new_opt = document.createElement('option');
		new_opt.value = (-1);
		new_opt.text = "Other";
		select_operator.options[select_operator.options.length]=new_opt;
		document.getElementById('network_operator_tr').style.display = "";
		document.getElementById('email_star').style.display='none';	
	}
}

function OnChangeOperator(select_obj)
{
	OperatorId = select_obj.options[select_obj.selectedIndex].value;
	if(OperatorId != 0)
		OperatorValid=true;
	else
		OperatorValid = false;
	document.getElementById('note_email').innerHTML='';
	document.getElementById('email_star').style.display='none';
	if(OperatorId==2)	{
		document.getElementById('email_star').style.display='';
		OnChangePhone(document.getElementById('phone_number'))
	}
}

function OnChangePhone(text_field)
{
	if(OperatorId==2) // NTT Docomo
	{
		document.getElementById('email').value=text_field.value + "@docomo.ne.jp"
		document.getElementById('note_email').innerHTML="<br /><acronym title='au-KDDI is currently not supported'><b>Note:</b> Please enter the email address of the player mobile phone</acronym>";
	}
}

function OnChangeMail(text_field)
{
	if(OperatorId==2) // NTT Docomo
	{
		if(text_field.value.indexOf('@docomo.ne.jp')==(-1))	{
			document.getElementById('note_email').innerHTML="<br /><acronym title='au-KDDI is currently not supported'><b>Note: </b>Email address can be changed. Please make sure that this is the email address that the player uses on his mobile phone.</acronym>";
		}
		else
			document.getElementById('note_email').innerHTML="<br /><acronym title='au-KDDI is currently not supported'><b>Note:</b> Please enter the email address of the player mobile phone</acronym>";
	}
}
function show_poker_fields(text_field)
{
	if(text_field.checked)
	{
		document.getElementById('alias_tr').style.display=display;
		document.getElementById('auto_alias_tr').style.display=display;
		document.getElementById('currency_tr').style.display=display;
	}
	else 
	{
		document.getElementById('alias_tr').style.display='none';
		document.getElementById('auto_alias_tr').style.display='none';
		document.getElementById('currency_tr').style.display='none';
	}
}
function show_sports_fields(text_field) {
	if(text_field.checked) {
		document.getElementById('sports_currency_tr').style.display = '';
	}
	else {
		document.getElementById('sports_currency_tr').style.display='none';
	}
}
//-->
</script>
       <span id="error"></span>
       <form class="form-horizontal" action="" method="post" name="registration" id="registration" onsubmit="return Notification_ValidateForm(this);">
       <input type="hidden" name="country_name" id="country_name" value="">
       <input type="hidden" name="PhoneNumber" id="PhoneNumber" value="">
       
       <!--block 1
       <table summary="" cellpadding="0" cellspacing="10" border="0" id="block_1" style="display:;">
       	  <tr><td>Do you want to play the mobile casino?</td></tr>
          <tr>
                <td><input name="isMobile" id="isMobile" type="checkbox" class="field" value="true" checked='checked' />Send Mobile Game</td>
          </tr>          
          <tr><td align="right"><input type="button" class="button" value="  &lsaquo; Back  " onclick="location.href='players_list.php';" />&nbsp;<input type="button" class="button" value="  Next &rsaquo;  " onclick="return ValidateForm_1(document.getElementById('registration'));" /></td></tr>
        </table>
       -->
        
        <!--block 2-->
        
        
         <div class="form-group">
    <label for="phone_ext" class="col-sm-2 control-label">Country</label>
    <div class="col-sm-10">
      <select name="phone_ext" id="phone_ext" class="field" onchange="OnCountryChange(this);"><option value="">Select Your Country</option><option value="93">Afghanistan</option><option value="355">Albania</option><option value="213">Algeria</option><option value="684">American Samoa</option><option value="376">Andorra</option><option value="244">Angola</option><option value="1264">Anguilla</option><option value="672">Antarctica</option><option value="1268">Antigua</option><option value="54">Argentina</option><option value="374">Armenia</option><option value="297">Aruba</option><option value="247">Ascension</option><option value="61">Australia</option><option value="672">Australian External Territories</option><option value="43">Austria</option><option value="994">Azerbaijan</option><option value="1242">Bahamas</option><option value="973">Bahrain</option><option value="880">Bangladesh</option><option value="1246">Barbados</option><option value="1268">Barbuda</option><option value="375">Belarus</option><option value="32">Belgium</option><option value="501">Belize</option><option value="229">Benin</option><option value="1441">Bermuda</option><option value="975">Bhutan</option><option value="591">Bolivia</option><option value="387">Bosnia &amp; Herzegovina</option><option value="267">Botswana</option><option value="55">Brazil</option><option value="1284">British Virgin Islands</option><option value="673">Brunei Darussalam</option><option value="359">Bulgaria</option><option value="226">Burkina Faso</option><option value="257">Burundi</option><option value="855">Cambodia</option><option value="237">Cameroon</option><option value="1">Canada</option><option value="238">Cape Verde Islands</option><option value="1345">Cayman Islands</option><option value="236">Central African Republic</option><option value="235">Chad</option><option value="64">Chatham Island (New Zealand)</option><option value="56">Chile</option><option value="86">China (PRC)</option><option value="618">Christmas Island</option><option value="61">Cocos-Keeling Islands</option><option value="57">Colombia</option><option value="269">Comoros</option><option value="242">Congo</option><option value="243">Congo, Dem.Republic</option><option value="682">Cook Islands</option><option value="506">Costa Rica</option><option value="385">Croatia</option><option value="53">Cuba</option><option value="5399">Cuba (Guantanamo Bay)</option><option value="599">Curacao</option><option value="357">Cyprus</option><option value="420">Czech Republic</option><option value="45">Denmark</option><option value="246">Diego Garcia</option><option value="253">Djibouti</option><option value="1767">Dominica</option><option value="1809">Dominican Republic</option><option value="670">East Timor</option><option value="56">Easter Island</option><option value="593">Ecuador</option><option value="20">Egypt</option><option value="503">El Salvador</option><option value="240">Equatorial Guinea</option><option value="291">Eritrea</option><option value="372">Estonia</option><option value="251">Ethiopia</option><option value="500">Falkland Islands (Malvinas)</option><option value="298">Faroe Islands</option><option value="679">Fiji Islands</option><option value="358">Finland</option><option value="33">France</option><option value="596">French Antilles</option><option value="594">French Guiana</option><option value="689">French Polynesia</option><option value="241">Gabonese Republic</option><option value="220">Gambia</option><option value="995">Georgia</option><option value="49">Germany</option><option value="233">Ghana</option><option value="350">Gibraltar</option><option value="8818">Globalstar</option><option value="30">Greece</option><option value="299">Greenland</option><option value="1473">Grenada</option><option value="590">Guadeloupe</option><option value="1671">Guam</option><option value="5399">Guantanamo Bay</option><option value="502">Guatemala</option><option value="245">Guinea-Bissau</option><option value="224">Guinea</option><option value="592">Guyana</option><option value="509">Haiti</option><option value="504">Honduras</option><option value="852">Hong Kong</option><option value="36">Hungary</option><option value="354">Iceland</option><option value="91">India</option><option value="62">Indonesia</option><option value="98">Iran</option><option value="964">Iraq</option><option value="353">Ireland</option><option value="39">Italy</option><option value="225">Ivory Coast</option><option value="1876">Jamaica</option><option value="81">Japan</option><option value="962">Jordan</option><option value="7">Kazakhstan</option><option value="254">Kenya</option><option value="686">Kiribati</option><option value="850">Korea (North)</option><option value="82">Korea (South)</option><option value="965">Kuwait</option><option value="996">Kyrgyz Republic</option><option value="856">Laos</option><option value="371">Latvia</option><option value="961">Lebanon</option><option value="266">Lesotho</option><option value="231">Liberia</option><option value="218">Libya</option><option value="423">Liechtenstein</option><option value="370">Lithuania</option><option value="352">Luxembourg</option><option value="853">Macao</option><option value="389">Macedonia</option><option value="261">Madagascar</option><option value="265">Malawi</option><option value="60">Malaysia</option><option value="960">Maldives</option><option value="223">Mali Republic</option><option value="356">Malta</option><option value="692">Marshall Islands</option><option value="596">Martinique</option><option value="222">Mauritania</option><option value="230">Mauritius</option><option value="269">Mayotte Island</option><option value="52">Mexico</option><option value="972">Micronesia</option><option value="1808">Midway Island</option><option value="373">Moldova</option><option value="377">Monaco</option><option value="976">Mongolia</option><option value="1664">Montserrat</option><option value="212">Morocco</option><option value="258">Mozambique</option><option value="95">Myanmar</option><option value="264">Namibia</option><option value="674">Nauru</option><option value="977">Nepal</option><option value="31">Netherlands</option><option value="599">Netherlands Antilles</option><option value="1869">Nevis</option><option value="687">New Caledonia</option><option value="64">New Zealand</option><option value="505">Nicaragua</option><option value="227">Niger</option><option value="234">Nigeria</option><option value="683">Niue</option><option value="672">Norfolk Island</option><option value="1670">Northern Marianas Islands</option><option value="47">Norway</option><option value="968">Oman</option><option value="92">Pakistan</option><option value="680">Palau</option><option value="970">Palestinian Settlements</option><option value="507">Panama</option><option value="675">Papua New Guinea</option><option value="595">Paraguay</option><option value="51">Peru</option><option value="63">Philippines</option><option value="48">Poland</option><option value="351">Portugal</option><option value="1787">Puerto Rico</option><option value="974">Qatar</option><option value="40">Romania</option><option value="7">Russia</option><option value="250">Rwandese Republic</option><option value="290">St. Helena</option><option value="1869">St. Kitts/Nevis</option><option value="1758">St. Lucia</option><option value="508">St. Pierre &amp; Miquelon</option><option value="1784">St. Vincent &amp; Grenadines</option><option value="378">San Marino</option><option value="966">Saudi Arabia</option><option value="221">Senegal</option><option value="381">Serbia and Montenegro</option><option value="248">Seychelles Republic</option><option value="232">Sierra Leone</option><option value="65">Singapore</option><option value="421">Slovak Republic</option><option value="386">Slovenia</option><option value="677">Solomon Islands</option><option value="252">Somali Democratic Republic</option><option value="27">South Africa</option><option value="34">Spain</option><option value="94">Sri Lanka</option><option value="249">Sudan</option><option value="597">Suriname</option><option value="268">Swaziland</option><option value="46">Sweden</option><option value="41">Switzerland</option><option value="963">Syria</option><option value="886">Taiwan</option><option value="992">Tajikistan</option><option value="255">Tanzania</option><option value="66">Thailand</option><option value="228">Togolese Republic</option><option value="690">Tokelau</option><option value="676">Tonga Islands</option><option value="1868">Trinidad &amp; Tobago</option><option value="216">Tunisia</option><option value="90">Turkey</option><option value="993">Turkmenistan</option><option value="1649">Turks and Caicos Islands</option><option value="688">Tuvalu</option><option value="256">Uganda</option><option value="380">Ukraine</option><option value="971">United Arab Emirates</option><option value="44">United Kingdom</option><option value="1340">US Virgin Islands</option><option value="598">Uruguay</option><option value="998">Uzbekistan</option><option value="678">Vanuatu</option><option value="379">Vatican City</option><option value="58">Venezuela</option><option value="84">Vietnam</option><option value="808">Wake Island</option><option value="681">Wallis and Futuna Islands</option><option value="685">Western Samoa</option><option value="967">Yemen</option><option value="260">Zambia</option><option value="255">Zanzibar</option><option value="263">Zimbabwe</option></select>
            
            <script type="text/javascript">
CountryIds['afghanistan'] = ''
CountryIds['albania'] = ''
CountryIds['algeria'] = ''
CountryIds['andorra'] = ''
CountryIds['angola'] = ''
CountryIds['anguilla'] = ''
CountryIds['antarctica'] = ''
CountryIds['argentina'] = ''
CountryIds['armenia'] = ''
CountryIds['aruba'] = ''
CountryIds['australia'] = ''
CountryIds['austria'] = ''
CountryIds['azerbaijan'] = ''
CountryIds['bahamas'] = ''
CountryIds['bahrain'] = ''
CountryIds['bangladesh'] = ''
CountryIds['barbados'] = ''
CountryIds['belarus'] = ''
CountryIds['belgium'] = ''
CountryIds['belize'] = ''
CountryIds['benin'] = ''
CountryIds['bermuda'] = ''
CountryIds['bhutan'] = ''
CountryIds['bolivia'] = ''
CountryIds['botswana'] = ''
CountryIds['brazil'] = ''
CountryIds['bulgaria'] = ''
CountryIds['burundi'] = ''
CountryIds['cambodia'] = ''
CountryIds['cameroon'] = ''
CountryIds['canada'] = ''
CountryIds['chad'] = ''
CountryIds['chile'] = ''
CountryIds['colombia'] = ''
CountryIds['comoros'] = ''
CountryIds['congo'] = ''
CountryIds['croatia'] = ''
CountryIds['cuba'] = ''
CountryIds['cyprus'] = ''
CountryIds['denmark'] = ''
CountryIds['djibouti'] = ''
CountryIds['dominica'] = ''
CountryIds['ecuador'] = ''
CountryIds['egypt'] = ''
CountryIds['eritrea'] = ''
CountryIds['estonia'] = ''
CountryIds['ethiopia'] = ''
CountryIds['finland'] = ''
CountryIds['france'] = ''
CountryIds['gambia'] = ''
CountryIds['georgia'] = ''
CountryIds['germany'] = ''
CountryIds['ghana'] = ''
CountryIds['gibraltar'] = ''
CountryIds['greece'] = ''
CountryIds['greenland'] = ''
CountryIds['grenada'] = ''
CountryIds['guadeloupe'] = ''
CountryIds['guam'] = ''
CountryIds['guatemala'] = ''
CountryIds['guinea'] = ''
CountryIds['guyana'] = ''
CountryIds['haiti'] = ''
CountryIds['honduras'] = ''
CountryIds['hungary'] = ''
CountryIds['iceland'] = ''
CountryIds['india'] = ''
CountryIds['indonesia'] = ''
CountryIds['iraq'] = ''
CountryIds['ireland'] = ''
CountryIds['italy'] = ''
CountryIds['jamaica'] = ''
CountryIds['japan'] = ''
CountryIds['jordan'] = ''
CountryIds['kazakhstan'] = ''
CountryIds['kenya'] = ''
CountryIds['kiribati'] = ''
CountryIds['kuwait'] = ''
CountryIds['latvia'] = ''
CountryIds['lebanon'] = ''
CountryIds['lesotho'] = ''
CountryIds['liberia'] = ''
CountryIds['liechtenstein'] = ''
CountryIds['lithuania'] = ''
CountryIds['luxembourg'] = ''
CountryIds['macao'] = ''
CountryIds['madagascar'] = ''
CountryIds['malawi'] = ''
CountryIds['malaysia'] = ''
CountryIds['maldives'] = ''
CountryIds['malta'] = ''
CountryIds['martinique'] = ''
CountryIds['mauritania'] = ''
CountryIds['mauritius'] = ''
CountryIds['mexico'] = ''
CountryIds['monaco'] = ''
CountryIds['mongolia'] = ''
CountryIds['montserrat'] = ''
CountryIds['morocco'] = ''
CountryIds['mozambique'] = ''
CountryIds['myanmar'] = ''
CountryIds['namibia'] = ''
CountryIds['nauru'] = ''
CountryIds['nepal'] = ''
CountryIds['netherlands'] = ''
CountryIds['nicaragua'] = ''
CountryIds['niger'] = ''
CountryIds['nigeria'] = ''
CountryIds['niue'] = ''
CountryIds['norway'] = ''
CountryIds['oman'] = ''
CountryIds['pakistan'] = ''
CountryIds['palau'] = ''
CountryIds['panama'] = ''
CountryIds['paraguay'] = ''
CountryIds['peru'] = ''
CountryIds['philippines'] = ''
CountryIds['poland'] = ''
CountryIds['portugal'] = ''
CountryIds['qatar'] = ''
CountryIds['romania'] = ''
CountryIds['senegal'] = ''
CountryIds['singapore'] = ''
CountryIds['slovenia'] = ''
CountryIds['spain'] = ''
CountryIds['sudan'] = ''
CountryIds['suriname'] = ''
CountryIds['swaziland'] = ''
CountryIds['sweden'] = ''
CountryIds['switzerland'] = ''
CountryIds['tajikistan'] = ''
CountryIds['thailand'] = ''
CountryIds['tokelau'] = ''
CountryIds['tunisia'] = ''
CountryIds['turkey'] = ''
CountryIds['turkmenistan'] = ''
CountryIds['tuvalu'] = ''
CountryIds['uganda'] = ''
CountryIds['ukraine'] = ''
CountryIds['uruguay'] = ''
CountryIds['uzbekistan'] = ''
CountryIds['vanuatu'] = ''
CountryIds['venezuela'] = ''
CountryIds['yemen'] = ''
CountryIds['zambia'] = ''
CountryIds['zimbabwe'] = ''
</script> <img src="./images/cmt_yes.gif" id="phone_ext_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="phone_ext_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
   <div class="form-group">
    <label for="phone_number" class="col-sm-2 control-label">Mobile Number</label>
    <div class="col-sm-10">
      <span id="mobile_pref">(+) </span><input name="phone_number" id="phone_number" type="text" class="field" value="" onpaste="OnChangePhone(this)" onkeypress="OnChangePhone(this)" onchange="OnChangePhone(this)" onkeyup="OnChangePhone(this)"> <img src="./images/cmt_yes.gif" id="phone_number_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="phone_number_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number not including country code.</i></font>
    </div>
  </div>
  
       <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">First Name*</label>
    <div class="col-sm-10">
     <input name="firstName" id="firstName" type="text" class="field" value=""> <img src="./images/cmt_yes.gif" id="firstName_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="firstName_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
        
            <div class="form-group">
    <label for="lastName" class="col-sm-2 control-label">Last Name*</label>
    <div class="col-sm-10">
     <input name="lastName" id="lastName" type="text" class="field" value=""> <img src="./images/cmt_yes.gif" id="lastName_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="lastName_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
         <div class="form-group">
    <label for="email" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
     <input name="email" id="email" type="text" class="field" value="" onkeypress="OnChangeMail(this)"> <img src="./images/cmt_yes.gif" id="email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="email_gif_no" width="13" height="13" alt="" style="display:none;"><span id="note_email"></span>
    </div>
  </div>
   
            <div class="form-group">
    <label for="dob" class="col-sm-2 control-label">Date of Birth*</label>
    <div class="col-sm-10">
     <input name="dob" id="dob" type="hidden" value=""><select class="field" id="month" name="month">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
	</select> /
	<select class="field" id="day" name="day">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
		<option value="16">16</option>
		<option value="17">17</option>
		<option value="18">18</option>
		<option value="19">19</option>
		<option value="20">20</option>
		<option value="21">21</option>
		<option value="22">22</option>
		<option value="23">23</option>
		<option value="24">24</option>
		<option value="25">25</option>
		<option value="26">26</option>
		<option value="27">27</option>
		<option value="28">28</option>
		<option value="29">29</option>
		<option value="30">30</option>
		<option value="31">31</option>
	</select> /
	<select class="field" id="year" name="year">
		<option value="1901">1901</option>
		<option value="1902">1902</option>
		<option value="1903">1903</option>
		<option value="1904">1904</option>
		<option value="1905">1905</option>
		<option value="1906">1906</option>
		<option value="1907">1907</option>
		<option value="1908">1908</option>
		<option value="1909">1909</option>
		<option value="1910">1910</option>
		<option value="1911">1911</option>
		<option value="1912">1912</option>
		<option value="1913">1913</option>
		<option value="1914">1914</option>
		<option value="1915">1915</option>
		<option value="1916">1916</option>
		<option value="1917">1917</option>
		<option value="1918">1918</option>
		<option value="1919">1919</option>
		<option value="1920">1920</option>
		<option value="1921">1921</option>
		<option value="1922">1922</option>
		<option value="1923">1923</option>
		<option value="1924">1924</option>
		<option value="1925">1925</option>
		<option value="1926">1926</option>
		<option value="1927">1927</option>
		<option value="1928">1928</option>
		<option value="1929">1929</option>
		<option value="1930">1930</option>
		<option value="1931">1931</option>
		<option value="1932">1932</option>
		<option value="1933">1933</option>
		<option value="1934">1934</option>
		<option value="1935">1935</option>
		<option value="1936">1936</option>
		<option value="1937">1937</option>
		<option value="1938">1938</option>
		<option value="1939">1939</option>
		<option value="1940">1940</option>
		<option value="1941">1941</option>
		<option value="1942">1942</option>
		<option value="1943">1943</option>
		<option value="1944">1944</option>
		<option value="1945">1945</option>
		<option value="1946">1946</option>
		<option value="1947">1947</option>
		<option value="1948">1948</option>
		<option value="1949">1949</option>
		<option value="1950">1950</option>
		<option value="1951">1951</option>
		<option value="1952">1952</option>
		<option value="1953">1953</option>
		<option value="1954">1954</option>
		<option value="1955">1955</option>
		<option value="1956">1956</option>
		<option value="1957">1957</option>
		<option value="1958">1958</option>
		<option value="1959">1959</option>
		<option value="1960">1960</option>
		<option value="1961">1961</option>
		<option value="1962">1962</option>
		<option value="1963">1963</option>
		<option value="1964">1964</option>
		<option value="1965">1965</option>
		<option value="1966">1966</option>
		<option value="1967">1967</option>
		<option value="1968">1968</option>
		<option value="1969">1969</option>
		<option value="1970">1970</option>
		<option value="1971">1971</option>
		<option value="1972">1972</option>
		<option value="1973">1973</option>
		<option value="1974">1974</option>
		<option value="1975">1975</option>
		<option value="1976">1976</option>
		<option value="1977">1977</option>
		<option value="1978">1978</option>
		<option value="1979">1979</option>
		<option value="1980">1980</option>
		<option value="1981">1981</option>
		<option value="1982">1982</option>
		<option value="1983">1983</option>
		<option value="1984">1984</option>
		<option value="1985">1985</option>
		<option value="1986">1986</option>
		<option value="1987">1987</option>
		<option value="1988">1988</option>
		<option value="1989">1989</option>
		<option value="1990">1990</option>
		<option value="1991">1991</option>
		<option value="1992">1992</option>
		<option value="1993">1993</option>
		<option value="1994">1994</option>
		<option value="1995">1995</option>
		<option value="1996">1996</option>
		<option value="1997">1997</option>
	</select>
	 <img src="./images/cmt_yes.gif" id="day_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="day_gif_no" width="13" height="13" alt="" style="display:none;"> (mm/dd/yyyy)
    </div>
  </div>
  
     <div class="form-group">
    <label for="station_name_prefix" class="col-sm-2 control-label">Credit Currency*</label>
	<label for="station_name_prefix" class="col-sm-2 control-label" style="text-align:left !important;">KRW</label>
     </div> 
     
           <div class="form-group">
    <label for="isMobile" class="col-sm-2 control-label">Send Mobile Game</label>
    <div class="col-sm-10">
     <input onclick="document.getElementById('lang_send_select').style.display = this.checked ? '' : 'none';if (document.getElementById('mobile_star')) { document.getElementById('mobile_star').style.display = this.checked ? '' : 'none';}" name="isMobile" id="isMobile" type="checkbox" class="field" value="true" checked="checked">
            <span id="lang_send_select">Language
            <select name="language" id="language" class="field"><option value="1" selected="selected">English</option><option value="2">Japanese</option><option value="3">Chinese</option><option value="4">Spanish</option><option value="6">German</option><option value="8">Korean</option><option value="9">Turkish</option><option value="11">Russian</option><option value="12">Traditional Chinese</option></select></span>
    </div>
  </div>
  
                <div class="form-group">
    <label for="isMobile" class="col-sm-2 control-label">Betting Profile</label>
    <div class="col-sm-10">
     <select name="betting_profile" id="betting_profile" class="field"><option value="234">KRW LB5/50 10/100 50/500 LR2/5 5/10 10/20</option><option value="239">KRW1 LB10/100 30/300 50/500 LR2/5 5/10 10/20</option><option value="243">KRW2 LB10/100 50/500 100/1000 LR2/5 5/10 10/20</option><option value="253">KRW3 LB50/500 100/1000 200/2000 LR2/5 5/10 10/20</option><option value="255">KRW4 LB2/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20</option><option value="390">USD1 LB1/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10</option><option value="393">USD2 LB100/1000 300/3000 500/5000 1000/10000 LR1/1 5/5 10/10</option><option value="396">USD3 LB1/100 100/1000 300/3000 500/5000 LR1/1 BJ10/2000</option><option value="398">USD4 LB5/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10 BJ10/750</option><option value="260">KRW5 LB5/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20</option><option value="173">CNY1 LB 10/1000  50/5000  200/10000 500/20000, LR 10/10 BJ 150/15000</option><option value="185">CNY2 LB 50/5000  200/10000  500/20000 1000/80000, LR 10/10 BJ 150/15000 1000/80000</option><option value="186">CNY3 LB 10/1000  50/5000  200/10000 500/20000, LR 10/10 BJ 40/2000 80/4000</option><option value="264">KRW6 LB2/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20 BJ 30/1000</option><option value="445">KRW7 LB5/100 10/500 100/1500 300/3000 LR1/10 3/20 5/30 BJ 10/1000</option><option value="446">KRW8 LB1/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10</option><option value="447">KRW9 LB100/1000 300/3000 500/5000 1000/10000 LR1/1 5/5 10/10</option><option value="448">KRW10 LB1/100 100/1000 300/3000 500/5000 LR1/1 BJ10/2000</option><option value="449">KRW11 LB5/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10 BJ 10/750</option><option value="450">KRW12 LB1/100 100/1000 500/5000 1000/10000 LR1/1 5/5 10/10 BJ 10/1000 1000/10000</option></select> <img src="./images/cmt_yes.gif" id="betting_profile_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="betting_profile_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
    
    <div class="form-group" style="padding-left: 80px;">
  <input type="button" class="button" value=" < Back " onclick="location.href='${pageContext.request.contextPath}/playersList'">
 <input type="button" class="button" value=" Next > " onclick="return ValidateFirst();">
  </div>
  
  <font style="font-size: 11px;"><i>* Indicates mandatory field.</i></font>
        
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
   		}
			if((theform.notify[0].checked==false) && (theform.notify[1].checked==false) && ((!theform.notify[2]) || (theform.notify[2] && theform.notify[2].checked==false)))
	   		{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! You must select one of the options below. Error # 1011</div>';
				return false;
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
	<input type="hidden" name="notify_print" id="notify_print" value="false">
	<table summary="" cellpadding="0" cellspacing="0" border="0" id="notification_block" style="display:none;">
		  <tbody><tr><td colspan="2">Send account details to:<br><br></td></tr>
          <tr>
            <td nowrap="nowrap"><input type="checkbox" value="notify_email" name="notify" id="notify" onclick="if(this.checked==true) document.registration.notify_email.disabled=false; else document.registration.notify_email.disabled=true;">E-mail address&nbsp;</td>
            <td><input type="text" class="field" value="" name="notify_email" id="notify_email" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_email_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          </tr>
          <tr><td colspan="2">&nbsp;</td></tr>
                <tr id="notify_sms_tr">
                    <td nowrap="nowrap"><input type="checkbox" value="notify_sms" name="notify" id="notify" onclick="if(this.checked==true) document.registration.notify_sms.disabled=false; else document.registration.notify_sms.disabled=true;">SMS to&nbsp;</td>
                    <td><input type="text" class="field" value="" name="notify_sms" id="notify_sms" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_sms_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_sms_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font></td>
                </tr>
         <tr><td colspan="2"><br><br></td></tr>
         <tr>
            <td></td>
            <td>&nbsp;<input type="button" class="button" name="back_button" id="back_button" value="   	&#60; Back  " onclick="go_back();">&nbsp;<input type="submit" name="submit_button" id="submit_button" class="button" value="  Finish  "></td>
          </tr>
        </tbody></table>
        </form>
      </div>
</div>
<script type="text/javascript">
	OnCountryChange(document.getElementById('phone_ext'));
    $('#mobile_pref').text('(+'+$('#phone_ext option:selected').val()+') ');
</script>
    </td>
  <td class="left" nowrap="nowrap" style="padding-left:15px;">
      <div class="welcome">
      
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'register_account\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/8/2015 18:15</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
	<input type="hidden" id="time_diff" value="9.0000">
	<form action="${pageContext.request.contextPath}/changePassword" style="margin:0px;" method="get"><input type="button" class="logout" value="Logout" onclick="location.href='logout.php'" style="cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="logout" style="width:120px;" value="Change Password"></form>	
	<script type="text/javascript">
			function RefreshTime(){
				var today = new Date();
				daylight = 0;
				var loc_tz = document.getElementById('time_diff').value;
				today.setMinutes(today.getMinutes() + Number(loc_tz)*60 + daylight*60 + today.getTimezoneOffset())
				var hour = today.getHours();
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
      	<a onclick="if(document.getElementById('stations_submenu').style.display=='none') document.getElementById('stations_submenu').style.display='block'; else document.getElementById('stations_submenu').style.display='none';" href="#" class="leftmenu" >� Manage Stations</a>
      	<div id="stations_submenu" style="display:none;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/stationsList" class="leftsubmenu">� Manage Stations</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/deleteStations" class="leftsubmenu">� Delete Stations</a></div>
      	</div>
      </div>
      <div class="menu">
      	<a href="#" class="leftmenu" onclick="if(document.getElementById('players_submenu').style.display=='none') document.getElementById('players_submenu').style.display='block'; else document.getElementById('players_submenu').style.display='none';">� Manage Players Accounts</a>
      	<div id="players_submenu" style="display:none;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/playersList" class="leftsubmenu">� Manage Players</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/deletePlayers" class="leftsubmenu">� Delete Players</a></div>
      	</div>
      </div>
      <div class="menu"><a href="${pageContext.request.contextPath}/loginsList" class="leftmenu">� Manage Cashiers</a></div>
      <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('financial_reports').style.display=='none') document.getElementById('financial_reports').style.display='block'; else document.getElementById('financial_reports').style.display='none';">� Financial Reports</a>
      	<div id="financial_reports" style="display:block;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/commissionReport" class="leftsubmenu">� Commission Report</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/creditReport" class="leftsubmenu">� Credit Transfer</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/agentEarningReportByDay" class="leftsubmenu">� Casino Earnings Report</a></div>
      		<div class="submenu"><a href="${pageContext.request.contextPath}/cashierReport" class="leftsubmenu">� Cashier Report</a></div>
      	</div>
      </div>
      <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('game_play_reports').style.display=='none') document.getElementById('game_play_reports').style.display='block'; else document.getElementById('game_play_reports').style.display='none';">� Game Play Reports</a>
      	<div id="game_play_reports" style="display:none;">
      		<div class="submenu"><a href="${pageContext.request.contextPath}/agentGameProfitabilityReport" class="leftsubmenu">� Profit by Game Type</a></div>
      	</div>
      </div>
      <div class="menu"><a href="${pageContext.request.contextPath}/manageSettings" class="leftmenu">� Manage My Settings</a></div>
      <div class="menu"><a href="${pageContext.request.contextPath}/contactUs" class="leftmenu">� Contact Us</a></div>
      <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('help_submenu').style.display=='none') document.getElementById('help_submenu').style.display='block'; else document.getElementById('help_submenu').style.display='none';">� Help</a>
      	<div id="help_submenu" style="display:none;">
			<div class="submenu"><a href="https://www.totalegame.net/help/en/WebHelp_AG/index.php" class="leftsubmenu" target="_blank">� Help</a></div>
			<div class="submenu"><a style="cursor:pointer;"  class="leftsubmenu">� Mobile game direct download<br>&nbsp;&nbsp;&nbsp;instructions</a></div>
		</div>
	  </div>      <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
    </td>
  </tr>
</tbody></table>
<img src="./images/cmt_null.gif" width="760" height="1" alt=""><br>

</td>

</tr>
</tbody></table>

</div><footer class="site-footer footer">
  Copyright 2015 APS Group Philippines Inc.
</footer>
<form action="https://www.totalegame.net/table2csv.php" name="export_form" method="post">
<input type="hidden" name="csv_content">
</form>
<script type="text/javascript">
/*document.onclick = function(e){
	if(document.getElementById("buttonclick")){
		if(document.getElementById("buttonclick").value!="clicked"){
			document.getElementById("popFrame").style.visibility="hidden";
		}
		document.getElementById("buttonclick").value = "";
	}
	return sb((!e)?window.event:e);
}*/

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

</body></html>