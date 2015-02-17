<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="UTF-8" />
<title></title>
<%@ include file="_headerHead.jsp"%>
</head>
<body>
	<%@ include file="_headerBody.jsp"%>
	<div id="content">
		<div class="page_title">Add Agent</div>
		<div class="tabs">
			<div class="tabs_table">
				<table summary="" cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr>
							<td class="tabs0">&nbsp;&nbsp;</td>
							<td class="tabs1">Add&nbsp;Agent</td>
							<td class="tabs4">&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box_tabs" style="position: relative;">
				<form action="" class="form-horizontal" id="addForm">
					<div class="form-group">
						<label for="first_name" class="col-sm-3 control-label">
							First Name *
						</label>
						<div class="col-sm-9">
							<input type="text" class="field required success alpha" value="" maxlength="15" name="first_name" id="first_name"> 
						</div>
					</div>

					<div class="form-group">
						<label for="last_name" class="col-sm-3 control-label">
							Last Name *
						</label>
						<div class="col-sm-9">
							<input type="text" class="field required alpha" value="" maxlength="15" name="last_name" id="last_name">
						</div>
					</div>
					
					<div class="form-group">
						<label for="email" class="col-sm-3 control-label">E-mail</label>
						<div class="col-sm-9">
							<input type="text" class="field email" value="" name="email" id="email">
						</div>
					</div>
					
					<div class="form-group">
						<label for="mobile_number" class="col-sm-3 control-label">
						Mobile Number</label>
						<div class="col-sm-9">
							<input type="text" class="field digits" value="" name="mobile_number" id="mobile_number"> 
							<br> 
							<font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number not including country code.</i></font>
						</div>
					</div>
					<div class="form-group">
						<label for="balance" class="col-sm-3 control-label">Balance</label>
						<div class="col-sm-9">
							<input type="text" class="field number" value="" name="balance" id="balance">
						</div>
					</div>
					<div class="form-group">
						<label for="comm_rate" class="col-sm-3 control-label">Commission Rate</label>
						<div class="col-sm-9">
							<input type="text" class="field number" value="" name="comm_rate" id="comm_rate">
						</div>
					</div>
					
					<div class="form-group">
						<label for="station_name" class="col-sm-3 control-label"></label>
						<div class="col-sm-9">
							<input type="checkbox" class="field" checked="checked" value="1" name="autoPassword" id="autoPassword" onclick="togglePasswordFields(this)">
							Auto generated password
						</div>
					</div>
					
					<div class="form-group" id="passwordTR" style="display: none;">
						<label for="password" class="col-sm-3 control-label">Password</label>
						<div class="col-sm-9">
							<input type="text" class="field required" value="" name="password" id="password" maxlength="10" minlength="6" disabled>
						</div>
					</div>

					<div class="form-group" id="confirmPasswordTR" style="display: none;">
						<label for="confirmPassword" class="col-sm-3 control-label">Confirm
							Password</label>
						<div class="col-sm-9">
							<input type="text" class="field" value="" name="confirmPassword" id="confirmPassword" maxlength="10" minlength="6" disabled>
							<br>
							<font style="font-size: 11px;"><i><strong>Note:</strong>6-10 alphanumeric characters. If empty, the password will be generated automaticaly</i></font>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">Send To Channel</label>
						<div class="col-sm-9">
							<select name="channel" class="field">
								<option value="">-Select-</option>
								<option value="sms">SMS</option>
								<option value="email">E-mail</option>
							</select>
						</div>
					</div>					
					
					<div class="form-group">
						<div class="col-sm-3"></div>
						<div class="col-sm-9">
							<input type="button" class="button" name="backButton" value="  < Back  " onclick="location.href='/ClientManagementSystem/agentsList';">&nbsp;
							<input type="submit" class="button" value="  Submit >  ">
						</div>
					</div>
				</form>
				<font style="font-size: 11px;"><i>* Indicates mandatory field.</i></font>
			</div>
		</div>
	</div>

	<%@ include file="_footer.jsp"%>
</body>
<script type="text/javascript">
	$(function(){
		initFormValidation($("#addForm"));
		
		$("select[name='channel']").change(function(){
			$("#email").rules("remove","required");
			$("#mobile_number").rules("remove","required");
			if($(this).val() == "email"){
				$("#email").rules("add","required");
			}else if($(this).val() == "sms"){
				$("#mobile_number").rules("add","required");
			}
		})
	})
</script>
</html>