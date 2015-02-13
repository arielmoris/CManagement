<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0046)delete_stations.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title><!-- Latest compiled and minified CSS --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<meta http-equiv="Content-Script-Type" content="text/javascript">


<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" async="" src="./scripts/ga.js"></script><script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/drag_functions.js" type="text/javascript"></script>
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
<link href="./styles/print.css" media="print" rel="stylesheet" type="text/css">
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-34004700-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>	
</head>
<body cz-shortcut-listen="true">
<form name="btagform" action=""></form>
<div id="container">
<div style="display:none; position:absolute; z-index:10; top:250px; left:450px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
	<!-- window 1 -->
	<form action="delete_stations.jsp" method="post" name="agent_form" id="agent_form">
	<div id="wind1" class="wins">	
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start('wind1','cont1');">
			<tbody><tr>
				<td width="100%"></td>				
				<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="enable_submit_button(); closeWin(); if(document.getElementById(&quot;button2&quot;).style.display==&quot;block&quot;) document.agent_form.submit();" title="close"></td>
			</tr>
		</tbody></table>		
		<span id="cont1" class="text">
		
		<table align="center" valign="middle" width="100%" cellpadding="10" cellspacing="10" border="0">
			<tbody><tr>
      			<td align="center" colspan="2"><span id="error1"></span></td>
      		</tr>
			<tr>
      			<td align="center" colspan="2" id="delete_result"><br>Are you sure you want to permanently delete  the selected&nbsp;<span id="NumberOfCustomers"></span>&nbsp;Stations?<br></td>
      		</tr>
      		<tr id="button1" style="display: block;" align="center">
      			<td align="right"><input type="button" class="button" value="Yes" onclick="set_action();"></td>
      			<td align="left"><input type="button" class="button" value="Cancel" onclick="enable_submit_button(); closeWin();"></td>
      		</tr>
      		<tr id="button2" style="display: none;" align="center">
      			<td align="center" colspan="2"><input type="button" class="button" value="OK" onclick="document.agent_form.submit(); closeWin();"></td>
      		</tr>
		</tbody></table>		
		</span>
		
	</div></form>
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
      <div class="page_title"><!--Manage agent account-->Delete Stations</div>
      <br>
      <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Delete&nbsp;Stations </td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
 


      <div class="box_tabs">
      <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td id="add_cell" style="display: none;"><form action="" method="post">
            <input type="submit" class="button" value="">
            <input type="hidden" value="" name="agentTypeId">
            </form></td>
            <td>&nbsp;&nbsp;</td>
            <td>Select the stations you want to delete.<img src="./images/cmt_h1_small.gif" title="Only stations with zero balance can be deleted. In case you do not identify the station you want to delete in the list below, please verify that its balance is zero." style="cursor:pointer;"><br><br><i><b>Note:</b><li>Deleting a station is irreversible operation.</li><li>Maximum number of stations that can be deleted is:  <b>50</b></li></i></td>
          </tr>
        </tbody></table>
        <br>
       
        <div class="tab_head">
        
	<span id="error"></span>
	<table summary="" cellpadding="0" cellspacing="0" border="0" width="70%">
          <tbody><tr>
            <td class="tab_head" align="right"><input type="button" class="button" value="  Refresh  " onclick="location.href='delete_stations.php'"></td>
          </tr></tbody></table>
        <div id="list" align="center">
                <table summary="" cellpadding="0" cellspacing="0" border="0" width="70%" style="margin-bottom: 3px;">
            
						<tbody><tr style="display:none;">
							<td colspan="4" id="st_error">&nbsp;</td>
						</tr>
						
						<tr>
	         				<td colspan="6">
	         					<form class="form-inline">
  									<div class="form-group">
    									<label for="accountNum" class="tab_head">Account Number</label>
    									<input type="accountNum" class="show" id="accountNum" placeholder="">
 									</div>
  									<div class="form-group">
    									<label for="stationName" class="tab_head">Station Name</label>
    									<input type="stationName" class="show" id="stationName">
  									</div>
     								<div class="form-group">
										<input type="button" class="button" style="margin-top: 23px;" name="st_search_btn" id="st_search_btn" value="  Search  " onclick="searchStation();">
									</div>
								</form>
	         				</td>
	         			</tr>
					</tbody></table>
					<br>
				<table class="tab_body" summary="" cellpadding="0" cellspacing="1" border="0"><tbody><tr><td class="tab_row1">
		</td></tr><tr>
			<td class="tab_row1" colspan="3" align="center" id="no_data">No Data</td>
		</tr>
	</tbody></table><div class="balance"><img src="./images/cmt_warning.gif" width="11" height="11" alt=""> <b>Total stations: 0</b></div></div>
         <script type="text/javascript">if(document.getElementById("add_cell")) document.getElementById("add_cell").style.display="none";</script>
	<style type="text/css">
