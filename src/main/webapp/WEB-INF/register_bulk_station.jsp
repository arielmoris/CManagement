<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0052)register_bulk_station.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title><!-- Latest compiled and minified CSS --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">


<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#cont1{
	position:absolute;
	}
</style>
<style type="text/css" media="print">
    body {
        background-color: #fff;
    }

    .wins {
        border: none;
    }

    span#titlebar_span {
        display: none;
    }

    .receipt_title {
        border-bottom: 1px solid #666;
    }

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
</head>
<body cz-shortcut-listen="true">

<form name="btagform" action=""></form>

<div id="container" style="overflow:hidden">
	<!-- window 1 -->
	<div id="wind1" class="wins" style="position:fixed;width:150px;height:80px;overflow:hidden;overflow-x:hidden;overflow-y:hidden;display:none">
		<span id="cont1" class="text"><span id="amount_of_players" style="text-align:center;"><div style="width:150px;height:80px;text-align:center;overflow:hidden;background:#FFFFFF url(/images/cmt_statusbg.gif) top left no-repeat;">
      <input type="text" value="In progress" style="margin-top:10px;text-align:center;background:none;border:0px;">
      <input type="text" value="0%" style="margin-top:27px;text-align:center;background:none;border:0px;">
      </div></span></span>
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
                            Add Bulk Stations
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="${pageContext.request.contextPath}/registerStation" class="tabsmenu">Add&nbsp;New Station&nbsp;</a></td>
            <td class="tabs1">Add&nbsp;Bulk Stations&nbsp;</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        <div class="box_tabs" id="output" style="position:relative; height:480px !important; overflow:auto; "><div style="display:none; position:absolute; z-index:10; top:50px; left:220px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;">
       <span id="error"></span>
       <div id="add_bulk_station_form">
       <br>Please provide the prefix for the names of stations and the number of stations to be generated. You can supply an initial default password that will apply to all stations, or let the system generate a random password for each station.<br><br><i>Please note that maximum number of stations that can be generated is: 20</i>
       <form action="" method="post" class="form-horizontal" name="registration" id="registration" onsubmit="return ValidateForm(this);">
       
  <div class="form-group">
    <label for="station_name_prefix" class="col-sm-2 control-label">Station Name Prefix</label>
    <div class="col-sm-10">
      <input name="station_name_prefix" id="station_name_prefix" type="text" class="field" value="">
    </div>
  </div>
  <div class="form-group">
    <label for="number_of_stations" class="col-sm-2 control-label">Number of Stations</label>
    <div class="col-sm-10">
      <input name="number_of_stations" id="number_of_stations" type="text" class="field" value="" size="2" onchange="CheckNumberOfStations(this);">&nbsp;<img src="./images/cmt_arrws3.gif" usemap="#Map"> <img src="./images/cmt_yes.gif" id="number_of_stations_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="number_of_stations_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
   <div class="form-group">
    <label for="station_name_prefix" class="col-sm-2 control-label">Credit Currency</label>
	<label for="station_name_prefix" class="col-sm-2 control-label" style="text-align:left !important;">KRW</label>
     </div> 
     
   <div class="form-group">
    <label for="number_of_stations" class="col-sm-2 control-label">Betting Profile</label>
    <div class="col-sm-10">
      <select name="betting_profile" id="betting_profile" class="field"><option value="234">KRW LB5/50 10/100 50/500 LR2/5 5/10 10/20</option><option value="239">KRW1 LB10/100 30/300 50/500 LR2/5 5/10 10/20</option><option value="243">KRW2 LB10/100 50/500 100/1000 LR2/5 5/10 10/20</option><option value="253">KRW3 LB50/500 100/1000 200/2000 LR2/5 5/10 10/20</option><option value="255">KRW4 LB2/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20</option><option value="390">USD1 LB1/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10</option><option value="393">USD2 LB100/1000 300/3000 500/5000 1000/10000 LR1/1 5/5 10/10</option><option value="396">USD3 LB1/100 100/1000 300/3000 500/5000 LR1/1 BJ10/2000</option><option value="398">USD4 LB5/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10 BJ10/750</option><option value="260">KRW5 LB5/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20</option><option value="173">CNY1 LB 10/1000  50/5000  200/10000 500/20000, LR 10/10 BJ 150/15000</option><option value="185">CNY2 LB 50/5000  200/10000  500/20000 1000/80000, LR 10/10 BJ 150/15000 1000/80000</option><option value="186">CNY3 LB 10/1000  50/5000  200/10000 500/20000, LR 10/10 BJ 40/2000 80/4000</option><option value="264">KRW6 LB2/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20 BJ 30/1000</option><option value="445">KRW7 LB5/100 10/500 100/1500 300/3000 LR1/10 3/20 5/30 BJ 10/1000</option><option value="446">KRW8 LB1/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10</option><option value="447">KRW9 LB100/1000 300/3000 500/5000 1000/10000 LR1/1 5/5 10/10</option><option value="448">KRW10 LB1/100 100/1000 300/3000 500/5000 LR1/1 BJ10/2000</option><option value="449">KRW11 LB5/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10 BJ 10/750</option><option value="450">KRW12 LB1/100 100/1000 500/5000 1000/10000 LR1/1 5/5 10/10 BJ 10/1000 1000/10000</option></select> <img src="./images/cmt_yes.gif" id="betting_profile_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="betting_profile_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div> 
  
     <div class="form-group">
    <label for="number_of_stations" class="col-sm-2 control-label">Auto Generated Password</label>
    <div class="col-sm-10">
      <input type="checkbox" id="auto_pass" name="auto_pass" checked="checked" onclick="ValidateCheckBox(this)">
    </div>
  </div> 
  
    <div class="form-group">
    <label for="station_name_prefix" class="col-sm-2 control-label">Enter Password</label>
    <div class="col-sm-10">
      <input name="new_pass" id="new_pass" type="text" class="field" value="" disabled="disabled"> <img src="./images/cmt_yes.gif" id="new_pass_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_pass_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i> (Will be applied to all stations.<br>Please enter a 6-10 digit number)</i></font>
    </div>
  </div>
  <div class="form-group" style="padding-left: 80px;">
  <input type="button" name="submit_button" id="submit_button" class="button" value=" Submit " onclick="ValidateForm();">&nbsp;
  <input type="button" class="button" name="submit_button1" id="submit_button1" value=" Cancel " onclick="location.href='${pageContext.request.contextPath}/stationsList'">
  </div>
  		<input type="hidden" value="20" id="station_bulk_size">
        
        </form>
        <map name="Map" id="Map">
		  <area shape="rect" coords="0,0,15,9" href="register_bulk_station.jsp#" onclick="ChangeNumberOfStations('increase')">
		  <area shape="rect" coords="-6,7,15,18" href="register_bulk_station.jsp#" onclick="ChangeNumberOfStations('decrease')">
		</map>
       <span id="result_block"></span>
       </div>
       <div id="result_table" style="display:none;"></div>
      </div></div>
	<style type="text/css">
