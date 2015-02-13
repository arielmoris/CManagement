<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0044)credit_report.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Client Management Tool</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./styles/jquery.dataTables.css" >
<link href="./styles/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
<link href="./styles/new_style.css" rel="stylesheet" type="text/css">
<link href="./styles/drag_styles.css" rel="stylesheet" type="text/css">
<link href="./styles/select2.css" rel="stylesheet" type="text/css">
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
				
<script src="./scripts/jquery-2.0.3-min.js" type="text/javascript"></script>
<script src="./scripts/moment.js" type="text/javascript"></script>
<script src="./scripts/bootstrap.min.js" type="text/javascript"></script>
<script src="./scripts/bootstrap-datetimepicker.js" type="text/javascript"></script>
<script src="./scripts/jquery.validate.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="./scripts/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="./scripts/select2.js"></script>

</head>
<body cz-shortcut-listen="true">

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
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Casino&nbsp;Credit Transfer&nbsp;</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
 	  <div class="box_tabs" id="output"><div id="error"></div>
	<form:form id="queryForm"  modelAttribute="creditTransferReportFilter" name="queryForm" action="${pageContext.request.contextPath}/searchCreditReport" method="post" class="box-border-full form-color">
	<form:input id="accountType" name = "accountType" path="accountType" type="hidden"/>
	
	<div class ="row">
   	<div class="col-sm-6"><label>From Date</label></div>
   	<div class="col-sm-6"><label>To Date</label></div>
  </div>
  
    <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <div class='input-group date' id='dateFrom'>
                <fmt:formatDate pattern="yyyy-MM-dd" type="date" var="formattedFromDate" value="${creditTransferReportFilter.fromDate}" />
                    <form:input value = "${formattedFromDate}" type="text" name="fromDate" id="fromDate" class="date_input dateCompare dateFormatValidate required" readonly="readonly" data-date-format="YYYY-MM-DD" path="fromDate" />
                    
                    <span class="input-group-addon" ><span style="line-height:5px !important; height: 5px !important;" class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        $(function () {
            $('#dateFrom').datetimepicker({
            	 pickTime: false,
            	 showToday: true
            });
        });
        </script>
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <div class='input-group date' id='dateTo'>
                 	<fmt:formatDate pattern="yyyy-MM-dd" type="date" var="formattedToDate" value="${creditTransferReportFilter.toDate}" />
                   <form:input value="${formattedToDate}" path="toDate" type="text" name="toDate" id="toDate" class="date_input dateCompare required dateFormatValidate" readonly="readonly" data-date-format="YYYY-MM-DD"/>
                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        $(function () {
            $('#dateTo').datetimepicker({
            	 pickTime: false,
            	 showToday: true
            });
        });
        </script>
     </div>
       <br>
     	<div class ="row">
   	<div class="col-sm-6"><label>Transaction Type</label></div>
   	<div class="col-sm-6"><label>Summary Level</label></div>
  </div>

    <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <form:select path="transactionType" name="summary_level" id="summary_level" class="field" style="width:220px;">
            		<c:forEach var="transactionType" items="${creditTransferReportFilter.transactionTypeList}">
            			<option value="${transactionType.key}" <c:if test="${transactionType.key eq creditTransferReportFilter.transactionType}">selected</c:if>>${transactionType.value}</option>
					</c:forEach>
                </form:select>
            </div>
        </div>
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <form:select path="summaryLevel" name="summary_level1" id="summary_level1" class="field" style="width:220px;">
                	<c:forEach var="summaryLevel" items="${creditTransferReportFilter.summaryLevelList}">
            			<option value="${summaryLevel.key}" <c:if test="${summaryLevel.key eq creditTransferReportFilter.summaryLevel}">selected</c:if>>${summaryLevel.value}</option>
					</c:forEach>
                </form:select>
            </div>
        </div>
     </div>
     <c:if test="${creditTransferReportFilter.accountType =='M'}">
     <br>
     <div class ="row">
   	<div class="col-sm-6"><label>Agent</label></div>
  </div>
  <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <form:select path="transactionType" name="summary_level" id="summary_level" class="field" style="width:220px;">
            		<c:forEach var="transactionType" items="">
            			<option value=""selected>test Agent</option>
					</c:forEach>
                </form:select>
            </div>
        </div>
     </div>
     </c:if>
     
	<div class="row">
 	<div class='col-sm-6'>
 		<input id="btnSearch" name="btnSearch" style="margin-top: 23px;" type="button" class="button" value="Submit">
	</div>
	</div>
	   </form:form>
	   <br></br>
	   <table id="dataTable"
			class="table table-bordered table-condensed table-hover table-striped table-report printable tab_body">
			<thead>
				<tr>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Transfer Date</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Currency</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Type</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Transfer By</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>From / To</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Increase Balance</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Decrease Balance</h6></th>
					<th class="tab_head1 text-center" style="text-align:center !important"><h6>Balance</h6></th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	   
	   <div id="waitimage" align="center" style="display:none; position:absolute; z-index:20; top:200px; left: 35%;"><img src="./images/ajax-loader-transparent.gif" alt=""></div>
	   <div class="code" id="stam"></div>
	  
	   <div id="list" class="result_table"> </div>
	
	    </div>
    </td>
  <td class="left" nowrap="nowrap" style="padding-left:15px;">
      <div class="welcome">
		<span id="balance">
			<div class="balance_casino">
				<b>Credit Balance 100,000.00  KRW</b>
			</div>
		</span>Welcome, <strong>Test1 AAagent</strong>
		<br>Agent<br><em><font size="1px"><span id="gmt_time">1/9/2015 14:43</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
	<input type="hidden" id="time_diff" value="9.0000">
	<form action="${pageContext.request.contextPath}/changePassword" style="margin:0px;" method="get"><input type="button" class="logout" value="Logout" onclick="location.href=logout.jsp" style="cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="logout" style="width:120px;" value="Change Password"></form>	
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
      <div class="menu"><a href="${pageContext.request.contextPath}/agentsList" class="leftmenu">� Manage Agents Account</a></div>
      <div class="menu"><a href="${pageContext.request.contextPath}/loginsList" class="leftmenu">� Manage My Login</a></div>
      <!-- For top end -->
      
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
      	    
      	     <!-- For top start -->
     		<div class="submenu"><a href="${pageContext.request.contextPath}/playcheckReport" class="leftsubmenu">� PlayCheck Report</a></div>
    		<div class="submenu"><a href="${pageContext.request.contextPath}/progGameplayReport" class="leftsubmenu">� Progressive Game Play</a></div>
    		<div class="submenu"><a href="${pageContext.request.contextPath}/progWinsReport" class="leftsubmenu">� Progressive Wins</a></div>
    		<!--  for top end -->
      	
      	</div>
      </div>
      <div class="menu"><a href="${pageContext.request.contextPath}/manageSettings" class="leftmenu">� Manage My Settings</a></div>
      <div class="menu"><a href="${pageContext.request.contextPath}/contactUs" class="leftmenu">� Contact Us</a></div>
      <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('help_submenu').style.display=='none') document.getElementById('help_submenu').style.display='block'; else document.getElementById('help_submenu').style.display='none';">� Help</a>
      	<div id="help_submenu" style="display:none;">
			<div class="submenu"><a href="https://www.totalegame.net/help/en/WebHelp_AG/index.php" class="leftsubmenu" target="_blank">� Help</a></div>
			<div class="submenu"><a style="cursor:pointer;"  class="leftsubmenu">� Mobile game direct download<br>&nbsp;&nbsp;&nbsp;instructions</a></div>
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
<script>

