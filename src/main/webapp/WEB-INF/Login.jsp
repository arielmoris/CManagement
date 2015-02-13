<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0036)https://www.totalegame.net/login.php -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Client Management Tool</title>

<c:set var="js_folder" value="${pageContext.request.contextPath}/scripts" ></c:set>
	<c:set var="css_folder" value="${pageContext.request.contextPath}/styles" ></c:set>
	
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"> -->
<link 	href="${css_folder}/bootstrap.css" rel="stylesheet" type="text/css">
<link 	href="${css_folder}/dd.css" rel="stylesheet" type="text/css">
<link 	href="${css_folder}/flags.css" rel="stylesheet" type="text/css">
<link 	href="${css_folder}/new_style.css" rel="stylesheet" type="text/css">


<script src="${js_folder}/login.js" type="text/javascript"></script>
<script src="${js_folder}/jquery-2.0.3-min.js" type="text/javascript" ></script>

<script src="${js_folder}/bootstrap-select.js" type="text/javascript" ></script>
<script src="${js_folder}/jquery.dd.min.js" type="text/javascript" ></script>

<style>
._msddli_, #langselect_title{
text-align:left;
}

#langselect_msdd{
width:180px !important;
}

</style>
</head>
<body cz-shortcut-listen="true">

<table class="first" summary="" width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top">

<td class="center">
<table class="top" summary="" width="760" cellpadding="0" cellspacing="0" border="0">
  <tbody><tr valign="top">
    <td class="content">
      <div class="system">Management System</div>
      <img src="./images/spacer.gif" width="135" height="30" alt=""><br><br>
      <div class="page_title">Login</div>
      <br>
      <div class="box_login" id="output" style="position:relative; height: 210px;">
      <div style="display:none; position:absolute; z-index:20; top:30px; left:320px;" id="loader_gif">
      <img src="./images/ajax-loader-transparent.gif" alt=""></div>
      
      <div style="position:absolute; z-index:0; width: 95%; left:10px; ">
    <span id="error"></span>  
	<form:form action="${pageContext.request.contextPath}/login" modelAttribute="userDto" class="form-horizontal" method="post" id="login" name="login" onsubmit="return ValidateForm(this);">
	<div class="form-group">
    <label for="username" class="col-sm-5 control-label"><spring:message code="login.username" text="Login" /></label>
    <div class="col-sm-1">
    
     	<form:input path="username" type="text" class="field" name="username" id="username" value="" tabindex="1" />
    </div>
  </div>
       <div class="form-group">
    <label for="password" class="col-sm-5 control-label">Password</label>
    <div class="col-sm-1">
    	<input type="password" style="display:none">
     	<form:input path="password" type="password" autocomplete="off" class="field" name="password" id="password" value="" tabindex="2"/>
    </div>
  </div>
        
    <div class="form-group">
    <label for="new_password" class="col-sm-5 control-label">Language</label>
    <div class="col-sm-1">
    <form:input path="languageSelected" type="hidden" name="languageSelected" id="languageSelected" value="" tabindex="2"/>
    <select name="langselect"  id="langselect" style="width:300px;">
     	<option value = "en" data-image="images/blank.gif" data-imagecss="flag gb" <c:if test="${userDto.languageSelected == 'en'}">selected</c:if>>English</option>
     	<option value = "jp" data-image="images/blank.gif" data-imagecss="flag jp" <c:if test="${userDto.languageSelected == 'jp'}">selected</c:if>>Japanese</option>
     	<option value = "kr" data-image="images/blank.gif" data-imagecss="flag kr" <c:if test="${userDto.languageSelected == 'kr'}">selected</c:if>>Korean</option>
     	<option value = "cn" data-image="images/blank.gif" data-imagecss="flag cn" <c:if test="${userDto.languageSelected == 'cn'}">selected</c:if>>Chinese</option>
	</select>  
    </div>
</div>
  <div class="form-group">
    <div class="col-sm-12">
     	<input type="submit" id="submit_button" name="submit_button" class="button" value="Login">
    </div>
  </div> 
        </form:form>
      </div></div>
    </td>
  </tr>
</tbody></table>
<img src="./images/cmt_null.gif" width="760" height="1" alt=""><br>

</td>

</tr>
</tbody></table>
<script>
$(document).ready(function() {
$("#langselect").msDropdown();
$( "#langselect_child" ).bind( "click", function() {
	var langSelected = $("#langselect_title").text();
	var codeSelected = null;
	$( "#langselect > option" ).each(function() {
		 if (this.text == langSelected){
			 codeSelected = this.value;
			 return false;
			}
		});	
	$("#languageSelected").val(codeSelected);
	window.location.href ='${pageContext.request.contextPath}/login?language=' + codeSelected;
	
	});
})
</script>

</body></html>