#modalBackground
{
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;

	z-index: 100000;
	background-color:#333333;
	display: none;
	opacity: 0.40;
	filter: alpha(opacity=40)
}
#modalWindow
{
    position: fixed;
    left: 0;
    top: 0;

	z-index: 100000;
	background-color: white;
	display: none;
	width: 20em;
	height: 10em;
	border: 1px solid blue;
}
</style>
<div id="modalBackground"></div>
<script>
function $(id)
{
	return document.getElementById(id);
}

function DisableInput(popupName)
{
	var popupWin = $(popupName)
	popupWin.style.display = $('modalBackground').style.display = 'block';
	popupWin.style.zIndex = 100000;
}

function EnableInput()
{
	$('modalBackground').style.display = 'none';
}

function GetWindowWidth()
{
	var width =
		document.documentElement && document.documentElement.clientWidth ||
		document.body && document.body.clientWidth ||
		document.body && document.body.parentNode && document.body.parentNode.clientWidth ||
		0;
		
	return width;
}

function GetWindowHeight()
{
    var height =
		document.documentElement && document.documentElement.clientHeight ||
		document.body && document.body.clientHeight ||
  		document.body && document.body.parentNode && document.body.parentNode.clientHeight ||
  		0;
  		
  	return height;
}
</script>
	<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
	<!-- <script type="text/javascript">
	session='';
	if(!document.cookie)
			session='PHPSESSID=52c36376f540617efe8da2f299c833ca';
	sndReqList(0,'DeleteStation','','','',session);