/* Form Validation */
var pattern = new RegExp("(19|20)\\d{2}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])");
$(function () {
	
	var form = $("#queryForm");
	$.validator.messages.required = '';	
	var fromDate = $("#fromDate").val();
	var toDate =  $("#toDate").val();
	
jQuery.validator.addMethod("dateFormatValidate", function(value, element) {
	if (value.length != 10){
			return false;
		}
		if (value.match(pattern) != null){
			return true;
		}else{
			return false;
		}
	},"");

jQuery.validator.addMethod("dateCompare", function(value, element, args) {
	var dateFrom = $("#fromDate").val();
	var dateTo = $("#toDate").val();

	var d_dateFrom = new Date(dateFrom);
	var d_dateTo = new Date(dateTo);
			
	if (d_dateFrom > d_dateTo){
		return false;
	}else{
		return true;
	}
},"");

var validationRules = {
        rules: {
        	fromDate: {
        		dateFormatValidate : true,
  				dateCompare: true
        	},
        	toDate: {            				
				dateFormatValidate : true,
				dateCompare: true
    		}
        },
        
        invalidHandler: function(frm, validator) {
        	var form = $(frm.target);
            dateFormatValidateErrorCount = 0;
            dateCompareErrorCount = 0;
            requiredErrorCount = 0;
            for(var i = 0; i < validator.errorList.length; i++){
            	error = validator.errorList[i];
            	console.log(error.method);
            	if(error.method == "required"){
            		requiredErrorCount+=1;
            	}
            	
            	if(error.method == "dateFormatValidate"){
            		dateFormatValidateErrorCount += 1;
                }
            	if(error.method == "dateCompare"){
            		dateCompareErrorCount += 1;
                }
            }
            if (requiredErrorCount > 0) {
            }
            
            if (dateFormatValidateErrorCount > 0) {
            	document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"./images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Invalid date format Error # 1020</div>';
            }
            if (dateCompareErrorCount > 0) {
            	document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"./images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! The start date must precede the end date. Please try again. Error # 1020</div>';
            	//$("fromDate").prop('disabled', true);
            	//$("toDate").prop('disabled', true);
            }
        },
        onkeyup: false,
      	onfocusout:false
};

form.validate(validationRules);

$("#btnSearch").click(function(){		
	//$("#loadingForm").attr("action","${pageContext.request.contextPath}/getLoadingTransactions");
	form.submit();
	});

//Initialize Select2
$("select").select2({
	minimumResultsForSearch: $(this).find("option").length < 6 ? -1 : 6
});
});

