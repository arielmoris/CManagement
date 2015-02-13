<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0042)https://www.totalegame.net/agents_list.php -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="btagform" action=""></form>

<div id="container">
<div style="display:none; position:absolute; z-index:10; top:250px; left:450px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
	<!-- window 1 -->
	<form action="./images/agents_list.html" method="post" name="agent_form" id="agent_form">
	<div id="wind1" class="wins">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind1&#39;,&#39;cont1&#39;);">
			<tbody><tr>
				<td width="100%"></td>				
				<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="enable_submit_button(); if(document.getElementById(&quot;button2&quot;).style.display==&quot;block&quot;) document.agent_form.submit(); closeWin();" title="close"></td>
			</tr>
		</tbody></table>		
		<div id="cont1" class="text" style="overflow-y:scroll;overflow-x:hidden;">		
		<table align="center" valign="middle" width="100%" cellpadding="10" cellspacing="10" border="0">
			<!--tr>
      			<td align='center' colspan='2'><span id='error1'></span></td>
      		</tr-->
			<tbody><tr>
      			<td align="center" colspan="2"><span id="error1"></span><div id="delete_result"><br>Are you sure you want to permanently delete&nbsp;<span id="MemberName"></span>?<br></div></td>
      		</tr>
      		<tr id="button1" style="display: block;" align="center">
      			<td align="right"><input type="button" class="button" value="Yes" onclick="set_action();"></td>
      			<td align="left"><input type="button" class="button" value="Cancel" onclick="enable_submit_button(); closeWin();"></td>
      		</tr>
      		<tr id="button2" style="display: none;" align="center">
      			<td align="center" colspan="2"><input type="button" class="button" value="OK" onclick="document.agent_form.submit(); closeWin();"></td>
      		</tr>
		</tbody></table>		
		</div>
		
	</div></form>
</div><div id="container2">
<div style="display:none; position:absolute; z-index:10; top:250px; left:450px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
	<!-- window 2 -->
	<div id="wind2" class="wins">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind2&#39;,&#39;cont2&#39;);">
			<tbody><tr>
				<td width="100%"></td>
				<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin();" title="close"></td>
			</tr>
		</tbody></table>
		<div id="cont2" class="text" style="overflow-y:scroll;overflow-x:hidden;">
		<table align="center" valign="middle" width="100%" cellpadding="10" cellspacing="10" border="0">
			<tbody><tr>
      			<td align="left" colspan="2">
                    <span id="error2"></span>
                    <p>
						tst
		                <br> 
                     </p>
                </td>
      		</tr>
      	</tbody></table>
		</div>
	</div>
</div>
<table class="first" summary="" width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top">

<td class="center">
<table class="top" summary="" width="760" cellpadding="0" cellspacing="0" border="0">
  <tbody><tr valign="top">
    <td class="content">
      <div class="system">Management System</div>
 
      <div class="page_title"><!--Manage agent account-->Manage Agents List</div>
      <br>
        
      <span id="add_entity_block">    
      <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td><form action="${pageContext.request.contextPath}/addAgent" method="get">
            <input type="submit" class="button" value="Add Agent">
            <input type="hidden" value="4" name="agentTypeId">
            </form></td>
            <td>&nbsp;&nbsp;</td>
            <td>To add a new agent, click the 'Add Agent' button. To edit an existing agent, click 'edit' in the table below.</td>
          </tr>
        </tbody></table>
        </span>
        <br>
       
        <div class="tab_head">

<form:form id="queryForm"  modelAttribute="agentsListDto" name="queryForm" action="${pageContext.request.contextPath}/agentsList?search" method="post"   class="form-inline">

  <div class="form-group">
    <label for="firstName" class="tab_head">First Name</label>
    <form:input path="firstName" type="text" class="show" id="firstName" placeholder=""></form:input>
  </div>
  <div class="form-group">
    <label for="lastName" class="tab_head">Last Name</label>
    <form:input path="lastName" type="lastName" class="show" id="lastName"></form:input>
  </div>
  <div class="form-group">
    <label for="mobileNum" class="tab_head">Mobile Number</label>
    <form:input path="mobileNum" type="text" class="show" id="mobileNum"></form:input>
  </div>
      <div class="form-group">
