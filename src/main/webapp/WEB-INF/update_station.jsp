<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0045)https://www.totalegame.net/update_station.php -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

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

<script type="text/javascript" async="" src="./scripts/ga.js"></script>
<script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
<script src="./scripts/def_js.js" type="text/javascript"></script>
<script src="./scripts/drag_functions.js" type="text/javascript"></script>
</head>
<body cz-shortcut-listen="true">

<form name="btagform" action=""></form>



<table class="first" summary="" width="100%" cellpadding="0" cellspacing="0" border="0">
    <tbody><tr valign="top">
        <td class="center">

            <table class="top" summary="" width="760" cellpadding="0" cellspacing="0" border="0">
                <tbody><tr valign="top">
                    <td class="content">
                        <div class="system" id="title">
                            Management System
                        </div>
                        <div class="page_title">
                            Edit Station
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Edit&nbsp;station </td>
            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="${pageContext.request.contextPath}/stationStatus" class="tabsmenu">Lock/Unlock&nbsp;</a></td>
            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="${pageContext.request.contextPath}/stationResetPassword" class="tabsmenu">Reset&nbsp;Password </a></td>
            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="${pageContext.request.contextPath}/stationResetAttempts" class="tabsmenu">Reset&nbsp;Login Attempts&nbsp;</a></td>
            <td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        <div class="box_tabs" id="output" style="position:relative; height: 350px; width: 580px; overflow:auto;"><div style="display:none; position:absolute; z-index:10; top:50px; left:220px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;">
<script type="text/javascript">
// <!--
function ValidateForm(theform) {
	var reg_names= new RegExp(/^[a-zA-Z0-9-_ ]*$/);
	var reg_alias= new RegExp(/^[a-zA-Z0-9-]{4,12}$/);

	if (theform.station.value == "") {
		document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again.</div>';
		set_focus(theform.station);
		return false;
	}
	else unset_focus(theform.station);
 
	if (!reg_names.test(theform.station.value)) {
		document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
		set_focus(theform.station);
		return false;
	}
	else unset_focus(theform.station);

	if(theform.poker && theform.poker.checked && theform.alias.disabled == false) {
		if(theform.alias.value == '' || !reg_alias.test(theform.alias.value)){
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';
			set_focus(theform.alias);
			return false;
		}
		else unset_focus(theform.alias);
	}
	
	var reset_arr=new Array('station');
	reset_focus_gif(reset_arr);
	set_action(theform);
	return false;
}

function show_poker_fields(text_field)
{
	if(text_field.checked) {
		document.getElementById('currency_tr').style.display=display;
		document.getElementById('alias_tr').style.display=display;
	}
	else { 
		document.getElementById('currency_tr').style.display='none';
		document.getElementById('alias_tr').style.display='none';
	}
}

