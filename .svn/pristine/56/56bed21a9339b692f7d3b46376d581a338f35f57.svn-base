<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!--?xml version="1.0"?-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>

<title> Client Management Tool</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link href="login_status_files/new_style.css" rel="stylesheet" type="text/css">
<link href="login_status_files/drag_styles.css" rel="stylesheet" type="text/css">

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

<script src="login_status_files/ga.js" async="" type="text/javascript"></script><script src="login_status_files/post_form.js" type="text/javascript"></script>
<script src="login_status_files/ajax_functions.js" type="text/javascript"></script>
<script src="login_status_files/def_js.js" type="text/javascript"></script>
<script src="login_status_files/drag_functions.js" type="text/javascript"></script>
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
<body>

<form name="btagform" action=""></form>



<table class="first" summary="" border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody><tr valign="top">
        <td class="side">&nbsp;</td>
        <td class="center">

            <table class="top" summary="" border="0" cellpadding="0" cellspacing="0" width="760">
                <tbody><tr valign="top">
                    <td class="content">
                        <div class="system" id="title">
                            Management System
                        </div>
                        <span class="logo">
                            <img class="logo0" src="login_status_files/spacer.gif" alt="" height="30" width="135">
                    <!--[if IE 8]>
                    <style>
                    div.helplink {
                        background: url(/images/Get_help_mouseout.gif) top left no-repeat; 
                        cursor:pointer;
                        float:right;
                        margin:0;
                        padding:0;
                        margin-top:0;
                        margin-top:50px;
                    }
                    </style>
                    <![endif]-->				
                    <div class="helplink"><a href="https://www.totalegame.net/help/en/WebHelp_AG/index.php" target="_blank"><img src="login_status_files/spacer.gif" alt="Help" height="20" width="20"></a></div>
				
                        </span>
                        <br><br>
                        <div class="page_title">
                            Edit Cashier
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" border="0" cellpadding="0" cellspacing="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="https://www.totalegame.net/update_login.php" class="tabsmenu">Edit&nbsp;Login </a></td><td class="tabs1">Lock/Unlock&nbsp;</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        <div class="box_tabs" id="output" style="position:relative; height: 300px;"><div style="display:none; position:absolute; z-index:10; top:50px; left:220px;" id="loader_gif"><img src="login_status_files/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;">
<script type="text/javascript">
// <!--
function ValidateForm(theform) {
 if ((theform.lock[0].checked == false) && (theform.lock[1].checked == false)) {
  document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! You must select one of the options below. Error # 1011</div>';
  set_focus(theform.lock[0]);
  return false;
 }
 else unset_focus(theform.lock[0]);
 
 var reset_arr=new Array('lock');
 reset_focus_gif(reset_arr);
 set_action(theform);
 return false;
}

function set_action(theform)
{
for (i=0;i<theform.lock.length;i++) {
	if (theform.lock[i].checked) {
		lock_status = theform.lock[i].value;
	}
}
//alert(lock_status);
 var session='';
 if(!document.cookie)
  session='PHPSESSID=69fd15708e322c3db38811ae09dcc3af';
  disable_submit_button();
 sndReqLoginStatus('cashierfirst168311',lock_status,session);
}
//-->
</script>
       <span id="error"></span>
       <form action="logins_list.php" method="post" name="agent_form" id="agent_form" onsubmit="return ValidateForm(this);">
        <table summary="" border="0" cellpadding="0" cellspacing="10">
          <tbody><tr><td> <img src="login_status_files/cmt_yes.gif" id="lock_gif_yes" alt="" style="display:none;" height="13" width="13"><img src="login_status_files/cmt_no.gif" id="lock_gif_no" alt="" style="display:none;" height="13" width="13"></td>
            <td><input name="lock" id="lock" value="Lock" type="radio">Lock Cashier <b>cashierfirst cashierlast</b> (cashierfirst168311)<br>
            <input name="lock" id="lock" value="Open" checked="checked" disabled="disabled" type="radio">Unlock Cashier <b>cashierfirst cashierlast</b> (cashierfirst168311)</td>
            </tr>
            <tr>
            	<td><br></td>
            </tr>
            <tr>
            <td colspan="2" align="center">&nbsp;<input class="button" value="  Cancel  " onclick="location.href='logins_list.php'" type="button">&nbsp;<input name="submit_button" id="submit_button" class="button" value="  Save  " type="submit"></td>
          </tr>
        </tbody></table>
        </form>
      </div></div>
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'login_status\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">2/5/2015 19:59</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
	<input id="time_diff" value="9.0000" type="hidden">
	<form action="${pageContext.request.contextPath}/changePassword" style="margin:0px;" method="get"><input class="logout" value="Logout" onclick="location.href='logout.php'" style="cursor:pointer;" type="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="logout" style="width:120px;" value="Change Password" type="submit"></form>	
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
	  </div>                      <img src="login_status_files/cmt_null.gif" alt="" height="1" width="220"><br>
                    </td>
                </tr>
            </tbody></table>

            <img src="login_status_files/cmt_null.gif" alt="" height="1" width="760"><br>
            <div class="footer">
                
            </div>

        </td>
        <td class="side">&nbsp;</td>
    </tr>
</tbody></table>

<form action="table2csv.php" name="export_form" method="post">
    <input name="csv_content" type="hidden">
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
<!-- Page Loaded in 0.73045897483826 seconds -->