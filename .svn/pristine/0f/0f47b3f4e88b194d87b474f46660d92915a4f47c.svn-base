<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0062)agent_earning_report_by_account.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title><!-- Latest compiled and minified CSS --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<link href="./styles/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
<!--<link rel="stylesheet" type="text/css" href="flexcss/flexigrid/flexigrid.css">-->
<!--<link rel="stylesheet" href="flexstyle.css" />-->
<style type="text/css">
	#cont1{
	position:absolute;
	}
</style>
<style type="text/css" media="print">
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
<script type="text/javascript" async="" src="./scripts/ga.js"></script><script type="text/javascript">
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

<script src="./scripts/jquery-2.0.3-min.js" type="text/javascript"></script>
<script src="./scripts/moment.js" type="text/javascript"></script>
<script src="./scripts/bootstrap.min.js" type="text/javascript"></script>
<script src="./scripts/bootstrap-datetimepicker.js" type="text/javascript"></script>
<script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
<script src="./scripts/scw.js" type="text/javascript"></script>
	<style type="text/css">
.scw {
	padding: 1px;
	vertical-align: middle;
}

iframe.scw {
	position: absolute;
	z-index: 1;
	top: 0px;
	left: 0px;
	visibility: hidden;
	width: 1px;
	height: 1px;
}

table.scw {
	padding: 0px;
	visibility: hidden;
	position: absolute;
	cursor: default;
	width: 160px;
	top: 0px;
	left: 0px;
	z-index: 2;
	text-align: center;
}
</style>
	<style type="text/css">/* IMPORTANT:  The SCW calendar script requires all                the classes defined here.*/
table.scw {
	padding: 1px;
	vertical-align: middle;
	border: ridge 1px;
	font-size: 10pt;
	font-family: Verdana, Arial, Helvetica, Sans-Serif;
	font-weight: bold;
}

td.scwDrag,td.scwHead {
	padding: 0px 0px;
	text-align: center;
}

td.scwDrag {
	font-size: 8pt;
}

select.scwHead {
	margin: 3px 1px;
	text-align: center;
}

input.scwHead {
	height: 22px;
	width: 22px;
	vertical-align: middle;
	text-align: center;
	margin: 2px 1px;
	font-weight: bold;
	font-size: 10pt;
	font-family: fixedSys;
}

td.scwWeekNumberHead,td.scwWeek {
	padding: 0px;
	text-align: center;
	font-weight: bold;
}

td.scwFoot,td.scwFootHover,td.scwFoot:hover,td.scwFootDisabled {
	padding: 0px;
	text-align: center;
	font-weight: normal;
}

table.scwCells {
	text-align: right;
	font-size: 10px;
	width: 80%;
}

td.scwCells,td.scwCellsHover,td.scwCells:hover,td.scwCellsDisabled,td.scwCellsExMonth,td.scwCellsExMonthHover,td.scwCellsExMonth:hover,td.scwCellsExMonthDisabled,td.scwCellsWeekend,td.scwCellsWeekendHover,td.scwCellsWeekend:hover,td.scwCellsWeekendDisabled,td.scwInputDate,td.scwInputDateHover,td.scwInputDate:hover,td.scwInputDateDisabled,td.scwWeekNo,td.scwWeeks
	{
	padding: 3px;
	font-size: 10px;
	width: 12px;
	height: 12px;
	border-width: 1px;
	border-style: solid;
	font-weight: bold;
	vertical-align: middle;
} /* Blend the colours into your page here...    */
/* Calendar background */
table.scw {
	background-color: #666666;
} /* Drag Handle */
td.scwDrag {
	background-color: #DDDDDD;
	color: #000000;
} /* Week number heading */
td.scwWeekNumberHead {
	color: #6666CC;
} /* Week day headings */
td.scwWeek {
	color: #CCCCCC;
} /* Week numbers */
td.scwWeekNo {
	background-color: #776677;
	color: #CCCCCC;
} /* Enabled Days */ /* Week Day */
td.scwCells {
	background-color: #EEEEEE;
	color: #000000;
} /* Day matching the input date */
td.scwInputDate {
	background-color: #C01E00;
	color: #FFFFFF;
} /* Weekend Day */
td.scwCellsWeekend {
	background-color: #EEEEEE;
	color: #F66013;
} /* Day outside the current month */
td.scwCellsExMonth {
	background-color: #FFFFFF;
	color: #999999;
} /* Today selector */
td.scwFoot {
	background-color: #666666;
	color: #FFFFFF;
}
	/* MouseOver/Hover formatting        If you want to "turn off" any of the formatting        then just set to the same as the standard format       above.        Note: The reason that the following are       implemented using both a class and a :hover       pseudoclass is because Opera handles the rendering       involved in the class swap very poorly and IE6        (and below) only implements pseudoclasses on the       anchor tag.*/