#modalBackground
{
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;

	z-index: 9;
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

	z-index: 10;
	background-color: white;
	display: none;
	width: 20em;
	height: 10em;
	border: 1px solid blue;
}
</style>
<div id="modalBackground"></div>
                    </td>
                <td class="left" nowrap="nowrap" style="padding-left:15px">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'register_bulk_station\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/8/2015 17:38</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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
	  </div>                       <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
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

<script type="text/javascript" async="" src="./scripts/ga.js"></script><script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
<script src="./scripts/def_js.js" type="text/javascript"></script>
<script src="./scripts/drag_functions.js" type="text/javascript"></script>

<script type="text/javascript">
// <!--
//alert('false');
	function ValidateForm(){	
		theform = document.getElementById("registration");
		var reg_names= new RegExp(/^[a-zA-Z0-9-_ ]*$/);
   		var reg_password = new RegExp(/^\d{6,10}$/);
		if(theform.station_name_prefix.value==""){
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter station name prefix. Error # 1025</div>';
			set_focus(theform.station_name_prefix);
			return false;
		}
		else unset_focus(theform.station_name_prefix);
		
		if (!reg_names.test(replace_spaces(theform.station_name_prefix))) 
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
			set_focus(theform.station_name_prefix);
			return false;
		}
		else unset_focus(theform.station_name_prefix);

		if(theform.number_of_stations.value=="" || isNaN(theform.number_of_stations.value) || (theform.number_of_stations.value != parseInt(theform.number_of_stations.value))  || ((theform.number_of_stations.value*1)>(theform.station_bulk_size.value*1)) || ((theform.number_of_stations.value*1)<1)){
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
			set_focus(theform.number_of_stations);
			return false;
		}
		else unset_focus(theform.number_of_stations);
		
		unset_focus(theform.betting_profile);
		
		if(!theform.auto_pass.checked && theform.new_pass.value==""){
			
		document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The Passwords you type do not match. Error # 1022</div>';
			set_focus(theform.new_pass);
			return false;
		}
		else unset_focus(theform.new_pass);
		
		if(!theform.auto_pass.checked && !reg_password.test(theform.new_pass.value))
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The password supplied does not match the minimum complexity requirements. Error # 1021</div>';
			set_focus(theform.new_pass); 
			return false;
		}
		else unset_focus(theform.new_pass);
		//theform.disabled=true;
		var session='';
		if(!document.cookie)
			session='PHPSESSID=7bc02c6b95f0ce1ecaf5fd0bc54bab75';
		var auto_pass = true;
		if(theform.auto_pass.checked) auto_pass = true;
		else  auto_pass = false;
		var profile=-1;
		if(theform.betting_profile)
			profile=theform.betting_profile.value;
		var progressive=poker='false';
		var currency_id=0;
		currency_id1=theform.currency_id1.value;
		if(theform.progressive && theform.progressive.checked)
			progressive = 'true';
		if(theform.poker && theform.poker.checked)
		{
			poker = 'true';
			currency_id=theform.currency_id.value;
		}
		sndReqRegisterBulkStation(theform.station_name_prefix.value,theform.number_of_stations.value,auto_pass,theform.new_pass.value,profile,progressive,poker,currency_id,currency_id1,session);
		//openWin('wind1','cont1',300,300,200,100);
	}
	function ValidateCheckBox(checkbox){
	//alert(checkbox.checked);
		if(checkbox.checked){
			document.getElementById("new_pass").disabled=true;
		}
		else {
			document.getElementById("new_pass").disabled=false;
			
		}
	}
	function CheckNumberOfStations(input){
		if((input.value*1)>(document.getElementById('station_bulk_size').value*1) || (input.value*1)<1){
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
			set_focus(document.getElementById("number_of_stations"));
		}
		else{
			document.getElementById("error").innerHTML='';
			unset_focus(document.getElementById("number_of_stations"));
		}
	}
	function ChangeNumberOfStations(action){
		if(document.getElementById("number_of_stations").value!="" || (!isNaN(document.getElementById("number_of_stations").value))){
		//alert(document.getElementById("number_of_stations").value + ' ' +document.getElementById("station_bulk_size").value);
			if(action == "increase" && (document.getElementById("number_of_stations").value*1)<(document.getElementById("station_bulk_size").value*1)){
				document.getElementById("number_of_stations").value = (document.getElementById("number_of_stations").value*1)+1;
			}
			if(action == "decrease" && document.getElementById("number_of_stations").value>1){
				document.getElementById("number_of_stations").value = document.getElementById("number_of_stations").value-1;
			}
		}
		CheckNumberOfStations(document.getElementById("number_of_stations"));
	}
	function show_poker_fields(text_field)
	{
		if(text_field.checked)
			document.getElementById('currency_tr').style.display='';
		else 
			document.getElementById('currency_tr').style.display='none';
	}
//-->
</script>
</body></html>