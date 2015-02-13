<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)https://www.totalegame.net/update_agent.php -->
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
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/changeBalance" class="tabsmenu">Change&nbsp;Balance </a></td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/status" class="tabsmenu">Lock/Unlock&nbsp;</a></td>
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/resetPassword" class="tabsmenu">Reset&nbsp;Password </a></td>
            <td class="tabs1">View&nbsp;Details </td><td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/changeCommissionFee" class="tabsmenu">Commission&nbsp;Fee </a></td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        
<script type="text/javascript">
	// <!--
	var session='';
	if(!document.cookie)
		session='PHPSESSID=80e181d6bc8abd06b23241d5d2e9a9e0';
	var reg = new RegExp(/^\d{6,18}$/);
	String.prototype.trim = function() {
		return this.replace(/^\s+|\s+$/g,"");
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

    function checkRake(theform) {

        var rake = document.getElementById('rake_tr');

        if (rake && rake.style.display != 'none') {
            var pokerRake = document.getElementById('PokerRakePrecent');
            var pokerRakeOriginal = document.getElementById('PokerRakePercentOriginal');

            if (pokerRake.value != pokerRakeOriginal.value) {
                disable_submit_button(); 
                document.getElementById('wind1_text').innerHTML='Changing the commission setting affects the outstanding amount that has not yet been reconciled. Consider running the reconciliation process before changing the setting.<br />Are you sure you want to continue?';

                document.getElementById('wind1_button_ok').onclick = function() {
                    closeWin();
                    return ValidateForm(theform);
                };

                document.getElementById('wind1_button_cancel').onclick = function() {
                    pokerRake.value = pokerRakeOriginal.value;
                    closeWin();
                    enable_submit_button();
                };

                openWin('wind1','cont1',100,100,400,250);
                return false;
            }
            else {
                return ValidateForm(theform);
            }
        }
        else {
            return ValidateForm(theform);
        }
    }

	function ValidateForm(theform)
	{
   		var reg_names= new RegExp(/^[a-zA-Z][a-zA-Z0-9-]*$/);
   		theform.mobile.value = theform.mobile.value.trim();

        if(theform.mobile.value.trim()!='')
		{
			if (!reg.test(replace_spaces(theform.mobile))) 
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.mobile);
				return false;
			}
			else unset_focus(theform.mobile);
		}
		else unset_focus(theform.mobile);
		
		if(theform.fname.value=='')
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';		
			set_focus(theform.fname); 
			return false;
		}
		else unset_focus(theform.fname);
		
		if (!reg_names.test(replace_spaces(theform.fname))) 
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
			set_focus(theform.fname);
			return false;
		}
		else unset_focus(theform.fname);
		
		if(theform.lname.value=='')
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';		
			set_focus(theform.lname); 
			return false;
		}
		else unset_focus(theform.lname);
		
		if (!reg_names.test(replace_spaces(theform.lname))) 
		{
			document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
			set_focus(theform.lname);
			return false;
		}
		else unset_focus(theform.lname);
		
		if(theform.email.value!='')
		{
			if(!ValidateEmail(theform.email))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';		
				set_focus(theform.email); 
				return false;
			}
			else unset_focus(theform.email);
		}

        if (theform.password.value != '') {
            if (!(/^[0-9A-z]*$/.test(theform.password.value))) {
                document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                set_focus(theform.password);
                return false;
            }
            else if (6 > theform.password.value.length || theform.password.value.length > 10) {
                document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! The password supplied does not match the minimum complexity requirements. Error # 1021</div>';
                set_focus(theform.password);
                return false;
            }
            else if (theform.password.value != theform.confirmPassword.value) {
                document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! The Passwords you type do not match. Error # 1022</div>';
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

		if(theform.PokerRakePrecent)
		{   
            
			if((theform.PokerRakePrecent.value=='') || (isNaN(theform.PokerRakePrecent.value)))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
				set_focus(theform.PokerRakePrecent);
                enable_submit_button(); 
				return false;
			}
			else unset_focus(theform.PokerRakePrecent);
			
			if((theform.PokerRakePrecent.value>100) || (theform.PokerRakePrecent.value<0))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';		
				set_focus(theform.PokerRakePrecent); 
                enable_submit_button(); 
				return false;
			}
			else unset_focus(theform.PokerRakePrecent);			
		}
		if(theform.PokerInitialBalance)
		{
			if((theform.PokerInitialBalance.value=='') || (isNaN(theform.PokerInitialBalance.value)) || theform.PokerInitialBalance.value<0)
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
				set_focus(theform.PokerInitialBalance); 
                enable_submit_button(); 
				return false;
			}
			else unset_focus(theform.PokerInitialBalance);
		}
		if(theform.CasinoPrePaidRatio)
		{
			if((theform.CasinoPrePaidRatio.value=='') || (isNaN(theform.CasinoPrePaidRatio.value)))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
				set_focus(theform.CasinoPrePaidRatio); 
				return false;
			}
			else unset_focus(theform.CasinoPrePaidRatio);
			
			if((theform.CasinoPrePaidRatio.value>100) || (theform.CasinoPrePaidRatio.value<0))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';		
				set_focus(theform.CasinoPrePaidRatio); 
				return false;
			}
			else unset_focus(theform.CasinoPrePaidRatio);			
		}		
		var reset_arr=new Array('mobile','fname','lname','email');
		reset_focus_gif(reset_arr);
		set_action();
		return false;
	}
	
	function set_action()
	{
		disable_submit_button();
		if(document.agent_form.allow_prog && document.agent_form.allow_prog.checked==true)
			prog='Yes';
		else prog='No';
		if(document.agent_form.allow_poker && document.agent_form.allow_poker.checked==true)
			poker='No';
		else poker='No';
        
        if(document.agent_form.allow_sports && document.agent_form.allow_sports.checked==true)
			sports='No';
		else sports='No';
		
		var CasinoPrePaidRatio = PokerRakePrecent = ProgressiveCurrency = PokerCurrency = SportsCurrency = 0;
		
		var PokerInitialBalance = 0;
		
		if (document.agent_form.ProgressiveCurrency && prog!='No') ProgressiveCurrency=document.agent_form.ProgressiveCurrency.value;
		if (document.agent_form.currency) Currency=document.agent_form.currency.value;
		if (document.agent_form.currency1 && poker != 'No') PokerCurrency=document.agent_form.currency1.value;
		if (document.agent_form.SportsCurrency && sports != 'No') SportsCurrency = document.agent_form.SportsCurrency.value;
		
		if(document.agent_form.CasinoPrePaidRatio && poker!='No') CasinoPrePaidRatio=document.agent_form.CasinoPrePaidRatio.value/100;
		if(document.agent_form.PokerRakePrecent && poker!='No') PokerRakePrecent=document.agent_form.PokerRakePrecent.value/100;
		if(document.agent_form.PokerInitialBalance && poker!='No') PokerInitialBalance=document.agent_form.PokerInitialBalance.value;

        sndReqUpdateAgent(
            document.agent_form.login.value,
			document.agent_form.Timezone.value,
            26675,
            document.agent_form.mobile.value,
            document.agent_form.fname.value,
            document.agent_form.lname.value,
            document.agent_form.email.value,
            document.agent_form.password.value,
            prog,
            poker,
            sports,
            document.agent_form.PokerPrePaid.value,
            document.agent_form.CasinoPrePaid.value,
            document.agent_form.PokerPrePaidRatio.value,
            CasinoPrePaidRatio,
            PokerRakePrecent,
            PokerInitialBalance,
            ProgressiveCurrency,
            SportsCurrency,
            PokerCurrency,
            Currency,
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

	// Progressive Currencies implementation
	function check_progressive_fields(progressive) {
	    if (progressive.checked) {
	        document.getElementById('progressive_currency_tr').style.display = '';
	    } else {
	        document.getElementById('progressive_currency_tr').style.display = 'none';    
	    }
	}
	
	function show_prog_disable_win(box) {
	    if(box.checked == false) {
	        
	        var clickBox = document.getElementById('product_checkbox');
	        disable_submit_button(); 
	        
	        clickBox.value = 'allow_prog';
	        
	        document.getElementById('wind1_text').innerHTML = 'Access to progressive games will be blocked for all in hierarchy below.'; 
	        
	        var buttonOK = document.getElementById('wind1_button_ok');
	        var buttonCANCEL = document.getElementById('wind1_button_cancel');
	        
	        buttonOK.onclick = function() {
	            closeWin();
	            enable_submit_button();
	            check_progressive_fields(document.agent_form.allow_prog);
	        }
	        
	        buttonCANCEL.onclick = function() {
	            closeWin();
	            enable_submit_button();
	            document.getElementById(clickBox.value).checked = true; check_progressive_fields(document.agent_form.allow_prog);
	        }
	        
	        openWin('wind1', 'cont1', 100, 100, 400, 200);
	    } 
	    else { 
	        check_progressive_fields(box);
	    }
	}
    
    // Sports fields functions
    function check_sports_fields(elm) {
	    if (elm && elm.checked) {
	        document.getElementById('sports_currency_tr').style.display = '';
	    } else {
	        document.getElementById('sports_currency_tr').style.display = 'none';    
	    }
	}

    function show_sports_disable_win(box) {
	    if (box && box.checked == false) {
        
	        var clickBox = document.getElementById('product_checkbox');
	        
            disable_submit_button(); 
	        
	        clickBox.value = 'allow_sports';
	        
	        document.getElementById('wind1_text').innerHTML = 'Access to sports games will be blocked for all in hierarchy below.'; 
	        
	        var buttonOK = document.getElementById('wind1_button_ok');
	        var buttonCANCEL = document.getElementById('wind1_button_cancel');
	        
	        buttonOK.onclick = function() {
	            closeWin();
	            enable_submit_button();
	            check_sports_fields(document.agent_form.allow_sports);
	        }
	        
	        buttonCANCEL.onclick = function() {
	            closeWin();
	            enable_submit_button();
	            document.getElementById(clickBox.value).checked = true; 
                check_sports_fields(document.agent_form.allow_sports);
	        }
	        
	        openWin('wind1', 'cont1', 100, 100, 400, 200);
	    } 
	    else { 
	        check_sports_fields(box);
	    }
	}

    function check_poker_fields(thefield)
	{
		if(thefield)
		if(thefield.checked)
		{
			document.getElementById("rake_tr").style.display=display;
			if(document.getElementById("rake_tr1"))
				document.getElementById("rake_tr1").style.display=display;
			if(document.getElementById("casino_share_tr"))
				document.getElementById("casino_share_tr").style.display=display;
		}
		else 
		{
			document.getElementById("rake_tr").style.display='none';
			if(document.getElementById("rake_tr1"))
			{
				document.getElementById("rake_tr1").style.display='none';
				document.agent_form.PokerRakePrecent.value=0;
			}
			if(document.getElementById("casino_share_tr"))
			{
				document.getElementById("casino_share_tr").style.display='none';
				document.agent_form.CasinoPrePaidRatio.value=0;
			}
			document.agent_form.PokerRakePrecent.value=0;
		}
	}
	//-->
	</script>
<div id="container">
	<!-- window 1 -->
	<form action="./images/update_agent.html" method="post">
	<div id="wind1" class="wins">
<div class="box_login1" id="output1" style="position:relative;"><div style="display:none; position:absolute; z-index:20; top:20px; left:160px;" id="loader_gif1"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 100%;">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind1&#39;,&#39;cont1&#39;);">
			<tbody><tr>
				<td width="100%"></td>
				
				
				<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin(); set_focus(document.getElementById(&#39;PokerRakePrecent&#39;));
                        enable_submit_button();
                        document.getElementById(&#39;wind1_button_cancel&#39;).style.display=&#39;&#39; " title="close"></td>
			</tr>
		</tbody></table>
		<span id="cont1" class="text">
		<table width="100%" align="center" cellpadding="10" cellspacing="10">
		<tbody><tr><td><span id="error1"></span></td></tr>
      	<tr>
      		<td align="center" id="wind1_text"></td>
      	</tr>
		<tr align="center">
      					<td>
      						<input id="wind1_button_ok" type="button" class="button" value="OK" onclick="closeWin(); enable_submit_button(); check_poker_fields(document.agent_form.allow_poker); ">
							&nbsp;
      						<input id="wind1_button_cancel" type="button" class="button" value="Cancel" onclick="closeWin(); enable_submit_button(); document.getElementById(document.getElementById(&#39;product_checkbox&#39;).value).checked=true; check_poker_fields(document.agent_form.allow_poker);">
      					</td>
      				</tr>
</tbody></table>
		</span>
	</div>
	</div></div>
	</form>
	<div id="wind2" class="wins">
<div class="box_login1" id="output1" style="position:relative;"><div style="display:none; position:absolute; z-index:20; top:20px; left:160px;" id="loader_gif1"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 100%;">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind2&#39;,&#39;cont2&#39;);">
			<tbody><tr>
				<td width="100%"></td>
				
				
				<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin()" title="close"></td>
			</tr>
		</tbody></table>
		<span id="cont2" class="text">
		<table width="100%" align="center" cellpadding="10" cellspacing="10">
		<tbody><tr><td><span id="error1"></span></td></tr>
      	<tr>
      		<td align="center" id="wind2_text"></td>
      	</tr>
		<tr align="center">
      					<td><br><br><br>
      						<input type="button" class="button" value="OK" onclick="document.getElementById(&#39;PokerInitialBalance&#39;).focus(); closeWin();">
							&nbsp;
      						<input type="button" class="button" value="Cancel" onclick="document.getElementById(&#39;PokerInitialBalance&#39;).blur(); closeWin();">
      					</td>
      				</tr>
</tbody></table>
		</span>
	</div>
	</div></div>
	<!-- window 1 -->
</div>
<div class="box_tabs" style="position:relative; height: 750px;">
    <div style="display:none; position:absolute; z-index:10; top:80px; left:220px;" id="loader_gif">
        <img src="./images/ajax-loader-transparent.gif" alt="">
    </div>
    <div>
	<span id="error"></span>
	<br>
	<form class="form-horizontal" action="https://www.totalegame.net/agents_list.php" method="post" name="agent_form" id="agent_form" onsubmit="return checkRake(this);">
	<input type="hidden" value="4" id="agent_type_id">
	<input type="hidden" value="1" id="status_id">
	<input type="hidden" name="Timezone" value="204" id="Timezone">
	<input type="hidden" value="" id="product_checkbox">
	<input name="CasinoPrePaid" id="CasinoPrePaid" value="False" type="hidden">
    <input name="PokerPrePaid" id="PokerPrePaid" value="" type="hidden">
    <input name="PokerPrePaidRatio" id="PokerPrePaidRatio" value="" type="hidden">
       <span class="tabs"><div>
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
           <td class="tabs5">Personal</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div></span>
        <div class="box_tabs" style="position:relative;">
        
  <div class="form-group">
    <label for="login" class="col-sm-3 control-label">Login Name</label>
    <div class="col-sm-9">
     	<input type="text" class="field" value="big157123" name="login" id="login" readonly="readonly">
    </div>
  </div>
  
    <div class="form-group">
    <label for="mobile" class="col-sm-3 control-label">Mobile Number</label>
    <div class="col-sm-9">
     <input type="text" class="field" value="" name="mobile" id="mobile"> <img src="./images/cmt_yes.gif" id="mobile_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="mobile_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font>
    </div>
  </div>
  
      <div class="form-group">
    <label for="fname" class="col-sm-3 control-label">First Name *</label>
    <div class="col-sm-9">
     <input type="text" class="field" value="big" name="fname" id="fname"> <img src="./images/cmt_yes.gif" id="fname_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="fname_gif_no" width="13" height="13" alt="" style="display:none;">
      </div>
  </div>
  
        <div class="form-group">
    <label for="lname" class="col-sm-3 control-label">Last Name *</label>
    <div class="col-sm-9">
     <input type="text" class="field" value="ka" name="lname" id="lname"> <img src="./images/cmt_yes.gif" id="lname_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="lname_gif_no" width="13" height="13" alt="" style="display:none;">      </div>
  </div>
          <div class="form-group">
    <label for="email" class="col-sm-3 control-label">E-mail</label>
    <div class="col-sm-9">
    <input type="text" class="field" value="" name="email" id="email"> <img src="./images/cmt_yes.gif" id="email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="email_gif_no" width="13" height="13" alt="" style="display:none;">  
    </div>
  </div>
  
            <div class="form-group">
    <label for="mobile" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
   <input type="checkbox" class="field" value="1" name="autoPassword" id="autoPassword" onclick="togglePasswordFields(this)">Change Password
    </div>
  </div>
          
            <div id="passwordTR" style="display: none;" class="form-group">
    <label for="mobile" class="col-sm-3 control-label">Password</label>
    <div class="col-sm-9">
   <input type="text" class="field" value="" name="password" id="password"> <img src="./images/cmt_yes.gif" id="password_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="password_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
    
            <div id="confirmPasswordTR" style="display: none;" class="form-group">
    <label for="mobile" class="col-sm-3 control-label">Confirm Password</label>
    <div class="col-sm-9">
  <input type="text" class="field" value="" name="confirmPassword" id="confirmPassword"> <img src="./images/cmt_yes.gif" id="confirmPassword_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="confirmPassword_gif_no" width="13" height="13" alt="" style="display:none;">
                <br>
                <font style="font-size: 11px;"><em><strong>Note:</strong> 6-10 alphanumeric characters. If empty, the password will not be changed</em></font>
    </div>
  </div>
 
          </div>        
       <span class="tabs"><div>
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
           <td class="tabs5">Settings</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div></span>
        <div class="box_tabs" style="position:relative;">
        
        
               <div class="form-group">
    <label for="email" class="col-sm-3 control-label">Credit Currency</label>
    <div class="col-sm-9">
     	<select name="currency" class="field" disabled="disabled">
            	<option value="1" selected="selected">USD</option>
            </select>
    </div>
  </div>
  
                 <div class="form-group">
    <label for="phone_ext" class="col-sm-3 control-label">Country Of Operation</label>
    <div class="col-sm-9">
     	<select name="phone_ext" id="phone_ext" class="field" disabled="disabled"><option value="">Select Your Country</option><option value="93" id="1">Afghanistan</option><option value="358" id="2">Aland Islands</option><option value="355" id="3">Albania</option><option value="213" id="4">Algeria</option><option value="1684" id="5">American Samoa</option><option value="376" id="6">Andorra</option><option value="244" id="7">Angola</option><option value="1264" id="8">Anguilla</option><option value="672" id="9">Antarctica</option><option value="1268" id="10">Barbuda</option><option value="54" id="11">Argentina</option><option value="374" id="12">Armenia</option><option value="297" id="13">Aruba</option><option value="61" id="14">Australia</option><option value="43" id="15">Austria</option><option value="994" id="16">Azerbaijan</option><option value="1242" id="17">Bahamas</option><option value="973" id="18">Bahrain</option><option value="880" id="19">Bangladesh</option><option value="1246" id="20">Barbados</option><option value="375" id="21">Belarus</option><option value="32" id="22">Belgium</option><option value="501" id="23">Belize</option><option value="229" id="24">Benin</option><option value="1441" id="25">Bermuda</option><option value="975" id="26">Bhutan</option><option value="591" id="27">Bolivia</option><option value="387" id="28">Bosnia &amp; Herzegovina</option><option value="267" id="29">Botswana</option><option value="000" id="30">Bouvet Island</option><option value="55" id="31">Brazil</option><option value="246" id="32">British Indian Ocean Territory</option><option value="673" id="33">Brunei Darussalam</option><option value="359" id="34">Bulgaria</option><option value="226" id="35">Burkina Faso</option><option value="257" id="36">Burundi</option><option value="855" id="37">Cambodia</option><option value="237" id="38">Cameroon</option><option value="1" id="39">Canada</option><option value="238" id="40">Cape Verde</option><option value="1345" id="41">Cayman Islands</option><option value="236" id="42">Central African Republic</option><option value="235" id="43">Chad</option><option value="56" id="44">Chile</option><option value="86" id="45">China (PRC)</option><option value="61" id="46">Christmas Island</option><option value="61" id="47">Cocos-Keeling Islands</option><option value="57" id="48">Colombia</option><option value="269" id="49">Comoros</option><option value="242" id="50">Congo</option><option value="243" id="51">Congo, Dem.Republic</option><option value="682" id="52">Cook Islands</option><option value="506" id="53">Costa Rica</option><option value="225" id="54">Ivory Coast</option><option value="385" id="55">Croatia</option><option value="53" id="56">Cuba</option><option value="357" id="57">Cyprus</option><option value="420" id="58">Czech Republic</option><option value="45" id="59">Denmark</option><option value="253" id="60">Djibouti</option><option value="1767" id="61">Dominica</option><option value="1809" id="62">Dominican Republic</option><option value="593" id="63">Ecuador</option><option value="20" id="64">Egypt</option><option value="503" id="65">El Salvador</option><option value="240" id="66">Equatorial Guinea</option><option value="291" id="67">Eritrea</option><option value="372" id="68">Estonia</option><option value="251" id="69">Ethiopia</option><option value="500" id="70">Falkland Islands (Malvinas)</option><option value="298" id="71">Faroe Islands</option><option value="679" id="72">Fiji Islands</option><option value="358" id="73">Finland</option><option value="33" id="74">France</option><option value="594" id="75">French Guiana</option><option value="689" id="76">French Polynesia</option><option value="241" id="77">Gabonese Republic</option><option value="220" id="78">Gambia</option><option value="995" id="79">Georgia</option><option value="49" id="80">Germany</option><option value="233" id="81">Ghana</option><option value="350" id="82">Gibraltar</option><option value="30" id="83">Greece</option><option value="299" id="84">Greenland</option><option value="1473" id="85">Grenada</option><option value="590" id="86">Guadeloupe</option><option value="1671" id="87">Guam</option><option value="502" id="88">Guatemala</option><option value="44" id="89">Guernsey</option><option value="224" id="90">Guinea</option><option value="245" id="91">Guinea-Bissau</option><option value="592" id="92">Guyana</option><option value="509" id="93">Haiti</option><option value="61" id="94">Heard Island and McDonald Islands</option><option value="379" id="95">Vatican City</option><option value="504" id="96">Honduras</option><option value="852" id="97">Hong Kong</option><option value="36" id="98">Hungary</option><option value="354" id="99">Iceland</option><option value="91" id="100">India</option><option value="62" id="101">Indonesia</option><option value="98" id="102">Iran</option><option value="964" id="103">Iraq</option><option value="353" id="104">Ireland</option><option value="44" id="105">Isle of Man</option><option value="39" id="107">Italy</option><option value="1876" id="108">Jamaica</option><option value="81" selected="selected" id="110">Japan</option><option value="44" id="109">Jersey</option><option value="962" id="111">Jordan</option><option value="7" id="112">Kazakhstan</option><option value="254" id="113">Kenya</option><option value="686" id="114">Kiribati</option><option value="850" id="115">Korea (North)</option><option value="82" id="116">Korea (South)</option><option value="965" id="117">Kuwait</option><option value="996" id="118">Kyrgyz Republic</option><option value="856" id="119">Laos</option><option value="371" id="120">Latvia</option><option value="961" id="121">Lebanon</option><option value="266" id="122">Lesotho</option><option value="231" id="123">Liberia</option><option value="218" id="124">Libya</option><option value="423" id="125">Liechtenstein</option><option value="370" id="126">Lithuania</option><option value="352" id="127">Luxembourg</option><option value="853" id="128">Macao</option><option value="389" id="129">Macedonia</option><option value="261" id="130">Madagascar</option><option value="265" id="131">Malawi</option><option value="60" id="132">Malaysia</option><option value="960" id="133">Maldives</option><option value="223" id="134">Mali Republic</option><option value="356" id="135">Malta</option><option value="692" id="136">Marshall Islands</option><option value="596" id="137">Martinique</option><option value="222" id="138">Mauritania</option><option value="230" id="139">Mauritius</option><option value="262" id="140">Mayotte Island</option><option value="52" id="141">Mexico</option><option value="972" id="142">Micronesia</option><option value="373" id="143">Moldova</option><option value="377" id="144">Monaco</option><option value="976" id="145">Mongolia</option><option value="381" id="193">Serbia and Montenegro</option><option value="1664" id="147">Montserrat</option><option value="212" id="148">Morocco</option><option value="258" id="149">Mozambique</option><option value="95" id="150">Myanmar</option><option value="264" id="151">Namibia</option><option value="674" id="152">Nauru</option><option value="977" id="153">Nepal</option><option value="31" id="154">Netherlands</option><option value="599" id="155">Netherlands Antilles</option><option value="687" id="156">New Caledonia</option><option value="64" id="157">New Zealand</option><option value="505" id="158">Nicaragua</option><option value="227" id="159">Niger</option><option value="234" id="160">Nigeria</option><option value="683" id="161">Niue</option><option value="672" id="162">Norfolk Island</option><option value="1670" id="163">Northern Mariana</option><option value="47" id="164">Norway</option><option value="968" id="165">Oman</option><option value="92" id="166">Pakistan</option><option value="680" id="167">Palau</option><option value="970" id="168">Palestinian Settlements</option><option value="507" id="169">Panama</option><option value="675" id="170">Papua New Guinea</option><option value="595" id="171">Paraguay</option><option value="51" id="172">Peru</option><option value="63" id="173">Philippines</option><option value="672" id="174">Pitcairn</option><option value="48" id="175">Poland</option><option value="351" id="176">Portugal</option><option value="1787" id="177">Puerto Rico</option><option value="974" id="178">Qatar</option><option value="262" id="179">Reunion</option><option value="40" id="180">Romania</option><option value="7" id="181">Russia</option><option value="250" id="182">Rwanda</option><option value="290" id="183">St. Helena</option><option value="1869" id="184">St. Kitts/Nevis</option><option value="1758" id="185">St. Lucia</option><option value="508" id="186">St. Pierre &amp; Miquelon</option><option value="1784" id="187">St. Vincent &amp; Grenadines</option><option value="685" id="188">Western Samoa</option><option value="378" id="189">San Marino</option><option value="239" id="190">Sao Tome and Principe</option><option value="966" id="191">Saudi Arabia</option><option value="221" id="192">Senegal</option><option value="248" id="194">Seychelles Republic</option><option value="232" id="195">Sierra Leone</option><option value="65" id="196">Singapore</option><option value="421" id="197">Slovak Republic</option><option value="386" id="198">Slovenia</option><option value="677" id="199">Solomon Islands</option><option value="252" id="200">Somali Democratic Republic</option><option value="27" id="201">South Africa</option><option value="34" id="202">Spain</option><option value="94" id="203">Sri Lanka</option><option value="249" id="204">Sudan</option><option value="597" id="205">Suriname</option><option value="268" id="206">Swaziland</option><option value="46" id="207">Sweden</option><option value="41" id="208">Switzerland</option><option value="963" id="209">Syria</option><option value="886" id="210">Taiwan</option><option value="992" id="211">Tajikistan</option><option value="255" id="212">Tanzania</option><option value="66" id="213">Thailand</option><option value="670" id="214">East Timor</option><option value="228" id="215">Togolese Republic</option><option value="690" id="216">Tokelau</option><option value="676" id="217">Tonga Islands</option><option value="1868" id="218">Trinidad &amp; Tobago</option><option value="216" id="219">Tunisia</option><option value="90" id="220">Turkey</option><option value="993" id="221">Turkmenistan</option><option value="1649" id="222">Turks and Caicos Islands</option><option value="688" id="223">Tuvalu</option><option value="256" id="224">Uganda</option><option value="380" id="225">Ukraine</option><option value="971" id="226">United Arab Emirates</option><option value="44" id="227">United Kingdom</option><option value="1" id="228">United States</option><option value="598" id="229">Uruguay</option><option value="998" id="230">Uzbekistan</option><option value="678" id="231">Vanuatu</option><option value="58" id="232">Venezuela</option><option value="84" id="233">Vietnam</option><option value="1284" id="234">British Virgin Islands</option><option value="1340" id="235">Virgin Islands</option><option value="681" id="236">Wallis and Futuna Islands</option><option value="212" id="237">Western Sahara</option><option value="967" id="238">Yemen</option><option value="260" id="239">Zambia</option><option value="263" id="240">Zimbabwe</option></select> <img src="./images/cmt_yes.gif" id="phone_ext_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="phone_ext_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
  
                   <div class="form-group">
    <label for="email" class="col-sm-3 control-label">Allow Progressive Games</label>
    <div class="col-sm-9">
 <input type="checkbox" class="field" name="allow_prog" id="allow_prog" value="true" checked="checked" style="float:left;" onclick="show_prog_disable_win(this);">
   </div>
  </div>
    
                   <div id="progressive_currency_tr" class="form-group">
    <label for="email" class="col-sm-3 control-label">Progressive Currency</label>
    <div class="col-sm-9">
<select name="ProgressiveCurrency" class="field" disabled="disabled">
            	        	<option value="1" selected="selected">USD</option>
                        </select>
     </div>
  </div>
  
  
        

        </div>
        <table summary="" cellpadding="0" cellspacing="0" border="0">
        <tbody><tr>
            <td colspan="2"><font style="font-size: 11px;"><i>* Indicates mandatory field.</i></font></td>
        </tr>
        </tbody></table>
        <table>
         <tbody><tr>
            <td colspan="2" align="center"><input type="button" class="button" value="  Cancel  " onclick="location.href=&#39;agents_list.php&#39;;" id="back_button" name="back_button">&nbsp;<input type="submit" name="submit_button" id="submit_button" class="button" value="  Save  ">
            </td>
          </tr>
        </tbody></table>
     </form>
     <!--div class="tab_head">Personal</div>
     <table class="tab_body" cellpadding="0" cellspacing="1" border="0">
		  <tr>
            <td class="tab_row1" width="35%">Login Name</td>
            <td class="tab_row1" width="35%">big157123</td>
          </tr>
          <tr>
            <td class="tab_row2">Mobile Number</td>
            <td class="tab_row2"></td>
          </tr>
          <tr>
            <td class="tab_row1">First Name</td>
            <td class="tab_row1">big</td>
          </tr>
          <tr>
            <td class="tab_row2">Last Name</td>
            <td class="tab_row2">ka</td>
          </tr>
          <tr>
            <td class="tab_row1">E-mail</td>
            <td class="tab_row1"></td>
          </tr>
          <tr style="display:none;">
            <td class="tab_row1">Commission</td>
            <td class="tab_row1">0</td>
          </tr>
        </table>
        <br />
        <div class="tab_head">Settings</div>
        <table class="tab_body" cellpadding="0" cellspacing="1" border="0">          
          <tr>
            <td class="tab_row1" width="35%">Currency</td>
            <td class="tab_row1" width="35%">USD</td>
          </tr><tr>
            <td class="tab_row2" width="35%">Allow Progressive Games</td>
            <td class="tab_row2" width="35%">
            <input type="checkbox" name="allow_prog" id="allow_prog" value="true"checked="checked" disabled="disabled" style="float:left;" onclick="if(this.checked==false) openWin('wind1','cont1',100,100,400,200); else sndReqSetProgressiveStatus('big157123','Yes',session);" />
            <input type="button" class="button" value=" Edit  " style="float:right;" onclick="document.getElementById('allow_prog').disabled=false; this.disabled=true;" /></td>
          </tr>          
          <tr style="display:none;">
            <td class="tab_row1">Commission</td>
            <td class="tab_row1">0</td>
          </tr>
        </table>
     </div--></div>
     <script type="text/javascript">
     if(document.agent_form.allow_poker)
              check_poker_fields(document.agent_form.allow_poker);
     // Progressive currencies implementation         
     if(document.agent_form.allow_prog)
        check_progressive_fields(document.agent_form.allow_prog);
     // Sports currencies implementation         
     if(document.agent_form.allow_sports)
        check_sports_fields(document.agent_form.allow_sports);
     </script>
     
                    </div></td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'a155755\',\'update_agent\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>a a</strong><br>Representative<br><em><font size="1px"><span id="gmt_time">2/9/2015 13:20</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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