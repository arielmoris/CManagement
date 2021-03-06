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
		<div class="page_title">
			<!--Manage agent account-->
			Manage Agents List
		</div>
		<br>
		<div id="add_entity_block" class="clearfix">
			<div style="float:left">
				<input type="button" class="button" value="Add Agent" onclick="window.location.href='${request_path}/addAgent'">
			</div>
			<span class="button_note">To add a new agent, click the "Add Agent" button. To edit an existing agent, click "edit" in the table below.</span>
		</div>
		<br>
		<div class="tab_head">
			<form id="agents_list_form">
				<ul id="errorContainer" class="error-box" style="display:none"></ul>
				<table summary="" cellpadding="0" cellspacing="0" border="0" width="60%">
					<tbody>
						<tr style="display: none;">
							<td colspan="4" id="ag_error">&nbsp;</td>
						</tr>
						<tr>
							<td class="tab_head" align="right" colspan="4">&nbsp;</td>
						</tr>
						<tr>
							<td class="tab_head">First Name</td>
							<td class="tab_head">Last Name</td>
							<td class="tab_head">Mobile Number</td>
							<!--td class="tab_head">Status</td-->
							<td></td>
						</tr>
						<tr>
							<td><input type="text" class="field alpha" value="" style="width: 100px;" id="name" name="name"></td>
							<td><input type="text" class="field alpha" value="" style="width: 100px;" id="lname" name="lname"></td>
							<td><input type="text" class="field digits" value="" style="width: 100px;" id="mobilenumber" name="mobileNumber" ></td>
							<td><input type="submit" class="button" value="Search" ></td>
						</tr>
					</tbody>
				</table>
				<div id="list" align="center">
				</div>
				<div id="loading-wrapper" style="display:none">
					<div class="loading-overlay-gray">
						<div class="loading-gif"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<form id='edit_agent_form' action="${request_path}/editAgent"  method="post">
		<input type='hidden' name='loginId'>
	</form>
	<form id='soft_login_form' action="${request_path}/softLogin"  method="post">
		<input type='hidden' name='loginId'>
	</form>
	<%@ include file="_footer.jsp"%>
</body>
<script>
	$(function(){
		initFormValidation($("#addForm"));
		getAgentsList();
		function getAgentsList(){
			var form_data = $("#agents_list_form").serialize();
			$("#list").html($("#loading-wrapper").html());
			$.ajax({
				url 	 : "${request_path}/table/agentsList",
				type     : "post",
				data	 :  form_data,
				dataType : "html",
				success  : function(data){
					$("#list").html(data);
				},
				error : function(e){
					$("#list").html("<div class='error-box'>Something went wrong.</div>");
				}
			})
			
		}
		
		var validationRules = {
				debug: true,
				errorElement:"li",
				errorLabelContainer:"#errorContainer",
				submitHandler : function(form){
					getAgentsList();
				},
			}
		
		$("#agents_list_form").validate(validationRules);
	})
	
	function editAgent(loginId){
		var form = $("#edit_agent_form");
		form.find("input[name='loginId']").val(loginId);
		form.submit();
		return false;
	}
	
	function softLogin(loginId){
		var url = "${request_path}/login?loginId="+loginId;
		var window_suffix = window.name.split("").pop();
		var window_name ="window"+(parseInt(window_suffix == undefined ? 0 : window_suffix)+1);
		var popUpWindow = window.open(url, window_name, "height=600px, width=960px");
		popUpWindow.focus();
		return false;
	}
</script>
</html>