Number.prototype.formatCurrency = function() {
	return this.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
};

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
			"url"  : "${pageContext.request.contextPath}/table/creditReport",
			"type" : "post",
				"error": function (xhr, error, thrown) {
			       console.log( 'Ooops, something went wrong!');
			     alert("Error. Unable to load table data.");
			   //window.location.reload(true);
			    }
		 },
 	 "columns" : [
	  				 	{
	  				 		data:"transferDate",
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
	  				 		data:"currency",
	  				 		sWidth:"5%",
	  				 		className : "alignLeft"
	  				 	},
	  				 	{
	  				 		data:"type",
	  				 		sWidth:"16%",
	  				 		className : "alignRight",
	  				 	},
	  				 	{
	  				 		data:"transferBy",
	  				 		sWidth:"16%",
	  				 		className : "alignRight",
	  				 		
	  				 	},
	  				 	{
	  				 		data:"fromTo", 
	  				 		sWidth:"16%",
	  				 		className : "alignLeft",
	  				 		
	  				 	},
	  				 	{
	  				 		data:"increaseBalance", 
	  				 		sWidth:"10%",
	  				 		className : "alignLeft",
	  				 		
	  				 		render : function(data,type,row){
								data = parseFloat(data).formatCurrency();
								return data;
							},
							orderable : false
	  				 	},
	  				 	{
	  				 		data:"decreaseBalance",
	  				 		sWidth:"10%",
	  				 		className : "alignRight",
	  				 		
	  				 		render : function(data,type,row){
								data = parseFloat(data).formatCurrency();
								return data;
							},
							orderable : false
	  				 	},
	  					{
	  				 		data:"balance",
	  				 		sWidth:"10%",
	  				 		className : "alignRight",
	  				 		
	  				 		render : function(data,type,row){
								data = parseFloat(data).formatCurrency();
								return data;
							},
							orderable : false
	  				 	}
	  				], 

			
	  			"order" : orderDefault
});
</script>
	
</body>
</html>