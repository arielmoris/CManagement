<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0040)https://www.totalegame.net/add_agent.php -->
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

</head>
<body>

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
                        <span class="logo">
                            <img class="logo0" src="./images/spacer.gif" width="135" height="30" alt="">
                    <!--[if IE 8]>
                    <style>
                    div.helplink {
                        background: url(/images/Get_help_mouseout.gif) top left no-repeat; 
                        cursor:pointer;
                        float:right;
                        margin:0;
                        padding:0;
                        margin-top:0;
                        margin-top:50px;
                    }
                    </style>
                    <![endif]-->				
                    
				
                        </span>
                        
                        <div class="page_title">
                            Add Agent
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Add&nbsp;Agent </td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        
        <div class="box_tabs" style="position:relative; height: 1440px !important; width: 530px; padding-left:5px;text-align:left; overflow:auto;">
            <div style="display:none; position:absolute; z-index:10; top:65px; left:220px;" id="loader_gif">
                <img src="./images/ajax-loader-transparent.gif" alt="">
            </div>
            <div style="position:absolute; z-index:0; width: 98%;">
	<script src="./images/cookie_check.js" type="text/javascript"></script> 
	<script type="text/javascript">
	// <!--
        var reg = new RegExp(/^\d{6,14}$/);

        function ValidateEmail (theinput) {
            var s = theinput.value;
            if (s.search) {
                return (s.search(new RegExp("^([-!#$%&'*+./0-9=?A-Z^_`a-z{|}~ ])+@([-!#$%&'*+/0-9=?A-Z^_`a-z{|}~ ]+\.)+[a-zA-Z]{2,4}$","gi")) >= 0);
            }
            if (s.indexOf) {
                var at_character = s.indexOf('@');
                if (at_character <= 0 || (at_character + 4) > s.length) {
                    return false;
                }
            }
            if (s.length < 6) {
                return false;
            }
            else {
                return true;
            }
        }
        
        function isChecked (formObj, elm, id) {
            var els = formObj.elements[elm]; 
            for (var i = 0; i < els.length; ++i) {
		        if (els[i].checked && i == id) {
                    return true;
                }
            }
            return false;
        }
        
        function getRadioValue (formObj, elm, id) {
            var els = formObj.elements.item(elm); 
            for (var i = 0; i < els.length; ++i) {
                if (i == id) {
                    return els[i].value;
                } 
            }	
        }

        String.prototype.trim = function() {
            return this.replace(/^\s+|\s+$/g,"");
        }

        function set_mobile_prefix (country) {
            document.getElementById('mobile_prefix').value = country[country.selectedIndex].value;
        }
		
		function set_time_zone_select(elem) {
			$('select#Timezone').html('');
			$('select#Timezone').attr('disabled', 'disabled');
			$.post('/get_time_zone_for_country.php', {countryId: $(elem).find('option:selected').attr('id')}, function(data){
				if (data.search('error') != -1) {
					document.getElementById('error').innerHTML = data; //Fill in response
				}
				data = JSON.parse(data)
				for (key in data.zones) {
					$('select#Timezone').append('<option value=' + key + '>' + data.zones[key] + '</option>')
				}
				if (data.defaultId) {
					$('select#Timezone').val(data.defaultId);
				}
				$('select#Timezone').removeAttr('disabled');
			});
		}
		window.addEventListener('load', function() {
			set_time_zone_select(document.getElementById('phone_ext'))
		});
		

        function ValidateForm(theform) {
            var reg_names = new RegExp(/^[a-zA-Z][a-zA-Z0-9-]*$/);
            var reg_prefix = new RegExp(/^[0-9]{1,6}$/);
            theform.PhoneNumber.value = '';
		
            if (theform.phone_ext.value == '') {
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                set_focus(theform.phone_ext);
                return false;
            }
            else {
                theform.CountryId.value = theform.phone_ext[theform.phone_ext.selectedIndex].id;
                unset_focus(theform.phone_ext);
            }
	
            if (theform.mobile_prefix.value != '') {			
                if (!reg_prefix.test(replace_spaces(theform.mobile_prefix))) {
                    document.getElementById('error').innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
                    set_focus(theform.mobile_prefix);
                    return false;
                }
                else {
                    unset_focus(theform.mobile_prefix);
                }
            }
	
        	if (theform.mobile_number.value != '') {
                if (!reg_prefix.test(replace_spaces(theform.mobile_prefix))) {
                    document.getElementById('error').innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
                    set_focus(theform.mobile_prefix);
                    return false;
                }
                else {
                    unset_focus(theform.mobile_prefix);
                }

                if (!reg.test(replace_spaces(theform.mobile_number))) {
                    document.getElementById('error').innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
                    set_focus(theform.mobile_number);
                    return false;
                }
                else {
                    unset_focus(theform.mobile_number);
                }
		
                if ( theform.mobile_number.value.indexOf('0') == 0 ) {
                    theform.mobile_number.value = theform.mobile_number.value.substring(1, 13);
                }
 			
            }
            else {
                unset_focus(theform.phone_ext);
                unset_focus(theform.mobile_number);
            }
		
            if (theform.phone_ext) {
                /////////////////////saving country (phone_ext) in cookie/////////////////////////////// 
               // check_cookie();

/*                 if ((ifcoockie_enabled) && GetCookie('country') != 1) {
                    SetCookie('country', theform.phone_ext.value, '10');
                }		
            } */
	
            if (theform.mobile_prefix.value != '' && theform.mobile_number.value != '') {
                theform.PhoneNumber.value = theform.mobile_prefix.value + theform.mobile_number.value;
            }
	
            if (theform.first_name.value == '') {
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';		
                set_focus(theform.first_name); 
                return false;
            }
            else {
                unset_focus(theform.first_name);
            }
	
            if (!reg_names.test(replace_spaces(theform.first_name))) {
                document.getElementById('error').innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                set_focus(theform.first_name);
                return false;
            }
            else {
                unset_focus(theform.first_name);
            }
		
            if (theform.last_name.value == '') {
                document.getElementById('error').innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';		
                set_focus(theform.last_name); 
                return false;
            }
            else {
                unset_focus(theform.last_name);
            }
		
            if (!reg_names.test(replace_spaces(theform.last_name))) {
                document.getElementById('error').innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! The field contains Invalid characters. Please check and try again. Error # 1005</div>';
                set_focus(theform.last_name);
                return false;
            }
            else {
                unset_focus(theform.last_name);
            }
		
            if (theform.email.value != '') {
                if (!ValidateEmail(theform.email)) {
                    document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';
                    set_focus(theform.email); 
                    return false;
                }
                else {
                    unset_focus(theform.email);
                }
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
	
            if (theform.CasinoPrePaidRatio) {
                if ((theform.CasinoPrePaidRatio.value == '') || (isNaN(theform.CasinoPrePaidRatio.value))) {
                    document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                    set_focus(theform.CasinoPrePaidRatio); 
                    return false;
                }
                else {
                    unset_focus(theform.CasinoPrePaidRatio);
                }
			
                if ((theform.CasinoPrePaidRatio.value > 100) || (theform.CasinoPrePaidRatio.value < 0)) {
                    document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';		
                    set_focus(theform.CasinoPrePaidRatio); 
                    return false;
        		}
                else {
                    unset_focus(theform.CasinoPrePaidRatio);			
                }
            }
	
            if (theform.PokerRakePrecent) {
                if ((theform.PokerRakePrecent.value == '') || (isNaN(theform.PokerRakePrecent.value))) {
                    document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                    set_focus(theform.PokerRakePrecent); 
                    return false;
                }
                else {
                    unset_focus(theform.PokerRakePrecent);
                }
			
                if ((theform.PokerRakePrecent.value > 100) || (theform.PokerRakePrecent.value < 0)) {
                    document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';		
                    set_focus(theform.PokerRakePrecent); 
                    return false;
                }
                else {
                    unset_focus(theform.PokerRakePrecent);
                }
            }
	
            if (theform.PokerInitialBalance) {
                if ((theform.PokerInitialBalance.value == '') 
                    || (isNaN(theform.PokerInitialBalance.value)) 
                    || theform.PokerInitialBalance.value < 0) {
			
                    document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                    set_focus(theform.PokerInitialBalance); 
                    return false;
                }
                else {
                    unset_focus(theform.PokerInitialBalance);
                }
            }		
	
            if ((theform.daily_limit.value.trim() == '') || (isNaN(theform.daily_limit.value))) {
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                set_focus(theform.daily_limit); 
                return false;
            }
            else {
                unset_focus(theform.daily_limit);
            }
	
            if (theform.poker_daily_limit) {
                if ((theform.poker_daily_limit.value.trim() == '') || (isNaN(theform.poker_daily_limit.value))) {
                    document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                    set_focus(theform.poker_daily_limit); 
                    return false;
                }
                else {
                    unset_focus(theform.poker_daily_limit);
                }
            }
            
            // Sports balance validation
            if (theform.sports_daily_limit) {
                if ((theform.sports_daily_limit.value.trim() == '') || (isNaN(theform.sports_daily_limit.value))) {
                    document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                    set_focus(theform.sports_daily_limit); 
                    return false;
                }
                else {
                    unset_focus(theform.sports_daily_limit);
                }
            }
		
            if ((theform.commission.value == '') || (isNaN(theform.commission.value))) {
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                set_focus(theform.commission); 
                return false;
            }
            else {
                unset_focus(theform.commission);
            }
		
            if ((theform.commission.value > 100) || (theform.commission.value < 0)) {
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Incorrect value. Please check and try again. Error # 1008</div>';		
                set_focus(theform.commission); 
                return false;
            }
            else {
                unset_focus(theform.commission);
            }
		
            if (theform.Timezone.value == '') {			
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                set_focus(theform.Timezone); 
                return false;
            }
            else {
                unset_focus(theform.Timezone);
            }
	
            if (isChecked(theform, 'based', 1) 
                && document.getElementById('based_on_netcash') 
                && document.getElementById('based_on_netcash').value == '') {
                
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                set_focus(document.getElementById('based_on_netcash')); 
                return false;
            }
            else {
                if (document.getElementById('based_on_netcash')) {
                    unset_focus(document.getElementById('based_on_netcash'));
                }
            }

            if (isChecked(theform, 'based', 1) && document.getElementById('based_on_netcash').value == '') {
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                set_focus(document.getElementById('based_on_netcash')); 
                return false;
            }
            else {
                if (isChecked(theform, 'based', 1) 
                    && ((document.getElementById('based_on_netcash').value * 1) > 100 
                    || (document.getElementById('based_on_netcash').value * 1) <= 0 
                    || isNaN(document.getElementById('based_on_netcash').value) 
                    || (document.getElementById('based_on_netcash').value) < 0.01)) {
			
                    document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                    set_focus(document.getElementById('based_on_netcash')); 
                    return false;
                }
                else {
                    unset_focus(document.getElementById('based_on_netcash'));
                }
            }
	
            if (isChecked(theform, 'based', 2) 
                && document.getElementById('percent_from_netwin') 
                && !document.getElementById('percent_from_netwin').checked 
                && document.getElementById('rolling_fee') 
                && !document.getElementById('rolling_fee').checked) {
		
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
		
                if (document.getElementById('percent_from_netwin').checked) {
                    set_focus(document.getElementById('based_on_netwin')); 
                }
			
                return false;
            }
            else {
                if (document.getElementById('based_on_netwin')) {
                    unset_focus(document.getElementById('based_on_netwin'));
                }
            }
	
            if (document.getElementById('percent_from_netwin') 
                && document.getElementById('percent_from_netwin').checked 
                && document.getElementById('based_on_netwin') 
                && document.getElementById('based_on_netwin').value == '') {
                
                document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                set_focus(document.getElementById('based_on_netwin')); 
                return false;
            }
            else {
                if (document.getElementById('percent_from_netwin') 
                    && document.getElementById('based_on_netwin')) {
			
                    if (document.getElementById('percent_from_netwin').checked 
                        && ((document.getElementById('based_on_netwin').value * 1) > 100 
                        || (document.getElementById('based_on_netwin').value * 1) <= 0 
                        || isNaN(document.getElementById('based_on_netwin').value) 
                        || (document.getElementById('based_on_netwin').value) < 0.01)) {
                        
                        document.getElementById('error').innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                        set_focus(document.getElementById('based_on_netwin')); 
                        return false;
                    }
                    else {
                        if (document.getElementById('based_on_netwin')) {
                            unset_focus(document.getElementById('based_on_netwin'));
                        }
                    }
                }
            }
	
            if ((document.getElementById('table_game_types').rows.length > 1 
                && document.getElementById('rolling_fee') 
                && document.getElementById('rolling_fee').checked 
                && document.getElementById('rolling_fee').disabled == false) 
                || (isChecked(theform, 'based', 2) 
                && getRadioName(theform, 'based', 2) == 'rolling_fee') 
                && document.getElementById('table_game_types').rows.length > 1 ) {
                
                for(i = 1; i < document.getElementById('table_game_types').rows.length; i++) {
                    if (document.getElementById('new_rollong_commission' + i).value == '') {
                        document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                        return false;
                    }
			
                    if (document.getElementById('new_effective_incom' + i).value == '') {
                		document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                        return false;
                    }
        		}
            }
		
            if ((document.getElementById('table_game_types').rows.length > 1 
                && document.getElementById('rolling_fee') 
                && document.getElementById('rolling_fee').checked 
                && document.getElementById('rolling_fee').disabled == false) 
                || (isChecked(theform, 'based', 2) 
                && getRadioName(theform, 'based', 2) == 'rolling_fee') 
                && document.getElementById('table_game_types').rows.length > 1 ) {
                
                for (i = 1; i < document.getElementById('table_game_types').rows.length; i++) {
                    if (document.getElementById('new_rollong_commission' + i).value == '' 
                        || document.getElementById('new_effective_incom' + i).value == '' ) {
                    
                        document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                        return false;
                    }
                    else {
                        if (isNaN(document.getElementById('new_rollong_commission' + i).value) 
                            || isNaN(document.getElementById('new_effective_incom' + i).value) 
                            || (document.getElementById('new_rollong_commission' + i).value * 1) > 100 
                            || (document.getElementById('new_effective_incom' + i).value * 1) > 100 
                            || (document.getElementById('new_effective_incom' + i).value * 1) < 0 
                            || (document.getElementById('new_rollong_commission' + i).value * 1) < 0 ) {
					
                            document.getElementById('error').innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                			return false;
                        }
                    }
                }
            }
		
            var rolling = '';
            if ((document.getElementById('rolling_fee') 
                && document.getElementById('rolling_fee').checked 
                && document.getElementById('rolling_fee').disabled == false) 
                || (isChecked(theform, 'based', 2) 
                && getRadioValue(theform, 'based', 2) == 'rolling_fee')) {
                
                for (i = 1; i < document.getElementById('table_game_types').rows.length; i++) {
                    rolling = rolling + document.getElementById('game_type' + i).innerHTML + '-' + document.getElementById('new_rollong_commission' + i).value + '-' + document.getElementById('new_effective_incom' + i).value + '$$';
                }
            }
            document.getElementById('rolling').value = rolling;
	
            var reset_arr = new Array(
                'phone_ext', 
                'mobile_prefix', 
                'mobile_number',
                'first_name',
                'last_name',
                'email',
                'daily_limit',
                'commission',
                'Timezone'
            );
	
            if (document.getElementById('poker_daily_limit')) { 
                reset_arr[reset_arr.length] = 'poker_daily_limit';
            }
	
            reset_focus_gif(reset_arr);
            document.getElementById('error').innerHTML = '';
		
            if (document.getElementById('notify_email').value == '' || document.getElementById('notify_email').value != document.getElementById('email').value) {
                document.getElementById('notify_email').value = document.getElementById('email').value;
            }
		
            if (document.getElementById('notify_sms').value == '' || document.getElementById('notify_sms').value != theform.PhoneNumber.value) {
                document.getElementById('notify_sms').value = theform.PhoneNumber.value;
            }
		
            document.getElementById('block_1').style.display = 'none';
            document.getElementById('notification_block').style.display = 'block';
            location.href = '#title';
            
            //set_action();
            //return false;
        }
	
        function set_action() {
            var session = '';
            var is_prog = is_poker = is_sports = 'No';
            
            if (document.agent_form.enable_prog && document.agent_form.enable_prog.checked == true)
                is_prog = document.agent_form.enable_prog.value;
		
            if (document.agent_form.enable_poker && document.agent_form.enable_poker.checked == true)
                is_poker = document.agent_form.enable_poker.value;

            if (document.agent_form.enable_sports && document.agent_form.enable_sports.checked == true)
                is_sports = document.agent_form.enable_sports.value;

    		if(!document.cookie)
        		session = 'PHPSESSID=9f38c4eaa51468c17746d370d10e7fad';
		
            disable_submit_button();

            document.agent_form.commission_type.value = 'None';
            if (document.agent_form.based_on_netcash && !document.agent_form.based_on_netcash.disabled) {
                document.agent_form.commission_value.value = document.agent_form.based_on_netcash.value;
                document.agent_form.commission_type.value = 'RevenueShare';
            }
            else {
                if (document.agent_form.based_on_netwin && !document.agent_form.based_on_netwin.disabled) {
                    document.agent_form.commission_value.value = document.agent_form.based_on_netwin.value;
                    document.agent_form.commission_type.value = 'RevenueShareGrossWin';
                }
                else {
                    document.agent_form.commission_value.value = 0;
                    document.agent_form.commission_type.value = 'None';
                }
            }

            if (document.agent_form.PhoneNumber.value == document.agent_form.phone_ext.value) {
                document.agent_form.PhoneNumber.value = '';
            }
            
            var CasinoPrePaidRatio = PokerRakePrecent = 0;
            var PokerRakePrecent = 0;
            var PokerInitialBalance = 0;
            
            if (document.agent_form.CasinoPrePaidRatio)
                CasinoPrePaidRatio = document.agent_form.CasinoPrePaidRatio.value/100;
                
            if (document.agent_form.PokerRakePrecent) 
                PokerRakePrecent = document.agent_form.PokerRakePrecent.value/100;
                
            if (document.agent_form.PokerInitialBalance)
                PokerInitialBalance = document.agent_form.PokerInitialBalance.value;
            
            var PokerBalance = PokerCurrency = ProgressiveCurrency = 0;
            var SportsCurrency = SportsBalance = 0;

            if (document.agent_form.poker_daily_limit) 
                PokerBalance = document.agent_form.poker_daily_limit.value;
                
            if (document.agent_form.PokerCurrency)
                PokerCurrency = document.agent_form.PokerCurrency.value;

            if (document.agent_form.sports_daily_limit) 
                SportsBalance = document.agent_form.sports_daily_limit.value;
                
            if (document.agent_form.SportsCurrency)
                SportsCurrency = document.agent_form.SportsCurrency.value;

            if (document.agent_form.ProgressiveCurrency)
                ProgressiveCurrency = document.agent_form.ProgressiveCurrency.value;
		
            sndReqAddAgent(
                document.agent_form.PhoneNumber.value,
                document.agent_form.first_name.value,
                document.agent_form.last_name.value,
                document.agent_form.email.value,
                document.agent_form.password.value,
                document.agent_form.daily_limit.value,
                document.agent_form.commission.value,
                document.agent_form.Timezone.value,
                document.agent_form.Language.value,
                document.agent_form.agentTypeId.value,
                is_prog,
                is_poker,
                is_sports,
                document.agent_form.Currency.value,
                document.agent_form.notify_email.value,
                document.agent_form.notify_sms.value,
                document.agent_form.notify_print.value,
                document.agent_form.CountryId.value,
                document.agent_form.commission_value.value,
                document.agent_form.commission_type.value,
                document.agent_form.rolling.value,
                document.agent_form.PokerPrePaid.value,
                document.agent_form.CasinoPrePaid.value,
                document.agent_form.PokerPrePaidRatio.value,
                CasinoPrePaidRatio,
                PokerRakePrecent,
                PokerBalance,
                PokerCurrency,
                PokerInitialBalance,
                ProgressiveCurrency, //Progressive currencies implementation
                SportsBalance,
                SportsCurrency,
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


        function curval(val) {
            doc = document.getElementById("currval");
            doc.innerHTML = val;
        }
        function curval1(val) {
            doc = document.getElementById("currval1");
            doc.innerHTML = val;
        }	

        // Progressive currency implementation
        function check_progressive_fields(progressive) {
            if (progressive.checked) {
                document.getElementById('progressive_currency_tr').style.display = '';
            } else {
                document.getElementById('progressive_currency_tr').style.display = 'none';    
            }
        }
    
        function check_sports_fields(elm) {
            if (elm && elm.checked) {
                document.getElementById('sports_currency_tr').style.display = '';
                document.getElementById('sports_balance_tr').style.display = '';
            }
            else {
                document.getElementById('sports_currency_tr').style.display = 'none';
                document.getElementById('sports_balance_tr').style.display = 'none';
            }
        }

        function set_sports_currency(elm) {
            
            if (document.getElementById('sports_currency_tr') 
                && document.getElementById('sports_currency_tr').style.display != 'none') {
                
                var agent_form = document.getElementById('agent_form');
                var sports_list = agent_form.SportsCurrency;
                
                //debugger;

                for (i = 0; i < sports_list.options.length; i++) {
                    if (sports_list.options[i].value == this.value) {
                        sports_list.options[i].selected = true;
                    }
                }
            }
        }
        
        window.onload = bind_event;

        function bind_event() {
            var agent_form = document.getElementById('agent_form');
            
            agent_form.Currency.onchange = function() {
                curval1(this.options[this.selectedIndex].innerHTML);
                set_sports_currency(this);
            };
            
            if (agent_form.SportsCurrency) {
                agent_form.SportsCurrency.oncahge = function() {
                    document.getElementById('curvalSports').innerHTML = this.options[this.selectedIndex].innerHTML;
                }
            }
        }
        
        function check_poker_fields(thefield)
        {
            if (thefield)
            if(thefield.checked)
            {
                document.getElementById("rake_tr").style.display=display;
                if(document.getElementById("rake_tr1"))
                    document.getElementById("rake_tr1").style.display=display;
                if(document.getElementById("casino_share_tr"))
                    document.getElementById("casino_share_tr").style.display=display;
                document.getElementById("poker_balance_tr").style.display=display;
                document.getElementById("poker_currency_tr").style.display=display;


            }
            else 
            {
                document.getElementById("rake_tr").style.display='none';
                if(document.getElementById("rake_tr1"))
                {
                    document.getElementById("rake_tr1").style.display='none';
                    document.agent_form.PokerInitialBalance.value=0;
                }
                if(document.getElementById("casino_share_tr"))
                {
                    document.getElementById("casino_share_tr").style.display='none';
                    document.agent_form.CasinoPrePaidRatio.value=0;
                }
                document.agent_form.PokerRakePrecent.value=0;			
                document.getElementById("poker_daily_limit").value=0;
                document.getElementById("poker_balance_tr").style.display='none';
                document.getElementById("poker_currency_tr").style.display='none';

            }
        }
    //-->
	</script>
	<span id="error"></span>
       <form class="form-horizontal" action="https://www.totalegame.net/agents_list.php" method="post" name="agent_form" id="agent_form" onsubmit="if (document.getElementById(&#39;notification_block&#39;).style.display != &#39;none&#39;) {return Notification_ValidateForm(this);} else {ValidateForm(this); return false;}">
       <input name="agentTypeId" value="4" type="hidden">
       <input name="PhoneNumber" value="" type="hidden">
       <input name="CountryId" value="" type="hidden">
       <input name="rolling" id="rolling" value="" type="hidden">
       <input name="commission_value" id="commission_value" value="" type="hidden">
    	<input name="commission_type" id="commission_type" value="" type="hidden">
    	<input name="CasinoPrePaid" id="CasinoPrePaid" value="False" type="hidden">
    	<input name="PokerPrePaid" id="PokerPrePaid" value="" type="hidden">
    	<input name="PokerPrePaidRatio" id="PokerPrePaidRatio" value="" type="hidden">
       <div id="block_1">
       <span class="tabs"><div>
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
           <td class="tabs5">Personal</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div></span>
        <div class="box_tabs" style="position:relative;">
        
 	<div class="form-group">
    <label for="phone_ext" class="col-sm-3 control-label">Country of Operation *</label>
    <div class="col-sm-9">
      <select name="phone_ext" id="phone_ext" class="field" onchange="set_mobile_prefix(this); set_time_zone_select(this);"><option value="">Select Your Country</option><option value="93" id="1">Afghanistan</option><option value="358" id="2">Aland Islands</option><option value="355" id="3">Albania</option><option value="213" id="4">Algeria</option><option value="1684" id="5">American Samoa</option><option value="376" id="6">Andorra</option><option value="244" id="7">Angola</option><option value="1264" id="8">Anguilla</option><option value="672" id="9">Antarctica</option><option value="1268" id="10">Barbuda</option><option value="54" id="11">Argentina</option><option value="374" id="12">Armenia</option><option value="297" id="13">Aruba</option><option value="61" id="14">Australia</option><option value="43" id="15">Austria</option><option value="994" id="16">Azerbaijan</option><option value="1242" id="17">Bahamas</option><option value="973" id="18">Bahrain</option><option value="880" id="19">Bangladesh</option><option value="1246" id="20">Barbados</option><option value="375" id="21">Belarus</option><option value="32" id="22">Belgium</option><option value="501" id="23">Belize</option><option value="229" id="24">Benin</option><option value="1441" id="25">Bermuda</option><option value="975" id="26">Bhutan</option><option value="591" id="27">Bolivia</option><option value="387" id="28">Bosnia &amp; Herzegovina</option><option value="267" id="29">Botswana</option><option value="000" id="30">Bouvet Island</option><option value="55" id="31">Brazil</option><option value="246" id="32">British Indian Ocean Territory</option><option value="673" id="33">Brunei Darussalam</option><option value="359" id="34">Bulgaria</option><option value="226" id="35">Burkina Faso</option><option value="257" id="36">Burundi</option><option value="855" id="37">Cambodia</option><option value="237" id="38">Cameroon</option><option value="1" id="39">Canada</option><option value="238" id="40">Cape Verde</option><option value="1345" id="41">Cayman Islands</option><option value="236" id="42">Central African Republic</option><option value="235" id="43">Chad</option><option value="56" id="44">Chile</option><option value="86" id="45">China (PRC)</option><option value="61" id="46">Christmas Island</option><option value="61" id="47">Cocos-Keeling Islands</option><option value="57" id="48">Colombia</option><option value="269" id="49">Comoros</option><option value="242" id="50">Congo</option><option value="243" id="51">Congo, Dem.Republic</option><option value="682" id="52">Cook Islands</option><option value="506" id="53">Costa Rica</option><option value="225" id="54">Ivory Coast</option><option value="385" id="55">Croatia</option><option value="53" id="56">Cuba</option><option value="357" id="57">Cyprus</option><option value="420" id="58">Czech Republic</option><option value="45" id="59">Denmark</option><option value="253" id="60">Djibouti</option><option value="1767" id="61">Dominica</option><option value="1809" id="62">Dominican Republic</option><option value="593" id="63">Ecuador</option><option value="20" id="64">Egypt</option><option value="503" id="65">El Salvador</option><option value="240" id="66">Equatorial Guinea</option><option value="291" id="67">Eritrea</option><option value="372" id="68">Estonia</option><option value="251" id="69">Ethiopia</option><option value="500" id="70">Falkland Islands (Malvinas)</option><option value="298" id="71">Faroe Islands</option><option value="679" id="72">Fiji Islands</option><option value="358" id="73">Finland</option><option value="33" id="74">France</option><option value="594" id="75">French Guiana</option><option value="689" id="76">French Polynesia</option><option value="241" id="77">Gabonese Republic</option><option value="220" id="78">Gambia</option><option value="995" id="79">Georgia</option><option value="49" id="80">Germany</option><option value="233" id="81">Ghana</option><option value="350" id="82">Gibraltar</option><option value="30" id="83">Greece</option><option value="299" id="84">Greenland</option><option value="1473" id="85">Grenada</option><option value="590" id="86">Guadeloupe</option><option value="1671" id="87">Guam</option><option value="502" id="88">Guatemala</option><option value="44" id="89">Guernsey</option><option value="224" id="90">Guinea</option><option value="245" id="91">Guinea-Bissau</option><option value="592" id="92">Guyana</option><option value="509" id="93">Haiti</option><option value="61" id="94">Heard Island and McDonald Islands</option><option value="379" id="95">Vatican City</option><option value="504" id="96">Honduras</option><option value="852" id="97">Hong Kong</option><option value="36" id="98">Hungary</option><option value="354" id="99">Iceland</option><option value="91" id="100">India</option><option value="62" id="101">Indonesia</option><option value="98" id="102">Iran</option><option value="964" id="103">Iraq</option><option value="353" id="104">Ireland</option><option value="44" id="105">Isle of Man</option><option value="39" id="107">Italy</option><option value="1876" id="108">Jamaica</option><option value="81" selected="selected" id="110">Japan</option><option value="44" id="109">Jersey</option><option value="962" id="111">Jordan</option><option value="7" id="112">Kazakhstan</option><option value="254" id="113">Kenya</option><option value="686" id="114">Kiribati</option><option value="850" id="115">Korea (North)</option><option value="82" id="116">Korea (South)</option><option value="965" id="117">Kuwait</option><option value="996" id="118">Kyrgyz Republic</option><option value="856" id="119">Laos</option><option value="371" id="120">Latvia</option><option value="961" id="121">Lebanon</option><option value="266" id="122">Lesotho</option><option value="231" id="123">Liberia</option><option value="218" id="124">Libya</option><option value="423" id="125">Liechtenstein</option><option value="370" id="126">Lithuania</option><option value="352" id="127">Luxembourg</option><option value="853" id="128">Macao</option><option value="389" id="129">Macedonia</option><option value="261" id="130">Madagascar</option><option value="265" id="131">Malawi</option><option value="60" id="132">Malaysia</option><option value="960" id="133">Maldives</option><option value="223" id="134">Mali Republic</option><option value="356" id="135">Malta</option><option value="692" id="136">Marshall Islands</option><option value="596" id="137">Martinique</option><option value="222" id="138">Mauritania</option><option value="230" id="139">Mauritius</option><option value="262" id="140">Mayotte Island</option><option value="52" id="141">Mexico</option><option value="972" id="142">Micronesia</option><option value="373" id="143">Moldova</option><option value="377" id="144">Monaco</option><option value="976" id="145">Mongolia</option><option value="381" id="193">Serbia and Montenegro</option><option value="1664" id="147">Montserrat</option><option value="212" id="148">Morocco</option><option value="258" id="149">Mozambique</option><option value="95" id="150">Myanmar</option><option value="264" id="151">Namibia</option><option value="674" id="152">Nauru</option><option value="977" id="153">Nepal</option><option value="31" id="154">Netherlands</option><option value="599" id="155">Netherlands Antilles</option><option value="687" id="156">New Caledonia</option><option value="64" id="157">New Zealand</option><option value="505" id="158">Nicaragua</option><option value="227" id="159">Niger</option><option value="234" id="160">Nigeria</option><option value="683" id="161">Niue</option><option value="672" id="162">Norfolk Island</option><option value="1670" id="163">Northern Mariana</option><option value="47" id="164">Norway</option><option value="968" id="165">Oman</option><option value="92" id="166">Pakistan</option><option value="680" id="167">Palau</option><option value="970" id="168">Palestinian Settlements</option><option value="507" id="169">Panama</option><option value="675" id="170">Papua New Guinea</option><option value="595" id="171">Paraguay</option><option value="51" id="172">Peru</option><option value="63" id="173">Philippines</option><option value="672" id="174">Pitcairn</option><option value="48" id="175">Poland</option><option value="351" id="176">Portugal</option><option value="1787" id="177">Puerto Rico</option><option value="974" id="178">Qatar</option><option value="262" id="179">Reunion</option><option value="40" id="180">Romania</option><option value="7" id="181">Russia</option><option value="250" id="182">Rwanda</option><option value="290" id="183">St. Helena</option><option value="1869" id="184">St. Kitts/Nevis</option><option value="1758" id="185">St. Lucia</option><option value="508" id="186">St. Pierre &amp; Miquelon</option><option value="1784" id="187">St. Vincent &amp; Grenadines</option><option value="685" id="188">Western Samoa</option><option value="378" id="189">San Marino</option><option value="239" id="190">Sao Tome and Principe</option><option value="966" id="191">Saudi Arabia</option><option value="221" id="192">Senegal</option><option value="248" id="194">Seychelles Republic</option><option value="232" id="195">Sierra Leone</option><option value="65" id="196">Singapore</option><option value="421" id="197">Slovak Republic</option><option value="386" id="198">Slovenia</option><option value="677" id="199">Solomon Islands</option><option value="252" id="200">Somali Democratic Republic</option><option value="27" id="201">South Africa</option><option value="34" id="202">Spain</option><option value="94" id="203">Sri Lanka</option><option value="249" id="204">Sudan</option><option value="597" id="205">Suriname</option><option value="268" id="206">Swaziland</option><option value="46" id="207">Sweden</option><option value="41" id="208">Switzerland</option><option value="963" id="209">Syria</option><option value="886" id="210">Taiwan</option><option value="992" id="211">Tajikistan</option><option value="255" id="212">Tanzania</option><option value="66" id="213">Thailand</option><option value="670" id="214">East Timor</option><option value="228" id="215">Togolese Republic</option><option value="690" id="216">Tokelau</option><option value="676" id="217">Tonga Islands</option><option value="1868" id="218">Trinidad &amp; Tobago</option><option value="216" id="219">Tunisia</option><option value="90" id="220">Turkey</option><option value="993" id="221">Turkmenistan</option><option value="1649" id="222">Turks and Caicos Islands</option><option value="688" id="223">Tuvalu</option><option value="256" id="224">Uganda</option><option value="380" id="225">Ukraine</option><option value="971" id="226">United Arab Emirates</option><option value="44" id="227">United Kingdom</option><option value="1" id="228">United States</option><option value="598" id="229">Uruguay</option><option value="998" id="230">Uzbekistan</option><option value="678" id="231">Vanuatu</option><option value="58" id="232">Venezuela</option><option value="84" id="233">Vietnam</option><option value="1284" id="234">British Virgin Islands</option><option value="1340" id="235">Virgin Islands</option><option value="681" id="236">Wallis and Futuna Islands</option><option value="212" id="237">Western Sahara</option><option value="967" id="238">Yemen</option><option value="260" id="239">Zambia</option><option value="263" id="240">Zimbabwe</option></select> <img src="/images/cmt_yes.gif" id="phone_ext_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="/images/cmt_no.gif" id="phone_ext_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
  </div>
        
        <div class="form-group">
    <label for="mobile_number" class="col-sm-3 control-label">Mobile Number</label>
    <div class="col-sm-9">
      <input type="text" class="field" style="width:50px;" value="" name="mobile_prefix" id="mobile_prefix" disabled="disabled">
                 <img src="/images/cmt_yes.gif" id="mobile_prefix_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="/images/cmt_no.gif" id="mobile_prefix_gif_no" width="13" height="13" alt="" style="display:none;">    
 	 <input type="text" class="field" value="" name="mobile_number" id="mobile_number">
                 <img src="/images/cmt_yes.gif" id="mobile_number_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="/images/cmt_no.gif" id="mobile_number_gif_no" width="13" height="13" alt="" style="display:none;"><br>
                <font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number not including country code.</i></font>
		</div>
  </div>
  
  <div class="form-group">
    <label for="first_name" class="col-sm-3 control-label">First Name *</label>
    <div class="col-sm-9">
      <input type="text" class="field" value="" maxlength="15" name="first_name" id="first_name"> <img src="/images/cmt_yes.gif" id="first_name_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="/images/cmt_no.gif" id="first_name_gif_no" width="13" height="13" alt="" style="display:none;">    </div>
  </div>
  
  <div class="form-group">
    <label for="last_name" class="col-sm-3 control-label">Last Name *</label>
    <div class="col-sm-9">
     <input type="text" class="field" value="" maxlength="15" name="last_name" id="last_name"> <img src="/images/cmt_yes.gif" id="last_name_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="/images/cmt_no.gif" id="last_name_gif_no" width="13" height="13" alt="" style="display:none;">    </div>
  </div>
  
    <div class="form-group">
    <label for="email" class="col-sm-3 control-label">E-mail</label>
    <div class="col-sm-9">
    <input type="text" class="field" value="" name="email" id="email"> <img src="/images/cmt_yes.gif" id="email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="/images/cmt_no.gif" id="email_gif_no" width="13" height="13" alt="" style="display:none;">
   </div>
  </div>
      <div class="form-group">
    <label for="station_name" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
   <input type="checkbox" class="field" checked="checked" value="1" name="autoPassword" id="autoPassword" onclick="togglePasswordFields(this, true)">Auto generated password
     </div>
  </div>
           <div class="form-group" id ="passwordTR" style="display: none;">
    <label for="password" class="col-sm-3 control-label">Password</label>
    <div class="col-sm-9">
  <input type="text" class="field" value="" name="password" id="password"> <img src="./images/cmt_yes.gif" id="password_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="password_gif_no" width="13" height="13" alt="" style="display:none;">
     </div>
     </div>
     
       <div class="form-group" id ="confirmPasswordTR" style="display: none;">
    <label for="confirmPassword" class="col-sm-3 control-label">Confirm Password</label>
    <div class="col-sm-9">
   <input type="text" class="field" value="" name="confirmPassword" id="confirmPassword"> <img src="./images/cmt_yes.gif" id="confirmPassword_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="confirmPassword_gif_no" width="13" height="13" alt="" style="display:none;">
                <br>
                <font style="font-size: 11px;"><em><strong>Note:</strong> 6-10 alphanumeric characters. If empty, the password will be generated automaticaly</em></font>
     </div>
    </div>
     
         </div>
          <br>
          
          <span class="tabs"><div>
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
           <td class="tabs5">Settings</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
      </span>
        <div class="box_tabs" style="position:relative;">
        
        <div class="form-group">
    <label for="confirmPassword" class="col-sm-3 control-label">Enable Progressive</label>
    <div class="col-sm-9">
  <input type="checkbox" id="enable_prog" name="enable_prog" value="Yes" onclick="check_progressive_fields(this);">
       </div>
    </div>
    
         <div class="form-group">
    <label for="confirmPassword" class="col-sm-3 control-label">Progressive Currency</label>
    <div class="col-sm-9">
<select name="ProgressiveCurrency" class="field" disabled="disabled"><option value="1" selected="selected">USD</option></select>
    </div>
    </div>
            <div class="form-group">
    <label for="confirmPassword" class="col-sm-3 control-label">Credit Currency *</label>
    <div class="col-sm-9">
<select name="Currency" class="field" disabled="disabled" onchange="curval1(this.options[this.selectedIndex].innerHTML);"><option value="1" selected="selected">USD</option></select>
    </div>
    </div>
      
            <div class="form-group">
    <label for="confirmPassword" class="col-sm-3 control-label">Credit Balance *</label>
    <div class="col-sm-9">
<input type="text" class="field" value="0" name="daily_limit" id="daily_limit"> <div id="currval1" style="display:inline;">USD</div> <img src="./images/cmt_yes.gif" id="daily_limit_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="daily_limit_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
    </div>
                <div class="form-group">
    <label for="confirmPassword" class="col-sm-3 control-label">Commission *</label>
    <div class="col-sm-9">
<input type="text" class="field" value="0" name="commission" id="commission">% <img src="./images/cmt_yes.gif" id="commission_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="commission_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
    </div>
                <div class="form-group">
    <label for="confirmPassword" class="col-sm-3 control-label">Time Zone *</label>
    <div class="col-sm-9">
<span onmouseover="var sel=document.getElementById(&#39;Timezone&#39;); sel.title=sel[sel.selectedIndex].text;">
			<select class="field" name="Timezone" id="Timezone" style="width:382px;" title=""><option value="204">(GMT+09:00) Asia/Tokyo</option></select>
		</span>
		 <img src="./images/cmt_yes.gif" id="Timezone_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="Timezone_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>    
    </div>
    
                    <div class="form-group">
    <label for="confirmPassword" class="col-sm-3 control-label">Prefered Language</label>
    <div class="col-sm-9">
<select class="field" name="Language" id="Language"><option value="3">Chinese</option><option value="1">English</option><option value="2" selected="\&quot;selected\&quot;">Japanese</option></select> <img src="./images/cmt_yes.gif" id="Language_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="Language_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
    </div>

   </div>
       <!--start commission-->
        
	<script src="./images/tablesort.js" type="text/javascript"></script>
    <script src="./images/jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
        var session = '';

        if(!document.cookie)
            session = 'PHPSESSID=9f38c4eaa51468c17746d370d10e7fad';
		
        
        
//==============================================================================

        function isChecked (formObj, elm, id) {
	 		var els = formObj.elements[elm]; 
	 		for (var i = 0; i < els.length; ++i) {
		       	if (els[i].checked && i == id) {
		       		 return true;
				} 
 			}
 			return false;
		}

//==============================================================================

        function CheckRadio(formObj, elm, id){
            var els = formObj.elements.item(elm);
            for (var i = 0; i < els.length; ++i) {
		       	if (i == id) {
		       		els[i].checked='checked';
				} 
 			}	 
 		}

//==============================================================================

 		function getRadioName(formObj, elm, id) {
			var els = formObj.elements.item(elm); 
	 		for (var i = 0; i < els.length; ++i) {
				if (i == id) {
					return els[i].value;
				} 
 			}	 
 		}

//==============================================================================

        function checkRadio(obj) {

            if (document.getElementById("based_on_netcash")) {
				document.getElementById("based_on_netcash").disabled = true;
				document.getElementById("based_on_netcash").value = "";
				document.getElementById("difference_based_on_netcash").innerHTML = "";	
			}
				
			if (document.getElementById("based_on_netwin")) {
				document.getElementById("based_on_netwin").disabled = true;
				document.getElementById("based_on_netwin").value = "";
				document.getElementById("difference_based_on_netwin").innerHTML = "";
			}
		
			reset_arr = Array('based_on_netcash', 'based_on_netwin');
			reset_focus_gif(reset_arr);
				
			if (obj.value == 'none' || obj.value == 'based_on_netcash') {
				if (document.getElementById("percent_from_netwin")) {
					document.getElementById("percent_from_netwin").checked = false;
				}

                if (document.getElementById("rolling_fee")) {
					document.getElementById("rolling_fee").checked = false;
				}
			}
				
			if (obj.value == "based_on_netcash")
				document.getElementById("based_on_netcash").disabled = false;
				
			if (obj.value =="based_on_netwin") {
				document.getElementById("percent_from_netwin").disabled = false;
				document.getElementById("rolling_fee").disabled = false;
				
				if (!document.getElementById("percent_from_netwin").disabled && document.getElementById("percent_from_netwin").checked) {
					document.getElementById("based_on_netwin").disabled = false;
				}
			}
			else {
				if (obj.value == "rolling_fee") {
					//alert(1);
					DisableEnableEditButton('rolling_fee');
				}
				else {
					if (document.getElementById("percent_from_netwin"))
						document.getElementById("percent_from_netwin").disabled = true;

					if (document.getElementById("rolling_fee"))
						document.getElementById("rolling_fee").disabled = true;
								
					DisableEnableEditButton();
				}
			}
		}

//==============================================================================

        function putDifference(obj) {
			if (obj.value == "") {
				if (document.getElementById("difference_" + obj.name))
					document.getElementById("difference_" + obj.name).innerHTML = "";
					set_focus(obj);
				}
				else {
					if (!isNaN(obj.value * 1)) {
						if ((obj.value * 1) > 100) {
							if(document.getElementById("difference_" + obj.name))
								document.getElementById("difference_" + obj.name).innerHTML = "";

							document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
							set_focus(obj); 
							return false;
						}
			
						if ((obj.value * 1) <= 0) {
							if (document.getElementById("difference_" + obj.name))
								document.getElementById("difference_" + obj.name).innerHTML = "";
					
							document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
							set_focus(obj); 
							return false;
						}
						else {
							//if (document.getElementById("difference_" + obj.name)) {
							//	document.getElementById("difference_" + obj.name).innerHTML = Math.round((100-obj.value * 1) * 10000) / 10000 + '%';
						//	}
					
							document.getElementById("error").innerHTML = '';
							unset_focus(obj);
							return true;
						}
					}
					else {
						if (document.getElementById("difference_" + obj.name))
							document.getElementById("difference_" + obj.name).innerHTML = "";
							
						document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
						set_focus(obj); 
						return false;
					}
				}
			}

//==============================================================================

            function DisableEnableEditButton(obj) {
				if (!obj) {
					var obj = '';
				}	
					
				if (obj == 'rolling_fee' && (!document.getElementById("rolling_fee") || document.getElementById("rolling_fee").checked)) {
					document.getElementById("edit").disabled = false;
				}
				else {
					if ((document.getElementById("update_commission_form") && getRadioName(document.getElementById("update_commission_form"),"based",2) == "rolling_fee" && isChecked (document.getElementById("update_commission_form"),"based",2)) || (document.getElementById("agent_form") && getRadioName(document.getElementById("agent_form"),"based",2) == "rolling_fee" && isChecked (document.getElementById("agent_form"),"based",2))) {
						document.getElementById("edit").disabled = false;
					}
					else {
						document.getElementById("edit").disabled = true;
						UpdateTable("Cancel");
						document.getElementById("edit").value = "Edit";
						document.getElementById("edit").name = "Edit";
					}
				}
			}

//==============================================================================

			function UpdateTable(status) {		
				if (document.getElementById("table_game_types").rows.length>1) {
					if (document.getElementById("edit").name == "Edit" && status != "Cancel") {
						for (i =1 ; i < document.getElementById("table_game_types").rows.length; i++) {
							document.getElementById("rollong_commission" + i).style.display = 'none';
							document.getElementById("new_rollong_commission" + i).style.display = 'block';
							document.getElementById("new_rollong_commission" + i).value = document.getElementById("rollong_commission" + i).value;
							document.getElementById("effective_incom" + i).style.display = 'none';
							document.getElementById("new_effective_incom" + i).style.display = 'block';
							document.getElementById("new_effective_incom" + i).value = document.getElementById("effective_incom" + i).value;
						}
						document.getElementById("edit").value = "Cancel";
						document.getElementById("edit").name = "Cancel";
					}
					else {
						for(i = 1; i < document.getElementById("table_game_types").rows.length; i++) {
							document.getElementById("rollong_commission" + i).style.display = 'block';
							document.getElementById("new_rollong_commission" + i).style.display = 'none';
							document.getElementById("new_rollong_commission" + i).value = '0.00';
							document.getElementById("effective_incom" + i).style.display = 'block';
					 		document.getElementById("new_effective_incom" + i).style.display = 'none';
							document.getElementById("new_effective_incom"+i).value='100';
                        }
                        document.getElementById("error").innerHTML ="";
                        document.getElementById("edit").value="Edit";
                        document.getElementById("edit").name="Edit";
                    }
                }
		
            }

//==============================================================================

            function CheckButton(obj) {
                UpdateTable("Edit");
            }

//==============================================================================

            function CancelChanges() {
                document.getElementById("update_commission_form").submit();
                closeWin();
            }

//==============================================================================

            function SaveChanges() {
                var theform = document.getElementById("update_commission_form");
		
                if (isChecked(theform, "based", 1) && document.getElementById("based_on_netcash").value == "") {
                    document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                    set_focus(document.getElementById("based_on_netcash"));
                    return false;
                }
                else {
                    if (isChecked(theform, "based", 1) && ((document.getElementById("based_on_netcash").value*1) > 100 || (document.getElementById("based_on_netcash").value*1) < 0 || isNaN(document.getElementById("based_on_netcash").value) || (document.getElementById("based_on_netcash").value*1) < 0.01)) {
                        document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                        set_focus(document.getElementById("based_on_netcash"));
                        return false;
                    }
                    else {
                        //unset_focus(document.getElementById("based_on_netcash"));
                    }
                }
		
                if (isChecked(theform,"based", 2) && document.getElementById("percent_from_netwin") && !document.getElementById("percent_from_netwin").checked && document.getElementById("rolling_fee") && !document.getElementById("rolling_fee").checked && getRadioName(theform,"based",2) != "rolling_fee") {
                    document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                    if (document.getElementById("percent_from_netwin").checked) {
                        set_focus(document.getElementById("based_on_netwin"));
                    }
                    return false;
                }
                else {
                	if (document.getElementById("based_on_netwin") && !document.getElementById("based_on_netwin").disabled) {
                        unset_focus(document.getElementById("based_on_netwin"));
                    }
                }
        
                var els = theform.elements.based;
                var pfnw = document.getElementById("percent_from_netwin");
                var rf = document.getElementById("rolling_fee");

                if (els && els[2].checked && (pfnw && !pfnw.checked && rf && !rf.checked)) {
                    document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                }

                if (document.getElementById("rolling_fee")) {
                    if (document.getElementById("rolling_fee").checked && document.getElementById("edit").name == "Edit") {
                        UpdateTable("Edit");
                    }
                }
		
                if (document.getElementById("percent_from_netwin") && document.getElementById("percent_from_netwin").checked && document.getElementById("based_on_netwin") && document.getElementById("based_on_netwin").value=="" && !document.getElementById("based_on_netwin").disabled) {
                    document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                    set_focus(document.getElementById("based_on_netwin"));
                	return false;
                }
                else {
                    if (document.getElementById("percent_from_netwin") && document.getElementById("based_on_netwin")) {
                        if (document.getElementById("percent_from_netwin").checked && ((document.getElementById("based_on_netwin").value*1) > 100 || (document.getElementById("based_on_netwin").value*1) < 0 || isNaN(document.getElementById("based_on_netwin").value) || (document.getElementById("based_on_netwin").value*1) < 0.01)) {
                            document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                            set_focus(document.getElementById("based_on_netwin"));
                            return false;
                        }
                        else {
                            if (document.getElementById("based_on_netwin") && !document.getElementById("based_on_netwin").disabled) {
                                unset_focus(document.getElementById("based_on_netwin"));
                            }
                        }
                    }
                }
                
                if ((document.getElementById("table_game_types").rows.length > 1 && document.getElementById("rolling_fee") && document.getElementById("rolling_fee").checked && document.getElementById("rolling_fee").disabled == false) || (isChecked(theform,"based", 2) && getRadioName(theform, "based", 2) == "rolling_fee")) {
                    for(i = 1; i < document.getElementById("table_game_types").rows.length; i++) {
                        if (document.getElementById("new_rollong_commission" + i).value == "") {
                            document.getElementById("error").innerHTML = '<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                            return false;
                        }
                        else {
                            if (isNaN(document.getElementById("new_rollong_commission"+i).value) || (document.getElementById("new_rollong_commission" + i).value*1) > 100 || (document.getElementById("new_rollong_commission" + i).value*1) < 0 ) {
                                document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                                document.getElementById("new_rollong_commission"+i).focus();
                                return false;
                            }
                        }
				
                        if (document.getElementById("new_effective_incom" + i).value=="") {
                            document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
                        	return false;
                        }
                        else {
                            if ((isNaN(document.getElementById("new_effective_incom"+i).value) || (document.getElementById("new_effective_incom"+i).value*1)>100 || (document.getElementById("new_effective_incom"+i).value*1) < 0)) {
                    			document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please insert a valid numeric value. Error # 1007</div>';
                            	document.getElementById("new_effective_incom"+i).focus();
                                return false;
                            }
                        }
                    }
                }

                var rolling = "";
                
                if ((document.getElementById("rolling_fee") && document.getElementById("rolling_fee").checked && document.getElementById("rolling_fee").disabled == false) || (els[2].checked && els[2].value == "rolling_fee")){
                    for(i = 1; i < document.getElementById("table_game_types").rows.length;i++) {
                        rolling = rolling+document.getElementById("game_type" + i).innerHTML+"-"+document.getElementById("new_rollong_commission"+i).value+"-"+document.getElementById("new_effective_incom"+i).value+"$$";
                    }
                }

                //debugger;

                document.getElementById("rolling").value=rolling;
                document.getElementById("save").disabled=true;
                if (document.getElementById("error").innerHTML == "") {
                    document.getElementById("changeCommNote").innerHTML = document.getElementById('based_on_netcash').disabled ?
                                                                            "Changing commission settings affects previous historical data for the last day (Starting from 0:00 GMT).<br /> Are you sure you want to continue?" : "Changing commission settings affects previous historical data for the last day starting from 0:00 in the subordinate's time zone.<br /> Are you sure you want to continue?";
                    openWin('windc','cont1',-200,100,500,100);
                }
                else {
                    document.getElementById("save").disabled=false;
                    return false;
                }
                return false;
            }

//==============================================================================

            function UpdateCommission(){
                document.getElementById("commission_type").value = 'None';
                if (document.getElementById("based_on_netcash") && !document.getElementById("based_on_netcash").disabled) {
                    document.getElementById("commission_value").value = document.getElementById("based_on_netcash").value;
                    document.getElementById("commission_type").value = 'RevenueShare';
                }
                else {
                    if (document.getElementById("based_on_netwin") && !document.getElementById("based_on_netwin").disabled) {
                        document.getElementById("commission_value").value=document.getElementById("based_on_netwin").value;
                        document.getElementById("commission_type").value='RevenueShareGrossWin';
                    }
                    else {
                        document.getElementById("commission_value").value = 0;
                    	document.getElementById("commission_type").value='None';
                    }
                }
                closeWin();
                sndReqUpdateCommission("0", document.getElementById("commission_value").value,document.getElementById("commission_type").value,document.getElementById("rolling").value,session);
            }
        </script>
			<br>
       		<span class="tabs">
	       		<div>
	        		<table summary="" cellpadding="0" cellspacing="0" border="0">
	          			<tbody><tr>
	           				<td class="tabs5" style="width:10%">Commission Fee</td><td class="tabs4">&nbsp;</td>
	          			</tr>
	        		</tbody></table>
	      		</div>
      		</span>
      		<div class="box_tabs" style="position:relative; border-bottom:solid 0px #CCCCCC;padding-bottom:0px;">

      	                     <div class="form-group">
    <div class="col-sm-3"><input type="radio" id="based" name="based" value="none" onclick="checkRadio(this)" checked="checked">None</div>
    <div class="col-sm-9">
    </div>
    </div>
 
       	                     <div class="form-group">
    <div class="col-sm-3">
    <input type="radio" id="based" name="based" value="based_on_netcash" onclick="checkRadio(this)">Commission based on NetCash
    </div>
    <div class="col-sm-9">
    <input type="text" class="field" name="based_on_netcash" id="based_on_netcash" style="width:40px;" onkeyup="putDifference(this);" title="Agent Part" value="" disabled="disabled">%&nbsp;&nbsp;&nbsp;<span id="difference_based_on_netcash" title="My Part"> </span> <img src="./images/cmt_yes.gif" id="based_on_netcash_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="based_on_netcash_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
    </div>
    
          	                     <div class="form-group">
    <div class="col-sm-3">
    <input type="radio" id="based" name="based" value="based_on_netwin" onclick="checkRadio(this)">Commission based on Game Results
    </div>
    <div class="col-sm-9">
    </div>
    </div>
    
               	                     <div class="form-group">
    <div class="col-sm-3">
   <input type="checkbox" id="percent_from_netwin" disabled="disabled" onclick="if(this.checked){document.getElementById(&#39;based_on_netwin&#39;).disabled=false;}else{document.getElementById(&#39;based_on_netwin&#39;).disabled=true;}">% from NetWin (GW)
    </div>
    <div class="col-sm-9">
    <input type="text" class="field" name="based_on_netwin" id="based_on_netwin" style="width:40px;" onkeyup="putDifference(this);" title="Agent Part" value="" disabled="disabled">%&nbsp;&nbsp;&nbsp;<span id="difference_based_on_netwin" title="My Part"> </span> <img src="./images/cmt_yes.gif" id="based_on_netwin_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="based_on_netwin_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
    </div>
    
                   	                     <div class="form-group">
    <div class="col-sm-3">
   <input type="checkbox" id="rolling_fee" onclick="DisableEnableEditButton(&#39;rolling_fee&#39;);" disabled="disabled">Rolling Fee
    </div>
    <div class="col-sm-9">
     </div>
    </div>
          </div>
            <div class="box_tabs" style="position:relative;padding:5px; border-top:solid 0px #CCCCCC;padding-top:0px;  "><table><tbody><tr><td style="width:85%"> <table class="tab_body" summary="" cellpadding="0" cellspacing="1" border="0" id="table_game_types" onclick="sortColumn(event)">
           <thead>
          	<tr>
          	<td class="tab_head" type="String" onmouseover="this.style.cursor=&#39;hand&#39;;"><a class="tablink" style="cursor: pointer;">Game Type</a></td>
          	<td class="tab_head" type="Number" onmouseover="this.style.cursor=&#39;hand&#39;;"><a class="tablink" style="cursor: pointer;">Rolling Commission(%)</a></td>
          	<td class="tab_head" type="Number" onmouseover="this.style.cursor=&#39;hand&#39;;"><a class="tablink" style="cursor: pointer;">Effective Income(%)</a></td>
          	</tr>
          	</thead>
        	<tbody>
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Baccarat<span id="game_type1" style="display:none;">Baccarat</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission1" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission1" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission1_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission1_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom1" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom1" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom1_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom1_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Diamond LG  Baccarat<span id="game_type2" style="display:none;">Diamond LG Baccarat</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission2" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission2" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission2_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission2_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom2" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom2" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom2_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom2_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Diamond LG  Blackjack<span id="game_type3" style="display:none;">Diamond LG Blackjack</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission3" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission3" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission3_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission3_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom3" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom3" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom3_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom3_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Diamond LG  Casino  Hold'em<span id="game_type4" style="display:none;">Diamond LG Casino Hold'em</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission4" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission4" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission4_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission4_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom4" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom4" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom4_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom4_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Diamond LG  Roulette<span id="game_type5" style="display:none;">Diamond LG Roulette</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission5" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission5" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission5_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission5_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom5" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom5" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom5_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom5_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Live  Games  Baccarat<span id="game_type6" style="display:none;">Live Games Baccarat</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission6" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission6" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission6_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission6_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom6" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom6" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom6_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom6_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Live  Games  Blackjack<span id="game_type7" style="display:none;">Live Games Blackjack</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission7" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission7" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission7_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission7_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom7" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom7" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom7_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom7_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Live  Games  Roulette<span id="game_type8" style="display:none;">Live Games Roulette</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission8" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission8" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission8_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission8_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom8" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom8" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom8_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom8_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Mobile<span id="game_type9" style="display:none;">Mobile</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission9" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission9" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission9_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission9_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom9" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom9" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom9_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom9_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Others<span id="game_type10" style="display:none;">Others</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission10" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission10" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission10_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission10_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom10" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom10" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom10_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom10_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Poker<span id="game_type11" style="display:none;">Poker</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission11" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission11" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission11_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission11_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom11" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom11" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom11_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom11_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Progressive<span id="game_type12" style="display:none;">Progressive</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission12" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission12" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission12_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission12_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom12" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom12" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom12_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom12_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Roulette<span id="game_type13" style="display:none;">Roulette</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission13" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission13" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission13_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission13_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom13" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom13" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom13_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom13_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Slot<span id="game_type14" style="display:none;">Slot</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission14" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission14" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission14_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission14_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom14" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom14" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom14_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom14_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          	
          	<tr>
          	<td class="tab_row1" nowrap="nowrap">Table<span id="game_type15" style="display:none;">Table</span></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="rollong_commission15" style="border: 0px;display:block;" disabled="disabled" value="0.00"><input type="text" class="tab_row2" id="new_rollong_commission15" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="0.00"><span id="rolling_sort" style="display:none;">0.00</span> <img src="./images/cmt_yes.gif" id="new_rollong_commission15_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_rollong_commission15_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	<td class="tab_row1"><input type="text" class="tab_row1" id="effective_incom15" style="border: 0px;display:block;" disabled="disabled" value="100"><input type="text" class="tab_row2" id="new_effective_incom15" style="border: 0px;display:none;" onkeyup="putDifference(this);" value="100"><span id="effective_sort" style="display:none;">100</span> <img src="./images/cmt_yes.gif" id="new_effective_incom15_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_effective_incom15_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          	</tr>
          		</tbody>
          	</table>
          	</td>
          	<!-- <td valign="top"><input type="button" id="edit" name="Edit" value="Edit" disabled="disabled" onclick="CheckButton(this)"></td> -->
          	</tr>
          	<tr><td align="center" style="display:none;" id="save_button"><input type="button" id="cancel" name="cancel" value="  Cancel  " onclick="location.href=&#39;agents_list.php&#39;;">&nbsp;<input type="submit" id="save" name="save" value="  Save  "></td></tr>
          	</tbody></table></div>
		<div id="container">
			<div style="display:none; position:absolute; z-index:10; top:250px; left:500px;" id="loader_gif">
				<img src="./images/ajax-loader-transparent.gif" alt="">
			</div>
			
			<!-- window 1 -->
			<div id="windc" class="wins">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;windc&#39;,&#39;cont1&#39;);">
					<tbody><tr>
						<td width="100%"></td>				
						<td width="16" align="right" style="cursor:pointer" valign="middle">
							<img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin();enable_submit_button();" title="close">
						</td>
					</tr>
				</tbody></table>		
				<span id="cont1" class="text">		
					<table align="center" valign="middle" width="100%" cellpadding="0" cellspacing="2">
						<tbody><tr valign="top">
      						<td align="center" colspan="2">
      							<span id="error1"></span>
      							<table border="0">
      								<tbody><tr>
      									<td><center id="changeCommNote">NOTE_CHANGE_COMMISSION</center></td>
      								</tr>
      								<tr>
      									<td><center>
      										<input type="button" value="OK" onclick="UpdateCommission();">&nbsp;<input type="button" value="Cancel" onclick="CancelChanges();">
                                            </center>
      									</td>
      								</tr>
      							</tbody></table>
      						</td>
      					</tr>
					</tbody></table>
				</span>
			</div>
                <div id="wind2" class="wins">
                    <div class="box_login1" id="output1" style="position:relative;"><div style="display:none; position:absolute; z-index:20; top:20px; left:160px;" id="loader_gif1"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 100%;">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind2&#39;,&#39;cont2&#39;);">
                                <tbody><tr>
                                    <td width="100%"></td>


                                    <td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin(); set_focus(document.getElementById(&#39;PokerRakePrecent&#39;));
                                            enable_submit_button();
                                            document.getElementById(&#39;wind2_button_cancel&#39;).style.display=&#39;&#39; " title="close"></td>
                                </tr>
                            </tbody></table>
                            <span id="cont2" class="text" style="top: 18px; left: 0px; width: 400px; height: 230px;">
                            <table width="100%" align="center" cellpadding="10" cellspacing="10">
                            <tbody><tr><td><span id="error1"></span></td></tr>
                            <tr>
                                <td align="center" id="wind2_text"></td>
                            </tr>
                            <tr align="center">
                                <td>
                                    <input id="wind2_button_ok" type="button" class="button" value="OK" onclick="closeWin(); enable_submit_button(); check_poker_fields(document.agent_form.allow_poker); ">
                                    &nbsp;
                                    <input id="wind2_button_cancel" type="button" class="button" value="Cancel" onclick="closeWin(); enable_submit_button(); document.getElementById(document.getElementById(&#39;product_checkbox&#39;).value).checked=true; check_poker_fields(document.agent_form.allow_poker);">
                                </td>
                            </tr>
                    </tbody></table>
                    </span>
                </div>
                </div></div>
		</div>
		<script type="text/javascript">
<!--
//function isChecked (formObj, elm,id) {
//	 var els = formObj.elements.item(elm); 
//	 for (var i=0; i < els.length; ++i) {
//		        if (els[i].checked && i==id) {return true;} 
// }	 return false;}
// 
// function CheckRadio(formObj, elm,id){
// 	var els = formObj.elements.item(elm); 
//	 for (var i=0; i < els.length; ++i) {
//		        if (i==id) {
//		        els[i].checked='checked';} 
// }	 
// }
// function getRadioName(formObj, elm,id){
//	var els = formObj.elements.item(elm); 
//	 for (var i=0; i < els.length; ++i) {
//		if (i==id) {
//			return els[i].value;
//		} 
// 	}	 
// }

if(document.getElementById("update_commission_form")){

	if(isChecked(document.getElementById("update_commission_form"),"based",2)){
		if(document.getElementById("percent_from_netwin"))
			document.getElementById("percent_from_netwin").disabled=false;
		if(document.getElementById("rolling_fee"))
			document.getElementById("rolling_fee").disabled=false;
		if(getRadioName(document.getElementById("update_commission_form"),"based",2) == "rolling_fee"){
			 DisableEnableEditButton();
		}
	}
	if(isChecked(document.getElementById("update_commission_form"),"based",1)){
		document.getElementById("based_on_netcash").disabled=false;
		putDifference(document.getElementById("based_on_netcash"));
	}
}
if(document.getElementById("percent_from_netwin") && document.getElementById("percent_from_netwin").disabled==false && document.getElementById("percent_from_netwin").checked){
	document.getElementById("based_on_netwin").disabled=false;
	if(document.getElementById("based_on_netwin").value!=""){
		putDifference(document.getElementById("based_on_netwin"));
	}
}
if(document.getElementById("rolling_fee") && document.getElementById("rolling_fee").disabled==false && document.getElementById("rolling_fee").checked){
	DisableEnableEditButton();
	CheckRadio(document.getElementById("update_commission_form"),"based",2);
	document.getElementById("percent_from_netwin").disabled=false;
}

//-->
</script>
           
       <!--end commission-->
        <table summary="" cellpadding="0" cellspacing="10" border="0" id="block_1" style="display:block;">
          <tbody><tr>
            <td></td>
            <td align="center"><input type="button" class="button" value="  &lt; Back  " onclick="location.href='${pageContext.request.contextPath}/agentsList';">&nbsp;
            <input type="button" class="button" value="  Next &gt;  " onclick="return ValidateForm(document.getElementById(&#39;agent_form&#39;));"></td>
          </tr>
          <tr>
            <td colspan="2"><font style="font-size: 11px;"><i>* Indicates mandatory field.</i></font></td>
          </tr>
        </tbody></table></div></form></div>
        
       <div id="container">
	<!-- window 1 -->
        <div id="wind1" class="wins">
<div class="box_login1" id="output1" style="position:relative;"><div style="display:none; position:absolute; z-index:20; top:20px; left:160px;" id="loader_gif1"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 100%;">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebar" onmousedown="start(&#39;wind1&#39;,&#39;cont1&#39;);">
			<tbody><tr>
				<td width="100%"></td>
				
				
				<td width="16" align="right" style="cursor:pointer" valign="middle"><img src="./images/close.gif" border="0" width="16" height="16" onclick="closeWin(); enable_submit_button();" title="close"></td>
			</tr>
		</tbody></table>
		<span id="cont1" class="text" style="top: 18px; left: 0px; width: 400px; height: 230px;">
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
	</div></div></div>
        
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
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter an E-mail address. Error # 1009</div>';
				set_focus(theform.notify_email);
				return false;
			}
			else unset_focus(theform.notify_email);
			
			if(!ValidateEmail(theform.notify_email))
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Invalid E-mail address. Please check and try again. Error # 1006</div>';		
				set_focus(theform.notify_email); 
				return false;
			}
			else unset_focus(theform.notify_email);
   		}
   		if(theform.notify[1].checked==true)
   		{
   			if(theform.notify_sms.value=='')
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.notify_sms);
				return false;
			}
			else unset_focus(theform.notify_sms);
			
			if (!reg.test(replace_spaces(theform.notify_sms))) 
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.notify_sms);
			if(theform.notify[1].checked==true)
   		{
   			if(theform.notify_sms.value=='')
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
				set_focus(theform.notify_sms);
				return false;
			}
			else unset_focus(theform.notify_sms);
			
			if (!reg.test(replace_spaces(theform.notify_sms))) 
			{
				document.getElementById("error").innerHTML='<div class="error"><img src="/images/cmt_error.gif" width="11" height="11" alt="" /> Error! Please enter a mobile number. Error # 1004</div>';
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
	<input type="hidden" name="notify_print" id="notify_print" value="true">
	<table summary="" cellpadding="0" cellspacing="0" border="0" id="notification_block" style="display:none;">
		  <tbody><tr><td colspan="2">Send account details to:<br><br></td></tr>
          <tr>
            <td nowrap="nowrap"><input type="checkbox" value="notify_email" name="notify" id="notify" onclick="if(this.checked==true) document.agent_form.notify_email.disabled=false; else document.agent_form.notify_email.disabled=true;">E-mail address&nbsp;</td>
            <td><input type="text" class="field" value="" name="notify_email" id="notify_email" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_email_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_email_gif_no" width="13" height="13" alt="" style="display:none;"></td>
          </tr>
          <tr><td colspan="2">&nbsp;</td></tr>
                <tr id="notify_sms_tr">
                    <td nowrap="nowrap"><input type="checkbox" value="notify_sms" name="notify" id="notify" onclick="if(this.checked==true) document.agent_form.notify_sms.disabled=false; else document.agent_form.notify_sms.disabled=true;">SMS to&nbsp;</td>
                    <td><input type="text" class="field" value="" name="notify_sms" id="notify_sms" disabled="disabled"> <img src="./images/cmt_yes.gif" id="notify_sms_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="notify_sms_gif_no" width="13" height="13" alt="" style="display:none;"><br><font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font></td>
                </tr>
         <tr><td colspan="2"><br><br></td></tr>
         <tr>
            <td></td>
            <td>&nbsp;<input type="button" class="button" name="back_button" id="back_button" value="  &lt; Back  " onclick="go_back();">&nbsp;<input type="submit" name="submit_button" id="submit_button" class="button" value="  Submit  "></td>
          </tr>
        </tbody></table>
        <span id="output"></span></div>
     
     <script>
     set_mobile_prefix(document.getElementById('phone_ext'));
     </script>
     
                    </td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'a155755\',\'add_agent\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>a a</strong><br>Representative<br><em><font size="1px"><span id="gmt_time">2/6/2015 16:36</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
	<input type="hidden" id="time_diff" value="9.0000">
	<input type="button" class="logout" value="Logout" onclick="location.href=&#39;logout.php&#39;" style="cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="logout" style="width:120px;" value="Change Password">	
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

            <img src="./images/cmt_null.gif" width="760" height="1" alt="">
            

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