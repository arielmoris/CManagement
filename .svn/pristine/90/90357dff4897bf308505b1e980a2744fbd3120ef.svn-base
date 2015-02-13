<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0052)https://www.totalegame.net/change_commission_fee.php -->
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
            <td class="tabs3" onmouseover="this.className=&#39;tabs2&#39;;" onmouseout="this.className=&#39;tabs3&#39;;">
            <a href="${pageContext.request.contextPath}/updateAgent" class="tabsmenu">View&nbsp;Details </a></td>
            <td class="tabs1">Commission&nbsp;Fee </td><td class="tabs4">&nbsp;</td>
          </tr>
        </tbody></table>
      </div>
                        </span>
                         <div class="box_tabs" id="output" style="position:relative; height: 750px !important; width:600px; overflow:auto; "><div style="display:none; position:absolute; z-index:10; top:65px; left:220px;" id="loader_gif"><img src="./images/ajax-loader-transparent.gif" alt=""></div><div style="position:absolute; z-index:0; width: 95%;"><span id="error"></span><form action="" id="update_commission_form" onsubmit="return SaveChanges();" method="post"><input name="rolling" id="rolling" value="" type="hidden">
       <input name="commission_value" id="commission_value" value="" type="hidden">
        <input name="commission_type" id="commission_type" value="" type="hidden">
	<script src="./images/tablesort.js" type="text/javascript"></script>
    <script src="./images/jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
        var session = '';

        if(!document.cookie)
            session = 'PHPSESSID=80e181d6bc8abd06b23241d5d2e9a9e0';
		
        
        
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
                sndReqUpdateCommission("26675", document.getElementById("commission_value").value,document.getElementById("commission_type").value,document.getElementById("rolling").value,session);
            }
        </script> 
               <div class="form-group">
    <label for="email" class="col-sm-12 control-label"><input type="radio" id="based" name="based" value="none" onclick="checkRadio(this)" checked="checked">None</label>

  </div>
        
                 <div class="form-group">
  <div class="col-sm-3"> <input type="radio" id="based" name="based" value="based_on_netcash" onclick="checkRadio(this)">Commission based on NetCash</input></div>
       <div class="col-sm-8">
       <input type="text" class="field" name="based_on_netcash" id="based_on_netcash" style="width:40px;" onkeyup="putDifference(this);" title="Agent Part" value="" disabled="disabled">%&nbsp;&nbsp;&nbsp;<span id="difference_based_on_netcash" title="My Part"> </span> <img src="./images/cmt_yes.gif" id="based_on_netcash_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="based_on_netcash_gif_no" width="13" height="13" alt="" style="display:none;">
     	  </div>
  </div>
                
                     <div class="form-group">
  <div class="col-sm-12"><input type="radio" id="based" name="based" value="based_on_netwin" onclick="checkRadio(this)">Commission based on Game Results</input></div>
  </div>
  
            
                 <div class="form-group">
  <div class="col-sm-3">
<input type="checkbox" id="percent_from_netwin" disabled="disabled" onclick="if(this.checked){document.getElementById('based_on_netwin').disabled=false;}else{document.getElementById('based_on_netwin').disabled=true;}">% from NetWin (GW)
</input></div>
       <div class="col-sm-8">
       <input type="text" class="field" name="based_on_netwin" id="based_on_netwin" style="width:40px;" onkeyup="putDifference(this);" title="Agent Part" value="" disabled="disabled">%&nbsp;&nbsp;&nbsp;<span id="difference_based_on_netwin" title="My Part"> </span> <img src="./images/cmt_yes.gif" id="based_on_netwin_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="based_on_netwin_gif_no" width="13" height="13" alt="" style="display:none;">
         	  </div>
  </div>
               
               
                 <div class="form-group">
  <div class="col-sm-3"> <input type="checkbox" id="rolling_fee" onclick="DisableEnableEditButton('rolling_fee');" disabled="disabled">Rolling Fee</div>
       <div class="col-sm-7">
         	  </div>
  </div>
  <br></br>
        
        
        <table><tbody><tr><td style="width:85%"> <table class="tab_body" summary="" cellpadding="0" cellspacing="1" border="0" id="table_game_types" onclick="sortColumn(event)">
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
          	<td valign="top"><input type="button" id="edit" name="Edit" value="Edit" disabled="disabled" onclick="CheckButton(this)"></td>
          	</tr>
          	<tr><td align="center" style="display: block;" id="save_button"><input type="button" id="cancel" name="cancel" value="  Cancel  " onclick="location.href=&#39;agents_list.php&#39;;">&nbsp;<input type="submit" id="save" name="save" value="  Save  "></td></tr>
          	</tbody></table>
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
           </form></div><script type="text/javascript">
	 	<!--
	 	if(document.getElementById("save_button")){
	 		document.getElementById("save_button").style.display='block';
	 	}
	 	//--></script>
                    </div></td>
                    <td class="left" nowrap="nowrap">
                        <div class="welcome">
                            
					<script type="text/javascript">				
						setTimeout('sndReqBalance(\'a155755\',\'change_commission_fee\',300)',300*1000);
					</script>
					<span id="balance">
					<div class="balance_casino">
						<b>Credit Balance 0.00  USD</b>
					</div>
				</span>Welcome, <strong>a a</strong><br>Representative<br><em><font size="1px"><span id="gmt_time">2/9/2015 13:23</span><br>Time zone: GMT +9:00 (Daylight: Off) </font></em><br>
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