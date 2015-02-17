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
		<div class="page_title">Change Password</div>
		<div class="tabs">
			<div class="tabs_table">
		        <table summary="" cellpadding="0" cellspacing="0" border="0">
			       <tbody>
			       	<tr>
			            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Change&nbsp;Password </td><td class="tabs4">&nbsp;</td>
			          </tr>
			        </tbody>
		        </table>
      		</div>
			<div class="box_tabs" style="position: relative;">
				<form class="form-horizontal" action="" method="post" name="agent_form" id="agent_form">
					<div class="form-group">
					    <label for="login_name" class="col-sm-4 control-label">Login Name</label>
					    <div class="col-sm-8">
					     	<input type="text" class="field" value="Test168025" name="login_name" id="login_name" disabled="disabled">
					    </div>
					  </div>
			  
			       <div class="form-group">
					    <label for="old_password" class="col-sm-4 control-label">Old Password*</label>
					    <div class="col-sm-8">
					     	<input type="password" autocomplete="off" class="field" value="" name="old_password" id="old_password"> <img src="./images/cmt_yes.gif" id="old_password_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="old_password_gif_no" width="13" height="13" alt="" style="display:none;">
					    </div>
				  </div>
			        
			    <div class="form-group">
				    <label for="new_password" class="col-sm-4 control-label">New Password*</label>
				    <div class="col-sm-8">
				     	<input type="password" autocomplete="off" class="field" value="" name="new_password" id="new_password"> <img src="./images/cmt_yes.gif" id="new_password_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="new_password_gif_no" width="13" height="13" alt="" style="display:none;">
				    </div>
				</div>
			  
			    <div class="form-group">
				    <label for="confirm_password" class="col-sm-4 control-label">Confirm Password*</label>
				    <div class="col-sm-8">
				    <input type="password" autocomplete="off" class="field" value="" name="confirm_password" id="confirm_password"> <img src="./images/cmt_yes.gif" id="confirm_password_gif_yes" width="13" height="13" alt="" style="display:none;"><img src="./images/cmt_no.gif" id="confirm_password_gif_no" width="13" height="13" alt="" style="display:none;"><br>
				             <font style="font-size: 11px;"><em><strong>Note:</strong> 6-10 alphanumeric characters.</em></font>
				    </div>
				  </div>
			  
			     <div class="form-group">
						<div class="col-sm-4"></div>
						<div class="col-sm-8">
							<input type="button" class="button" value="  < Back  " onclick="location.href='/ClientManagementSystem/agentsList';">&nbsp;
							<input type="submit" class="button" value="  Submit >  " onclick="return ValidateForm(document.getElementById('agent_form'));">
						</div>
					</div>
			  	<font style="font-size: 11px;"><i>* Indicates mandatory field.</i></font> 
			     </form>
			</div>
		</div>
	</div>
	<%@ include file="_footer.jsp"%>
</body>
</html>