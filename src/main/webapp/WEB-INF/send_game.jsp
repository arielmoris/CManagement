<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0040)https://www.totalegame.net/send_game.php -->
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

<script type="text/javascript" async="" src="./styles/ga.js"></script>
<script src="./styles/post_form.js" type="text/javascript"></script>
<script src="./styles/ajax_functions.js" type="text/javascript"></script>
<script src="./styles/def_js.js" type="text/javascript"></script>
<script src="./styles/drag_functions.js" type="text/javascript"></script>
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
                            Edit Player
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="https://www.totalegame.net/update_player.php" class="tabsmenu">View&nbsp;Details </a></td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="https://www.totalegame.net/player_status.php" class="tabsmenu">Lock/Unlock&nbsp;</a></td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="https://www.totalegame.net/player_reset_password.php" class="tabsmenu">Reset&nbsp;Password </a></td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="https://www.totalegame.net/player_reset_attempts.php" class="tabsmenu">Reset&nbsp;Login Attempts&nbsp;</a></td><td class="tabs1">Mobile&nbsp;Games </td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="https://www.totalegame.net/agent_earning_report.php" class="tabsmenu">View&nbsp;Player Earnings&nbsp;</a></td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="https://www.totalegame.net/game_profitability_report_by_account.php" class="tabsmenu">Profit&nbsp;by Game&nbsp;Type </a></td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        
<div class="box_tabs" id="output" style="position:relative; height: 300px !important;"><div style="display:none; position:absolute; z-index:10; top:150px; left:300px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;">
<script type="text/javascript">
// <!--

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
    

function ValidateForm(theform) {var reg = new RegExp(/^\d{6,18}$/);
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
			}
            if(theform.notify[0].checked==false)
   			theform.notify_email.value='';
   		if(theform.notify[1].checked==false)
   			theform.notify_sms.value='';
   		if(theform.notify[2])
   		{
			if(theform.notify[2].checked==false)
   				theform.notify_print.value='false';
   			else theform.notify_print.value='true';
   		}
 var reset_arr=new Array('language','notify_sms','notify_email');
 reset_focus_gif(reset_arr);
 document.getElementById('error').innerHTML='';
 set_action(theform);
 return false;
 
}
function set_action(theform)
{
 	disable_submit_button();
    notify_sms = theform.notify[1].checked ? theform.notify_sms.value : '';
    notify_email = theform.notify[0].checked ? theform.notify_email.value : '';
 	sndReqSendGame('OC0001728149','639991234567',theform.language.value,notify_email,notify_sms,session);
}

var session='';
if(!document.cookie)
	session='PHPSESSID=f673de4ecb9d7f4ea445d6f06e196659';
  
function display_fields(fields_arr,display)
{
	for(i=0;i<fields_arr.length;i++)
		document.getElementById('tr_'+fields_arr[i]).style.display=display;
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
function onchange_language(theselect)
{		
	//var fields_arr=new Array('games','buttons'); 
    var fields_arr=new Array('buttons'); 
	//reset_focus_gif(fields_arr);
	display_fields(fields_arr,'none'); 
	
	//if(check_selected_value(theselect))
	//	sndReqGetGamesSelect('games','OC0001728149',theselect.value,session);
}
//-->
</script>
       <span id="error"></span>
       <br>
       <center><p class="text-left">Select the language and how the game will be sent directly to the player's mobile phone. </p></center>
       
       <form class="form-horizontal" action="players_list.jsp#" method="post" name="agent_form" id="agent_form" onsubmit="return ValidateForm(this);">
     
       
    
       <div class="form-group">
    <label for="mobile_number" class="col-sm-2 control-label">Preferred Language</label>
    <div class="col-sm-10">
     	<select name="language" id="language" class="field"><option value="1" selected="selected">English</option><option value="2">Japanese</option><option value="3">Chinese</option><option value="4">Spanish</option><option value="6">German</option><option value="8">Korean</option><option value="9">Turkish</option><option value="11">Russian</option><option value="12">Traditional Chinese</option></select> <img src="./images/cmt_yes.gif" id="language_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="language_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
    
  <div class="form-group">
  	<div class="col-sm-2 text-right">
    <input   type="checkbox" value="notify_email" name="notify" id="notify" checked="checked" onclick="if(this.checked==true) document.agent_form.notify_email.disabled=false; else document.agent_form.notify_email.disabled=true;"><b>E-mail address</b>
   </div>
    <div class="col-sm-10">
     	<input type="text" class="field" value="testgmailyahoo@yahoogamil.com" name="notify_email" id="notify_email"> <img src="./images/cmt_yes.gif" id="notify_email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_email_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>

  <div class="form-group">
  	<div class="col-sm-2 text-right">
    <input type="checkbox" value="notify_sms" name="notify" id="notify" onclick="if(this.checked==true) document.agent_form.notify_sms.disabled=false; else document.agent_form.notify_sms.disabled=true;"><b>SMS to</b>
   </div>
    <div class="col-sm-10">
     	<input type="text" class="field" value="639991234567" name="notify_sms" id="notify_sms" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_sms_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_sms_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div> 
  <font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font>
  <br></br>
    <div class="form-group" style="padding-left: 80px;">
  <input type="button" name="back_button" id="back_button" class="button" value="  Cancel  " onclick="location.href='players_list.php'">
 <input type="submit" name="submit_button" id="submit_button" class="button" value="  Send  ">
  </div>
  
     </form>
     
     
        
      </div></div>
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'send_game\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/23/2015 18:45</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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
	  </div>                        <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
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