function searchStation() {
            var err_field = document.getElementById('st_error');
            var acc_field = document.getElementById('st_acc_number');
            var name_field = document.getElementById('st_name');
            var casino_field = true;
            var poker_field = false;

            var k = 0;
            var accountnumber = acc_field.value;
            var mobilenumber = '';
            var fname = name_field.value;
            var lname = '';
            var list_type = 'DeleteStation';
            var sorting_param = '';
            var sorting_order = '';
            var sorting_type = '';
            var enteries_num = '';
            var refresh = 'true';
            var filter = '';

            /*if (document.getElementById('related_product_casino')) {
                casino_field = document.getElementById('related_product_casino').checked;
            }

            if (document.getElementById('related_product_poker')) {
                poker_field = document.getElementById('related_product_poker').checked;
            }

            var filter =  'Casino-' + casino_field + '$-' + poker_field;
            */

            if (accountnumber == '' && fname == '') {
                err_field.innerHTML = '<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please, fill at least one field to do search.</div>';
                err_field.parentNode.style.display = 'table-row';
                acc_field.style.border = '1px solid #ff0000';
                name_field.style.border = '1px solid #ff0000';
                return false;
            }
            else {
                err_field.parentNode.style.display = 'none';
                acc_field.style.border = '1px solid #d2d2d2';
                name_field.style.border = '1px solid #d2d2d2';
            }

            if (accountnumber != '' && !accountnumber.match(/^([a-zA-Z0-9]*)$/)) {
                err_field.innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                err_field.parentNode.style.display = 'table-row';
                acc_field.style.border = '1px solid #ff0000';
                return false;
            }
            else {
                err_field.parentNode.style.display = 'none';
                acc_field.style.border = '1px solid #d2d2d2';
            }

            if (fname != '' && !fname.match(/^([a-zA-Z0-9]*)$/)) {
                err_field.innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                err_field.parentNode.style.display = 'table-row';
                name_field.style.border = '1px solid #ff0000';
                return false;
            }
            else {
                err_field.parentNode.style.display = 'none';
                name_field.style.border = '1px solid #d2d2d2';
            }

            sndReqSearchByAccount(
                k,
                accountnumber,
                mobilenumber,
                fname,
                lname,
                '',
                list_type,
                sorting_param,
                sorting_order,
                sorting_type,
                enteries_num,
                'true',
                filter
            );
        }


    function delete_confirmation()
	{
		window.scrollTo(0,0);	
		if(document.getElementById('delete_list').value=='')
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
		}
		else
		{
			var customer_list=document.getElementById('delete_list').value.substring(1,document.getElementById('delete_list').value.length-1);
			var returnArraySize = customSplit(customer_list, ',', 'NewArray');
			if(returnArraySize>50)
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';
			else
			{
				document.getElementById("error").innerHTML='';
				document.getElementById("error1").innerHTML='';
				disable_submit_button();
				openWin('wind1','cont1',200,300,400,250);			
				document.getElementById("NumberOfCustomers").innerHTML=returnArraySize;	
			}		
		}
	}
	function set_action()
	{
		var customer_list=document.getElementById('delete_list').value.substring(1,document.getElementById('delete_list').value.length-1);	
		sndReqDeleteEntity(customer_list,'','Station',session);
	}
	</script>      -->
        </div>
        <br><table summary="" cellpadding="0" cellspacing="0" border="0" width="70%">
          <tbody><tr>
            <td align="center"><input type="button" class="button" id="submit_button1" name="submit_button1" value="  Delete  " onclick="delete_confirmation();">&nbsp;<input type="button" class="button" id="back_button" name="back_button" value="  Cancel  " onclick="location.href='stations_list.php'"></td>
          </tr></tbody></table>
      </div>
      
      
      
      </td>
  <td class="left" nowrap="nowrap" style="padding-left:15px;">
      <div class="welcome">
      
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'delete_stations\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/8/2015 18:43</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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
	  </div>      <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
    </td>
  
  </tr>
</tbody></table>
<img src="./images/cmt_null.gif" width="760" height="1" alt=""><br>

</td>

</tr>
</tbody></table>

<footer class="site-footer footer">
  Copyright 2015 APS Group Philippines Inc.