/* Active cells */
td.scwCells:hover,td.scwCellsHover {
	background-color: #F66013;
	cursor: pointer;
	cursor: hand;
	color: #000000;
} /* Day matching the input date */
td.scwInputDate:hover,td.scwInputDateHover {
	background-color: #FFFFBD;
	cursor: pointer;
	cursor: hand;
	color: #000000;
} /* Weekend cells */
td.scwCellsWeekend:hover,td.scwCellsWeekendHover {
	background-color: #FFFFBD;
	cursor: pointer;
	cursor: hand;
	color: #000000;
} /* Day outside the current month */
td.scwCellsExMonth:hover,td.scwCellsExMonthHover {
	background-color: #FFFFBD;
	cursor: pointer;
	cursor: hand;
	color: #000000;
} /* Today selector */
td.scwFoot:hover,td.scwFootHover {
	color: #FFFFBD;
	cursor: pointer;
	cursor: hand;
	font-weight: bold;
} /* Disabled cells */ /* Week Day */ /* Day matching the input date */
td.scwInputDateDisabled {
	background-color: #999999;
	color: #000000;
}

td.scwCellsDisabled {
	background-color: #999999;
	color: #000000;
} /* Weekend Day */
td.scwCellsWeekendDisabled {
	background-color: #999999;
	color: #CC6666;
} /* Day outside the current month */
td.scwCellsExMonthDisabled {
	background-color: #999999;
	color: #666666;
}

