<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0057)https://www.totalegame.net/agent_game_analysis_report.php -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

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
</head>
<body>
<form name="btagform" action=""></form>
<script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
<script src="./scripts/scw.js" type="text/javascript"></script><style type="text/css">.scw           {padding:1px;vertical-align:middle;}iframe.scw     {position:absolute;z-index:1;top:0px;left:0px;visibility:hidden;width:1px;height:1px;}table.scw      {padding:0px;visibility:hidden;position:absolute;cursor:default;width:160px;top:0px;left:0px;z-index:2;text-align:center;}</style>
<style type="text/css">/* IMPORTANT:  The SCW calendar script requires all                the classes defined here.*/table.scw      {padding:       1px;vertical-align:middle;border:        ridge 1px;font-size:     10pt;font-family:   Verdana,Arial,Helvetica,Sans-Serif;font-weight:   bold;}td.scwDrag,td.scwHead                 {padding:       0px 0px;text-align:    center;}td.scwDrag                 {font-size:     8pt;}select.scwHead             {margin:        3px 1px;text-align:    center;}input.scwHead              {height:        22px;width:         22px;vertical-align:middle;text-align:    center;margin:        2px 1px;font-weight:   bold;font-size:     10pt;font-family:   fixedSys;}td.scwWeekNumberHead,td.scwWeek                 {padding:       0px;text-align:    center;font-weight:   bold;}td.scwFoot,td.scwFootHover,td.scwFoot:hover,td.scwFootDisabled         {padding:       0px;text-align:    center;font-weight:   normal;}table.scwCells             {text-align:    right;font-size:     10px;width:         80%;}td.scwCells,td.scwCellsHover,td.scwCells:hover,td.scwCellsDisabled,td.scwCellsExMonth,td.scwCellsExMonthHover,td.scwCellsExMonth:hover,td.scwCellsExMonthDisabled,td.scwCellsWeekend,td.scwCellsWeekendHover,td.scwCellsWeekend:hover,td.scwCellsWeekendDisabled,td.scwInputDate,td.scwInputDateHover,td.scwInputDate:hover,td.scwInputDateDisabled,td.scwWeekNo,td.scwWeeks                {padding:           3px;font-size:     	10px;width:             12px;height:            12px;border-width:      1px;border-style:      solid;font-weight:       bold;vertical-align:    middle;}/* Blend the colours into your page here...    *//* Calendar background */table.scw                  {background-color:  #666666;}/* Drag Handle */td.scwDrag                 {background-color:  #DDDDDD;color:             #000000;}/* Week number heading */td.scwWeekNumberHead       {color:             #6666CC;}/* Week day headings */td.scwWeek                 {color:             #CCCCCC;}/* Week numbers */td.scwWeekNo               {background-color:  #776677;color:             #CCCCCC;}/* Enabled Days *//* Week Day */td.scwCells                {background-color:  #EEEEEE;color:             #000000;}/* Day matching the input date */td.scwInputDate            {background-color:  #C01E00;color:             #FFFFFF;}/* Weekend Day */td.scwCellsWeekend         {background-color:  #EEEEEE;color:             #F66013;}/* Day outside the current month */td.scwCellsExMonth         {background-color:  #FFFFFF;color:             #999999;}/* Today selector */td.scwFoot                 {background-color:  #666666;color:             #FFFFFF;}/* MouseOver/Hover formatting        If you want to "turn off" any of the formatting        then just set to the same as the standard format       above.        Note: The reason that the following are       implemented using both a class and a :hover       pseudoclass is because Opera handles the rendering       involved in the class swap very poorly and IE6        (and below) only implements pseudoclasses on the       anchor tag.*//* Active cells */td.scwCells:hover,td.scwCellsHover           {background-color:  #F66013;cursor:            pointer;cursor:            hand;color:             #000000;}/* Day matching the input date */td.scwInputDate:hover,td.scwInputDateHover       {background-color:  #FFFFBD;cursor:            pointer;cursor:            hand;color:             #000000;}/* Weekend cells */td.scwCellsWeekend:hover,td.scwCellsWeekendHover    {background-color:  #FFFFBD;cursor:            pointer;cursor:            hand;color:             #000000;}/* Day outside the current month */td.scwCellsExMonth:hover,td.scwCellsExMonthHover    {background-color:  #FFFFBD;cursor:            pointer;cursor:            hand;color:             #000000;}/* Today selector */td.scwFoot:hover,td.scwFootHover            {color:             #FFFFBD;cursor:            pointer;cursor:            hand;font-weight:       bold;}/* Disabled cells *//* Week Day *//* Day matching the input date */td.scwInputDateDisabled    {background-color:  #999999;color:             #000000;}td.scwCellsDisabled        {background-color:  #999999;color:             #000000;}/* Weekend Day */td.scwCellsWeekendDisabled {background-color:  #999999;color:             #CC6666;}/* Day outside the current month */td.scwCellsExMonthDisabled {background-color:  #999999;color:             #666666;}td.scwFootDisabled         {background-color:  #6666CC;color:             #FFFFFF;}</style>
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
	
	<form action="https://www.totalegame.net/logins_list.php" method="post" name="agent_form" id="agent_form">
		<input type="hidden" name="winMinWidth" id="winMinWidth" value="500">
		<input type="hidden" name="winMinHeight" id="winMinHeight" value="400">
	    <span id="titlebar_span">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind1&#39;,&#39;cont1&#39;);">
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
<table class="first" summary="" width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top">

<td class="center">
<table class="top" summary="" width="760" cellpadding="0" cellspacing="0" border="0">
  <tbody><tr valign="top">
    <td class="content">
      <div class="system">Management System</div>
      <div class="page_title"><!--Manage agent account-->Game Play Reports</div>
      <br>
      <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Casino&nbsp;Gross Win&nbsp;Analysis </td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
 	  <div class="box_tabs" id="output"><div id="error"></div>
 	  
 	  
 	  <div class ="row">
   	<div class="col-sm-3"><input type="radio" id="timePeriod_daily" checked="checked" name="timePeriod" onclick="checkTimePeriod(this);">Daily (up to 2 months)</div>
   	<div class="col-sm-6"><input type="radio" id="timePeriod_monthly" name="timePeriod" onclick="checkTimePeriod(this);">Monthly</div>
  </div>
  <br>
  
  <div id="dailyDateFields">
  	<div class ="row">
   	<div class="col-sm-6"><label>From Date</label></div>
   	<div class="col-sm-6"><label>To Date</label></div>
  </div>
  
   	  <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <div class='input-group date' id='dateFrom'>
               
                    <input type="text" name="fromDate" id="fromDate" class="date_input dateCompare dateFormatValidate required" readonly="readonly" data-date-format="YYYY-MM-DD"  />
                    
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
                 	
                   <input path="toDate" type="text" name="toDate" id="toDate" class="date_input dateCompare required dateFormatValidate" readonly="readonly" data-date-format="YYYY-MM-DD"/>
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
     </div>
     
     
     <div id="monthlyDateFields" style="display:none;">
     	<div class ="row">
   	<div class="col-sm-6"><label>From Date</label></div>
   	<div class="col-sm-6"><label>To Date</label></div>
  </div>
      <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <select name="from_date_month" id="from_date_month" class="field" style="width:70px;"><option value="1" title="Jan">Jan</option><option value="2" title="Feb" selected="selected">Feb</option><option value="3" title="Mar">Mar</option><option value="4" title="Apr">Apr</option><option value="5" title="May">May</option><option value="6" title="Jun">Jun</option><option value="7" title="Jul">Jul</option><option value="8" title="Aug">Aug</option><option value="9" title="Sep">Sep</option><option value="10" title="Oct">Oct</option><option value="11" title="Nov">Nov</option><option value="12" title="Dec">Dec</option></select>&nbsp;<select name="from_date_year" id="from_date_year" class="field" style="width:70px;"><option value="2010" title="2010">2010</option><option value="2011" title="2011">2011</option><option value="2012" title="2012">2012</option><option value="2013" title="2013">2013</option><option value="2014" title="2014">2014</option><option value="2015" title="2015" selected="selected">2015</option><option value="2016" title="2016">2016</option><option value="2017" title="2017">2017</option><option value="2018" title="2018">2018</option><option value="2019" title="2019">2019</option><option value="2020" title="2020">2020</option></select>
            </div>
        </div>
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <select name="to_date_month" id="to_date_month" class="field" style="width:70px;"><option value="1" title="Jan">Jan</option><option value="2" title="Feb" selected="selected">Feb</option><option value="3" title="Mar">Mar</option><option value="4" title="Apr">Apr</option><option value="5" title="May">May</option><option value="6" title="Jun">Jun</option><option value="7" title="Jul">Jul</option><option value="8" title="Aug">Aug</option><option value="9" title="Sep">Sep</option><option value="10" title="Oct">Oct</option><option value="11" title="Nov">Nov</option><option value="12" title="Dec">Dec</option></select>&nbsp;<select name="to_date_year" id="to_date_year" class="field" style="width:70px;"><option value="2010" title="2010">2010</option><option value="2011" title="2011">2011</option><option value="2012" title="2012">2012</option><option value="2013" title="2013">2013</option><option value="2014" title="2014">2014</option><option value="2015" title="2015" selected="selected">2015</option><option value="2016" title="2016">2016</option><option value="2017" title="2017">2017</option><option value="2018" title="2018">2018</option><option value="2019" title="2019">2019</option><option value="2020" title="2020">2020</option></select>
            </div>
        </div>
     </div>
     </div>
     
     
     
     
 	  <br>
 	  <div class ="row">
   	<div class="col-sm-6"><label>Agent</label></div>
   	<div class="col-sm-6"><label>Summary Level</label></div>
  </div>
 	  
 	  <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="checkSummary2(this)"><option value="GameCategory" title="">Game Category</option><option value="Agent" title="">Agent</option><option value="GameClientType" title="">Game Client Type</option></select>
            </div>
        </div>
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="checkSummary2(this)"><option value="GameCategory" title="">Game Category</option><option value="Agent" title="">Agent</option><option value="GameClientType" title="">Game Client Type</option></select>
            </div>
        </div>
     </div>
     <br>
      <div class ="row">
     	<div class="col-sm-6"><label>Game Client Type</label></div>
     	</div>
       <div class="row">
        <div class='col-sm-6'>
            <div class="col-sm-4" style="padding-left:0px;">
                <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="checkSummary2(this)"><option value="GameCategory" title="">Game Category</option><option value="Agent" title="">Agent</option><option value="GameClientType" title="">Game Client Type</option></select>
            </div>
        </div>
        </div>
        <br>
 	 <div class ="row">
 	<div class="col-sm-6">
 	 <input type="button" class="button" value="Submit" onclick="document.getElementById(&#39;error&#39;).innerHTML = &#39;&#39;;SubmitReport();">
 	 </div>
 	 </div>
 	  <script type="text/javascript">
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
					document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"/images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select dates. Error # 1017</div>';
					return false;
				}
				if(from == 'Select date'){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"/images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select the From Date. Error # 1018</div>';
						return false;
				}
				if(to == 'Select date'){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"/images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Please select the To Date. Error # 1019</div>';
						return false;
				}
				if(to<from){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"/images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! The start date must precede the end date. Please try again. Error # 1020</div>';
						return false;
				}
				if(document.getElementById('select_list') && !isChecked ('select_list') && document.getElementById('select_list').disabled==false){
						document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"/images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Some data is missing. Please try again. Error # 1003</div>';
						return false;
				}
	return true;
	}
	</script>
		
        <script type="text/javascript">
            try {
                document.getElementById("ho_list_td").innerHTML = "";
            }
            catch (e) {}
        </script>
    
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
		
        if (!document.cookie) {
			session = 'PHPSESSID=a2fc242c1207fa5a15f5f08f4bb4f253';
        }

        function checkTimePeriod(elm) {
            if (elm.id == 'timePeriod_daily' && elm.checked) {
                document.getElementById('dailyDateFields').style.display = 'inline';
                document.getElementById('monthlyDateFields').style.display = 'none';
            }

            if (elm.id == 'timePeriod_monthly' && elm.checked) {
                document.getElementById('dailyDateFields').style.display = 'none';
                document.getElementById('monthlyDateFields').style.display = 'inline';
            }
        }

        function checkSummary(select) {
            if (document.getElementById('currency')) {
                var currencySelect = document.getElementById('currency');
                if (select.value == 'GameCategory') {
                    currencySelect.options[1].selected = true;
                    currencySelect.disabled = true;
                }
                else {
                    currencySelect.options[0].selected = true;
                    currencySelect.disabled = false;
                }
            }
        }
		
        function checkSummary2(select) {
			try {
				if (document.getElementById('game_client_type')) {
					if (select.value == 'GameClientType') {
						document.getElementById('game_client_type').disabled = true
						document.getElementById('game_client_type').value = ''
					} else {
						document.getElementById('game_client_type').disabled = false
					}
				}
			} catch (e){
			}
		}

        function SubmitReport(summaryCurrency) {
            var start_date = document.getElementById('from_date').value;
			var end_date = document.getElementById('to_date').value;
            var TimeGroupingPeriodType = 'Day';
            var reportName = 'CasinoGameProfitAnalysisReport';


            if (document.getElementById('timePeriod_monthly') && document.getElementById('timePeriod_monthly').checked) {
                var st_year = document.getElementById('from_date_year').value;
                var en_year = document.getElementById('to_date_year').value;
                var st_month = document.getElementById('from_date_month').value;
                st_month = (st_month < 10) ? '0' + st_month : st_month;
                var en_month = document.getElementById('to_date_month').value;
                en_month = (en_month < 10) ? '0' + en_month : en_month;

                start_date = st_year + '-' + st_month + '-01';
                var en_date = new Date(en_year, en_month, 0);
                end_date = en_year + '-' + en_month + '-' + en_date.getDate();

                TimeGroupingPeriodType = 'Month';
                reportName = 'CasinoGameProfitAnalysisReportForMonth';

            }

            if (CheckDate(start_date, end_date)) {
				
                if (document.getElementById('timePeriod_daily') && document.getElementById('timePeriod_daily').checked) {
                    var st_date_arr = start_date.split('-');
                    var en_date_arr = end_date.split('-');

                    var st_date = new Date(st_date_arr[0], st_date_arr[1], st_date_arr[2]);
                    var en_date = new Date(en_date_arr[0], en_date_arr[1], en_date_arr[2]);

                    var compareDate = (en_date - st_date) / (24 * 60 * 60 * 1000);

                    if (compareDate > 62) {
                        document.getElementById('error').innerHTML = '<div class=\"error\"><img src=\"/images/cmt_error.gif\" width=\"11\" height=\"11\" alt=\"\" /> Error! Date is Invalid or Out of Range. Error # 1015</div>';
						return false;
                    }
                }

                //var SessionLoginId = 155755;
				var CurrencyId = 1;
                var CurrencyRateTypeId = 1;
				var GroupingType = '';
				var IsTest = '1';
				select_list_arr = '';
				customer_list_arr = '';
				
                if (document.getElementById('select_list')) {
                    var select_list = document.getElementById('select_list');
                    select_list_arr = new Array();
                    for (i = 1; i < select_list.length; i++) {
                        if (select_list[i].selected == true) {
                            select_list_arr.push(select_list[i].value);
                        }
                    }
                    select_list_arr = select_list_arr.join(',');
                }

                if (document.getElementById('customer_list')) {
                    var customer_list = document.getElementById('customer_list');
                    customer_list_arr = new Array();
                    for (i = 1; i < customer_list.length; i++) {
                        if (customer_list[i].selected == true) {
                            customer_list_arr.push(customer_list[i].value);
                        }
                    }
                    customer_list_arr = customer_list_arr.join(',');
                }

                if(document.getElementById('summary_level')) {
					GroupingType = document.getElementById('summary_level').value;
				}
				
                if (document.getElementById('currency')) {
                    CurrencyId=document.getElementById('currency').value;
                }
                if (document.getElementById('game_client_type')) {
                    GameClientTypeId=document.getElementById('game_client_type').value;
                }

				if (document.getElementById('include_test_members') && document.getElementById('include_test_members').checked) {
					IsTest='1';
                }

				txt = '';

                //debugger;

                if (!summaryCurrency) {
                    summaryCurrency = CurrencyId;
                }
				var params = '' +
                    'CurrencyId-' + CurrencyId + '$$' +
                    'SummaryCurrencyId-' + summaryCurrency + '$$' +
                    'CurrencyRateTypeId-' + CurrencyRateTypeId + '$$' +
                    'GameClientTypeId-'   + GameClientTypeId + '$$' +
                    'TimeGroupingPeriodType-' + TimeGroupingPeriodType + '$$' +
                    'GroupingType-' + GroupingType + '$$' +
                    'EntityList_XML-' + select_list_arr + '$$' +
                    'ClientList_XML-' + customer_list_arr + '$$' +
                    'IsTest-' + IsTest;
				sndReqGenericReport('get_generic_report.php', reportName, start_date, end_date, params, txt, '', 0, 0, session);
			}
		}

        if (document.getElementById('timePeriod_daily')) {
            checkTimePeriod(document.getElementById('timePeriod_daily'));
        }

        if (document.getElementById('summary_level')) {
            checkSummary(document.getElementById('summary_level'));
        }
