<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0038)https://www.totalegame.net/deposit.php -->
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


        <script type="text/javascript">
            function SendReceipt() {
                var customer_name = '';
                if (document.getElementById("customer_name")) {
                    customer_name = document.getElementById("customer_name").innerHTML;
                }
                else {
                    customer_name = document.getElementById("inp_castomer_name").value;
                }
                var session = "";
                if (!document.cookie) {
                    session="PHPSESSID=bbfb342700dd7a2c004b4c944320223a";
                }
                var sentbyemail = 'true';
                sndReqSendFinancialReceipt(document.getElementById("invoice_no").innerHTML, customer_name, document.getElementById("notes").value, document.getElementById("SendEmail").value, document.getElementById("ReceiptEmail").value, 'true', session);
            }
        </script>
        <div id="container">
            <div id="inner_cont" style="position:absolute; z-index:0px;">
                <!-- window 1 -->
                    <div id="wind1" class="wins" style="position:relative;">
                        <input type="hidden" name="SendEmail" id="SendEmail" value="">
                        <input type="hidden" name="ReceiptEmail" id="ReceiptEmail" value="">
                        <input type="hidden" name="winMinWidth" id="winMinWidth" value="800">
                        <input type="hidden" name="winMinHeight" id="winMinHeight" value="450">
                        <div class="box_login1" id="output1" style="position:relative;">
                            <div style="display:none; position:absolute; z-index:20; top:20px; left:320px;" id="loader_gif1">
                                <img src="./images/ajax-loader-transparent.gif" alt="">
                            </div>
                            <span id="titlebar_span">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start('wind1','cont1');">
                                    <tbody><tr>
                                        <td width="100%">&nbsp;</td>
                                         <td width="16" align="right" style="cursor:pointer" valign="middle">
                                            <img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin()" title="close">
                                         </td>
                                    </tr>
                                </tbody></table>
                            </span>
                            <span id="cont1" class="text">
                                <table width="100%">
                                    <tbody><tr>
                                        <td><span id="error1"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Date: 22/01/2015</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="receipt_title" style="font-size:18px; font-weight:bold ">
                                            <strong>Receipt Number: <span id="invoice_no"> </span></strong>
                                        </td>
                                    </tr>
      	<tr>
      		<td>
      			<table align="center" cellpadding="3" cellspacing="3" width="60%" border="0">
      			<tbody><tr>
      					<td width="30%" style="font-size:18px; font-weight:bold; ">
      						Date:
      					</td>
      					<td width="70%" style="font-size:18px;" id="trans_date">
      						
      					</td>
      				</tr>	
      			<tr>
      					<td style="font-size:18px; font-weight:bold ">
      						Customer Name:
      					</td>
      					<td style="font-size:18px;"><span id="customer_name"></span></td></tr>    
      				<tr>
      					<td style="font-size:18px; font-weight:bold ">
      						Deposit&nbsp;Amount:
      					</td>
      					<td id="cur_balance" style="font-size:18px;">
      						
      					</td>
      				</tr>
      				<tr>
      					<td style="font-size:18px; font-weight:bold ">
      						Payment Method:
      					</td>
      					<td style="font-size:18px;">
      						Cash 
      					</td>
      				</tr>
      				<tr>
      					<td valign="top" style="font-size:18px; font-weight:bold ">
      						Notes:
      					</td>
      					<td>
      						<textarea name="notes" id="notes" rows="10" style="width:100%;" onkeyup="limiter(document.getElementById('notes'));"></textarea>
      					</td>
      				</tr>
      				
   			  </tbody></table>
      		</td>
      	</tr>
</tbody></table>
<table align="center" width="100%">
	<tbody><tr>
      					<td align="center" width="50%">
      						<input type="button" class="button" value="Approve" onclick="SendReceipt();" id="button_approv">
      					</td>
      					<td>
      						<input type="button" class="button" value="Cancel" onclick="closeWin();" id="button_cancel">
      					</td>
      					<td align="right" nowrap="nowrap"><span id="scale_span" style="display: none;">Scale: <select id="scale_select" name="scale_select">
						<option value="30">30%</option>
						<option value="40">40%</option>
      					<option value="50">50%</option>
      					<option value="60">60%</option>
      					<option value="70">70%</option>
      					<option value="80">80%</option>
      					<option value="90">90%</option>
      					<option value="100" selected="selected">100%</option>
      					<option value="125">125%</option>
      					<option value="150">150%</option>
      					</select>
      					<input type="button" class="button" value="Change Scale" onclick="scaleWin();" id="button_scale"></span></td>
      				</tr>
</tbody></table>
		</span>
	</div>
