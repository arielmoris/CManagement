<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0044)stations_list.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">


<meta http-equiv="Content-Script-Type" content="text/javascript">


<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
<link href="./styles/print.css" media="print" rel="stylesheet" type="text/css">



<!-- <script src="./scripts/ga.js" type="text/javascript" async="" ></script>
<script src="./scripts/post_form.js" type="text/javascript"></script>
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
</script>	 -->
</head>
<body cz-shortcut-listen="true">
<form name="btagform" action=""></form>

	<div id="container">
		<div style="display:none; position:absolute; z-index:10; top:250px; left:500px;" id="loader_gif">
			<img src="./images/ajax-loader-transparent.gif" alt="">
		</div>
		<!-- window 1 -->
		<div id="wind1" class="wins">
			<!-- <table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start('wind1','cont1');">  -->
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar">
				<tbody><tr>
					<td width="100%"></td>				
					<td width="16" align="right" style="cursor:pointer" valign="middle">
						<img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin();" title="close">
					</td>
				</tr>
			</tbody></table>		
			<span id="cont1" class="text">		
				<table align="center" valign="middle" width="100%" cellpadding="10" cellspacing="10">
					<tbody><tr valign="top">
      					<td align="center" colspan="2">
      						<span id="error1"></span>
      					</td>
      				</tr>
      				<tr>
      					<td align="left" colspan="2">
      						<span id="info_text"></span>
      					</td>
      				</tr>
      				<tr>
      					<td align="center" colspan="2">
      						<span id="window_result"></span>
      					</td>
      				</tr>
				</tbody></table>		
			</span>
		</div>
	</div>
<div id="container2">
<div style="display:none; position:absolute; z-index:10; top:250px; left:450px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
	<!-- window 2 -->
	<div id="wind2" class="wins">
			<!-- <table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start('wind2','cont2');"> -->
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar">
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
					
		                <br> 
                     </p>
                </td>
      		</tr>
      	</tbody></table>
		</div>
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
      <div class="page_title"><!--Manage agent account-->Stations List</div>
      <br>
      <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <!-- <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Stations&nbsp;List </td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="players_list.jsp" class="tabsmenu">Players&nbsp;List </a></td><td class="tabs4">&nbsp;</td> -->
        	 <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Stations&nbsp;List </td>
        	 <td class="tabs3" ><a href="${pageContext.request.contextPath}/playersList" class="tabsmenu">Players&nbsp;List </a></td><td class="tabs4">&nbsp;</td>
         
          </tr>
        </tbody></table>
      </div>
 
      <div class="box_tabs">
      <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td id="add_cell"><form action="${pageContext.request.contextPath}/registerStation" method="get">
            <input type="submit" class="button" value="Add Station">
            <input type="hidden" value="" name="agentTypeId">
            </form></td>
            <td>&nbsp;&nbsp;</td>
            <td>To add a new station or to automatically generate a bulk of stations, click the 'Add Station' button. To edit an existing station, click 'edit' in the table below.</td>
          </tr>
        </tbody></table>
        <br>
       
        <div class="tab_head">
        
        <div id="list" align="center">
                <table summary="" cellpadding="0" cellspacing="0" border="0" width="70%" style="margin-bottom: 3px;">
            
                    <tbody><tr>
                        <td class="tab_head" colspan="3" align="left" nowrap="nowrap">
                <input type="checkbox" style="display:none" name="related_product_casino" id="related_product_casino" checked="checked">
            </td>
                       <!--  <td class="tab_head" align="right" nowrap="nowrap">
                            <input type="button" class="button" name="export_to_excel" id="export_to_excel" value="  Export to Excel  " onclick="exportCustomerListToExcel('Station', 29353, false, ''); return false;">
                            <input type="button" class="button" name="view_passwords" id="view_passwords" value="  View Passwords  " onclick="window.open('double_login.php?PHPSESSID=e136a0caf6936db3c5ba022c1805c7db&amp;view_page=stations_view.php', 'mywin', 'left=20,top=20,width=800,height=500,toolbar=1,scrollbars=1,resizable=0');" disabled="">&nbsp;
                            <input type="button" class="button" name="submit_button1" id="submit_button1" value="  Refresh  " onclick="if (document.getElementById('alias')) {var Alias=document.getElementById('alias').value}else{var Alias = '';} if (document.getElementById('lname')) {var LName=document.getElementById('lname').value}else{var LName = '';}if (document.getElementById('mobilenumber')) {var mobileNumber=document.getElementById('mobilenumber').value}else{var mobileNumber = '';}if (document.getElementById('st_name')) {var FName = document.getElementById('st_name').value } else {var FName = document.getElementById('fname').value}; if (document.getElementById('st_acc_number')) {var accountNumber = document.getElementById('st_acc_number').value} else {var accountNumber = document.getElementById('accountnumber').value};sndReqSearchByAccount('0',accountNumber,mobileNumber, FName,LName,Alias,'Station','','','','','true','')">
                        </td> -->
                        
                        <td class="tab_head" align="right" nowrap="nowrap">
                            <input type="button" class="button" name="export_to_excel" id="export_to_excel" value="  Export to Excel  "  return false;">
                            <input type="button" class="button" name="view_passwords" id="view_passwords" value="  View Passwords  "  disabled="">&nbsp;
                            <input type="button" class="button" name="submit_button1" id="submit_button1" value="  Refresh  " >
                        </td>
                        
                    </tr>
                
						<tr style="display:none;">
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
    <input type="stationName" class="show" id="stationName" placeholder="">
  </div>
      <div class="form-group">