</footer>
<form action="https://www.totalegame.net/deposit.php" method="post" id="redirectfrom">
<input type="hidden" id="edit_id" name="edit_id">
<input type="hidden" id="edit_account" name="edit_account">
<input type="hidden" id="edit_ismobile" name="edit_ismobile">
<input type="hidden" id="edit_isprogressive" name="edit_isprogressive">
<input type="hidden" id="is_locked" name="is_locked">
<input type="hidden" id="all_accounts" name="all_accounts">
<input type="hidden" id="prog_present" name="prog_present">
<input type="hidden" id="account_data" name="account_data">
<!--input type="hidden" id="debug" name="debug" value="0" /-->
</form>
<form action="" method="post">
<input type="hidden" id="delete_list" name="delete_list" value="">
</form>
<script type="text/javascript">
document.onclick = function(e) {
	if(document.getElementById("buttonclick")){
		if(document.getElementById("buttonclick").value!="clicked"){
			document.getElementById("popFrame").style.visibility="hidden";
		}
		document.getElementById("buttonclick").value = "";
	}
	return sb((!e)?window.event:e);
}
function RedirectFunc(id, account, ismobile, isprogressive, link, locked, all_accounts, prog_present, account_data){
	if (!prog_present) {
	    var prog_present = 'false';
	}

    if (!account_data) {
        var account_data = '';
    }
    document.getElementById('edit_id').value = id;
	document.getElementById('edit_account').value = account;
	document.getElementById('edit_ismobile').value = ismobile;
	document.getElementById('edit_isprogressive').value = isprogressive;
	document.getElementById('is_locked').value = locked;
	document.getElementById('all_accounts').value = all_accounts;
	document.getElementById('prog_present').value = prog_present;
	document.getElementById('account_data').value = account_data;
	document.getElementById('redirectfrom').action = link;
	document.getElementById('redirectfrom').submit();
}
function check_delete_list(field)
{
	if(field.checked==true){
		if(document.getElementById('delete_list').value=='') document.getElementById('delete_list').value=",";
		document.getElementById('delete_list').value=document.getElementById('delete_list').value+field.value+',';
	}
	else{
		document.getElementById('delete_list').value=replace(document.getElementById('delete_list').value,","+field.value+",",",");
		if(document.getElementById('delete_list').value==',') document.getElementById('delete_list').value="";
	}
	//alert(document.getElementById('delete_list').value);
	check_delete_fields();
}
function check_delete_fields()
{
	if(document.getElementById('delete_list').value!='')
	{
		var str=document.getElementById('delete_list').value.substring(1,document.getElementById('delete_list').value.length-1);
		var returnArraySize = customSplit(str, ",", "NewArray");
		for(i=0;i<returnArraySize;i++)
			if(document.getElementById('delete_'+NewArray[i]))
				document.getElementById('delete_'+NewArray[i]).checked=true;
	}
}
function replace(argvalue, x, y) {

  if ((x == y) || (parseInt(y.indexOf(x)) > -1)) {
    errmessage = "replace function error: \n";
    errmessage += "Second argument and third argument could be the same ";
    errmessage += "or third argument contains second argument.\n";
    errmessage += "This will create an infinite loop as it's replaced globally.";
    alert(errmessage);
    return false;
  }
    
  while (argvalue.indexOf(x) != -1) {
    var leading = argvalue.substring(0, argvalue.indexOf(x));
    var trailing = argvalue.substring(argvalue.indexOf(x) + x.length, 
	argvalue.length);
    argvalue = leading + y + trailing;
  }

  return argvalue;

}
function customSplit(strvalue, separator, arrayName) {
  var n = 0;

  if (separator.length != 0) {
    while (strvalue.indexOf(separator) != -1) {
      eval("arr"+n+" = strvalue.substring(0, strvalue.indexOf(separator));");
      strvalue = strvalue.substring(strvalue.indexOf(separator)+separator.length,
          strvalue.length+1);
      n++;
    }
    eval("arr" + n + " = strvalue;");
    arraySize = n+1;
  }
  else {
    for (var x = 0; x < strvalue.length; x++) {
      eval("arr"+n+" = \"" + strvalue.substring(x, x+1) + "\";");
      n++;
    }
    arraySize = n;
  }

  eval(arrayName + " = new makeArray(arraySize);");

  for (var i = 0; i < arraySize; i++)
    eval(arrayName + "[" + i + "] = arr" + i + ";");

  return arraySize;
}

var display_block='block';
if(navigator.appName=='Netscape') //Firefox and Netscape
	var display_block='table-row';
function makeArray(IntarrSize) {

  for (var n = 0; n < IntarrSize; n++)
    this[n] = "";

  return this;

}
function check_rows(start,display)
{
	if(display==true)
	{
		document.getElementById("plus_"+start).style.display='none';
		document.getElementById("minus_"+start).style.display='inline';
		display_rows(start,display_block);
	}
	if(display==false)
	{
		document.getElementById("plus_"+start).style.display='inline';
		document.getElementById("minus_"+start).style.display='none';
		display_rows(start,'none');
	}	
}
function display_rows(start,display)
{
	var rows = document.getElementsByTagName("tr");
	for(var i=0;i<rows.length;i++)
	{
		//if(/row\_\d/.test(rows[i].id))
		if(rows[i].id.indexOf("row_"+start+"_") !=-1)
			rows[i].style.display = display;
	}
}

function ValidateEmail(theinput)
	{

		s = theinput;
		if(s.search)
		{
			return (s.search(new RegExp("^([-!#$%&'*+./0-9=?A-Z^_`a-z{|}~ ])+@([-!#$%&'*+/0-9=?A-Z^_`a-z{|}~ ]+\\.)+[a-zA-Z]{2,4}$","gi"))>=0);
		}
		if(s.indexOf)
		{
			at_character=s.indexOf('@')
			if(at_character<=0 || at_character+4>s.length)
				return false;
		}
		if(s.length<6)
			return false;
		else
			return true;
	}

</script>

</body></html>