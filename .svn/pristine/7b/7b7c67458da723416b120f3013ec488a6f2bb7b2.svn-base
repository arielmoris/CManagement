<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0046)manage_settings.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title> Client Management Tool</title><!-- Latest compiled and minified CSS --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">


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
<div class="page-wrap">
<table class="first" summary="" width="100%" cellpadding="0" cellspacing="0" border="0">
    <tbody><tr valign="top">
        
        <td class="center">

            <table class="top" summary="" width="760" cellpadding="0" cellspacing="0" border="0">
                <tbody>
				
				<tr valign="top">
                
                <td class="content">
                <div class="system">Management System</div>
                        <div class="page_title">
                            Manage My Settings
                        </div>
                        <br>
                        <span class="tabs">
                            <div class="tabs_table">
        <table summary="" cellpadding="0" cellspacing="0" border="0">
          <tbody><tr>
            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Manage&nbsp;My Settings&nbsp;</td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                        <div class="box_tabs" style="position:relative; height: 300px !important; width:900px;" id="output"><div style="display:none; position:absolute; z-index:10; top:65px; left:220px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;">
	<span id="error"></span><script src="./scripts/cookie_check.js" type="text/javascript"></script> 
	<script type="text/javascript">
	// <!--
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
		var send_vars='';if(theform.TimeZone.value=='' && document.getElementById("tr_TimeZone").style.display!='none')
		{			
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
			set_focus(theform.TimeZone); 
			return false;
		}
		else 
		{
			unset_focus(theform.TimeZone);
			send_vars+='TimeZone='+theform.TimeZone.value+',';
			//send_vars+='TimeZone='+theform.TimeZone.value+',';
		}if(theform.DayLight.value=='' && document.getElementById("tr_DayLight").style.display!='none')
		{			
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
			set_focus(theform.DayLight); 
			return false;
		}
		else 
		{
			unset_focus(theform.DayLight);
			send_vars+='DayLight='+theform.DayLight.value+',';
			//send_vars+='DayLight='+theform.DayLight.value+',';
		}if(theform.PreferredCommunicationLanguage.value=='' && document.getElementById("tr_PreferredCommunicationLanguage").style.display!='none')
		{			
			document.getElementById("error").innerHTML='<div class="error"><img src="./images/cmt_error.gif" width="11" height="11" alt="" /> Error! Some data is missing. Please try again. Error # 1003</div>';
			set_focus(theform.PreferredCommunicationLanguage); 
			return false;
		}
		else 
		{
			unset_focus(theform.PreferredCommunicationLanguage);
			send_vars+='PreferredCommunicationLanguage='+theform.PreferredCommunicationLanguage.value+',';
			//send_vars+='PreferredCommunicationLanguage='+theform.PreferredCommunicationLanguage.value+',';
		}var reset_arr=new Array('TimeZone','DayLight','PreferredCommunicationLanguage');
		reset_focus_gif(reset_arr);
		document.getElementById('error').innerHTML='';
		if(send_vars!='')
			send_vars=send_vars.substr(0,send_vars.length-1);
		set_action(send_vars);
		return false;
	}		
	function set_action(vars)
	{
		var session='';
		if(!document.cookie)
			session='PHPSESSID=f8e9ae5438a821562e982434414a3d0e';
		disable_submit_button();
		//alert(vars);
		sndReqUpdateSettings(29353,vars,session);
	}
	function OnChangeRadioButton(){
	//alert(document.getElementById("SendEmailOnPrint").checked);
		if(document.getElementById("SendEmailOnPrint").checked==false)
		{
			document.getElementById("tr_ReceiptEmail").style.display='none';
			document.getElementById("ReceiptEmail").value='';
		}
		else
			document.getElementById("tr_ReceiptEmail").style.display=display;
	}
	//-->
	</script>	
       <form action="manage_settings.jsp" method="post" name="agent_form" id="agent_form" class="form-horizontal">
       
         <div class="form-group">
    <label for="TimeZone" class="col-sm-3 control-label">Time Zone <img src="./images/cmt_h1_small.gif" alt="Local time zone" title="Local time zone" style="cursor:pointer;"></label>
    <div class="col-sm-9">
     <span onmouseover="var sel=document.getElementById('TimeZone'); sel.title=sel[sel.selectedIndex].text;">
			<select class="field" name="TimeZone" id="TimeZone" style="width:382px;" title="">
				<option value="1" title="(GMT+01:00) Europe/Andorra">(GMT+01:00) Europe/Andorra</option>
				<option value="2" title="(GMT+04:00) Asia/Dubai">(GMT+04:00) Asia/Dubai</option>
				<option value="3" title="(GMT+04:30) Asia/Kabul">(GMT+04:30) Asia/Kabul</option>
				<option value="6" title="(GMT+01:00) Europe/Tirane">(GMT+01:00) Europe/Tirane</option>
				<option value="7" title="(GMT+04:00) Asia/Yerevan">(GMT+04:00) Asia/Yerevan</option>
				<option value="12" title="(GMT-04:00) Antarctica/Palmer">(GMT-04:00) Antarctica/Palmer</option>
				<option value="13" title="(GMT+05:00) Antarctica/Mawson">(GMT+05:00) Antarctica/Mawson</option>
				<option value="16" title="(GMT+06:00) Antarctica/Vostok">(GMT+06:00) Antarctica/Vostok</option>
				<option value="19" title="(GMT-03:00) America/Argentina/Buenos_Aires">(GMT-03:00) America/Argentina/Buenos_Aires</option>
				<option value="32" title="(GMT+01:00) Europe/Vienna">(GMT+01:00) Europe/Vienna</option>
				<option value="33" title="(GMT+10:00) Australia/Lord_Howe">(GMT+10:00) Australia/Lord_Howe</option>
				<option value="37" title="(GMT+10:00) Australia/Melbourne">(GMT+10:00) Australia/Melbourne</option>
				<option value="43" title="(GMT+09:30) Australia/Darwin">(GMT+09:30) Australia/Darwin</option>
				<option value="44" title="(GMT+08:00) Australia/Perth">(GMT+08:00) Australia/Perth</option>
				<option value="47" title="(GMT+02:00) Europe/Mariehamn">(GMT+02:00) Europe/Mariehamn</option>
				<option value="48" title="(GMT+04:00) Asia/Baku">(GMT+04:00) Asia/Baku</option>
				<option value="49" title="(GMT+01:00) Europe/Sarajevo">(GMT+01:00) Europe/Sarajevo</option>
				<option value="54" title="(GMT+02:00) Europe/Sofia">(GMT+02:00) Europe/Sofia</option>
				<option value="55" title="(GMT+03:00) Asia/Bahrain">(GMT+03:00) Asia/Bahrain</option>
				<option value="60" title="(GMT+08:00) Asia/Brunei">(GMT+08:00) Asia/Brunei</option>
				<option value="63" title="(GMT-02:00) America/Noronha">(GMT-02:00) America/Noronha</option>
				<option value="64" title="(GMT-03:00) America/Belem">(GMT-03:00) America/Belem</option>
				<option value="69" title="(GMT-03:00) America/Bahia">(GMT-03:00) America/Bahia</option>
				<option value="70" title="(GMT-03:00) America/Sao_Paulo">(GMT-03:00) America/Sao_Paulo</option>
				<option value="71" title="(GMT-04:00) America/Campo_Grande">(GMT-04:00) America/Campo_Grande</option>
				<option value="79" title="(GMT-05:00) America/Nassau">(GMT-05:00) America/Nassau</option>
				<option value="84" title="(GMT-03:30) America/St_Johns">(GMT-03:30) America/St_Johns</option>
				<option value="90" title="(GMT-05:00) America/Montreal">(GMT-05:00) America/Montreal</option>
				<option value="97" title="(GMT-05:00) America/Atikokan">(GMT-05:00) America/Atikokan</option>
				<option value="101" title="(GMT-06:00) America/Regina">(GMT-06:00) America/Regina</option>
				<option value="103" title="(GMT-07:00) America/Edmonton">(GMT-07:00) America/Edmonton</option>
				<option value="109" title="(GMT-08:00) America/Vancouver">(GMT-08:00) America/Vancouver</option>
				<option value="117" title="(GMT+01:00) Europe/Zurich">(GMT+01:00) Europe/Zurich</option>
				<option value="119" title="(GMT-10:00) Pacific/Rarotonga">(GMT-10:00) Pacific/Rarotonga</option>
				<option value="120" title="(GMT-04:00) America/Santiago">(GMT-04:00) America/Santiago</option>
				<option value="123" title="(GMT+08:00) Asia/Shanghai">(GMT+08:00) Asia/Shanghai</option>
				<option value="128" title="(GMT-05:00) America/Bogota">(GMT-05:00) America/Bogota</option>
				<option value="132" title="(GMT-04:00) America/Curacao">(GMT-04:00) America/Curacao</option>
				<option value="134" title="(GMT+02:00) Asia/Nicosia">(GMT+02:00) Asia/Nicosia</option>
				<option value="136" title="(GMT+01:00) Europe/Berlin">(GMT+01:00) Europe/Berlin</option>
				<option value="141" title="(GMT-04:00) America/Santo_Domingo">(GMT-04:00) America/Santo_Domingo</option>
				<option value="143" title="(GMT-05:00) America/Guayaquil">(GMT-05:00) America/Guayaquil</option>
				<option value="149" title="(GMT+01:00) Europe/Madrid">(GMT+01:00) Europe/Madrid</option>
				<option value="151" title="(GMT+00:00) Atlantic/Canary">(GMT+00:00) Atlantic/Canary</option>
				<option value="154" title="(GMT+12:00) Pacific/Fiji">(GMT+12:00) Pacific/Fiji</option>
				<option value="156" title="(GMT+10:00) Pacific/Chuuk">(GMT+10:00) Pacific/Chuuk</option>
				<option value="158" title="(GMT+11:00) Pacific/Kosrae">(GMT+11:00) Pacific/Kosrae</option>
				<option value="160" title="(GMT+01:00) Europe/Paris">(GMT+01:00) Europe/Paris</option>
				<option value="162" title="(GMT+00:00) Europe/London">(GMT+00:00) Europe/London</option>
				<option value="164" title="(GMT+04:00) Asia/Tbilisi">(GMT+04:00) Asia/Tbilisi</option>
				<option value="177" title="(GMT+02:00) Europe/Athens">(GMT+02:00) Europe/Athens</option>
				<option value="178" title="(GMT-02:00) Atlantic/South_Georgia">(GMT-02:00) Atlantic/South_Georgia</option>
				<option value="180" title="(GMT+10:00) Pacific/Guam">(GMT+10:00) Pacific/Guam</option>
				<option value="183" title="(GMT+08:00) Asia/Hong_Kong">(GMT+08:00) Asia/Hong_Kong</option>
				<option value="184" title="(GMT-06:00) America/Tegucigalpa">(GMT-06:00) America/Tegucigalpa</option>
				<option value="185" title="(GMT+01:00) Europe/Zagreb">(GMT+01:00) Europe/Zagreb</option>
				<option value="188" title="(GMT+07:00) Asia/Jakarta">(GMT+07:00) Asia/Jakarta</option>
				<option value="190" title="(GMT+08:00) Asia/Makassar">(GMT+08:00) Asia/Makassar</option>
				<option value="192" title="(GMT+00:00) Europe/Dublin">(GMT+00:00) Europe/Dublin</option>
				<option value="193" title="(GMT+02:00) Asia/Jerusalem">(GMT+02:00) Asia/Jerusalem</option>
				<option value="194" title="(GMT+00:00) Europe/Isle_of_Man">(GMT+00:00) Europe/Isle_of_Man</option>
				<option value="195" title="(GMT+05:30) Asia/Kolkata">(GMT+05:30) Asia/Kolkata</option>
				<option value="200" title="(GMT+01:00) Europe/Rome">(GMT+01:00) Europe/Rome</option>
				<option value="204" title="(GMT+09:00) Asia/Tokyo">(GMT+09:00) Asia/Tokyo</option>
				<option value="206" title="(GMT+06:00) Asia/Bishkek">(GMT+06:00) Asia/Bishkek</option>
				<option value="207" title="(GMT+07:00) Asia/Phnom_Penh">(GMT+07:00) Asia/Phnom_Penh</option>
				<option value="209" title="(GMT+13:00) Pacific/Enderbury">(GMT+13:00) Pacific/Enderbury</option>
				<option value="214" selected="selected" title="(GMT+09:00) Asia/Seoul">(GMT+09:00) Asia/Seoul</option>
				<option value="215" title="(GMT+03:00) Asia/Kuwait">(GMT+03:00) Asia/Kuwait</option>
				<option value="217" title="(GMT+06:00) Asia/Almaty">(GMT+06:00) Asia/Almaty</option>
				<option value="219" title="(GMT+05:00) Asia/Aqtobe">(GMT+05:00) Asia/Aqtobe</option>
				<option value="222" title="(GMT+07:00) Asia/Vientiane">(GMT+07:00) Asia/Vientiane</option>
				<option value="223" title="(GMT+02:00) Asia/Beirut">(GMT+02:00) Asia/Beirut</option>
				<option value="226" title="(GMT+05:30) Asia/Colombo">(GMT+05:30) Asia/Colombo</option>
				<option value="231" title="(GMT+02:00) Europe/Riga">(GMT+02:00) Europe/Riga</option>
				<option value="232" title="(GMT+01:00) Africa/Tripoli">(GMT+01:00) Africa/Tripoli</option>
				<option value="233" title="(GMT+00:00) Africa/Casablanca">(GMT+00:00) Africa/Casablanca</option>
				<option value="235" title="(GMT+02:00) Europe/Chisinau">(GMT+02:00) Europe/Chisinau</option>
				<option value="241" title="(GMT+01:00) Europe/Skopje">(GMT+01:00) Europe/Skopje</option>
				<option value="243" title="(GMT+06:30) Asia/Rangoon">(GMT+06:30) Asia/Rangoon</option>
				<option value="244" title="(GMT+08:00) Asia/Ulaanbaatar">(GMT+08:00) Asia/Ulaanbaatar</option>
				<option value="247" title="(GMT+08:00) Asia/Macau">(GMT+08:00) Asia/Macau</option>
				<option value="256" title="(GMT-06:00) America/Mexico_City">(GMT-06:00) America/Mexico_City</option>
				<option value="257" title="(GMT-06:00) America/Cancun">(GMT-06:00) America/Cancun</option>
				<option value="268" title="(GMT+08:00) Asia/Kuala_Lumpur">(GMT+08:00) Asia/Kuala_Lumpur</option>
				<option value="271" title="(GMT+01:00) Africa/Windhoek">(GMT+01:00) Africa/Windhoek</option>
				<option value="277" title="(GMT+01:00) Europe/Amsterdam">(GMT+01:00) Europe/Amsterdam</option>
				<option value="279" title="(GMT+05:45) Asia/Kathmandu">(GMT+05:45) Asia/Kathmandu</option>
				<option value="284" title="(GMT+04:00) Asia/Muscat">(GMT+04:00) Asia/Muscat</option>
				<option value="289" title="(GMT-09:00) Pacific/Gambier">(GMT-09:00) Pacific/Gambier</option>
				<option value="291" title="(GMT+08:00) Asia/Manila">(GMT+08:00) Asia/Manila</option>
				<option value="293" title="(GMT+01:00) Europe/Warsaw">(GMT+01:00) Europe/Warsaw</option>
				<option value="296" title="(GMT-04:00) America/Puerto_Rico">(GMT-04:00) America/Puerto_Rico</option>
				<option value="302" title="(GMT+09:00) Pacific/Palau">(GMT+09:00) Pacific/Palau</option>
				<option value="304" title="(GMT+03:00) Asia/Qatar">(GMT+03:00) Asia/Qatar</option>
				<option value="306" title="(GMT+02:00) Europe/Bucharest">(GMT+02:00) Europe/Bucharest</option>
				<option value="309" title="(GMT+04:00) Europe/Moscow">(GMT+04:00) Europe/Moscow</option>
				<option value="312" title="(GMT+06:00) Asia/Yekaterinburg">(GMT+06:00) Asia/Yekaterinburg</option>
				<option value="313" title="(GMT+07:00) Asia/Omsk">(GMT+07:00) Asia/Omsk</option>
				<option value="316" title="(GMT+08:00) Asia/Krasnoyarsk">(GMT+08:00) Asia/Krasnoyarsk</option>
				<option value="317" title="(GMT+09:00) Asia/Irkutsk">(GMT+09:00) Asia/Irkutsk</option>
				<option value="318" title="(GMT+10:00) Asia/Yakutsk">(GMT+10:00) Asia/Yakutsk</option>
				<option value="320" title="(GMT+11:00) Asia/Vladivostok">(GMT+11:00) Asia/Vladivostok</option>
				<option value="323" title="(GMT+12:00) Asia/Magadan">(GMT+12:00) Asia/Magadan</option>
				<option value="327" title="(GMT+03:00) Asia/Riyadh">(GMT+03:00) Asia/Riyadh</option>
				<option value="331" title="(GMT+01:00) Europe/Stockholm">(GMT+01:00) Europe/Stockholm</option>
				<option value="332" title="(GMT+08:00) Asia/Singapore">(GMT+08:00) Asia/Singapore</option>
				<option value="334" title="(GMT+01:00) Europe/Ljubljana">(GMT+01:00) Europe/Ljubljana</option>
				<option value="337" title="(GMT+00:00) Africa/Freetown">(GMT+00:00) Africa/Freetown</option>
				<option value="346" title="(GMT+02:00) Asia/Damascus">(GMT+02:00) Asia/Damascus</option>
				<option value="351" title="(GMT+00:00) Africa/Lome">(GMT+00:00) Africa/Lome</option>
				<option value="352" title="(GMT+07:00) Asia/Bangkok">(GMT+07:00) Asia/Bangkok</option>
				<option value="359" title="(GMT+02:00) Europe/Istanbul">(GMT+02:00) Europe/Istanbul</option>
				<option value="362" title="(GMT+08:00) Asia/Taipei">(GMT+08:00) Asia/Taipei</option>
				<option value="363" title="(GMT+03:00) Africa/Dar_es_Salaam">(GMT+03:00) Africa/Dar_es_Salaam</option>
				<option value="364" title="(GMT+02:00) Europe/Kiev">(GMT+02:00) Europe/Kiev</option>
				<option value="366" title="(GMT+02:00) Europe/Zaporozhye">(GMT+02:00) Europe/Zaporozhye</option>
				<option value="368" title="(GMT+03:00) Africa/Kampala">(GMT+03:00) Africa/Kampala</option>
				<option value="376" title="(GMT-05:00) America/Indiana/Indianapolis">(GMT-05:00) America/Indiana/Indianapolis</option>
				<option value="393" title="(GMT-08:00) America/Los_Angeles">(GMT-08:00) America/Los_Angeles</option>
				<option value="402" title="(GMT-03:00) America/Montevideo">(GMT-03:00) America/Montevideo</option>
				<option value="407" title="(GMT-04:30) America/Caracas">(GMT-04:30) America/Caracas</option>
				<option value="410" title="(GMT+07:00) Asia/Ho_Chi_Minh">(GMT+07:00) Asia/Ho_Chi_Minh</option>
				<option value="414" title="(GMT+03:00) Asia/Aden">(GMT+03:00) Asia/Aden</option>
				<option value="418" title="(GMT+02:00) Africa/Harare">(GMT+02:00) Africa/Harare</option>
				<option value="0" title="(GMT+00:00) Etc/GMT">(GMT+00:00) Etc/GMT</option>
				<option value="4" title="(GMT-04:00) America/Antigua">(GMT-04:00) America/Antigua</option>
				<option value="5" title="(GMT-04:00) America/Anguilla">(GMT-04:00) America/Anguilla</option>
				<option value="8" title="(GMT+01:00) Africa/Luanda">(GMT+01:00) Africa/Luanda</option>
				<option value="9" title="(GMT+12:00) Antarctica/McMurdo">(GMT+12:00) Antarctica/McMurdo</option>
				<option value="10" title="(GMT+12:00) Antarctica/South_Pole">(GMT+12:00) Antarctica/South_Pole</option>
				<option value="11" title="(GMT-03:00) Antarctica/Rothera">(GMT-03:00) Antarctica/Rothera</option>
				<option value="14" title="(GMT+07:00) Antarctica/Davis">(GMT+07:00) Antarctica/Davis</option>
				<option value="15" title="(GMT+08:00) Antarctica/Casey">(GMT+08:00) Antarctica/Casey</option>
				<option value="17" title="(GMT+10:00) Antarctica/DumontDUrville">(GMT+10:00) Antarctica/DumontDUrville</option>
				<option value="18" title="(GMT+03:00) Antarctica/Syowa">(GMT+03:00) Antarctica/Syowa</option>
				<option value="20" title="(GMT-03:00) America/Argentina/Cordoba">(GMT-03:00) America/Argentina/Cordoba</option>
				<option value="21" title="(GMT-03:00) America/Argentina/Salta">(GMT-03:00) America/Argentina/Salta</option>
				<option value="22" title="(GMT-03:00) America/Argentina/Jujuy">(GMT-03:00) America/Argentina/Jujuy</option>
				<option value="23" title="(GMT-03:00) America/Argentina/Tucuman">(GMT-03:00) America/Argentina/Tucuman</option>
				<option value="24" title="(GMT-03:00) America/Argentina/Catamarca">(GMT-03:00) America/Argentina/Catamarca</option>
				<option value="25" title="(GMT-03:00) America/Argentina/La_Rioja">(GMT-03:00) America/Argentina/La_Rioja</option>
				<option value="26" title="(GMT-03:00) America/Argentina/San_Juan">(GMT-03:00) America/Argentina/San_Juan</option>
				<option value="27" title="(GMT-03:00) America/Argentina/Mendoza">(GMT-03:00) America/Argentina/Mendoza</option>
				<option value="28" title="(GMT-04:00) America/Argentina/San_Luis">(GMT-04:00) America/Argentina/San_Luis</option>
				<option value="29" title="(GMT-03:00) America/Argentina/Rio_Gallegos">(GMT-03:00) America/Argentina/Rio_Gallegos</option>
				<option value="30" title="(GMT-03:00) America/Argentina/Ushuaia">(GMT-03:00) America/Argentina/Ushuaia</option>
				<option value="31" title="(GMT-11:00) Pacific/Pago_Pago">(GMT-11:00) Pacific/Pago_Pago</option>
				<option value="34" title="(GMT+11:00) Antarctica/Macquarie">(GMT+11:00) Antarctica/Macquarie</option>
				<option value="35" title="(GMT+10:00) Australia/Hobart">(GMT+10:00) Australia/Hobart</option>
				<option value="36" title="(GMT+10:00) Australia/Currie">(GMT+10:00) Australia/Currie</option>
				<option value="38" title="(GMT+10:00) Australia/Sydney">(GMT+10:00) Australia/Sydney</option>
				<option value="39" title="(GMT+09:30) Australia/Broken_Hill">(GMT+09:30) Australia/Broken_Hill</option>
				<option value="40" title="(GMT+10:00) Australia/Brisbane">(GMT+10:00) Australia/Brisbane</option>
				<option value="41" title="(GMT+10:00) Australia/Lindeman">(GMT+10:00) Australia/Lindeman</option>
				<option value="42" title="(GMT+09:30) Australia/Adelaide">(GMT+09:30) Australia/Adelaide</option>
				<option value="45" title="(GMT+08:45) Australia/Eucla">(GMT+08:45) Australia/Eucla</option>
				<option value="46" title="(GMT-04:00) America/Aruba">(GMT-04:00) America/Aruba</option>
				<option value="50" title="(GMT-04:00) America/Barbados">(GMT-04:00) America/Barbados</option>
				<option value="51" title="(GMT+06:00) Asia/Dhaka">(GMT+06:00) Asia/Dhaka</option>
				<option value="52" title="(GMT+01:00) Europe/Brussels">(GMT+01:00) Europe/Brussels</option>
				<option value="53" title="(GMT+00:00) Africa/Ouagadougou">(GMT+00:00) Africa/Ouagadougou</option>
				<option value="56" title="(GMT+02:00) Africa/Bujumbura">(GMT+02:00) Africa/Bujumbura</option>
				<option value="57" title="(GMT+01:00) Africa/Porto-Novo">(GMT+01:00) Africa/Porto-Novo</option>
				<option value="58" title="(GMT-04:00) America/St_Barthelemy">(GMT-04:00) America/St_Barthelemy</option>
				<option value="59" title="(GMT-04:00) Atlantic/Bermuda">(GMT-04:00) Atlantic/Bermuda</option>
				<option value="61" title="(GMT-04:00) America/La_Paz">(GMT-04:00) America/La_Paz</option>
				<option value="62" title="(GMT-04:00) America/Kralendijk">(GMT-04:00) America/Kralendijk</option>
				<option value="65" title="(GMT-03:00) America/Fortaleza">(GMT-03:00) America/Fortaleza</option>
				<option value="66" title="(GMT-03:00) America/Recife">(GMT-03:00) America/Recife</option>
				<option value="67" title="(GMT-03:00) America/Araguaina">(GMT-03:00) America/Araguaina</option>
				<option value="68" title="(GMT-03:00) America/Maceio">(GMT-03:00) America/Maceio</option>
				<option value="72" title="(GMT-04:00) America/Cuiaba">(GMT-04:00) America/Cuiaba</option>
				<option value="73" title="(GMT-03:00) America/Santarem">(GMT-03:00) America/Santarem</option>
				<option value="74" title="(GMT-04:00) America/Porto_Velho">(GMT-04:00) America/Porto_Velho</option>
				<option value="75" title="(GMT-04:00) America/Boa_Vista">(GMT-04:00) America/Boa_Vista</option>
				<option value="76" title="(GMT-04:00) America/Manaus">(GMT-04:00) America/Manaus</option>
				<option value="77" title="(GMT-04:00) America/Eirunepe">(GMT-04:00) America/Eirunepe</option>
				<option value="78" title="(GMT-04:00) America/Rio_Branco">(GMT-04:00) America/Rio_Branco</option>
				<option value="80" title="(GMT+06:00) Asia/Thimphu">(GMT+06:00) Asia/Thimphu</option>
				<option value="81" title="(GMT+02:00) Africa/Gaborone">(GMT+02:00) Africa/Gaborone</option>
				<option value="82" title="(GMT+03:00) Europe/Minsk">(GMT+03:00) Europe/Minsk</option>
				<option value="83" title="(GMT-06:00) America/Belize">(GMT-06:00) America/Belize</option>
				<option value="85" title="(GMT-04:00) America/Halifax">(GMT-04:00) America/Halifax</option>
				<option value="86" title="(GMT-04:00) America/Glace_Bay">(GMT-04:00) America/Glace_Bay</option>
				<option value="87" title="(GMT-04:00) America/Moncton">(GMT-04:00) America/Moncton</option>
				<option value="88" title="(GMT-04:00) America/Goose_Bay">(GMT-04:00) America/Goose_Bay</option>
				<option value="89" title="(GMT-04:00) America/Blanc-Sablon">(GMT-04:00) America/Blanc-Sablon</option>
				<option value="91" title="(GMT-05:00) America/Toronto">(GMT-05:00) America/Toronto</option>
				<option value="92" title="(GMT-05:00) America/Nipigon">(GMT-05:00) America/Nipigon</option>
				<option value="93" title="(GMT-05:00) America/Thunder_Bay">(GMT-05:00) America/Thunder_Bay</option>
				<option value="94" title="(GMT-05:00) America/Iqaluit">(GMT-05:00) America/Iqaluit</option>
				<option value="95" title="(GMT-05:00) America/Pangnirtung">(GMT-05:00) America/Pangnirtung</option>
				<option value="96" title="(GMT-06:00) America/Resolute">(GMT-06:00) America/Resolute</option>
				<option value="98" title="(GMT-06:00) America/Rankin_Inlet">(GMT-06:00) America/Rankin_Inlet</option>
				<option value="99" title="(GMT-06:00) America/Winnipeg">(GMT-06:00) America/Winnipeg</option>
				<option value="100" title="(GMT-06:00) America/Rainy_River">(GMT-06:00) America/Rainy_River</option>
				<option value="102" title="(GMT-06:00) America/Swift_Current">(GMT-06:00) America/Swift_Current</option>
				<option value="104" title="(GMT-07:00) America/Cambridge_Bay">(GMT-07:00) America/Cambridge_Bay</option>
				<option value="105" title="(GMT-07:00) America/Yellowknife">(GMT-07:00) America/Yellowknife</option>
				<option value="106" title="(GMT-07:00) America/Inuvik">(GMT-07:00) America/Inuvik</option>
				<option value="107" title="(GMT-07:00) America/Creston">(GMT-07:00) America/Creston</option>
				<option value="108" title="(GMT-07:00) America/Dawson_Creek">(GMT-07:00) America/Dawson_Creek</option>
				<option value="110" title="(GMT-08:00) America/Whitehorse">(GMT-08:00) America/Whitehorse</option>
				<option value="111" title="(GMT-08:00) America/Dawson">(GMT-08:00) America/Dawson</option>
				<option value="112" title="(GMT+06:30) Indian/Cocos">(GMT+06:30) Indian/Cocos</option>
				<option value="113" title="(GMT+01:00) Africa/Kinshasa">(GMT+01:00) Africa/Kinshasa</option>
				<option value="114" title="(GMT+02:00) Africa/Lubumbashi">(GMT+02:00) Africa/Lubumbashi</option>
				<option value="115" title="(GMT+01:00) Africa/Bangui">(GMT+01:00) Africa/Bangui</option>
				<option value="116" title="(GMT+01:00) Africa/Brazzaville">(GMT+01:00) Africa/Brazzaville</option>
				<option value="118" title="(GMT+00:00) Africa/Abidjan">(GMT+00:00) Africa/Abidjan</option>
				<option value="121" title="(GMT-06:00) Pacific/Easter">(GMT-06:00) Pacific/Easter</option>
				<option value="122" title="(GMT+01:00) Africa/Douala">(GMT+01:00) Africa/Douala</option>
				<option value="124" title="(GMT+08:00) Asia/Harbin">(GMT+08:00) Asia/Harbin</option>
				<option value="125" title="(GMT+08:00) Asia/Chongqing">(GMT+08:00) Asia/Chongqing</option>
				<option value="126" title="(GMT+08:00) Asia/Urumqi">(GMT+08:00) Asia/Urumqi</option>
				<option value="127" title="(GMT+08:00) Asia/Kashgar">(GMT+08:00) Asia/Kashgar</option>
				<option value="129" title="(GMT-06:00) America/Costa_Rica">(GMT-06:00) America/Costa_Rica</option>
				<option value="130" title="(GMT-05:00) America/Havana">(GMT-05:00) America/Havana</option>
				<option value="131" title="(GMT-01:00) Atlantic/Cape_Verde">(GMT-01:00) Atlantic/Cape_Verde</option>
				<option value="133" title="(GMT+07:00) Indian/Christmas">(GMT+07:00) Indian/Christmas</option>
				<option value="135" title="(GMT+01:00) Europe/Prague">(GMT+01:00) Europe/Prague</option>
				<option value="137" title="(GMT+01:00) Europe/Busingen">(GMT+01:00) Europe/Busingen</option>
				<option value="138" title="(GMT+03:00) Africa/Djibouti">(GMT+03:00) Africa/Djibouti</option>
				<option value="139" title="(GMT+01:00) Europe/Copenhagen">(GMT+01:00) Europe/Copenhagen</option>
				<option value="140" title="(GMT-04:00) America/Dominica">(GMT-04:00) America/Dominica</option>
				<option value="142" title="(GMT+01:00) Africa/Algiers">(GMT+01:00) Africa/Algiers</option>
				<option value="144" title="(GMT-06:00) Pacific/Galapagos">(GMT-06:00) Pacific/Galapagos</option>
				<option value="145" title="(GMT+02:00) Europe/Tallinn">(GMT+02:00) Europe/Tallinn</option>
				<option value="146" title="(GMT+02:00) Africa/Cairo">(GMT+02:00) Africa/Cairo</option>
				<option value="147" title="(GMT+00:00) Africa/El_Aaiun">(GMT+00:00) Africa/El_Aaiun</option>
				<option value="148" title="(GMT+03:00) Africa/Asmara">(GMT+03:00) Africa/Asmara</option>
				<option value="150" title="(GMT+01:00) Africa/Ceuta">(GMT+01:00) Africa/Ceuta</option>
				<option value="152" title="(GMT+03:00) Africa/Addis_Ababa">(GMT+03:00) Africa/Addis_Ababa</option>
				<option value="153" title="(GMT+02:00) Europe/Helsinki">(GMT+02:00) Europe/Helsinki</option>
				<option value="155" title="(GMT-03:00) Atlantic/Stanley">(GMT-03:00) Atlantic/Stanley</option>
				<option value="157" title="(GMT+11:00) Pacific/Pohnpei">(GMT+11:00) Pacific/Pohnpei</option>
				<option value="159" title="(GMT+00:00) Atlantic/Faroe">(GMT+00:00) Atlantic/Faroe</option>
				<option value="161" title="(GMT+01:00) Africa/Libreville">(GMT+01:00) Africa/Libreville</option>
				<option value="163" title="(GMT-04:00) America/Grenada">(GMT-04:00) America/Grenada</option>
				<option value="165" title="(GMT-03:00) America/Cayenne">(GMT-03:00) America/Cayenne</option>
				<option value="166" title="(GMT+00:00) Europe/Guernsey">(GMT+00:00) Europe/Guernsey</option>
				<option value="167" title="(GMT+00:00) Africa/Accra">(GMT+00:00) Africa/Accra</option>
				<option value="168" title="(GMT+01:00) Europe/Gibraltar">(GMT+01:00) Europe/Gibraltar</option>
				<option value="169" title="(GMT-03:00) America/Godthab">(GMT-03:00) America/Godthab</option>
				<option value="170" title="(GMT+00:00) America/Danmarkshavn">(GMT+00:00) America/Danmarkshavn</option>
				<option value="171" title="(GMT-01:00) America/Scoresbysund">(GMT-01:00) America/Scoresbysund</option>
				<option value="172" title="(GMT-04:00) America/Thule">(GMT-04:00) America/Thule</option>
				<option value="173" title="(GMT+00:00) Africa/Banjul">(GMT+00:00) Africa/Banjul</option>
				<option value="174" title="(GMT+00:00) Africa/Conakry">(GMT+00:00) Africa/Conakry</option>
				<option value="175" title="(GMT-04:00) America/Guadeloupe">(GMT-04:00) America/Guadeloupe</option>
				<option value="176" title="(GMT+01:00) Africa/Malabo">(GMT+01:00) Africa/Malabo</option>
				<option value="179" title="(GMT-06:00) America/Guatemala">(GMT-06:00) America/Guatemala</option>
				<option value="181" title="(GMT+00:00) Africa/Bissau">(GMT+00:00) Africa/Bissau</option>
				<option value="182" title="(GMT-04:00) America/Guyana">(GMT-04:00) America/Guyana</option>
				<option value="186" title="(GMT-05:00) America/Port-au-Prince">(GMT-05:00) America/Port-au-Prince</option>
				<option value="187" title="(GMT+01:00) Europe/Budapest">(GMT+01:00) Europe/Budapest</option>
				<option value="189" title="(GMT+07:00) Asia/Pontianak">(GMT+07:00) Asia/Pontianak</option>
				<option value="191" title="(GMT+09:00) Asia/Jayapura">(GMT+09:00) Asia/Jayapura</option>
				<option value="196" title="(GMT+06:00) Indian/Chagos">(GMT+06:00) Indian/Chagos</option>
				<option value="197" title="(GMT+03:00) Asia/Baghdad">(GMT+03:00) Asia/Baghdad</option>
				<option value="198" title="(GMT+03:30) Asia/Tehran">(GMT+03:30) Asia/Tehran</option>
				<option value="199" title="(GMT+00:00) Atlantic/Reykjavik">(GMT+00:00) Atlantic/Reykjavik</option>
				<option value="201" title="(GMT+00:00) Europe/Jersey">(GMT+00:00) Europe/Jersey</option>
				<option value="202" title="(GMT-05:00) America/Jamaica">(GMT-05:00) America/Jamaica</option>
				<option value="203" title="(GMT+02:00) Asia/Amman">(GMT+02:00) Asia/Amman</option>
				<option value="205" title="(GMT+03:00) Africa/Nairobi">(GMT+03:00) Africa/Nairobi</option>
				<option value="208" title="(GMT+12:00) Pacific/Tarawa">(GMT+12:00) Pacific/Tarawa</option>
				<option value="210" title="(GMT+14:00) Pacific/Kiritimati">(GMT+14:00) Pacific/Kiritimati</option>
				<option value="211" title="(GMT+03:00) Indian/Comoro">(GMT+03:00) Indian/Comoro</option>
				<option value="212" title="(GMT-04:00) America/St_Kitts">(GMT-04:00) America/St_Kitts</option>
				<option value="213" title="(GMT+09:00) Asia/Pyongyang">(GMT+09:00) Asia/Pyongyang</option>
				<option value="216" title="(GMT-05:00) America/Cayman">(GMT-05:00) America/Cayman</option>
				<option value="218" title="(GMT+06:00) Asia/Qyzylorda">(GMT+06:00) Asia/Qyzylorda</option>
				<option value="220" title="(GMT+05:00) Asia/Aqtau">(GMT+05:00) Asia/Aqtau</option>
				<option value="221" title="(GMT+05:00) Asia/Oral">(GMT+05:00) Asia/Oral</option>
				<option value="224" title="(GMT-04:00) America/St_Lucia">(GMT-04:00) America/St_Lucia</option>
				<option value="225" title="(GMT+01:00) Europe/Vaduz">(GMT+01:00) Europe/Vaduz</option>
				<option value="227" title="(GMT+00:00) Africa/Monrovia">(GMT+00:00) Africa/Monrovia</option>
				<option value="228" title="(GMT+02:00) Africa/Maseru">(GMT+02:00) Africa/Maseru</option>
				<option value="229" title="(GMT+02:00) Europe/Vilnius">(GMT+02:00) Europe/Vilnius</option>
				<option value="230" title="(GMT+01:00) Europe/Luxembourg">(GMT+01:00) Europe/Luxembourg</option>
				<option value="234" title="(GMT+01:00) Europe/Monaco">(GMT+01:00) Europe/Monaco</option>
				<option value="236" title="(GMT+01:00) Europe/Podgorica">(GMT+01:00) Europe/Podgorica</option>
				<option value="237" title="(GMT-04:00) America/Marigot">(GMT-04:00) America/Marigot</option>
				<option value="238" title="(GMT+03:00) Indian/Antananarivo">(GMT+03:00) Indian/Antananarivo</option>
				<option value="239" title="(GMT+12:00) Pacific/Majuro">(GMT+12:00) Pacific/Majuro</option>
				<option value="240" title="(GMT+12:00) Pacific/Kwajalein">(GMT+12:00) Pacific/Kwajalein</option>
				<option value="242" title="(GMT+00:00) Africa/Bamako">(GMT+00:00) Africa/Bamako</option>
				<option value="245" title="(GMT+07:00) Asia/Hovd">(GMT+07:00) Asia/Hovd</option>
				<option value="246" title="(GMT+08:00) Asia/Choibalsan">(GMT+08:00) Asia/Choibalsan</option>
				<option value="248" title="(GMT+10:00) Pacific/Saipan">(GMT+10:00) Pacific/Saipan</option>
				<option value="249" title="(GMT-04:00) America/Martinique">(GMT-04:00) America/Martinique</option>
				<option value="250" title="(GMT+00:00) Africa/Nouakchott">(GMT+00:00) Africa/Nouakchott</option>
				<option value="251" title="(GMT-04:00) America/Montserrat">(GMT-04:00) America/Montserrat</option>
				<option value="252" title="(GMT+01:00) Europe/Malta">(GMT+01:00) Europe/Malta</option>
				<option value="253" title="(GMT+04:00) Indian/Mauritius">(GMT+04:00) Indian/Mauritius</option>
				<option value="254" title="(GMT+05:00) Indian/Maldives">(GMT+05:00) Indian/Maldives</option>
				<option value="255" title="(GMT+02:00) Africa/Blantyre">(GMT+02:00) Africa/Blantyre</option>
				<option value="258" title="(GMT-06:00) America/Merida">(GMT-06:00) America/Merida</option>
				<option value="259" title="(GMT-06:00) America/Monterrey">(GMT-06:00) America/Monterrey</option>
				<option value="260" title="(GMT-06:00) America/Matamoros">(GMT-06:00) America/Matamoros</option>
				<option value="261" title="(GMT-07:00) America/Mazatlan">(GMT-07:00) America/Mazatlan</option>
				<option value="262" title="(GMT-07:00) America/Chihuahua">(GMT-07:00) America/Chihuahua</option>
				<option value="263" title="(GMT-07:00) America/Ojinaga">(GMT-07:00) America/Ojinaga</option>
				<option value="264" title="(GMT-07:00) America/Hermosillo">(GMT-07:00) America/Hermosillo</option>
				<option value="265" title="(GMT-08:00) America/Tijuana">(GMT-08:00) America/Tijuana</option>
				<option value="266" title="(GMT-08:00) America/Santa_Isabel">(GMT-08:00) America/Santa_Isabel</option>
				<option value="267" title="(GMT-06:00) America/Bahia_Banderas">(GMT-06:00) America/Bahia_Banderas</option>
				<option value="269" title="(GMT+08:00) Asia/Kuching">(GMT+08:00) Asia/Kuching</option>
				<option value="270" title="(GMT+02:00) Africa/Maputo">(GMT+02:00) Africa/Maputo</option>
				<option value="272" title="(GMT+11:00) Pacific/Noumea">(GMT+11:00) Pacific/Noumea</option>
				<option value="273" title="(GMT+01:00) Africa/Niamey">(GMT+01:00) Africa/Niamey</option>
				<option value="274" title="(GMT+11:30) Pacific/Norfolk">(GMT+11:30) Pacific/Norfolk</option>
				<option value="275" title="(GMT+01:00) Africa/Lagos">(GMT+01:00) Africa/Lagos</option>
				<option value="276" title="(GMT-06:00) America/Managua">(GMT-06:00) America/Managua</option>
				<option value="278" title="(GMT+01:00) Europe/Oslo">(GMT+01:00) Europe/Oslo</option>
				<option value="280" title="(GMT+12:00) Pacific/Nauru">(GMT+12:00) Pacific/Nauru</option>
				<option value="281" title="(GMT-11:00) Pacific/Niue">(GMT-11:00) Pacific/Niue</option>
				<option value="282" title="(GMT+12:00) Pacific/Auckland">(GMT+12:00) Pacific/Auckland</option>
				<option value="283" title="(GMT+12:45) Pacific/Chatham">(GMT+12:45) Pacific/Chatham</option>
				<option value="285" title="(GMT-05:00) America/Panama">(GMT-05:00) America/Panama</option>
				<option value="286" title="(GMT-05:00) America/Lima">(GMT-05:00) America/Lima</option>
				<option value="287" title="(GMT-10:00) Pacific/Tahiti">(GMT-10:00) Pacific/Tahiti</option>
				<option value="288" title="(GMT-09:30) Pacific/Marquesas">(GMT-09:30) Pacific/Marquesas</option>
				<option value="290" title="(GMT+10:00) Pacific/Port_Moresby">(GMT+10:00) Pacific/Port_Moresby</option>
				<option value="292" title="(GMT+05:00) Asia/Karachi">(GMT+05:00) Asia/Karachi</option>
				<option value="294" title="(GMT-03:00) America/Miquelon">(GMT-03:00) America/Miquelon</option>
				<option value="295" title="(GMT-08:00) Pacific/Pitcairn">(GMT-08:00) Pacific/Pitcairn</option>
				<option value="297" title="(GMT+02:00) Asia/Gaza">(GMT+02:00) Asia/Gaza</option>
				<option value="298" title="(GMT+02:00) Asia/Hebron">(GMT+02:00) Asia/Hebron</option>
				<option value="299" title="(GMT+00:00) Europe/Lisbon">(GMT+00:00) Europe/Lisbon</option>
				<option value="300" title="(GMT+00:00) Atlantic/Madeira">(GMT+00:00) Atlantic/Madeira</option>
				<option value="301" title="(GMT-01:00) Atlantic/Azores">(GMT-01:00) Atlantic/Azores</option>
				<option value="303" title="(GMT-04:00) America/Asuncion">(GMT-04:00) America/Asuncion</option>
				<option value="305" title="(GMT+04:00) Indian/Reunion">(GMT+04:00) Indian/Reunion</option>
				<option value="307" title="(GMT+01:00) Europe/Belgrade">(GMT+01:00) Europe/Belgrade</option>
				<option value="308" title="(GMT+03:00) Europe/Kaliningrad">(GMT+03:00) Europe/Kaliningrad</option>
				<option value="310" title="(GMT+04:00) Europe/Volgograd">(GMT+04:00) Europe/Volgograd</option>
				<option value="311" title="(GMT+04:00) Europe/Samara">(GMT+04:00) Europe/Samara</option>
				<option value="314" title="(GMT+07:00) Asia/Novosibirsk">(GMT+07:00) Asia/Novosibirsk</option>
				<option value="315" title="(GMT+07:00) Asia/Novokuznetsk">(GMT+07:00) Asia/Novokuznetsk</option>
				<option value="319" title="(GMT+10:00) Asia/Khandyga">(GMT+10:00) Asia/Khandyga</option>
				<option value="321" title="(GMT+11:00) Asia/Sakhalin">(GMT+11:00) Asia/Sakhalin</option>
				<option value="322" title="(GMT+11:00) Asia/Ust-Nera">(GMT+11:00) Asia/Ust-Nera</option>
				<option value="324" title="(GMT+12:00) Asia/Kamchatka">(GMT+12:00) Asia/Kamchatka</option>
				<option value="325" title="(GMT+12:00) Asia/Anadyr">(GMT+12:00) Asia/Anadyr</option>
				<option value="326" title="(GMT+02:00) Africa/Kigali">(GMT+02:00) Africa/Kigali</option>
				<option value="328" title="(GMT+11:00) Pacific/Guadalcanal">(GMT+11:00) Pacific/Guadalcanal</option>
				<option value="329" title="(GMT+04:00) Indian/Mahe">(GMT+04:00) Indian/Mahe</option>
				<option value="330" title="(GMT+03:00) Africa/Khartoum">(GMT+03:00) Africa/Khartoum</option>
				<option value="333" title="(GMT+00:00) Atlantic/St_Helena">(GMT+00:00) Atlantic/St_Helena</option>
				<option value="335" title="(GMT+01:00) Arctic/Longyearbyen">(GMT+01:00) Arctic/Longyearbyen</option>
				<option value="336" title="(GMT+01:00) Europe/Bratislava">(GMT+01:00) Europe/Bratislava</option>
				<option value="338" title="(GMT+01:00) Europe/San_Marino">(GMT+01:00) Europe/San_Marino</option>
				<option value="339" title="(GMT+00:00) Africa/Dakar">(GMT+00:00) Africa/Dakar</option>
				<option value="340" title="(GMT+03:00) Africa/Mogadishu">(GMT+03:00) Africa/Mogadishu</option>
				<option value="341" title="(GMT-03:00) America/Paramaribo">(GMT-03:00) America/Paramaribo</option>
				<option value="342" title="(GMT+03:00) Africa/Juba">(GMT+03:00) Africa/Juba</option>
				<option value="343" title="(GMT+00:00) Africa/Sao_Tome">(GMT+00:00) Africa/Sao_Tome</option>
				<option value="344" title="(GMT-06:00) America/El_Salvador">(GMT-06:00) America/El_Salvador</option>
				<option value="345" title="(GMT-04:00) America/Lower_Princes">(GMT-04:00) America/Lower_Princes</option>
				<option value="347" title="(GMT+02:00) Africa/Mbabane">(GMT+02:00) Africa/Mbabane</option>
				<option value="348" title="(GMT-05:00) America/Grand_Turk">(GMT-05:00) America/Grand_Turk</option>
				<option value="349" title="(GMT+01:00) Africa/Ndjamena">(GMT+01:00) Africa/Ndjamena</option>
				<option value="350" title="(GMT+05:00) Indian/Kerguelen">(GMT+05:00) Indian/Kerguelen</option>
				<option value="353" title="(GMT+05:00) Asia/Dushanbe">(GMT+05:00) Asia/Dushanbe</option>
				<option value="354" title="(GMT+13:00) Pacific/Fakaofo">(GMT+13:00) Pacific/Fakaofo</option>
				<option value="355" title="(GMT+09:00) Asia/Dili">(GMT+09:00) Asia/Dili</option>
				<option value="356" title="(GMT+05:00) Asia/Ashgabat">(GMT+05:00) Asia/Ashgabat</option>
				<option value="357" title="(GMT+01:00) Africa/Tunis">(GMT+01:00) Africa/Tunis</option>
				<option value="358" title="(GMT+13:00) Pacific/Tongatapu">(GMT+13:00) Pacific/Tongatapu</option>
				<option value="360" title="(GMT-04:00) America/Port_of_Spain">(GMT-04:00) America/Port_of_Spain</option>
				<option value="361" title="(GMT+12:00) Pacific/Funafuti">(GMT+12:00) Pacific/Funafuti</option>
				<option value="365" title="(GMT+02:00) Europe/Uzhgorod">(GMT+02:00) Europe/Uzhgorod</option>
				<option value="367" title="(GMT+02:00) Europe/Simferopol">(GMT+02:00) Europe/Simferopol</option>
				<option value="369" title="(GMT-10:00) Pacific/Johnston">(GMT-10:00) Pacific/Johnston</option>
				<option value="370" title="(GMT-11:00) Pacific/Midway">(GMT-11:00) Pacific/Midway</option>
				<option value="371" title="(GMT+12:00) Pacific/Wake">(GMT+12:00) Pacific/Wake</option>
				<option value="372" title="(GMT-05:00) America/New_York">(GMT-05:00) America/New_York</option>
				<option value="373" title="(GMT-05:00) America/Detroit">(GMT-05:00) America/Detroit</option>
				<option value="374" title="(GMT-05:00) America/Kentucky/Louisville">(GMT-05:00) America/Kentucky/Louisville</option>
				<option value="375" title="(GMT-05:00) America/Kentucky/Monticello">(GMT-05:00) America/Kentucky/Monticello</option>
				<option value="377" title="(GMT-05:00) America/Indiana/Vincennes">(GMT-05:00) America/Indiana/Vincennes</option>
				<option value="378" title="(GMT-05:00) America/Indiana/Winamac">(GMT-05:00) America/Indiana/Winamac</option>
				<option value="379" title="(GMT-05:00) America/Indiana/Marengo">(GMT-05:00) America/Indiana/Marengo</option>
				<option value="380" title="(GMT-05:00) America/Indiana/Petersburg">(GMT-05:00) America/Indiana/Petersburg</option>
				<option value="381" title="(GMT-05:00) America/Indiana/Vevay">(GMT-05:00) America/Indiana/Vevay</option>
				<option value="382" title="(GMT-06:00) America/Chicago">(GMT-06:00) America/Chicago</option>
				<option value="383" title="(GMT-06:00) America/Indiana/Tell_City">(GMT-06:00) America/Indiana/Tell_City</option>
				<option value="384" title="(GMT-06:00) America/Indiana/Knox">(GMT-06:00) America/Indiana/Knox</option>
				<option value="385" title="(GMT-06:00) America/Menominee">(GMT-06:00) America/Menominee</option>
				<option value="386" title="(GMT-06:00) America/North_Dakota/Center">(GMT-06:00) America/North_Dakota/Center</option>
				<option value="387" title="(GMT-06:00) America/North_Dakota/New_Salem">(GMT-06:00) America/North_Dakota/New_Salem</option>
				<option value="388" title="(GMT-06:00) America/North_Dakota/Beulah">(GMT-06:00) America/North_Dakota/Beulah</option>
				<option value="389" title="(GMT-07:00) America/Denver">(GMT-07:00) America/Denver</option>
				<option value="390" title="(GMT-07:00) America/Boise">(GMT-07:00) America/Boise</option>
				<option value="391" title="(GMT-07:00) America/Shiprock">(GMT-07:00) America/Shiprock</option>
				<option value="392" title="(GMT-07:00) America/Phoenix">(GMT-07:00) America/Phoenix</option>
				<option value="394" title="(GMT-09:00) America/Anchorage">(GMT-09:00) America/Anchorage</option>
				<option value="395" title="(GMT-09:00) America/Juneau">(GMT-09:00) America/Juneau</option>
				<option value="396" title="(GMT-09:00) America/Sitka">(GMT-09:00) America/Sitka</option>
				<option value="397" title="(GMT-09:00) America/Yakutat">(GMT-09:00) America/Yakutat</option>
				<option value="398" title="(GMT-09:00) America/Nome">(GMT-09:00) America/Nome</option>
				<option value="399" title="(GMT-10:00) America/Adak">(GMT-10:00) America/Adak</option>
				<option value="400" title="(GMT-08:00) America/Metlakatla">(GMT-08:00) America/Metlakatla</option>
				<option value="401" title="(GMT-10:00) Pacific/Honolulu">(GMT-10:00) Pacific/Honolulu</option>
				<option value="403" title="(GMT+05:00) Asia/Samarkand">(GMT+05:00) Asia/Samarkand</option>
				<option value="404" title="(GMT+05:00) Asia/Tashkent">(GMT+05:00) Asia/Tashkent</option>
				<option value="405" title="(GMT+01:00) Europe/Vatican">(GMT+01:00) Europe/Vatican</option>
				<option value="406" title="(GMT-04:00) America/St_Vincent">(GMT-04:00) America/St_Vincent</option>
				<option value="408" title="(GMT-04:00) America/Tortola">(GMT-04:00) America/Tortola</option>
				<option value="409" title="(GMT-04:00) America/St_Thomas">(GMT-04:00) America/St_Thomas</option>
				<option value="411" title="(GMT+11:00) Pacific/Efate">(GMT+11:00) Pacific/Efate</option>
				<option value="412" title="(GMT+12:00) Pacific/Wallis">(GMT+12:00) Pacific/Wallis</option>
				<option value="413" title="(GMT+13:00) Pacific/Apia">(GMT+13:00) Pacific/Apia</option>
				<option value="415" title="(GMT+03:00) Indian/Mayotte">(GMT+03:00) Indian/Mayotte</option>
				<option value="416" title="(GMT+02:00) Africa/Johannesburg">(GMT+02:00) Africa/Johannesburg</option>
				<option value="417" title="(GMT+02:00) Africa/Lusaka">(GMT+02:00) Africa/Lusaka</option>
			</select>
		</span>
		 <img src="./images/cmt_yes.gif" id="TimeZone_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="TimeZone_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
       </div>
         <div class="form-group">
    <label for="DayLight" class="col-sm-3 control-label">Daylight <img src="./images/cmt_h1_small.gif" alt="Indicate whether Daylight saving need to be applied in the local region" title="Indicate whether Daylight saving need to be applied in the local region" style="cursor:pointer;"></label>
    <div class="col-sm-9">
      <select class="field" name="DayLight" id="DayLight"><option value="0" selected="\&quot;selected\&quot;">Daylight Saving Off</option><option value="1">Daylight Saving 1 hour</option><option value="2">Daylight Saving 2 hours</option></select> <img src="./images/cmt_yes.gif" id="DayLight_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="DayLight_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>
       </div>
       
            <div class="form-group">
    <label for="PreferredCommunicationLanguage" class="col-sm-3 control-label">Preferred Language <img src="./images/cmt_h1_small.gif" alt="The Language that will be used for sending messages (email and SMS)" title="The Language that will be used for sending messages (email and SMS)" style="cursor:pointer;"></img></label>
    <div class="col-sm-9">
     <select class="field" name="PreferredCommunicationLanguage" id="PreferredCommunicationLanguage"><option value="1" selected="\&quot;selected\&quot;">English</option><option value="8">Korean</option></select> <img src="./images/cmt_yes.gif" id="PreferredCommunicationLanguage_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="PreferredCommunicationLanguage_gif_no" width="13" height="13" alt="" style="display:none;">
    </div>    
       </div>
       
        <div class="form-group" style="padding-left: 80px;">
 <input type="button" class="button" value="  < Back  " onclick="location.href='${pageContext.request.contextPath}/manageSettings';">
  <input type="button" class="button" value="  Submit  " onclick="return ValidateForm(document.getElementById('agent_form'));">
  </div>
     </form></div></div>
    <script type="text/javascript">
	// <!--
	if(document.getElementById("SendEmailOnPrint")) OnChangeRadioButton();
	//-->
	</script>
    
                    </td>
				<td class="left" nowrap="nowrap" style="padding-left:15px;">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'Test168025\',\'manage_settings\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 100,000.00  KRW</b>
					</div>
				</span>Welcome, <strong>Test1 AAagent</strong><br>Agent<br><em><font size="1px"><span id="gmt_time">1/9/2015 17:58</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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

</div><footer class="site-footer footer">
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