<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)https://www.totalegame.net/update_login.php -->
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

<script type="text/javascript" async="" src="./scripts/ga.js">
</script><script src="./scripts/post_form.js" type="text/javascript"></script>
<script src="./scripts/ajax_functions.js" type="text/javascript"></script>
<script src="./scripts/def_js.js" type="text/javascript"></script>
<script src="./scripts/drag_functions.js" type="text/javascript"></script>

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
                            Edit Cashier
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Edit&nbsp;Login </td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        <div class="box_tabs" style="position:relative; height: 400px !important;" id="output"><div style="display:none; position:absolute; z-index:10; top:65px; left:220px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;">
	<script src="./scripts/cookie_check.js" type="text/javascript"></script> 
	<script type="text/javascript">
	// <!--
	var reg = new RegExp(/^\d{6,18}$/);
	
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
	
	function ValidateForm(theform)
	{
   	var reg_names= new RegExp(/^[a-zA-Z][a-zA-Z0-9-]*$/);
   	var reg_password = new RegExp(/^([A-z0-9]){6,10}$/);
		
		if(theform.first_name.value=='')
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';		
			set_focus(theform.first_name); 
			return false;
		}
		else unset_focus(theform.first_name);
	
		if (!reg_names.test(replace_spaces(theform.first_name))) 
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
			set_focus(theform.first_name);
			return false;
		}
		else unset_focus(theform.first_name);
			
		if(theform.last_name.value=='')
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';		
			set_focus(theform.last_name); 
			return false;
		}
		else unset_focus(theform.last_name);
		
		if (!reg_names.test(replace_spaces(theform.last_name))) 
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
			set_focus(theform.last_name);
			return false;
		}
		else unset_focus(theform.last_name);
		
		if(theform.email.value!='')
		{
			if(!ValidateEmail(theform.email))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';		
				set_focus(theform.email); 
				return false;
			}
			else unset_focus(theform.email);
		}

        if (theform.password.value != '') {
            if (!(/^[0-9A-z]*$/.test(theform.password.value))) {
                document.getElementById("error").innerHTML = '<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                set_focus(theform.password);
                return false;
            }
            else if (6 > theform.password.value.length || theform.password.value.length > 10) {
                document.getElementById("error").innerHTML = '<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The password supplied does not match the minimum complexity requirements. Error # 1021</div>';
                set_focus(theform.password);
                return false;
            }
            else if (theform.password.value != theform.confirmPassword.value) {
                document.getElementById("error").innerHTML = '<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! The Passwords you type do not match. Error # 1022</div>';
                set_focus(theform.confirmPassword);
                return false;
            }
            else {
                unset_focus(theform.password);
                unset_focus(theform.confirmPassword);
            }
        }
        else {
            unset_focus(theform.password);
            unset_focus(theform.confirmPassword);
        }
		
		if(theform.mobile_number.value!='')
		{
			if (!reg.test(replace_spaces(theform.mobile_number))) 
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.mobile_number);
				return false;
			}
			else unset_focus(theform.mobile_number);
		}		
			
		var reset_arr=new Array('mobile_number','first_name','last_name','email');
		reset_focus_gif(reset_arr);
		document.getElementById('error').innerHTML='';
		set_action();
		return false;
	}
		
	function set_action()
	{
		var session='';
		if(!document.cookie)
			session='PHPSESSID=bbfb342700dd7a2c004b4c944320223a';
		disable_submit_button();
		sndReqUpdateLogin(
            document.agent_form.login_name.value,
            document.agent_form.first_name.value,
            document.agent_form.last_name.value,
            document.agent_form.email.value,
            document.agent_form.password.value,
            document.agent_form.mobile_number.value,
            document.agent_form.LoginType.value,
            document.agent_form.StatusId.value,
            session
        );
	}

    //Toggle password fields
    function togglePasswordFields(elm, inverse) {
        var condition;
        if (elm.checked) {
            condition = (inverse) ? false : true;
        }
        else {
            condition = (inverse) ? true : false;
        }


        if (condition === true) {
            document.getElementById('passwordTR').style.display = 'table-row';
            document.getElementById('confirmPasswordTR').style.display = 'table-row';
        }
        else {
            document.getElementById('passwordTR').style.display = 'none';
            document.getElementById('confirmPasswordTR').style.display = 'none';
            document.getElementById('password').value = '';
            document.getElementById('confirmPassword').value = '';
        }
    }
	//-->
	</script>
	<span id="error"></span>
       <form class="form-horizontal" action="logins_list.jsp" method="post" name="agent_form" id="agent_form" onsubmit="return ValidateForm(this);">
       <input type="hidden" value="MasterLogin" name="LoginType" id="LoginType">
       <input type="hidden" value="1" name="StatusId" id="StatusId">
         
         
       <div class="form-group">
    	<label for="login_name" class="col-sm-2 control-label">Login Name</label>
    	<div class="col-sm-10">
      	<input type="text" class="field" value="Test168025" name="login_name" id="login_name" disabled="disabled">
    	</div>
  </div>
   <div class="form-group">
    <label for="first_name" class="col-sm-2 control-label">First Name*</label>
    <div class="col-sm-10">
      <input type="text" class="field" value="Test1" name="first_name" id="first_name"> <img src="./images/cmt_yes.gif" id="first_name_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="first_name_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div> 
  
     <div class="form-group">
    <label for="last_name" class="col-sm-2 control-label">Last Name*</label>
    <div class="col-sm-10">
      <input type="text" class="field" value="AAagent" name="last_name" id="last_name"> <img src="./images/cmt_yes.gif" id="last_name_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="last_name_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div> 
  
     <div class="form-group">
    <label for="email" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="text" class="field" value="" name="email" id="email"> <img src="./images/cmt_yes.gif" id="email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="email_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div> 
     
      <div class="form-group">
    <label for="mobile_number" class="col-sm-2 control-label">Mobile Number</label>
    <div class="col-sm-10">
     <input type="text" class="field" value="" name="mobile_number" id="mobile_number"> <img src="./images/cmt_yes.gif" id="mobile_number_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="mobile_number_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font>
    </div>
  </div> 
      
     <font style="font-size: 11px;"><i>* Indicates mandatory field.</i></font>
     <br></br>
      <div class="form-group" style="padding-left: 80px;">
 <input type="button" class="button" value="  < Back  " onclick="location.href='logins_list.php';">
 <input type="submit" name="submit_button" id="submit_button" class="button" value="  Save  ">
  </div>
        
     </form></div></div>
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'update_login\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/22/2015 19:56</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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