function set_action(theform)
{
var alias = '';
var session='';
if(!document.cookie)
  	session='PHPSESSID=882f6b912e4d5952703ebc409ca8e698';
disable_submit_button();
var profile=-1;
var currency_id=0;
var currency_id1=0;
var currency_id2=0;
/*currency_id1=theform.currency_id1.value;*/
/*currency_id = theform.currency_id1.value;*/
if(theform.betting_profile)
	profile=theform.betting_profile.value;
var progressive='false';
if(theform.progressive && theform.progressive.checked)
	progressive = 'true';
var poker='false';
if(theform.poker && theform.poker.checked)
{
	alias = theform.alias.value;
    poker = 'true';
	currency_id = theform.currency_id1.value;
}
		
if (theform.currency_id2) currency_id2=theform.currency_id2.value;
sndReqUpdateStation(theform.account.value,theform.station.value,theform.CLCustomerId.value,profile,progressive,poker,currency_id,currency_id2, alias, session);
}
//-->
</script>
       <span id="error"></span>
       <form class="form-horizontal" action="stations_list.jsp" method="post" name="agent_form" id="agent_form" onsubmit="return ValidateForm(this);">
       <input name="CLCustomerId" id="CLCustomerId" type="hidden" class="field" value="4031416">
        
  <div class="form-group">
    <label for="account" class="col-sm-3 control-label">Station Account Number</label>
    <div class="col-sm-9">
      <input name="account" id="account" type="text" class="field" value="OC0001741628" disabled="">
    </div>
  </div>
   <div class="form-group">
    <label for="station" class="col-sm-3 control-label">Station Name</label>
    <div class="col-sm-9">
      <input name="station" id="station" type="text" class="field" value="test"> <img src="./images/cmt_yes.gif" id="station_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="station_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div> 
   <div class="form-group">
    <label for="betting_profile" class="col-sm-3 control-label">Betting Profile</label>
    <div class="col-sm-9">
      <select name="betting_profile" id="betting_profile" class="field" disabled="disabled"><option value="234" selected="selected">KRW LB5/50 10/100 50/500 LR2/5 5/10 10/20</option><option value="239">KRW1 LB10/100 30/300 50/500 LR2/5 5/10 10/20</option><option value="243">KRW2 LB10/100 50/500 100/1000 LR2/5 5/10 10/20</option><option value="253">KRW3 LB50/500 100/1000 200/2000 LR2/5 5/10 10/20</option><option value="255">KRW4 LB2/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20</option><option value="390">USD1 LB1/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10</option><option value="393">USD2 LB100/1000 300/3000 500/5000 1000/10000 LR1/1 5/5 10/10</option><option value="396">USD3 LB1/100 100/1000 300/3000 500/5000 LR1/1 BJ10/2000</option><option value="398">USD4 LB5/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10 BJ10/750</option><option value="260">KRW5 LB5/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20</option><option value="173">CNY1 LB 10/1000  50/5000  200/10000 500/20000, LR 10/10 BJ 150/15000</option><option value="185">CNY2 LB 50/5000  200/10000  500/20000 1000/80000, LR 10/10 BJ 150/15000 1000/80000</option><option value="186">CNY3 LB 10/1000  50/5000  200/10000 500/20000, LR 10/10 BJ 40/2000 80/4000</option><option value="264">KRW6 LB2/100 100/1000 300/3000 500/5000 1000/10000 LR2/5 5/10 10/20 BJ 30/1000</option><option value="445">KRW7 LB5/100 10/500 100/1500 300/3000 LR1/10 3/20 5/30 BJ 10/1000</option><option value="446">KRW8 LB1/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10</option><option value="447">KRW9 LB100/1000 300/3000 500/5000 1000/10000 LR1/1 5/5 10/10</option><option value="448">KRW10 LB1/100 100/1000 300/3000 500/5000 LR1/1 BJ10/2000</option><option value="449">KRW11 LB5/100 100/1000 300/3000 500/5000 LR1/1 5/5 10/10 BJ 10/750</option><option value="450">KRW12 LB1/100 100/1000 500/5000 1000/10000 LR1/1 5/5 10/10 BJ 10/1000 1000/10000</option></select> <img src="./images/cmt_yes.gif" id="betting_profile_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="betting_profile_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div> 
   
    <div class="form-group">
    <label for="station_name_prefix" class="col-sm-3 control-label">Credit Currency</label>
	<label for="station_name_prefix" class="col-sm-9 control-label" style="text-align:left !important;">KRW</label>
     </div> 
     
      <div class="form-group" style="padding-left: 80px;">
 <input type="button" class="button" name="back_button" id="back_button" value="Cancel" onclick="location.href='${pageContext.request.contextPath}/stationsList'">
 <input type="submit" name="submit_button" id="submit_button" class="button" value=" Save  ">
  </div>


        </form>
        <span id="result_block"></span>
      </div></div>
      <script>
      if(document.getElementById('poker'))
      	show_poker_fields(document.getElementById('poker'));
      </script>
      
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'update_station\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/22/2015 14:36</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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
	  </div>                        <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
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
            //alert(table[i]);
            if(table[i].tagName=="TABLE"){
                for(j=0;j<table[i].rows.length;j++){
                    row="";
                    for(k=0;k<table[i].rows[j].cells.length;k++){

                        //if(!get_table(table[i].rows[j].cells[k])){
                            cell_content=strip_HTML_tags(table[i].rows[j].cells[k].innerHTML);
                            //cell_content=table[i].rows[j].cells[k].innerHTML;
                            row=row+'"'+cell_content.replace(/&nbsp;/g," ")+'"'+",";
                        //}
                    }
                        //if(row.search('/\w/')!=-1)
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