<input type="button" value="&nbsp;&nbsp;Search&nbsp;&nbsp;" class="button" name="st_search_btn" id="st_search_btn" onclick="searchStation();" style="margin-top: 23px;">
</div></form>
	         </td>
	         </tr>
					</tbody></table><br>

<table id="table_list_data" class="printable tab_body table table-bordered table-condensed table-hover table-striped" summary="" cellpadding="0" cellspacing="1" border="0">
	<tbody>
		<tr>
			<td class="tab_head1" align="center" nowrap="nowrap">
				<a class="tablink" onclick="sndReqSearchByAccount('0','','','','','','Station','AccountNumber','ASC','STRING','','','');" style="cursor:pointer;">Account Number</a>
			</td>
			<td class="tab_head1" align="center" nowrap="nowrap">
				<a class="tablink" onclick="sndReqSearchByAccount('0','','','','','','Station','NickName','ASC','STRING','','','');" style="cursor:pointer;">Station Name</a>
			</td>
			<td class="tab_head1" align="center" nowrap="nowrap">Deposit</td>
			<td class="tab_head1" align="center" nowrap="nowrap">Withdrawal</td>
			<td class="tab_head1" align="center" nowrap="nowrap">
				<a class="tablink" onclick="sndReqSearchByAccount('0','','','','','','Station','StatusId','ASC','STRING','','','');" style="cursor:pointer;">Status</a>
			</td>
			<td class="tab_head1" align="center" nowrap="nowrap">
				<a id="creditBalanceSortRef" class="tablink" onclick="creditBalanceSort(this, 'arraw');" style="cursor:pointer;">Balance</a>
				<img id="creditBalance_sort" src="../images/sort_a.gif" alt="" style="visibility:hidden;">
			</td>
			<td class="tab_head1" align="center" nowrap="nowrap">PlayCheck</td>
			<td class="tab_head1" align="center" nowrap="nowrap">
				<a class="tablink" onclick="sndReqSearchByAccount('0','','','','','','Station','update_station','ASC','STRING','','','');" style="cursor:pointer;"></a>
			</td>
		</tr>
		
		<tr>
			<td class="tab_row1" align="left" nowrap="nowrap">OC0001741628</td>
			<td class="tab_row1" align="left" nowrap="nowrap">test</td>
			<td class="tab_row1">
                <a href="${pageContext.request.contextPath}/depositStation">Deposit</a>
            </td>
            <td class="tab_row1">Withdrawal</td>
            <td class="tab_row1" align="center"><div class="green_circle" title="Not Busy">&nbsp;</div></td>
            <td class="tab_row1" align="right" nowrap="nowrap"><div style="margin:0;padding:0;display:inline;" id="credit_balance_4031416">0.00</div>&nbsp;</td>
            <td class="tab_row1" align="center"><a href="#" onclick="window.open('https://playcheck22.gameassists.co.uk/playcheck/default.aspx?serverid=2635&amp;username=OC0001741628&amp;password=PTS_ADMIN&amp;ul=en','playcheck_popup','fullscreen=yes, scrollbars=yes');"><div class="cmt_playcheck" title="PlayCheck"></div></a></td>
            <td class="tab_row1" align="center"><a href="${pageContext.request.contextPath}/updateStation" onclick="RedirectFunc('4031416','OC0001741628','true','No','update_station.php','Open','false', 'false');"><div class="cmt_edit" title="Edit"></div></a></td>
        </tr>
    </tbody>
