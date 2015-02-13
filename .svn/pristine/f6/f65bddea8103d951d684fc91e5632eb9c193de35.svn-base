<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0042)https://www.totalegame.net/logins_list.php -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
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
<script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/drag_functions.js" type="text/javascript"></script>

<script src="./scripts/ajax_functions.js" type="text/javascript"></script>

<div id="container">
<div style="display:none; position:absolute; z-index:10; top:250px; left:450px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
	<!-- window 1 -->
	<div id="wind1" class="wins">
	<form action="./images/logins_list.html" method="post" name="agent_form" id="agent_form">
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
      			<td align="center" colspan="2"><br>Are you sure you want to delete <b><span id="login_name"></span></b>?<br></td>
      		</tr>
      		<tr>
      			<td align="right"><input type="button" class="button" name="submit_button" id="submit_button" value="Yes" onclick="disable_submit_button();sndReqLoginStatus(login_name,&quot;Delete&quot;,session);"></td>
      			<td align="left"><input type="button" class="button" name="back_button" id="back_button" value="Cancel" onclick="closeWin();"></td>
      		</tr>
		</tbody></table>
		
		</span></form>
	</div>
</div>
<table class="first" summary="" width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top">

<td class="center">
<table class="top" summary="" width="760" cellpadding="0" cellspacing="0" border="0">
  <tbody><tr valign="top">
    <td class="content">
      <div class="system">Management System</div>
      
                    				
                    
				
      <div class="page_title"><!--Manage agent account-->Manage My Login</div>
      <br>
        
      <span id="add_entity_block"></span>
        <br>
       
        <div class="tab_head">
        <br><br>
         <div id="list" align="center"><table class="table table-bordered table-condensed table-hover table-striped table-report printable tab_body" summary="" cellpadding="0" cellspacing="1" border="0"><tbody><tr><td class="tab_head1" align="center"><a class="tablink" onclick="sndReqSearchByAgent(&#39;0&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;LoginName&#39;,&#39;ASC&#39;,&#39;STRING&#39;,&#39;&#39;);" style="cursor:pointer;">Login Name</a></td><td class="tab_head1" align="center"><a class="tablink" onclick="sndReqSearchByAgent(&#39;0&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;FirstName&#39;,&#39;ASC&#39;,&#39;STRING&#39;,&#39;&#39;);" style="cursor:pointer;">First Name</a></td><td class="tab_head1" align="center"><a class="tablink" onclick="sndReqSearchByAgent(&#39;0&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;LastName&#39;,&#39;ASC&#39;,&#39;STRING&#39;,&#39;&#39;);" style="cursor:pointer;">Last Name</a></td><td class="tab_head1" align="center" nowrap="nowrap"><a class="tablink" onclick="sndReqSearchByAgent(&#39;0&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;StatusId&#39;,&#39;DESC&#39;,&#39;NUMERIC&#39;,&#39;&#39;);" style="cursor:pointer;">Status</a></td><td class="tab_head1" align="center"><a class="tablink" onclick="sndReqSearchByAgent(&#39;0&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;RoleName&#39;,&#39;ASC&#39;,&#39;STRING&#39;,&#39;&#39;);" style="cursor:pointer;">Type</a></td><td class="tab_head1" align="center"><a class="tablink" onclick="sndReqSearchByAgent(&#39;0&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;update_login&#39;,&#39;ASC&#39;,&#39;STRING&#39;,&#39;&#39;);" style="cursor:pointer;"></a></td></tr><tr><td class="tab_row3" align="left" nowrap="nowrap">sirwinston168405</td><td class="tab_row3" align="left" nowrap="nowrap">sirwinston</td><td class="tab_row3" align="left" nowrap="nowrap">lim</td><td class="tab_row3" align="center">Active</td><td class="tab_row3" align="left">Cashier; </td><td class="tab_row3"><a href="https://www.totalegame.net/logins_list.php#" onclick="RedirectFunc(&#39;sirwinston168405&#39;,&#39;update_login.php&#39;,&#39;Open&#39;,29466);"><div class="cmt_edit" title="Edit"></div></a></td></tr></tbody></table><script src="./images/ajax_functions.js" type="text/javascript"></script><script type="text/javascript">
						var session='';
						if(!document.cookie)
							session='PHPSESSID=8b366492a21c18ecb61812b8d1491c81;
						</script><div class="navigation"><input type="button" class="button" value="&lt; Back" disabled="" "="" onclick="sndReqSearchByAgent(&#39;-20&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;)">|<span style="color: white; font-size: 14px;">1</span>|<input type="button" class="button" value="Next &gt;" onclick="sndReqSearchByAgent(&#39;20&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;Login&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;)" disabled=""></div><div class="balance"><img src="./images/cmt_warning.gif" width="11" height="11" alt=""> <b>Total cashiers: 0</b></div></div>
         
<script type="text/javascript">
	sndReqList(0,'Login','','','',session);
	document.getElementById('add_entity_block').innerHTML='';	
</script>     
        </div>
      
      
      
      
      </td>
    <td class="left" nowrap="nowrap">
      <div class="welcome">
      
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'sirwinston168405\',\'logins_list\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>sirwinston lim</strong><br>Cashier<br><em><font size="1px"><span id="gmt_time">2/9/2015 17:26</span><br>Time zone: GMT +8:00 (Daylight: Off) </font></em><br>
	<input type="hidden" id="time_diff" value="8.0000">
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
	  </div>
	  
	       <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
    </td>
  </tr>
</tbody></table>
<img src="./images/cmt_null.gif" width="760" height="1" alt=""><br>


</td>

</tr>
</tbody></table>
<form action="" method="post" id="redirectfrom">
<input type="hidden" id="edit_agent_login" name="edit_agent_login">
<input type="hidden" id="is_locked" name="is_locked">
<input type="hidden" id="memberid" name="memberid">
</form>

<form action="" method="get" id="redirectfrom2" target="_newwin">
	<input type="hidden" id="SessionGUID" name="SessionGUID">
	<input type="hidden" id="LoginId" name="LoginId">
    <input type="hidden" id="ul" name="ul">
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
function RedirectFunc(agent_login,link,locked,memberid){
	document.getElementById('edit_agent_login').value = agent_login;
	document.getElementById('is_locked').value = locked;
	document.getElementById('redirectfrom').action = link;
	document.getElementById('memberid').value = memberid;
	document.getElementById('redirectfrom').submit();
}

function secondLogin(link, SessionGUID, LoginId, ul){
	document.getElementById('SessionGUID').value = SessionGUID;
	document.getElementById('LoginId').value = LoginId;
    document.getElementById('ul').value = ul;
	window.open(link,'_newwin','left=20,top=20,width=800,height=500,toolbar=1,scrollbars=1,resizable=1');
	document.getElementById('redirectfrom2').action = link;
	document.getElementById('redirectfrom2').submit();
}
</script>

</body></html>