td.scwFootDisabled {
	background-color: #6666CC;
	color: #FFFFFF;
}
</style>
<!--[if IE]><iframe class='scw' src='/scwblank.html' id='scwIframe' name='scwIframe' frameborder='0'></iframe><![endif]--><table id="scw" class="scw"><tbody><tr class="scw"><td class="scw"><table class="scwHead" id="scwHead" width="100%" cellspacing="0" cellpadding="0"><tbody><tr id="scwDrag" style="display:none;"><td colspan="4" class="scwDrag" onmousedown="scwBeginDrag(event);"><div id="scwDragText"></div></td></tr><tr class="scwHead"><td class="scwHead"><input class="scwHead" id="scwHeadLeft" type="button" value="&lt;" onclick="scwShowMonth(-1);"></td><td class="scwHead"><select id="scwMonths" class="scwHead" onchange="scwShowMonth(0);"></select></td><td class="scwHead"><select id="scwYears" class="scwHead" onchange="scwShowMonth(0);"></select></td><td class="scwHead"><input class="scwHead" id="scwHeadRight" type="button" value="&gt;" onclick="scwShowMonth(1);"></td></tr></tbody></table></td></tr><tr class="scw"><td class="scw"><table class="scwCells" align="center"><thead><tr><td class="scwWeekNumberHead" id="scwWeek_"></td><td class="scwWeek" id="scwWeekInit0"></td><td class="scwWeek" id="scwWeekInit1"></td><td class="scwWeek" id="scwWeekInit2"></td><td class="scwWeek" id="scwWeekInit3"></td><td class="scwWeek" id="scwWeekInit4"></td><td class="scwWeek" id="scwWeekInit5"></td><td class="scwWeek" id="scwWeekInit6"></td></tr></thead><tbody id="scwCells" onclick="scwStopPropagation(event);"><tr><td class="scwWeekNo" id="scwWeek_0"></td><td class="scwCells" id="scwCell_0"></td><td class="scwCells" id="scwCell_1"></td><td class="scwCells" id="scwCell_2"></td><td class="scwCells" id="scwCell_3"></td><td class="scwCells" id="scwCell_4"></td><td class="scwCells" id="scwCell_5"></td><td class="scwCells" id="scwCell_6"></td></tr><tr><td class="scwWeekNo" id="scwWeek_1"></td><td class="scwCells" id="scwCell_7"></td><td class="scwCells" id="scwCell_8"></td><td class="scwCells" id="scwCell_9"></td><td class="scwCells" id="scwCell_10"></td><td class="scwCells" id="scwCell_11"></td><td class="scwCells" id="scwCell_12"></td><td class="scwCells" id="scwCell_13"></td></tr><tr><td class="scwWeekNo" id="scwWeek_2"></td><td class="scwCells" id="scwCell_14"></td><td class="scwCells" id="scwCell_15"></td><td class="scwCells" id="scwCell_16"></td><td class="scwCells" id="scwCell_17"></td><td class="scwCells" id="scwCell_18"></td><td class="scwCells" id="scwCell_19"></td><td class="scwCells" id="scwCell_20"></td></tr><tr><td class="scwWeekNo" id="scwWeek_3"></td><td class="scwCells" id="scwCell_21"></td><td class="scwCells" id="scwCell_22"></td><td class="scwCells" id="scwCell_23"></td><td class="scwCells" id="scwCell_24"></td><td class="scwCells" id="scwCell_25"></td><td class="scwCells" id="scwCell_26"></td><td class="scwCells" id="scwCell_27"></td></tr><tr><td class="scwWeekNo" id="scwWeek_4"></td><td class="scwCells" id="scwCell_28"></td><td class="scwCells" id="scwCell_29"></td><td class="scwCells" id="scwCell_30"></td><td class="scwCells" id="scwCell_31"></td><td class="scwCells" id="scwCell_32"></td><td class="scwCells" id="scwCell_33"></td><td class="scwCells" id="scwCell_34"></td></tr><tr><td class="scwWeekNo" id="scwWeek_5"></td><td class="scwCells" id="scwCell_35"></td><td class="scwCells" id="scwCell_36"></td><td class="scwCells" id="scwCell_37"></td><td class="scwCells" id="scwCell_38"></td><td class="scwCells" id="scwCell_39"></td><td class="scwCells" id="scwCell_40"></td><td class="scwCells" id="scwCell_41"></td></tr></tbody><tfoot class="scwFoot"><tr class="scwFoot"><td class="scwFoot" id="scwFoot" colspan="8"></td></tr></tfoot></table></td></tr></tbody></table>
<script src="./scripts/drag_functions.js" type="text/javascript"></script>
<script src="./scripts/FusionCharts.js" type="text/javascript"></script>
<script src="./scripts/def_js.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="lib/jquery/jquery.js"></script>-->
<!--<script type="text/javascript" src="flexigrid.js"></script>-->