</table>
   <div class="navigation" style="padding-top:0px;"><input type="button" class="button" value="< Back" disabled="disabled" "="" onclick="sndReqSearchByAccount('-30','','','','','','DeletePlayer','','','','','back','')">&nbsp;&nbsp;|<span style="color: white; font-size: 14px;">1</span>|&nbsp;&nbsp;<input type="button" class="button" value="Next >" onclick="sndReqSearchByAccount('30','','','','','','DeletePlayer','','','','','next','')" disabled="disabled"></div>                                
	<div class="print_button" style="padding-bottom:10px;"><input type="button" class="button" value="Print" onclick="window.print(); return false;"></div>
	
	<div class="balance"><img src="./images/cmt_warning.gif" width="11" height="11" alt=""> <b>Total stations: 0</b></div></div>
         
	<!-- <script src="./scripts/ajax_functions.js" type="text/javascript"></script>			
	<script type="text/javascript">
		session = "";
		if (!document.cookie) {
			session="PHPSESSID=e136a0caf6936db3c5ba022c1805c7db";
        }
	
		sndReqList(0, "Station", "", "", "", session);
		
		function LZ(x) {
			if (x != 0 || x <= 9) {
                x = "0" + x;
            }
			return x;
		}
		
		function GasianPlayCheck (LoginName, url, casino_id) {
	
			if (!casino_id) {
			    var casino_id = 1235;
			}
		    
		    var currentTime = new Date();
			var month = currentTime.getMonth()+1;
			var month2 = currentTime.getMonth();
			var day = currentTime.getDate();
			var year = currentTime.getFullYear();
			var dateto = year+""+LZ(month)+""+LZ(day);
			var datefrom = year+""+LZ(month2)+""+LZ(day);

            my_window = window.open ("", "mywindow1", "status=1,width=1015,height=650,scrollbars=1");
			my_window.document.write("<center><b>Loading...</b></center><form id='newlivedealer1' name='newlivedealer1' action='" + url + "' method='POST'><input name='LoginName' type='hidden' value='"+LoginName+"'/><input name='CasinoID' type='hidden' value='"+casino_id+"'/><input name='Period' type='hidden' value='Custom'/><input name='FromDate' type='hidden' value='"+datefrom+"' /><input name='IsGameOpen' type='hidden' value='1'/><input name='ToDate' type='hidden' value='"+dateto+"'/><input name='Report' type='hidden' value='Game'/><input name='Game' type='hidden' value='Baccarat'/><input type='submit' value='GO' style='display:none;' /></form>");
			setTimeout("my_window.document.getElementById('newlivedealer1').submit()",200);
		}

        function searchStation() {
			function sortData()
			{
				if (document.getElementById("no_data")) {
						this.sorting_param = "";
						this.sorting_order = "";
						this.sorting_type = "";
				} else {
					var headRow = document.getElementById("table_list_data").rows[0];
					if (-1 != headRow.cells[0].innerHTML.indexOf("./images/sort_a.gif")) {
						this.sorting_param = "AccountNumber"
						this.sorting_order = "ASC"
						this.sorting_type = "STRING"
					}
					if (-1 != headRow.cells[0].innerHTML.indexOf("./images/sort_d.gif")) {
						this.sorting_param = "AccountNumber"
						this.sorting_order = "DESC"
						this.sorting_type = "STRING"
					}
					if (-1 != headRow.cells[1].innerHTML.indexOf("./images/sort_a.gif")) {
						this.sorting_param = "NickName"
						this.sorting_order = "ASC"
						this.sorting_type = "STRING"
					}
					if (-1 != headRow.cells[1].innerHTML.indexOf("./images/sort_d.gif")) {
						this.sorting_param = "NickName"
						this.sorting_order = "DESC"
						this.sorting_type = "STRING"
					}
					if (-1 != headRow.cells[4].innerHTML.indexOf("./images/sort_a.gif")) {
						this.sorting_param = "StatusId"
						this.sorting_order = "ASC"
						this.sorting_type = "STRING"
					}
					if (-1 != headRow.cells[4].innerHTML.indexOf("./images/sort_d.gif")) {
						this.sorting_param = "StatusId"
						this.sorting_order = "DESC"
						this.sorting_type = "STRING"
					}
					if (-1 != headRow.cells[5].innerHTML.indexOf("visible")) {
						this.sorting_param = "Balance"
					}
				}
			}
			var sort = new sortData();
            var err_field = document.getElementById("st_error");
            var acc_field = document.getElementById("st_acc_number");
            var name_field = document.getElementById("st_name");
            var casino_field = true;
            var poker_field = false;

            var k = 0;
            var accountnumber = acc_field.value;
            var mobilenumber = "";
            var fname = name_field.value;
            var lname = "";
            var list_type = "Station";
            var enteries_num = "";
            var refresh = "search";
            /*var filter = "";*/

            if (document.getElementById("related_product_casino")) {
                casino_field = document.getElementById("related_product_casino").checked;
            }   
            
            if (document.getElementById("related_product_poker")) {
                poker_field = document.getElementById("related_product_poker").checked;
            }

            var filter =  "Casino-" + casino_field + "$$Poker-" + poker_field;
			
            if (accountnumber != "" && !accountnumber.match(/^([a-zA-Z0-9]*)$/)) {
                err_field.innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                err_field.parentNode.style.display = "table-row";
                acc_field.style.border = "1px solid #ff0000";
                return false;
            }
            else {
                err_field.parentNode.style.display = "none";
                acc_field.style.border = "1px solid #d2d2d2";
            }

            if (fname != "" && !fname.match(/^([a-zA-Z0-9]*)$/)) {
                err_field.innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                err_field.parentNode.style.display = "table-row";
                name_field.style.border = "1px solid #ff0000";
                return false;
            }
            else {
                err_field.parentNode.style.display = "none";
                name_field.style.border = "1px solid #d2d2d2";
            }
			if (document.getElementById("st_acc_number").value == "" && document.getElementById("st_name").value == "") {
				err_field.innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please, fill at least one field to do search.</div>';
				err_field.parentNode.style.display = "table-row";
				name_field.style.border = "1px solid #ff0000";
                acc_field.style.border = "1px solid #ff0000";
				return false;
			}

            sndReqSearchByAccount(
                k,
                accountnumber,
                mobilenumber,
                fname,
                lname,
                "",
                list_type,
                sort.sorting_param,
                sort.sorting_order,
                sort.sorting_type,
                enteries_num,
                refresh,
                filter
            );
        }

        function displayMessage(trigger) {
            if (trigger == true) {
                document.getElementById("window_result").innerHTML = "Export file will be sent to your mailbox:<br /><b></b><br />Please make sure your mailbox is configured well.";
            }
            else if (trigger == false) {
                document.getElementById("window_result").innerHTML = "Your mailbox is not configured to receive the download link. Contact your master agent for assistance.";
            }
            openWin("wind1", "cont1", 100, 100, 400, 200);
        }
        
    </script> -->
<input type="hidden" id="ajax_working" value="">     
        </div>       
      </div>
      </td>
   <td class="left" nowrap="nowrap"  style="padding-left:15px;">
      <div class="welcome">
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'stations_list\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/8/2015 14:25</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
	<input type="hidden" id="time_diff" value="9.0000">
	<form action="${pageContext.request.contextPath}/changePassword" style="margin:0px;" method="get">
		<input type="button" class="logout" value="Logout" onclick="location.href='logout.php'" style="cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" class="logout" style="width:120px;" value="Change Password">
	</form>	
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
	  </div>
	      <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
    </td>
    
  </tr>
</tbody></table>
<img src="./images/cmt_null.gif" width="760" height="1" alt=""><br>

</td>
</tr>
</tbody></table>
</div>
</div><footer class="site-footer footer">
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
<!-- <script type="text/javascript">
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

</script> -->

</body></html>