</div></div></div>
<script language="JavaScript">
<!--
check_scale();
//-->
</script>	
			  

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
                            Manage Player Account
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Deposit&nbsp;</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        <div id="output" style="margin: 10px 30px 30px 30px; position: relative;"><div style="display: none; position: absolute; z-index:10; top: 50px; left: 200px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div id="error"></div><form style="margin: 20px 0px 0px 0px;" id="deposit_form" name="deposit_form" onsubmit="return Notification_ValidateForm(this);" action="" method="post"><div id="block_1"><input type="hidden" name="last_transaction" value="0"><table class="deposit_table" cellspacing="3px"><tbody><tr><th class="deposit_tableHead">Account Number</th><th class="deposit_tableHead">Related Product</th></tr><tr><td class="deposit_tableCell"><input type="radio" name="AccountNumber" id="acc_OC0001728149_Casino_10" value="OC0001728149" onclick="switchSelect(this);" checked="checked">&nbsp;<label for="acc_OC0001728149">OC0001728149</label></td><td class="deposit_tableCell">Casino</td></tr></tbody></table><input type="hidden" id="rateFrom_10|rateTo_10" value="1|0.0010"><p><label for="deposit_amount">Enter amount to credit player account&nbsp;<strong>OC0001728149</strong></label><br><input type="text" name="deposit_amount" id="deposit_amount" onkeyup="drawCredits();">&nbsp;&nbsp;<span id="product_currencies"><select id="casino_deposit_currency" class="current" name="deposit_currency" onchange="drawCredits();"><option value="10">KRW</option></select></span>&nbsp;&nbsp;<span id="deposit_credits"></span></p><p id="rounding_notification"><strong>Note:</strong> Deposited amount will be rounded down.</p><input type="hidden" name="first_name" value="Test"><input type="hidden" name="last_name" value="est"><input type="hidden" name="nick_name" value=""><p class="deposit_formButtons"><input type="button" class="button" value="&#60; Back" onclick="location.href='${pageContext.request.contextPath}/playersList'">&nbsp;&nbsp;&nbsp;<input type="button" class="button" value="Next &#62;" onclick="return validateDepositForm('Player');"></p></div>
	<script type="text/javascript">
	// <!--
	var reg = new RegExp(/^\d{6,18}$/);
	function go_back()
	{
		if(document.getElementById("block_2"))
			document.getElementById("block_2").style.display='block';
		else if(document.getElementById("block_1"))
			document.getElementById("block_1").style.display='block';
		document.getElementById("notification_block").style.display='none';			
	}
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
	
	function Notification_ValidateForm(theform)
	{
		if (document.getElementById('submit_button')) {
			if (document.getElementById('submit_button').disabled) {
				return false;
			}
		}
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
   		}if(theform.notify[0].checked==false)
   			theform.notify_email.value='';
   		if(theform.notify[1].checked==false)
   			theform.notify_sms.value='';
   		if(theform.notify[2])
   		{
			if(theform.notify[2].checked==false)
   				theform.notify_print.value='false';
   			else theform.notify_print.value='true';
   		}
		reset_focus_gif(reset_arr);
		set_action();
		return false;
	}
	//-->
	</script>
	<input type="hidden" name="notify_print" id="notify_print" value="">
	<table summary="" cellpadding="0" cellspacing="0" border="0" id="notification_block" style="display:none;">
		  <tbody><tr><td colspan="2">Send receipt to:<br><br></td></tr>
          <tr>
            <td nowrap="nowrap"><input type="checkbox" value="notify_email" name="notify" id="notify" onclick="if(this.checked==true) document.deposit_form.notify_email.disabled=false; else document.deposit_form.notify_email.disabled=true;">E-mail address&nbsp;</td>
            <td><input type="text" class="field" value="" name="notify_email" id="notify_email" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_email_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          </tr>
          <tr><td colspan="2">&nbsp;</td></tr>
                <tr id="notify_sms_tr">
                    <td nowrap="nowrap"><input type="checkbox" value="notify_sms" name="notify" id="notify" onclick="if(this.checked==true) document.deposit_form.notify_sms.disabled=false; else document.deposit_form.notify_sms.disabled=true;">SMS to&nbsp;</td>
                    <td><input type="text" class="field" value="" name="notify_sms" id="notify_sms" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_sms_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_sms_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font></td>
                </tr>
         <tr><td colspan="2"><br><br></td></tr>
         <tr>
            <td></td>
            <td>&nbsp;<input onclick="location.href='${pageContext.request.contextPath}/playersList'" type="button" class="button" name="back_button" id="back_button" value="  &#60; Back  " onclick="go_back();">&nbsp;<input type="submit" name="submit_button" id="submit_button" class="button" value="  Send  "></td>
          </tr>
        </tbody></table></form></div><script src="./scripts/deposit.js" type="text/javascript"></script>
    <script type="text/javascript">
    function validateDepositForm(player_type, form) {
        if (!player_type) {
            player_type = 'Station';
        }

        if (!form) {
            form = document.getElementById('deposit_form');
        }

        var amount = form.deposit_amount.value;

        if((amount == '') || (amount <= 0) || isNaN(amount))
        {
            document.getElementById('error').innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
            set_focus(form.deposit_amount);
            return false;
        }
        else if (amount < 0.01) {
            document.getElementById('error').innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';
            set_focus(form.deposit_amount);
            return false;
        }
        else {
            unset_focus(form.deposit_amount);
        }
        if (player_type == 'Station') {
            set_action(player_type);
        }
        else {
            form.notify_sms.value='639991234567';
			form.notify_email.value='testgmailyahoo@yahoogamil.com';
            showNotification();
        }
        return false;
     }

     function toggleForm(link) {

        form_id = link.name + '_form';

        if (link.name == 'transfer') {
            link.name = 'deposit';
            link.innerHTML = '&laquo; Deposit';
            form_id2 = 'deposit_form';
        }
        else if (link.name == 'deposit') {
            link.name = 'transfer';
            link.innerHTML = 'Transfer Balance &raquo;';
            form_id2 = 'transfer_form';
        }

        document.getElementById(form_id2).style.display = 'none';
        document.getElementById(form_id).style.display = 'block';
     }
     </script>
    
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'deposit\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/22/2015 19:43</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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