<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0037)https://www.totalegame.net/status.php -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title>


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
                            Edit Agent
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/changeBalance" class="tabsmenu">Change&nbsp;Balance </a></td>
            <td class="tabs1">Lock/Unlock&nbsp;</td><td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/resetPassword" class="tabsmenu">Reset&nbsp;Password </a></td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/updateAgent" class="tabsmenu">View&nbsp;Details </a></td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/changeCommissionFee" class="tabsmenu">Commission&nbsp;Fee </a></td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        
    <div id="container">
        <div style="display:none; position:absolute; z-index:10; top:250px; left:450px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
            <!-- window 1 -->
            <div id="wind1" class="wins">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind1&#39;,&#39;cont1&#39;);">
                    <tbody><tr>
                        <td width="100%"></td>				
                        <td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin()" title="close"></td>
                    </tr>
                </tbody></table>		
                <span id="cont1" class="text">

                <table align="center" valign="middle" width="100%" cellpadding="10" cellspacing="10" style="position: relative; z-index: 999;">
                    <tbody><tr>
                        <td align="center" colspan="2"><span id="error"></span></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2"><br><span id="confirmation_lock"></span><br></td>
                    </tr>
                    <tr>
                        <td align="right"><input type="button" class="button" name="submit_button" id="submit_button" value="Yes"></td>
                        <td align="left"><input type="button" class="button" name="back_button" id="back_button" value="Cancel" onclick="closeWin();"></td>
                    </tr>
                </tbody></table>
                </span>
            </div>
        </div>
	<div class="box_tabs" id="output" style="position:relative; height: 200px !important;">
		<div style="display:none; position:absolute; z-index:10; top:50px; left:220px;" id="loader_gif">
			<img src="./images/ajax-loader-transparent.gif" alt="">
		</div>
		<div style="position:absolute; z-index:0; width: 95%;">
			<script type="text/javascript">
			// <!--
				function ValidateForm(theform, now_status, user_type) {
					lock_status='';
					if(theform.lock[0])
					{
						field = theform.lock[0];
						for (i = 0; i < theform.lock.length; i++) {
							if (theform.lock[i].checked) {
								lock_status = theform.lock[i].value;
							}
						}
					}
					else
					{
						field = theform.lock;
						if (theform.lock.checked)
						lock_status = theform.lock.value;
					}
	
					if (lock_status == '') {
	  					document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! You must select one of the options below. Error # 1011</div>';
	  					set_focus(field);
	  					return false;
	 				}
	 				else {
	 					unset_focus(field);
	 				}
	
	 				var reset_arr=new Array('lock');
				    reset_focus_gif(reset_arr);
                    if((lock_status=='NetworkLock' || lock_status=='NetworkSuspend' || lock_status=='NetworkOpen') && !(now_status==10 && lock_status == 'NetworkLock' && user_type ==3) && !(now_status==3 && lock_status=='NetworkOpen'))
                        {   
                            document.getElementById('submit_button').onclick=function(){set_action(theform,lock_status)};
                            
                            if(now_status == 10 && lock_status == 'NetworkLock')
                                conf_massage = 'Locking suspended network will disable master agent and its subordinate agents to login into back office.<br/> Do you want to proceed?';
                            else if(lock_status=='NetworkOpen')
                                conf_massage = 'Unlocking players and stations may take time. <br/> Mail notification will be sent when completed. <br/> Do you want to proceed?';
                            else 
                                conf_massage = 'Locking players and stations may take time. <br/> Mail notification will be sent when completed. <br/> Do you want to proceed?';
                                    
                            document.getElementById('error').innerHTML= '';
                            document.getElementById('confirmation_lock').innerHTML= conf_massage;
                            openWin('wind1','cont1',200,300,400,250);
                        }
                    else
                        set_action(theform,lock_status);
				    return false;
				}
				
				function set_action(theform,lock_status)
				{
					var session='';
					if(!document.cookie)
					 session='PHPSESSID=80e181d6bc8abd06b23241d5d2e9a9e0';
					disable_submit_button();
					sndReqStatusChange('big157123',lock_status,session);
				}
			//-->
			</script>
	      	<span id="error1"></span>
	       	<form class="form-horizontal" action="https://www.totalegame.net/agents_list.php" method="post" name="agent_form" id="agent_form" onsubmit="return ValidateForm(this, &#39;1&#39;, &#39;3&#39;);">
	        <!--<form action="" method="post" name="agent_form" id="agent_form" onsubmit="return ValidateForm(this, '1', '3');">-->
            
            
       <div class="form-group" style="padding-left:20px;">
    <input name="lock" id="lock" type="radio" value="Lock">

     	Lock Agent <b>big ka</b> (big157123)

  </div>
         <div class="form-group" style="padding-left:20px;">
    <input name="lock" id="lock" type="radio" value="NetworkLock">

     	Lock Agent <b>big ka</b> (big157123) and all accounts

  </div>
           <div class="form-group" style="padding-left:20px;">
    <input name="lock" id="lock" type="radio" value="NetworkSuspend"></input>
     Suspend the network - all players and stations will be locked
  </div>
           <input type="button" class="button" value="  Cancel  " onclick="location.href=&#39;agents_list.php&#39;">&nbsp;
           <input type="submit" name="submit_button" id="submit_button" class="button" value="  Save  "> 
           
	        </form>
	      </div></div>
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'a155755\',\'status\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>a a</strong><br>Representative<br><em><font size="1px"><span id="gmt_time">2/9/2015 12:31</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
	<input type="hidden" id="time_diff" value="9.0000">
	<form action="https://www.totalegame.net/change_password.php" style="margin:0px;" method="post"><input type="button" class="logout" value="Logout" onclick="location.href=&#39;logout.php&#39;" style="cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="logout" style="width:120px;" value="Change Password"></form>	
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
                         <div id= "menus">
      
      <div class="menu"></div>
      
      <!-- For top start-->
      <div class="menu"><a href="${pageContext.request.contextPath}/agentsList" class="leftmenu">» Manage Agents Account</a></div>
      <div class="menu"><a href="${pageContext.request.contextPath}/loginsList" class="leftmenu">» Manage My Login</a></div>
      <!-- For top end -->
      
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
      	    
      	     <!-- For top start -->
     		<div class="submenu"><a href="${pageContext.request.contextPath}/playcheckReport" class="leftsubmenu">» PlayCheck Report</a></div>
    		<div class="submenu"><a href="${pageContext.request.contextPath}/progGameplayReport" class="leftsubmenu">» Progressive Game Play</a></div>
    		<div class="submenu"><a href="${pageContext.request.contextPath}/progWinsReport" class="leftsubmenu">» Progressive Wins</a></div>
    		<!--  for top end -->
      	
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
	  </div>                              <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
                    </td>
                </tr>
            </tbody></table>

            <img src="./images/cmt_null.gif" width="760" height="1" alt=""><br>
            

        </td>
        
    </tr>
</tbody></table>

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