</script>
	   	
	    </div>
    </td>
    <td class="left" nowrap="nowrap">
      <div class="welcome">
      
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'a155755\',\'agent_game_analysis_report\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>a a</strong><br>Representative<br><em><font size="1px"><span id="gmt_time">2/6/2015 18:49</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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
      <div class="menu"></div>
      <div class="menu"><a href="https://www.totalegame.net/agents_list.php" class="leftmenu">» Manage Agents Account</a></div><div class="menu"><a href="https://www.totalegame.net/logins_list.php" class="leftmenu">» Manage My Login</a></div><div class="menu"><a href="https://www.totalegame.net/agent_game_analysis_report.php#" class="leftmenu" onclick="if(document.getElementById(&#39;financial_reports&#39;).style.display==&#39;none&#39;) document.getElementById(&#39;financial_reports&#39;).style.display=&#39;block&#39;; else document.getElementById(&#39;financial_reports&#39;).style.display=&#39;none&#39;;">» Financial Reports</a><div id="financial_reports" style="display:none;"><div class="submenu"><a href="https://www.totalegame.net/commission_report.php" class="leftsubmenu">» Commission Report</a></div><div class="submenu"><a href="https://www.totalegame.net/credit_report.php" class="leftsubmenu">» Credit Transfer</a></div><div class="submenu"><a href="https://www.totalegame.net/agent_earning_report_by_day.php" class="leftsubmenu">» Casino Earnings Report</a></div><div class="submenu"><a href="https://www.totalegame.net/cashier_report.php" class="leftsubmenu">» Cashier Report</a></div></div></div><div class="menu"><a href="https://www.totalegame.net/agent_game_analysis_report.php#" class="leftmenu" onclick="if(document.getElementById(&#39;game_play_reports&#39;).style.display==&#39;none&#39;) document.getElementById(&#39;game_play_reports&#39;).style.display=&#39;block&#39;; else document.getElementById(&#39;game_play_reports&#39;).style.display=&#39;none&#39;;">» Game Play Reports</a><div id="game_play_reports" style="display:block;"><div class="submenu"><a href="./images/agent_game_analysis_report.html" class="leftsubmenu">» Gross Win Analysis</a></div><div class="submenu"><a href="https://www.totalegame.net/playcheck_report.php" class="leftsubmenu">» PlayCheck Report</a></div><div class="submenu"><a href="https://www.totalegame.net/agent_game_profitability_report.php" class="leftsubmenu">» Profit by Game Type</a></div><div class="submenu"><a href="https://www.totalegame.net/prog_game_play_report.php" class="leftsubmenu">» Progressive Game Play</a></div><div class="submenu"><a href="https://www.totalegame.net/prog_wins_report.php" class="leftsubmenu">» Progressive Wins</a></div></div></div><div class="menu"><a href="https://www.totalegame.net/contact_us.php" class="leftmenu">» Contact Us</a></div><div class="menu"><a href="https://www.totalegame.net/agent_game_analysis_report.php#" class="leftmenu" onclick="if(document.getElementById(&#39;help_submenu&#39;).style.display==&#39;none&#39;) document.getElementById(&#39;help_submenu&#39;).style.display=&#39;block&#39;; else document.getElementById(&#39;help_submenu&#39;).style.display=&#39;none&#39;;">» Help</a><div id="help_submenu" style="display:none;">
				    <div class="submenu">
				        <a href="https://www.totalegame.net/help/en/WebHelp_MA/index.php" class="leftsubmenu" target="_blank">» Help</a>
				    </div>
				<div class="submenu"><a style="cursor:pointer;" onclick="window.open(&#39;totalegame_bj.php&#39;,&#39;totalegame_bj&#39;,&#39;width=600,height=500,top=100,left=100,scrollbars=no,resizable=no&#39;)" class="leftsubmenu">» Mobile game direct download<br>&nbsp;&nbsp;&nbsp;instructions</a></div></div></div>
      <img src="./images/cmt_null.gif" width="220" height="1" alt=""><br>
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



//			$('.flexme0').flexigrid();
//			$('.flexme1').flexigrid();
//			$('.flexme2').flexigrid();
			

			

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