<div id="container">
<div id="inner_cont" style="position: absolute; z-index: 0px;">
	<!-- window 1 -->
	<div id="wind1" class="wins" style="position: relative;">
	<div style="display:none; position:relative; z-index:10; top:50%; left:50%; margin-top: -50px; margin-left: -50px;" id="loader_gif1">
		<img src="./images/ajax-loader-transparent.gif" alt="">
	</div>
	
	<form action="logins_list.jsp" method="post" name="agent_form" id="agent_form">
		<input type="hidden" name="winMinWidth" id="winMinWidth" value="500">
		<input type="hidden" name="winMinHeight" id="winMinHeight" value="400">
	    <span id="titlebar_span">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start('wind1','cont1');">
				<tbody><tr>
					<td width="100%"><span style="color: #fff" id="window_tittle"></span></td>				
					<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin();sndReqExReports();" title="close"></td>
				</tr>
			</tbody></table>
		</span>		
		<span id="cont1" class="text">		
		<table align="center" valign="middle" width="100%" cellpadding="10" cellspacing="10">
			<tbody><tr>
      			<td colspan="2"><span id="error1"></span><span id="window_result"></span></td>
      		</tr>
            <tr>
                <td colspan="2" heihgt="100%" align="center" valign="bottom"><span id="submit_export"></span></td>
      		</tr>
		</tbody></table>
		</span>
	</form>
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
      <div class="page_title"><!--Manage agent account-->Financial Reports</div>
      <br>
      <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="${pageContext.request.contextPath}/agentEarningReportByDay" class="tabsmenu">Casino&nbsp;Earnings Report&nbsp;</a></td>
            <td class="tabs1">Casino&nbsp;Earnings Report&nbsp;by Player&nbsp;</td><td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';"><a href="${pageContext.request.contextPath}/agentEarningReportByStation" class="tabsmenu">Casino&nbsp;Earnings Report&nbsp;by Station&nbsp;</a></td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
 	  <div class="box_tabs" id="output"><div id="error"></div><script type="text/javascript">
	function isChecked (elm) {
	 var els = document.getElementById(elm); 
        if (els.length > 0) {
            for (var i=0; i < els.length; ++i) {
                    if (els[i].selected) {return true;}
            }
            return false;
        }
        else {
            return true;
        }
    }
 	
	function CheckDate(from, to){
	
				if(from == 'Select date' && to == 'Select date'){
					document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"./images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select dates. Error # 1017</div>';
					return false;
				}
				if(from == 'Select date'){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"./images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select the From Date. Error # 1018</div>';
						return false;
				}
				if(to == 'Select date'){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"./images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select the To Date. Error # 1019</div>';
						return false;
				}
				if(to<from){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"./images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! The start date must precede the end date. Please try again. Error # 1020</div>';
						return false;
				}
				if(document.getElementById('select_list') && !isChecked ('select_list') && document.getElementById('select_list').disabled==false){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"./images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Some data is missing. Please try again. Error # 1003</div>';
						return false;
				}
	return true;
	}
	</script>
	
	<div class ="row">
   	<div class="col-sm-6"><label>From Date</label></div>
   	<div class="col-sm-6"><label>To Date</label></div>
  </div>
  
    <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <div class='input-group date' id='dateFrom'>
                    <input type="text" name="from_date" id="from_date" class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD"/>
                    <span class="input-group-addon" ><span style="line-height:5px !important; height: 5px !important;" class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        $(function () {
            var date = new Date();
            date.setDate(1);
            $('#dateFrom').datetimepicker({
            	 pickTime: false,
            	 showToday: true
            });
            $('#dateFrom').data("DateTimePicker").setDate(date);
        });
        </script>
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <div class='input-group date' id='dateTo'>
                   <input type="text" name="to_date" id="to_date" class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD"/>
                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        $(function () {
            var date = new Date();
            $('#dateTo').datetimepicker({
            	 pickTime: false,
            	 showToday: true
            });
            $('#dateTo').data("DateTimePicker").setDate(date);
        });
        </script>
     </div>
	 <div class="row">
 	<div class='col-sm-6'>
 		<input  style="margin-top: 23px;" type="button" class="button" value="Submit" onclick="document.getElementById('error').innerHTML = '';SubmitReport();">
	</div>
</div>
	
	   <div id="waitimage" align="center" style="display:none; position:absolute; z-index:20; top:200px; left: 35%;"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
	   <div class="code" id="stam"></div>
	   <!--[if IE]>
			<style>
			.r2esult_table {width:800px !important;}
			</style>
		<![endif]--> 
	   <div id="list" class="result_table"> </div>
	   <script type="text/javascript">
			var session='';
			if(!document.cookie)
					session='PHPSESSID=ae364c8cb96abff0aef762bb856353b8';			
			function SubmitReport(){
				if(CheckDate(document.getElementById('from_date').value, document.getElementById('to_date').value))
					sndReqAgentEarningReport('get_agent_earning_report_by_account.php',document.getElementById('from_date').value,document.getElementById('to_date').value,'','Player','',session);
			}
				</script>
	   	
	    </div>
    </td>
 <td class="left" nowrap="nowrap" style="padding-left: 15px;">
      <div class="welcome">
      
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'agent_earning_report_by_account\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/9/2015 15:20</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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
	  </div>
      <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
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

<form action="" name="xml_export_form" id="xml_export_form" method="post">
<input type="hidden" name="file_names" id="file_names" value="">
<input type="hidden" name="sorting_params" id="sorting_params" value="">
<input type="hidden" name="SessionGUID" id="SessionGUID">
<input type="hidden" name="action_landing" id="action_landing" value="table2xml.php">
</form>