<input type="button" class="button show" value="Search" onclick="searchByAccount('');" style="margin-top: 23px;">
</div></form:form>


    <br></br>
         <div id="list" align="center">
         
         <table id="dataTable"
			class="table table-bordered table-condensed table-hover table-striped table-report printable tab_body">
			<thead>
				<tr>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>First Name</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Last Name</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Mobile Number</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Status</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Casino Balance</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6></h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6></h6></th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		
 <script src="./scripts/ajax_functions.js" type="text/javascript"></script>
       
    <div class="tab_head" style="padding-top:10px; text-align: left;">Display <select name="enteries_num" id="enteries_num" class="field" style="width:15pxpx;"><option value="10" title="">10</option><option value="15" title="">15</option><option value="20" title="" selected="selected">20</option><option value="25" title="">25</option><option value="30" title="">30</option><option value="35" title="">35</option><option value="40" title="">40</option><option value="45" title="">45</option><option value="50" title="">50</option><option value="55" title="">55</option><option value="60" title="">60</option><option value="65" title="">65</option><option value="70" title="">70</option><option value="75" title="">75</option><option value="80" title="">80</option><option value="85" title="">85</option><option value="90" title="">90</option><option value="95" title="">95</option><option value="100" title="">100</option></select> entries per page&nbsp;&nbsp;&nbsp;
    
   </div><div class="balance"><img src="./images/cmt_warning.gif" width="11" height="11" alt=""> <b>Total agents: 26</b></div></div>
         
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
	<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
        </div>
      </td>
    <td class="left" nowrap="nowrap">
      <div class="welcome">
     
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>a a</strong><br>Representative<br><em><font size="1px"><span id="gmt_time">2/6/2015 15:41</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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
	  </div>
	  
	  
	  <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
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
var data = [
            [
                "Tiger Nixon",
                "System Architect",
                "Edinburgh",
                "5421",
                "2011/04/25",
                "$3,120","7","8"
            ],
            [
                "Garrett Winters",
                "Director",
                "Edinburgh",
                "8422",
                "2011/07/25",
                "$5,300","7","8"
            ]
        ];

var orderByDefault = $("select[name='orderBy']").val();
orderByDefault = orderByDefault ? orderByDefault : 0;
var orderDefault = [orderByDefault, "desc"];
var dataTable = $('#dataTable').DataTable({
	//	data:data,
 	"sDom": '<"top topEdit"<"plugin-wrapper"f><"plugin-wrapper"ip>>tr<"bottom1">',
	"serverSide":true,
	"processing":true,
	"autoWidth":false,
	"bAutoWidth":false,
	"ajax": {
			"url"  : "${pageContext.request.contextPath}/table/agentsList",
			"type" : "post",
				"error": function (xhr, error, thrown) {
			       console.log( 'Ooops, something went wrong!');
			     alert("Error. Unable to load table data.");
			   //window.location.reload(true);
			    }
		 },
 	 "columns" : [
	  				 	{
	  				 		data:"firstName",
	  				 		className : "alignLeft",
	  				 		sWidth:"17%",
	  	  	  				render: function(data,type,row){
									try{
										data = data.formatDate();
									}catch (e) {
									console.log(e);
								}
									return data;
							}
	  				 	},
	  				 	{
	  				 		data:"lastName",
	  				 		sWidth:"5%",
	  				 		className : "alignLeft"
	  				 	},
	  				 	{
	  				 		data:"mobileNumber",
	  				 		sWidth:"16%",
	  				 		className : "alignRight",
	  				 	},
	  				 	{
	  				 		data:"status",
	  				 		sWidth:"16%",
	  				 		className : "alignRight",
	  				 		
	  				 	},
	  				 	{
	  				 		data:"casinoBalance", 
	  				 		sWidth:"16%",
	  				 		className : "alignLeft",
	  				 		
	  				 	},
	  				 	{

		  				 	},
		  				 	{
			  				 	}
	  				 	
	  				], 

			
	  			"order" : orderDefault
});

</script>
</body></html>