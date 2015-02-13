<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0045)https://www.totalegame.net/change_balance.php -->
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
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Change&nbsp;Balance </td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/status" class="tabsmenu">Lock/Unlock&nbsp;</a></td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/resetPassword" class="tabsmenu">Reset&nbsp;Password </a></td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/updateAgent" class="tabsmenu">View&nbsp;Details </a></td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/changeCommissionFee" class="tabsmenu">Commission&nbsp;Fee </a></td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        
        <div class="box_tabs" id="output" style="position:relative; height: 270px; width:600px;">
            <div style="display:none; position:absolute; z-index:10; top:50px; left:220px;" id="loader_gif">
                <img src="./images/ajax-loader-transparent.gif" alt="">
            </div>
        <div>
        <script type="text/javascript">
        // <!--

        function ValidateForm(theform) {
            var reset_arr = new Array("increase_amount", "decrease_amount");
            reset_focus_gif(reset_arr);
            if (theform.direction[0].checked == true) {
                if (theform.increase_amount.value == "" 
                    || isNaN(theform.increase_amount.value) 
                    || theform.increase_amount.value <= 0) {

                    document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a valid amount. Error # 1012</div>';		
                    set_focus(theform.increase_amount); 
                    return false;
                }
                else {
                    unset_focus(theform.increase_amount);
                }

                theform.change_amount.value = "+" + theform.increase_amount.value;
                theform.CurrencyId.value = theform.increase_currency.value;
            }

            if (theform.direction[1].checked == true) {
                if (theform.decrease_amount.value == "" 
                    || isNaN(theform.decrease_amount.value)
                    || theform.decrease_amount.value <= 0) {

                    document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a valid amount. Error # 1012</div>';		
                    set_focus(theform.decrease_amount); 
                    return false;
                }
                else {
                    unset_focus(theform.decrease_amount);
                }

                theform.change_amount.value = "-" + theform.decrease_amount.value;
                theform.CurrencyId.value = theform.decrease_currency.value;
            }
            if (theform.change_amount.value == "") {
                document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';		
                return false;
            }

            reset_focus_gif(reset_arr);
            set_action(theform);
            return false;
        }

        function set_action(theform) {
            var session = "";
            if (!document.cookie)
                session = "PHPSESSID=80e181d6bc8abd06b23241d5d2e9a9e0";

            disable_submit_button();

            sndReqChangeBalance(
                "big157123",
                theform.change_amount.value,
                theform.CurrencyId.value,
                theform.trans_id.value,
                theform.product_type.value,
                session
            );
        }

        function view_amount(amount_type, rate) {
            var agent_cur = "USD";
            var parent_cur = "USD";

            if (document.getElementById(amount_type + "_amount").value != "" 
                && (isNaN(document.getElementById(amount_type + "_amount").value) 
                    || document.getElementById(amount_type + "_amount").value <= 0)) {

                document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a valid amount. Error # 1012</div>';
            }
            else {
                document.getElementById("error").innerHTML = "";

                var cur_obj = document.getElementById(amount_type + "_currency");
                if (cur_obj[cur_obj.selectedIndex].text == agent_cur) {
                    document.getElementById (amount_type + "_amount_span").innerHTML = (Math.round(document.getElementById(amount_type + "_amount").value/rate*100))/100 + " " + parent_cur;
                }
                else {
                    document.getElementById(amount_type + "_amount_span").innerHTML = (Math.round(document.getElementById(amount_type + "_amount").value*rate*100))/100 + " " + agent_cur;
                }
            }
        }

        function check_amount_fields(field, amount_type) {
            if (field.checked == true) {	
                switch(amount_type) {
                    case "increase":
                        document.agent_form.increase_amount.disabled = false; 
                        document.agent_form.decrease_amount.disabled = true; 
                        document.agent_form.decrease_amount.value = ""; 

                        if (1 > 1) {
                            document.agent_form.decrease_currency.disabled = true;
                            document.agent_form.increase_currency.disabled = false;
                        }
                        document.agent_form.decrease_currency.value = "1";
                        document.getElementById("decrease_amount_span").innerHTML = "";
                    break;

                    case "decrease":
                        document.agent_form.decrease_amount.disabled = false; 
                        document.agent_form.increase_amount.disabled = true; 
                        document.agent_form.increase_amount.value = ""; 

                        if(1 > 1)	{
                            document.agent_form.increase_currency.disabled = true;
                            document.agent_form.decrease_currency.disabled = false;
                        }
                        document.agent_form.increase_currency.value = "1";
                        document.getElementById("increase_amount_span").innerHTML = "";
                    break;
                }
            }
        }

        function incbal(val) {
            /*doc = document.getElementById("incbalace");
            doc1 = document.getElementById("incbalace1");

            tmp = doc.innerHTML;
            doc.innerHTML = doc1.innerHTML;
            doc1.innerHTML = tmp;

            doc = document.getElementById("decbalace");
            doc1 = document.getElementById("decbalace1");

            tmp = doc.innerHTML;
            doc.innerHTML = doc1.innerHTML;
            doc1.innerHTML = tmp;*/
            
            document.getElementById("incbalace").innerHTML = document.getElementById("incbalace_" + val).innerHTML;
            document.getElementById("decbalace").innerHTML = document.getElementById("decbalace_" + val).innerHTML;
        }

        function check_product_amounts (product) {
            var parent_casino_balance = 0;
            var agent_casino_balance = 0;
            var parent_poker_balance = 0;
            var agent_poker_balance = 0;
            var parent_sports_balance = 0;
            var agent_sports_balance = 0;

            sel_index = document.agent_form.product_type.selectedIndex;
            document.agent_form.reset();

            document.agent_form.product_type[sel_index].selected = true;
            document.agent_form.decrease_amount.disabled = true; 
            document.agent_form.increase_amount.disabled = true; 
            document.getElementById("increase_amount_span").innerHTML = "";
            document.getElementById("decrease_amount_span").innerHTML = "";

            switch (product) {
                case "Casino":
                    if (parent_casino_balance <= 0) {
                        document.agent_form.direction[0].disabled = true;
                    }
                    else {
                        document.agent_form.direction[0].disabled = false;
                    }

                    if (agent_casino_balance <= 0) {
                        document.agent_form.direction[1].disabled = true;
                    }
                    else {
                        document.agent_form.direction[1].disabled = false;
                    }
                break;

                case "Poker":
                    if (parent_poker_balance <= 0) {
                        document.agent_form.direction[0].disabled = true;
                    }
                    else {
                        document.agent_form.direction[0].disabled = false;
                    }

                    if (agent_poker_balance <= 0) {
                        document.agent_form.direction[1].disabled = true;
                    }
                    else {
                        document.agent_form.direction[1].disabled = false;
                    }
                break;

                case "Sports":
                    if (parent_sports_balance <= 0) {
                        document.agent_form.direction[0].disabled = true;
                    }
                    else {
                        document.agent_form.direction[0].disabled = false;
                    }

                    if (agent_sports_balance <= 0) {
                        document.agent_form.direction[1].disabled = true;
                    }
                    else {
                        document.agent_form.direction[1].disabled = false;
                    }
                break;

            }
            incbal(product);	
        }
        //-->
        </script>

        <span id="error"></span><br>Current Casino balance of Agent <b>big ka</b> (big157123) is: <i><b>0.00 USD</b></i>
    <br><br><form class="form-horizontal" action="https://www.totalegame.net/agents_list.php" method="post" name="agent_form" id="agent_form" onsubmit="return ValidateForm(this);">
            <input name="change_amount" id="change_amount" type="hidden" value="">
            <input name="CurrencyId" id="CurrencyId" type="hidden" value="">
            <input name="trans_id" id="trans_id" type="hidden" value="347880">
            <div style="display:none;" id="casinocurr"><select name="SportsCurrency" class="field" disabled="disabled" onchange="curval1(this.options[this.selectedIndex].innerHTML);"></select></div>
            
            
       <div class="form-group">
       <div class = "col-sm-3">
        <input name="direction" id="direction" type="radio" value="+" onclick="check_amount_fields(this,&#39;increase&#39;);" disabled="disabled">Increase Agent's balance
       </div>
    <div class="col-sm-9">
 <input name="increase_amount" id="increase_amount" type="text" class="field" style="width: 100px; text-align: right;" value="" disabled="disabled">
                <div id="incbalace" style="display: inline;"><select class="field" name="increase_currency" id="increase_currency" disabled="disabled"><option value="1">USD</option></select>  <img src="./images/cmt_yes.gif" id="increase_amount_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="increase_amount_gif_no" width="13" height="13" alt="" style="display:none;"></div>
                <span id="increase_amount_span"></span><br>
    </div>
  </div>
         <div class="form-group">
       <div class = "col-sm-3">
         <input name="direction" id="direction" type="radio" value="-" onclick="check_amount_fields(this,'decrease');" disabled="disabled">Decrease Agent's balance
       </div>
    <div class="col-sm-9">
 <input name="decrease_amount" id="decrease_amount" type="text" class="field" style="width: 100px; text-align: right;" value="" disabled="disabled">
                <div id="decbalace" style="display: inline;"><select class="field" name="decrease_currency" id="decrease_currency" disabled="disabled"><option value="1">USD</option></select>  <img src="./images/cmt_yes.gif" id="decrease_amount_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="decrease_amount_gif_no" width="13" height="13" alt="" style="display:none;"></div>
                <span id="decrease_amount_span"></span>
                <br>
    </div>
  </div>
  
   <input type="button" class="button" value="  Cancel  " onclick="location.href=&#39;agents_list.php&#39;">&nbsp;
            <input type="submit" class="button" name="submit_button" id="submit_button" value="  Save  ">
            
    </form>
    </div></div>
        <div id="incbalace_Casino" style="display: none;"><select class="field" name="increase_currency" id="increase_currency" disabled="disabled"><option value="1">USD</option></select>  <img src="./images/cmt_yes.gif" id="increase_amount_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="increase_amount_gif_no" width="13" height="13" alt="" style="display:none;"></div>
        <div id="decbalace_Casino" style="display: none;"><select class="field" name="decrease_currency" id="decrease_currency" disabled="disabled"><option value="1">USD</option></select>  <img src="./images/cmt_yes.gif" id="decrease_amount_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="decrease_amount_gif_no" width="13" height="13" alt="" style="display:none;"></div>    
    
            <div id="incbalace_Poker" style="display:none;"><select class="field" name="increase_currency" id="increase_currency" disabled="disabled"><option value=""></option></select>  <img src="./images/cmt_yes.gif" id="increase_amount_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="increase_amount_gif_no" width="13" height="13" alt="" style="display:none;"></div>
            <div id="decbalace_Poker" style="display:none;"><select class="field" name="decrease_currency" id="decrease_currency" disabled="disabled"><option value=""></option></select>  <img src="./images/cmt_yes.gif" id="decrease_amount_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="decrease_amount_gif_no" width="13" height="13" alt="" style="display:none;"></div>
        
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'a155755\',\'change_balance\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>a a</strong><br>Representative<br><em><font size="1px"><span id="gmt_time">2/9/2015 12:25</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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