<script type="text/javascript">
function submit_xml_export(file_names, guid) {
	document.forms["xml_export_form"].file_names.value=file_names;
	document.forms["xml_export_form"].SessionGUID.value=guid;
	document.forms["xml_export_form"].target='_self';
	document.forms["xml_export_form"].action=document.forms["xml_export_form"].action_landing.value+document.forms["xml_export_form"].sorting_params.value;
	document.forms["xml_export_form"].submit();
}

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
//	alert(document.getElementById(id1))
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
function export_csv_with_drill(report_select_name)
{
	var output="";
	var table=document.getElementById(report_select_name);
	if(table.tagName=="TABLE")	
	{
		for(j=0;j<table.rows.length;j++)
		{
			
			
			row="";
			for(k=0;k<table.rows[j].cells.length;k++)
			{	

				if(!get_table(table.rows[j].cells[k]))
				{
					
					cell_content=strip_HTML_tags(table.rows[j].cells[k].innerHTML);
					if(k!=0) row=row+'"'+cell_content.replace(/&nbsp;/g," ")+'"'+",";
				}
			}
			if(row.search(/\w/)!=-1)	output=output+row+"\n";
		}
		output=output+"\n\n\n";

		document.forms["export_form"].csv_content.value=output;
		document.forms["export_form"].submit();
	}
}
function fnShowProps(obj, objName){
    var result = "";
    for (var i in obj) 
        result += objName + "." + i + " = " + obj[i] + "<br />\n";
    document.write(result);
}
function export_csv_with_drill2(report_select_name)
{
	var output_ = "";//alert(document.getElementById(report_select_name).lastChild.tagName);
	//fnShowProps(document.getElementById(report_select_name),'td');
	var table=document.getElementById(report_select_name).lastChild;
	if(table.tagName=="TABLE")	
	{
		for(x=0;x<table.rows.length;x++)
		{
			
			row_ = '"","",';
			for(z=0;z<table.rows[x].cells.length;z++)
			{	
					cell_content_=strip_HTML_tags(table.rows[x].cells[z].innerHTML);
					row_=row_+'"'+cell_content_+'"'+",";
			}
			if(row_.search(/\w/)!=-1)	output_=output_+row_+"\n";
		}
	}
	return output_;
}
function get_table(cell_obj)
{
if(cell_obj.childNodes.length)
{
	if(cell_obj.childNodes[0].tagName=="TABLE")	
	{
		var table=cell_obj.childNodes[0];
		for(i=0;i<table.rows.length;i++)
			{
				row1="";
				for(k=0;k<table.rows[i].cells.length;k++)
				{
					
					if (table.rows[i].cells[k].innerHTML.indexOf('TABLE')!=-1){
						output = output+export_csv_with_drill2(table.rows[i].cells[k].id);
						continue;
					}
					if(!get_table(table.rows[i].cells[k])){

						cell_content=strip_HTML_tags(table.rows[i].cells[k].innerHTML);
						row1=row1+'"'+cell_content+'"'+",";
					}
				}
//				alert (row1);
				if(row1.search(/\w/)!=-1)	output=output+row1+"\n";
			}
	return true;
	}
}
return false;
}

var display_block='block';
if(navigator.appName=='Netscape') //Firefox and Netscape
	var display_block='table-row';
	
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
</script>
<script type="text/javascript">
function createCookie(name,value,days) {
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function eraseCookie(name) {
	createCookie(name,"",-1);
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
    function displayMessage(trigger) {
        if (trigger == true) {
            document.getElementById("window_tittle").innerHTML = document.getElementById('confirmation_message').innerHTML;
            document.getElementById("window_result").innerHTML = document.getElementById('export_text').innerHTML;
            document.getElementById("submit_export").innerHTML = document.getElementById('export_submit_buttons').innerHTML;
        }
        else if (trigger == false) {
            document.getElementById("window_result").innerHTML = "Error";
        }
        openWin("wind1", "cont1", 0, 0, 400, 200);
    }
</script>

</body></html>